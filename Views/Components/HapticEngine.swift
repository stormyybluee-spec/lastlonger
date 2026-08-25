//
//  HapticEngine.swift
//  LAST LONGER
//
//  Every tactile event in the app. CoreHaptics for precision, UIFeedbackGenerator
//  as the fallback on devices without a Taptic Engine.
//
//  TUNED PATTERNS (locked spec):
//    threshold  — single sharp transient
//    backOff    — double transient, 120 ms apart
//    emergency  — continuous 10.0 s with a pulsing envelope + 1 Hz countdown pips
//    sessionEnd — triple transient, descending intensity
//
//  IMPORTANT: CoreHaptics does not play while the app is backgrounded. Once the
//  session minimises behind external media, phone haptics stop. In-session tactile
//  feedback must come from the Watch (see `WatchHaptics` at the bottom of this file),
//  which stays live under an HKWorkoutSession.
//

import Foundation
import CoreHaptics
import os

#if canImport(UIKit)
import UIKit
#endif

// MARK: - Intensity preference

// `HapticIntensity` was declared here and in DomainModels.swift. The DomainModels.swift declaration is the one
// kept — it is public, Sendable and carries the stable raw values the store
// persists. Members unique to this version were moved onto it in
// Models/ModelCompat.swift, so call sites are unchanged.

// MARK: - Pattern vocabulary

enum HapticPattern: Equatable {
    /// Logged a hold at threshold.
    case threshold
    /// Logged a back off.
    case backOff
    /// Emergency protocol engaged — continuous 10 s.
    case emergency
    /// Session ended.
    case sessionEnd
    /// Generic UI selection.
    case selection
    /// Non-blocking warning (heart rate spike, store error).
    case warning
    /// Successful pull-back confirmation. Pitch of the paired chime rises with streak.
    case success(streak: Int)
    /// Breath pacer beat. `inhale` is a soft rise, otherwise a soft fall.
    case breath(inhale: Bool)
}

// MARK: - Engine

@MainActor
final class HapticEngine: ObservableObject {

    @Published var intensity: HapticIntensity = .medium
    @Published private(set) var supportsHaptics = CHHapticEngine.capabilitiesForHardware().supportsHaptics

    private var engine: CHHapticEngine?
    private var emergencyPlayer: CHHapticAdvancedPatternPlayer?
    private let log = Logger(subsystem: "com.lastlonger.app", category: "haptics")

    /// The emergency protocol is exactly ten seconds. Countdown, voice and haptic
    /// all read from this one constant so they can never drift apart.
    static let emergencyDuration: TimeInterval = 10.0

    // MARK: Lifecycle

    func prepare() async {
        guard supportsHaptics else { return }
        guard engine == nil else {
            try? engine?.start()
            return
        }
        do {
            let engine = try CHHapticEngine()
            // Keeps CoreHaptics off the audio graph so it can never duck or interrupt
            // the voice coach or the user's external media.
            engine.playsHapticsOnly = true
            engine.isAutoShutdownEnabled = true

            engine.resetHandler = { [weak self] in
                guard let self else { return }
                do { try self.engine?.start() }
                catch { self.log.error("Engine restart after reset failed.") }
            }
            engine.stoppedHandler = { [weak self] reason in
                self?.log.notice("Haptic engine stopped: \(reason.rawValue, privacy: .public)")
                self?.emergencyPlayer = nil
            }

            try engine.start()
            self.engine = engine
        } catch {
            log.error("Haptic engine unavailable: \(error.localizedDescription, privacy: .public)")
            supportsHaptics = false
        }
    }

    // MARK: Play

    func play(_ pattern: HapticPattern) {
        guard supportsHaptics, let engine else {
            playFallback(pattern)
            return
        }
        do {
            let built = try build(pattern)
            if case .emergency = pattern {
                let player = try engine.makeAdvancedPlayer(with: built)
                emergencyPlayer = player
                try player.start(atTime: CHHapticTimeImmediate)
            } else {
                try engine.makePlayer(with: built).start(atTime: CHHapticTimeImmediate)
            }
        } catch {
            log.error("Pattern playback failed: \(error.localizedDescription, privacy: .public)")
            playFallback(pattern)
        }
    }

    /// Cancels the emergency buzz early — user confirmed the hold before the ten
    /// seconds elapsed, or the session was force-ended.
    func stopEmergency() {
        try? emergencyPlayer?.stop(atTime: CHHapticTimeImmediate)
        emergencyPlayer = nil
    }

    func stopAll() {
        stopEmergency()
        try? engine?.stop()
    }

    // MARK: Pattern construction

