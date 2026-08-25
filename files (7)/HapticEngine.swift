//
//  HapticEngine.swift
//  LAST LONGER
//
//  CoreHaptics, not AVFoundation. The spec named AVFoundation for haptics;
//  AVFoundation has no haptics API. CHHapticEngine is the one that can do
//  the continuous ten-second emergency pattern with a real envelope —
//  UIImpactFeedbackGenerator can only fire discrete taps, so it is kept
//  as the fallback for devices without the Taptic Engine.
//
//  IMPORTANT — READ BEFORE WIRING THE SESSION ENGINE:
//  iOS does not play haptics from a backgrounded app. Neither CHHapticEngine
//  nor UIFeedbackGenerator fires once the app loses foreground. Everything in
//  this file works while LAST LONGER is on screen. For coaching that continues
//  after the user switches to another app, the haptic has to originate on the
//  Watch. See README, "The overlay problem."
//

import CoreHaptics
import Foundation
import UIKit

public enum HapticCue {
    /// Single sharp tap. Threshold logged.
    case threshold
    /// Two taps. Backed off.
    case pullback
    /// Continuous, ten seconds, rising then held. Emergency protocol.
    case emergency
    /// Three taps. Session ended.
    case sessionEnd
    /// Rapid ascending burst. Badge unlocked.
    case unlock
    /// Barely-there tick. Countdown, selection changes.
    case tick
    /// Long single pulse. Silent-mode "back off".
    case longPulse
}

@MainActor
public final class HapticEngine {

    public static let shared = HapticEngine()

    private var engine: CHHapticEngine?
    private var continuousPlayer: CHHapticAdvancedPatternPlayer?
    private let supportsHaptics = CHHapticEngine.capabilitiesForHardware().supportsHaptics

    /// Scaled by the user's Low/Medium/High preference.
    public var intensityScale: Float = HapticIntensity.medium.scale

    private let impactLight = UIImpactFeedbackGenerator(style: .light)
    private let impactHeavy = UIImpactFeedbackGenerator(style: .heavy)

    private init() {
        prepare()
    }

    // MARK: - Lifecycle

    public func prepare() {
        guard supportsHaptics, engine == nil else {
            impactLight.prepare()
            impactHeavy.prepare()
            return
        }
        do {
            let engine = try CHHapticEngine()
            engine.playsHapticsOnly = true
            engine.isAutoShutdownEnabled = true

            // The system stops the engine on interruption (call, Siri) and on
            // background. Restart lazily rather than dropping cues silently.
            engine.stoppedHandler = { [weak self] _ in
                Task { @MainActor in self?.engine = nil }
            }
            engine.resetHandler = { [weak self] in
                Task { @MainActor in try? self?.engine?.start() }
            }

            try engine.start()
            self.engine = engine
        } catch {
            // Non-fatal. Fall through to UIImpactFeedbackGenerator.
            engine = nil
        }
    }

    public func apply(_ intensity: HapticIntensity) {
        intensityScale = intensity.scale
    }

    // MARK: - Play

    public func play(_ cue: HapticCue) {
        guard supportsHaptics, let engine else {
            playFallback(cue)
            return
        }

        if engine.currentTime == 0 {
            try? engine.start()
        }

        do {
            switch cue {
            case .emergency:
                try startEmergency(on: engine)
            default:
                let pattern = try pattern(for: cue)
                let player = try engine.makePlayer(with: pattern)
                try player.start(atTime: CHHapticTimeImmediate)
            }
        } catch {
            playFallback(cue)
        }
    }

    /// Emergency runs for ten seconds unless cancelled early by the user
    /// confirming the pullback.
    public func stopEmergency() {
        try? continuousPlayer?.stop(atTime: CHHapticTimeImmediate)
        continuousPlayer = nil
    }

    // MARK: - Patterns

    private func transient(at time: TimeInterval, intensity: Float, sharpness: Float) -> CHHapticEvent {
        CHHapticEvent(
            eventType: .hapticTransient,
            parameters: [
                .init(parameterID: .hapticIntensity, value: intensity * intensityScale),
                .init(parameterID: .hapticSharpness, value: sharpness),
            ],
            relativeTime: time
        )
    }

