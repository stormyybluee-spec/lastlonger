//
//  Haptics.swift
//  LAST LONGER
//
//  Haptic-first: every tap, selection, phase change and warning is felt.
//  Core Haptics drives custom patterns; UIKit generators are the fallback
//  on devices without a haptic engine (iPad, simulator).
//
//  Silent Mode routes *everything* through here — when speech is muted the
//  haptic vocabulary has to carry the whole coaching signal, so the patterns
//  below are deliberately distinguishable from one another by rhythm alone.
//

import CoreHaptics
import UIKit

// `HapticIntensity` was declared here and in DomainModels.swift. The DomainModels.swift declaration is the one
// kept — it is public, Sendable and carries the stable raw values the store
// persists. Members unique to this version were moved onto it in
// Models/ModelCompat.swift, so call sites are unchanged.

/// Named haptic vocabulary. Each case has a distinct rhythm.
enum HapticCue {
    case tap             // • single light
    case select          // •• quick double
    case deselect        // •  soft descending
    case phaseChange     // ••• ascending triple
    case thresholdHold   // ▬▬ long sustained swell
    case cooldown        // ▬  slow descending swell
    case warning         // •-•-• sharp triple, wide spacing
    case emergency       // ••••• rapid burst
    case tempoTick       // • metronome click
    case countdownTick   // • crisp
    case countdownFire   // ▬ heavy
    case sessionEnd      // ▬•▬ bookend
}

@MainActor
final class Haptics {

    static let shared = Haptics()

    var intensity: HapticIntensity = .medium
    var isEnabled: Bool = true

    private var engine: CHHapticEngine?
    private var supportsHaptics: Bool {
        CHHapticEngine.capabilitiesForHardware().supportsHaptics
    }

    private let impactLight  = UIImpactFeedbackGenerator(style: .light)
    private let impactMedium = UIImpactFeedbackGenerator(style: .medium)
    private let impactHeavy  = UIImpactFeedbackGenerator(style: .heavy)
    private let selection    = UISelectionFeedbackGenerator()
    private let notification = UINotificationFeedbackGenerator()

    private init() {
        prepare()
    }

    // MARK: - Lifecycle

    func prepare() {
        impactLight.prepare()
        impactMedium.prepare()
        impactHeavy.prepare()
        selection.prepare()
        notification.prepare()

        guard supportsHaptics, engine == nil else { return }
        do {
            let engine = try CHHapticEngine()
            engine.playsHapticsOnly = true
            engine.isAutoShutdownEnabled = true

            // The engine is torn down when the app backgrounds or audio is
            // interrupted. A running session outlives both, so restart eagerly.
            engine.resetHandler = { [weak self] in
                try? self?.engine?.start()
            }
            engine.stoppedHandler = { _ in }

            try engine.start()
            self.engine = engine
        } catch {
            engine = nil   // fall back to UIKit generators
        }
    }

    func teardown() {
        engine?.stop()
        engine = nil
    }

    // MARK: - Play

    func play(_ cue: HapticCue) {
        guard isEnabled else { return }
        guard let engine, supportsHaptics else {
            playFallback(cue)
            return
        }
        do {
            let pattern = try CHHapticPattern(events: events(for: cue), parameters: [])
            let player = try engine.makePlayer(with: pattern)
            try player.start(atTime: CHHapticTimeImmediate)
        } catch {
            playFallback(cue)
        }
    }

    // MARK: - Pattern construction

    private func transient(_ t: TimeInterval, _ i: Float, _ s: Float) -> CHHapticEvent {
        CHHapticEvent(
            eventType: .hapticTransient,
            parameters: [
                .init(parameterID: .hapticIntensity, value: i * intensity.scale),
                .init(parameterID: .hapticSharpness, value: s)
            ],
            relativeTime: t
        )
    }

    private func continuous(_ t: TimeInterval, _ d: TimeInterval, _ i: Float, _ s: Float) -> CHHapticEvent {
        CHHapticEvent(
            eventType: .hapticContinuous,
            parameters: [
                .init(parameterID: .hapticIntensity, value: i * intensity.scale),
                .init(parameterID: .hapticSharpness, value: s)
            ],
            relativeTime: t,
            duration: d
        )
    }

    private func events(for cue: HapticCue) -> [CHHapticEvent] {
        switch cue {
        case .tap:
            return [transient(0, 0.55, 0.5)]

        case .select:
            return [transient(0, 0.7, 0.7), transient(0.06, 0.9, 0.8)]

        case .deselect:
            return [transient(0, 0.6, 0.35), transient(0.07, 0.3, 0.2)]

        case .phaseChange:
            return [transient(0, 0.5, 0.4),
                    transient(0.09, 0.72, 0.6),
                    transient(0.18, 1.0, 0.85)]

        case .thresholdHold:
            return [continuous(0, 0.9, 0.85, 0.25), transient(0.9, 1.0, 0.9)]

        case .cooldown:
            return [continuous(0, 1.2, 0.5, 0.1)]

        case .warning:
            return [transient(0, 1.0, 1.0),
                    transient(0.14, 1.0, 1.0),
                    transient(0.28, 1.0, 1.0)]

        case .emergency:
            return (0..<5).map { transient(Double($0) * 0.07, 1.0, 1.0) }

        case .tempoTick:
            return [transient(0, 0.35, 0.9)]

        case .countdownTick:
            return [transient(0, 0.65, 0.85)]

        case .countdownFire:
            return [continuous(0, 0.35, 1.0, 0.6), transient(0.35, 1.0, 1.0)]

        case .sessionEnd:
            return [continuous(0, 0.4, 0.7, 0.2),
                    transient(0.5, 0.9, 0.8),
                    continuous(0.6, 0.4, 0.7, 0.2)]
        }
    }

    // MARK: - UIKit fallback

    private func playFallback(_ cue: HapticCue) {
        switch cue {
        case .tap, .tempoTick, .countdownTick:
            impactLight.impactOccurred()
        case .select, .deselect:
            selection.selectionChanged()
        case .phaseChange, .thresholdHold, .cooldown:
            impactMedium.impactOccurred()
        case .warning:
            notification.notificationOccurred(.warning)
        case .emergency:
            notification.notificationOccurred(.error)
        case .countdownFire, .sessionEnd:
            impactHeavy.impactOccurred()
        }
    }
}