    private func build(_ pattern: HapticPattern) throws -> CHHapticPattern {
        let s = intensity.scale

        switch pattern {

        case .threshold:
            return try CHHapticPattern(events: [
                transient(intensity: 1.0 * s, sharpness: 0.90, at: 0)
            ], parameters: [])

        case .backOff:
            return try CHHapticPattern(events: [
                transient(intensity: 0.85 * s, sharpness: 0.80, at: 0),
                transient(intensity: 0.85 * s, sharpness: 0.80, at: 0.12)
            ], parameters: [])

        case .sessionEnd:
            return try CHHapticPattern(events: [
                transient(intensity: 0.95 * s, sharpness: 0.55, at: 0),
                transient(intensity: 0.75 * s, sharpness: 0.45, at: 0.14),
                transient(intensity: 0.55 * s, sharpness: 0.35, at: 0.28)
            ], parameters: [])

        case .emergency:
            var events: [CHHapticEvent] = [
                CHHapticEvent(
                    eventType: .hapticContinuous,
                    parameters: [
                        .init(parameterID: .hapticIntensity, value: 1.0 * s),
                        .init(parameterID: .hapticSharpness, value: 0.35)
                    ],
                    relativeTime: 0,
                    duration: Self.emergencyDuration
                )
            ]
            // A hard pip on each second so the tactile countdown matches the
            // on-screen numerals and the spoken count.
            for second in 0..<Int(Self.emergencyDuration) {
                events.append(
                    transient(intensity: 1.0 * s, sharpness: 1.0, at: TimeInterval(second))
                )
            }
            // Envelope: swells for the first three seconds, then holds hard.
            let curve = CHHapticParameterCurve(
                parameterID: .hapticIntensityControl,
                controlPoints: [
                    .init(relativeTime: 0.0, value: 0.60),
                    .init(relativeTime: 3.0, value: 1.00),
                    .init(relativeTime: Self.emergencyDuration, value: 1.00)
                ],
                relativeTime: 0
            )
            return try CHHapticPattern(events: events, parameterCurves: [curve])

        case .selection:
            return try CHHapticPattern(events: [
                transient(intensity: 0.45 * s, sharpness: 0.70, at: 0)
            ], parameters: [])

        case .warning:
            return try CHHapticPattern(events: [
                transient(intensity: 0.70 * s, sharpness: 0.95, at: 0),
                transient(intensity: 0.40 * s, sharpness: 0.95, at: 0.09)
            ], parameters: [])

        case .success(let streak):
            // Each additional consecutive hold adds one tap, capped at five, and
            // sharpens the texture. The tactile reward grows with the streak.
            let taps = min(1 + max(0, streak) / 3, 5)
            let events = (0..<taps).map { index in
                transient(
                    intensity: (0.55 + 0.09 * Float(index)) * s,
                    sharpness: 0.60 + 0.08 * Float(index),
                    at: TimeInterval(index) * 0.07
                )
            }
            return try CHHapticPattern(events: events, parameters: [])

        case .breath(let inhale):
            let curve = CHHapticParameterCurve(
                parameterID: .hapticIntensityControl,
                controlPoints: inhale
                    ? [.init(relativeTime: 0, value: 0.15), .init(relativeTime: 0.9, value: 0.75)]
                    : [.init(relativeTime: 0, value: 0.75), .init(relativeTime: 0.9, value: 0.10)],
                relativeTime: 0
            )
            let event = CHHapticEvent(
                eventType: .hapticContinuous,
                parameters: [
                    .init(parameterID: .hapticIntensity, value: 0.55 * s),
                    .init(parameterID: .hapticSharpness, value: 0.12)
                ],
                relativeTime: 0,
                duration: 0.9
            )
            return try CHHapticPattern(events: [event], parameterCurves: [curve])
        }
    }

    private func transient(intensity: Float, sharpness: Float, at time: TimeInterval) -> CHHapticEvent {
        CHHapticEvent(
            eventType: .hapticTransient,
            parameters: [
                .init(parameterID: .hapticIntensity, value: min(intensity, 1.0)),
                .init(parameterID: .hapticSharpness, value: min(sharpness, 1.0))
            ],
            relativeTime: time
        )
    }

    // MARK: Fallback

    private func playFallback(_ pattern: HapticPattern) {
        #if canImport(UIKit)
        switch pattern {
        case .threshold:
            UIImpactFeedbackGenerator(style: .rigid).impactOccurred()
        case .backOff, .breath:
            UIImpactFeedbackGenerator(style: .medium).impactOccurred()
        case .emergency:
            UINotificationFeedbackGenerator().notificationOccurred(.error)
        case .sessionEnd, .success:
            UINotificationFeedbackGenerator().notificationOccurred(.success)
        case .warning:
            UINotificationFeedbackGenerator().notificationOccurred(.warning)
        case .selection:
            UISelectionFeedbackGenerator().selectionChanged()
        }
        #endif
    }
}

// MARK: - Watch

#if os(watchOS)
import WatchKit

/// Watch-side mapping. These fire while the phone is backgrounded, which is the
/// only reliable tactile channel once the session minimises.
///
/// RENAMED during consolidation, from `WatchHaptics` to `WatchPatternHaptics`.
/// WatchHaptics.swift declares a `WatchHaptics` class — also watchOS-only — and
/// two types of that name in the watch target is an invalid redeclaration. The
/// class is the one the watch UI actually calls (`WatchHaptics.shared`), so it
/// kept the name. This enum maps `HapticPattern`, which that class does not
/// cover, so it is preserved rather than deleted.
enum WatchPatternHaptics {
    static func play(_ pattern: HapticPattern) {
        let device = WKInterfaceDevice.current()
        switch pattern {
        case .threshold:  device.play(.click)
        case .backOff:    device.play(.directionUp)
        case .emergency:  device.play(.failure)   // repeat on a 1 s timer for the full 10 s
        case .sessionEnd: device.play(.stop)
        case .success:    device.play(.success)
        case .warning:    device.play(.notification)
        case .selection:  device.play(.click)
        case .breath:     device.play(.click)
        }
    }

    /// The 10 s emergency buzz, driven from the Watch where background execution
    /// is permitted under an active workout session.
    static func runEmergency(onTick: @escaping (Int) -> Void) {
        var remaining = Int(HapticEngine.emergencyDuration)
        WKInterfaceDevice.current().play(.failure)
        onTick(remaining)
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            remaining -= 1
            WKInterfaceDevice.current().play(.failure)
            onTick(remaining)
            if remaining <= 0 { timer.invalidate() }
        }
    }
}
#endif