    private func pattern(for cue: HapticCue) throws -> CHHapticPattern {
        switch cue {
        case .threshold:
            return try CHHapticPattern(
                events: [transient(at: 0, intensity: 1.0, sharpness: 0.9)],
                parameters: []
            )

        case .pullback:
            return try CHHapticPattern(
                events: [
                    transient(at: 0.00, intensity: 0.8, sharpness: 0.5),
                    transient(at: 0.11, intensity: 0.8, sharpness: 0.5),
                ],
                parameters: []
            )

        case .sessionEnd:
            return try CHHapticPattern(
                events: [
                    transient(at: 0.00, intensity: 0.7, sharpness: 0.3),
                    transient(at: 0.13, intensity: 0.7, sharpness: 0.3),
                    transient(at: 0.26, intensity: 0.9, sharpness: 0.2),
                ],
                parameters: []
            )

        case .unlock:
            // Six ascending ticks. The audio chime carries the melody;
            // this just gives it a body.
            let events = (0..<6).map { index in
                transient(
                    at: Double(index) * 0.055,
                    intensity: 0.45 + Float(index) * 0.09,
                    sharpness: 0.35 + Float(index) * 0.1
                )
            }
            return try CHHapticPattern(events: events, parameters: [])

        case .tick:
            return try CHHapticPattern(
                events: [transient(at: 0, intensity: 0.35, sharpness: 0.7)],
                parameters: []
            )

        case .longPulse:
            let event = CHHapticEvent(
                eventType: .hapticContinuous,
                parameters: [
                    .init(parameterID: .hapticIntensity, value: 0.75 * intensityScale),
                    .init(parameterID: .hapticSharpness, value: 0.25),
                ],
                relativeTime: 0,
                duration: 0.7
            )
            return try CHHapticPattern(events: [event], parameters: [])

        case .emergency:
            return try emergencyPattern()
        }
    }

    private func emergencyPattern() throws -> CHHapticPattern {
        // A flat ten-second buzz is easy to tune out. This ramps up over
        // the first second, holds, and pulses a marker on each of the ten
        // countdown seconds so the vibration and the on-screen numbers agree.
        let sustained = CHHapticEvent(
            eventType: .hapticContinuous,
            parameters: [
                .init(parameterID: .hapticIntensity, value: 1.0 * intensityScale),
                .init(parameterID: .hapticSharpness, value: 0.35),
            ],
            relativeTime: 0,
            duration: 10.0
        )

        let markers = (0..<10).map { second in
            transient(at: Double(second), intensity: 1.0, sharpness: 0.95)
        }

        let envelope = CHHapticParameterCurve(
            parameterID: .hapticIntensityControl,
            controlPoints: [
                .init(relativeTime: 0.0,  value: 0.35),
                .init(relativeTime: 1.0,  value: 1.00),
                .init(relativeTime: 9.0,  value: 1.00),
                .init(relativeTime: 10.0, value: 0.60),
            ],
            relativeTime: 0
        )

        return try CHHapticPattern(events: [sustained] + markers, parameterCurves: [envelope])
    }

    private func startEmergency(on engine: CHHapticEngine) throws {
        stopEmergency()
        let player = try engine.makeAdvancedPlayer(with: emergencyPattern())
        player.completionHandler = { [weak self] _ in
            Task { @MainActor in self?.continuousPlayer = nil }
        }
        try player.start(atTime: CHHapticTimeImmediate)
        continuousPlayer = player
    }

    // MARK: - Fallback

    private func playFallback(_ cue: HapticCue) {
        switch cue {
        case .threshold:
            impactHeavy.impactOccurred()
        case .pullback:
            impactLight.impactOccurred()
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.11) { [impactLight] in
                impactLight.impactOccurred()
            }
        case .sessionEnd:
            for index in 0..<3 {
                DispatchQueue.main.asyncAfter(deadline: .now() + Double(index) * 0.13) { [impactLight] in
                    impactLight.impactOccurred()
                }
            }
        case .emergency:
            // Best available: heavy taps once a second for ten seconds.
            for second in 0..<10 {
                DispatchQueue.main.asyncAfter(deadline: .now() + Double(second)) { [impactHeavy] in
                    impactHeavy.impactOccurred()
                }
            }
        case .unlock:
            for index in 0..<4 {
                DispatchQueue.main.asyncAfter(deadline: .now() + Double(index) * 0.06) { [impactLight] in
                    impactLight.impactOccurred()
                }
            }
        case .tick, .longPulse:
            impactLight.impactOccurred()
        }
    }
}
