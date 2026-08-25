//
//  SilentHaptics.swift
//  LAST LONGER
//
//  PART 10 (Silent Mode) + PART 11 (continuous emergency vibration).
//
//  Extends the Part A `Haptics` vocabulary with the five Silent Mode
//  patterns and a genuinely continuous player for the emergency protocol.
//
//  WHY A SEPARATE PLAYER
//  ---------------------
//  `Haptics.play(_:)` fires one-shot patterns. The emergency protocol needs
//  ten unbroken seconds, which means an advanced pattern player with looping
//  and `isAutoShutdownEnabled = false` — the shared engine's auto-shutdown
//  will happily kill a long continuous event mid-buzz otherwise.
//

import CoreHaptics
import UIKit

@MainActor
final class SilentHaptics {

    static let shared = SilentHaptics()

    private var engine: CHHapticEngine?
    private var continuousPlayer: CHHapticAdvancedPatternPlayer?

    private var supportsHaptics: Bool {
        CHHapticEngine.capabilitiesForHardware().supportsHaptics
    }

    /// Mirrors the user's Haptic Intensity setting.
    var intensity: HapticIntensity = .medium

    private init() { prepare() }

    // MARK: - Engine

    func prepare() {
        guard supportsHaptics, engine == nil else { return }
        do {
            let engine = try CHHapticEngine()
            engine.playsHapticsOnly = true
            // Emergency patterns must survive an idle gap; never auto-shutdown.
            engine.isAutoShutdownEnabled = false
            engine.resetHandler = { [weak self] in
                try? self?.engine?.start()
            }
            try engine.start()
            self.engine = engine
        } catch {
            engine = nil
        }
    }

    // MARK: - Silent Mode vocabulary

    func play(_ signal: SilentSignal) {
        guard signal != .emergency else { startContinuous(); return }
        guard let engine, supportsHaptics else { playFallback(signal); return }
        do {
            let pattern = try CHHapticPattern(events: events(for: signal), parameters: [])
            try engine.makePlayer(with: pattern).start(atTime: CHHapticTimeImmediate)
        } catch {
            playFallback(signal)
        }
    }

    private func events(for signal: SilentSignal) -> [CHHapticEvent] {
        let scale = intensity.scale

        func buzz(_ t: TimeInterval, _ duration: TimeInterval, sharpness: Float = 0.4) -> CHHapticEvent {
            CHHapticEvent(
                eventType: .hapticContinuous,
                parameters: [
                    .init(parameterID: .hapticIntensity, value: 1.0 * scale),
                    .init(parameterID: .hapticSharpness, value: sharpness)
                ],
                relativeTime: t,
                duration: duration
            )
        }

        switch signal {
        case .slowDown:
            // One deliberate buzz. Soft edge — it means "ease off", and a
            // sharp transient reads as an alarm.
            return [buzz(0, 0.30, sharpness: 0.15)]

        case .speedUp:
            return [buzz(0, 0.12, sharpness: 0.8), buzz(0.22, 0.12, sharpness: 0.8)]

        case .holdThreshold:
            return [buzz(0, 0.10, sharpness: 0.9),
                    buzz(0.18, 0.10, sharpness: 0.9),
                    buzz(0.36, 0.10, sharpness: 0.9)]

        case .cooldown:
            // One long fade-out. The only pattern with a falling envelope,
            // which is what makes it unmistakable against the other four.
            return [
                CHHapticEvent(
                    eventType: .hapticContinuous,
                    parameters: [
                        .init(parameterID: .hapticIntensity, value: 0.9 * scale),
                        .init(parameterID: .hapticSharpness, value: 0.1)
                    ],
                    relativeTime: 0,
                    duration: 1.1
                )
            ]

        case .emergency:
            return []   // handled by startContinuous()
        }
    }

    // MARK: - Continuous (emergency)

    /// Unbroken vibration until `stopContinuous()`. Ignores the intensity
    /// setting — this one is always at full strength.
    func startContinuous() {
        guard let engine, supportsHaptics else {
            startFallbackLoop()
            return
        }
        stopContinuous()

        do {
            let event = CHHapticEvent(
                eventType: .hapticContinuous,
                parameters: [
                    .init(parameterID: .hapticIntensity, value: 1.0),
                    .init(parameterID: .hapticSharpness, value: 0.55)
                ],
                relativeTime: 0,
                duration: 2.0
            )
            let pattern = try CHHapticPattern(events: [event], parameters: [])
            let player = try engine.makeAdvancedPlayer(with: pattern)
            player.loopEnabled = true
            player.loopEnd = 2.0
            try player.start(atTime: CHHapticTimeImmediate)
            continuousPlayer = player
        } catch {
            startFallbackLoop()
        }
    }

    func stopContinuous() {
        try? continuousPlayer?.stop(atTime: CHHapticTimeImmediate)
        continuousPlayer = nil
        fallbackLoop?.invalidate()
        fallbackLoop = nil
    }

    // MARK: - UIKit fallback

    private var fallbackLoop: Timer?
    private let heavy = UIImpactFeedbackGenerator(style: .heavy)

    private func startFallbackLoop() {
        fallbackLoop?.invalidate()
        heavy.prepare()
        fallbackLoop = Timer.scheduledTimer(withTimeInterval: 0.18, repeats: true) { _ in
            MainActor.assumeIsolated { self.heavy.impactOccurred() }
        }
    }

    private func playFallback(_ signal: SilentSignal) {
        let generator = UIImpactFeedbackGenerator(style: .medium)
        generator.prepare()
        let count: Int
        switch signal {
        case .slowDown, .cooldown: count = 1
        case .speedUp:             count = 2
        case .holdThreshold:       count = 3
        case .emergency:           return
        }
        for i in 0..<count {
            DispatchQueue.main.asyncAfter(deadline: .now() + Double(i) * 0.2) {
                generator.impactOccurred()
            }
        }
    }
}
