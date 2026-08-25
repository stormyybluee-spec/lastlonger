//
//  EmergencyProtocol.swift
//  LAST LONGER
//
//  PART 11 — The Glitch.
//
//  Triggered by a triple-tap on the Angel or the orange button on the Watch.
//  Ten seconds of continuous haptics, a spoken instruction, a hard countdown,
//  and a release line. Logged as a successful emergency pullback.
//
//  DESIGN NOTES
//  ------------
//  · The countdown runs on wall clock, not on accumulated ticks, for the
//    same reason the session engine does. Ten seconds must be ten seconds.
//  · Speech is FORCED past every gate — Silent Mode, coach frequency, the
//    minimum-gap throttle. The opening instruction is the one line in the
//    app that always speaks, because a user who enabled Silent Mode still
//    needs to hear "squeeze" when they've triple-tapped for help.
//    (The continuous haptic runs alongside it regardless.)
//  · `cancel()` exists and is bound to a visible control. A protocol that
//    can't be escaped is a trap, and a false trigger from a pocket-tap
//    shouldn't hold someone hostage for ten seconds.
//

import Combine
import Foundation

@MainActor
final class EmergencyProtocol: ObservableObject {

    enum Stage: Equatable {
        case inactive
        case counting(remaining: Int)
        case releasing
        case complete
    }

    // MARK: - Published

    @Published private(set) var stage: Stage = .inactive
    @Published private(set) var remaining: Int = 10
    @Published private(set) var progress: Double = 0      // 0…1 through the hold
    @Published private(set) var triggerCount: Int = 0

    var isActive: Bool {
        if case .inactive = stage { return false }
        if case .complete = stage { return false }
        return true
    }

    // MARK: - Tuning

    let holdDuration: TimeInterval = 10

    // MARK: - Collaborators

    private let coach: VoiceCoach
    private let silent = SilentHaptics.shared

    /// Mirror the protocol to the watch.
    var onBroadcast: ((SessionSignal) -> Void)?

    /// Fires when the hold completes successfully — the session logs a pullback.
    var onCompleted: (() -> Void)?

    /// Fires when the user aborts.
    var onCancelled: (() -> Void)?

    // MARK: - Internals

    private var startedAt: Date?
    private var ticker: AnyCancellable?
    private var lastSpokenNumber: Int = 11

    init(coach: VoiceCoach) {
        self.coach = coach
    }

    // MARK: - Trigger

    func trigger() {
        guard !isActive else { return }

        triggerCount += 1
        startedAt = Date()
        remaining = Int(holdDuration)
        progress = 0
        lastSpokenNumber = Int(holdDuration) + 1
        stage = .counting(remaining: remaining)

        // Continuous vibration, phone and watch, for the full hold.
        silent.startContinuous()
        onBroadcast?(.emergencyBegan(duration: holdDuration))

        // The one line that speaks even in Silent Mode.
        let wasSilent = coach.isSilent
        coach.isSilent = false
        coach.stop(immediately: true)
        coach.speakLiteral("STOP. Squeeze your pelvic floor NOW. Hard. Hold for ten seconds.")
        coach.isSilent = wasSilent

        startTicker()
    }

    // MARK: - Countdown

    private func startTicker() {
        ticker?.cancel()
        ticker = Timer.publish(every: 0.1, on: .main, in: .common)
            .autoconnect()
            .sink { [weak self] _ in
                MainActor.assumeIsolated { self?.tick() }
            }
    }

    private func tick() {
        guard let startedAt, case .counting = stage else { return }

        let elapsed = Date().timeIntervalSince(startedAt)
        progress = min(elapsed / holdDuration, 1)

        let left = max(0, Int(ceil(holdDuration - elapsed)))
        if left != remaining {
            remaining = left
            stage = .counting(remaining: left)
        }

        // Speak each number once, on its way down.
        if left < lastSpokenNumber, left > 0 {
            lastSpokenNumber = left
            // The instruction takes ~4 s to speak; counting over it would be
            // unintelligible, so the numbers start once it has cleared.
            if elapsed > 4.0 {
                coach.speakLiteral(String(left))
            }
            Haptics.shared.play(.countdownTick)
        }

        if elapsed >= holdDuration { release() }
    }

    // MARK: - Release

    private func release() {
        ticker?.cancel(); ticker = nil
        stage = .releasing
        remaining = 0
        progress = 1

        silent.stopContinuous()
        onBroadcast?(.emergencyEnded(completed: true))

        let wasSilent = coach.isSilent
        coach.isSilent = false
        coach.speakLiteral("Release. Breathe out. You're back in control.")
        coach.isSilent = wasSilent

        ToneGenerator.shared.playRecovery()
        Haptics.shared.play(.cooldown)

        Task { [weak self] in
            try? await Task.sleep(for: .seconds(3))
            guard let self else { return }
            self.stage = .complete
            self.onCompleted?()
        }
    }

    // MARK: - Abort

    func cancel() {
        guard isActive else { return }
        ticker?.cancel(); ticker = nil
        silent.stopContinuous()
        coach.stop(immediately: true)
        onBroadcast?(.emergencyEnded(completed: false))

        stage = .inactive
        remaining = Int(holdDuration)
        progress = 0
        Haptics.shared.play(.deselect)
        onCancelled?()
    }

    func dismiss() {
        stage = .inactive
        remaining = Int(holdDuration)
        progress = 0
    }

    // MARK: - Display

    var countLabel: String { String(remaining) }

    var instruction: String {
        switch stage {
        case .counting:  return "SQUEEZE. HOLD."
        case .releasing: return "RELEASE. BREATHE OUT."
        default:         return ""
        }
    }
}
