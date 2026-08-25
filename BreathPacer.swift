//
//  BreathPacer.swift
//  LAST LONGER
//
//  PART 13 — the 5-7-8 breath pacer. Fires after every logged cooldown.
//
//  Five in, seven hold, eight out. The Angel's wings are the visual guide:
//  they open across the inhale, stay open through the hold, and close across
//  the exhale. The wing spread IS the pacer — there's no separate ring or
//  bar, because two competing visual timers is one too many for someone
//  who's meant to be breathing rather than reading.
//
//  Also used standalone by the Reset Protocol (Part 11), which runs it on a
//  loop for two minutes.
//

import Combine
import Foundation

@MainActor
final class BreathPacer: ObservableObject {

    enum Stage: String, Equatable {
        case inhale, hold, exhale, rest

        var label: String {
            switch self {
            case .inhale: return "Breathe in"
            case .hold:   return "Hold"
            case .exhale: return "Breathe out"
            case .rest:   return "Rest"
            }
        }

        var duration: TimeInterval {
            switch self {
            case .inhale: return 5
            case .hold:   return 7
            case .exhale: return 8
            case .rest:   return 1
            }
        }

        var next: Stage {
            switch self {
            case .inhale: return .hold
            case .hold:   return .exhale
            case .exhale: return .rest
            case .rest:   return .inhale
            }
        }
    }

    // MARK: - Published

    @Published private(set) var isRunning = false
    @Published private(set) var stage: Stage = .rest
    @Published private(set) var stageProgress: Double = 0     // 0…1 through the stage
    @Published private(set) var wingSpread: Double = 0.15     // drives the Angel
    @Published private(set) var cyclesCompleted = 0
    @Published private(set) var secondsRemaining: Int = 0

    // MARK: - Config

    /// Cycles to run. One cycle is 21 seconds.
    var targetCycles: Int = 1

    var speaksCount = true

    // MARK: - Callbacks

    var onStageChange: ((Stage) -> Void)?
    var onCount: ((Int) -> Void)?          // spoken number within the stage
    var onFinished: (() -> Void)?

    // MARK: - Internals

    private let coach: VoiceCoach?
    private var stageStartedAt: Date?
    private var ticker: AnyCancellable?
    private var lastSpokenSecond = -1

    init(coach: VoiceCoach? = nil) {
        self.coach = coach
    }

    // MARK: - Control

    func start(cycles: Int = 1) {
        targetCycles = cycles
        cyclesCompleted = 0
        beginStage(.inhale)
        isRunning = true

        ticker?.cancel()
        ticker = Timer.publish(every: 0.1, on: .main, in: .common)
            .autoconnect()
            .sink { [weak self] _ in
                MainActor.assumeIsolated { self?.tick() }
            }
    }

    /// Runs for a wall-clock duration rather than a cycle count. Two minutes
    /// is ~5.7 cycles, so the Reset Protocol rounds up to 6.
    func start(duration: TimeInterval) {
        let cycleLength = Stage.inhale.duration + Stage.hold.duration
                        + Stage.exhale.duration + Stage.rest.duration
        start(cycles: max(1, Int((duration / cycleLength).rounded(.up))))
    }

    func stop() {
        ticker?.cancel(); ticker = nil
        isRunning = false
        stage = .rest
        stageProgress = 0
        withAnimationSpread(0.15)
    }

    // MARK: - Tick

    private func tick() {
        guard isRunning, let stageStartedAt else { return }

        let elapsed = Date().timeIntervalSince(stageStartedAt)
        let duration = stage.duration
        stageProgress = min(elapsed / duration, 1)
        secondsRemaining = max(0, Int(ceil(duration - elapsed)))

        updateSpread()
        speakCountIfNeeded(elapsed: elapsed)

        guard elapsed >= duration else { return }

        if stage == .exhale {
            cyclesCompleted += 1
            if cyclesCompleted >= targetCycles {
                finish()
                return
            }
        }
        beginStage(stage.next)
    }

    private func beginStage(_ next: Stage) {
        stage = next
        stageStartedAt = Date()
        stageProgress = 0
        lastSpokenSecond = -1
        secondsRemaining = Int(next.duration)

        onStageChange?(next)

        switch next {
        case .inhale:
            Haptics.shared.play(.phaseChange)
            if speaksCount { coach?.speakLiteral("Breathe in. Five.") }
        case .hold:
            Haptics.shared.play(.tap)
            if speaksCount { coach?.speakLiteral("Hold. Seven.") }
        case .exhale:
            Haptics.shared.play(.cooldown)
            if speaksCount { coach?.speakLiteral("Out. Eight.") }
        case .rest:
            break
        }
    }

    private func finish() {
        ticker?.cancel(); ticker = nil
        isRunning = false
        stage = .rest
        withAnimationSpread(0.15)
        Haptics.shared.play(.sessionEnd)
        onFinished?()
    }

    // MARK: - Wings

    /// Eased so the wings decelerate into the top of the inhale rather than
    /// slamming open — a linear ramp reads as mechanical and people
    /// unconsciously match its abruptness with their breathing.
    private func updateSpread() {
        let eased = 0.5 - cos(stageProgress * .pi) / 2   // smoothstep 0…1

        switch stage {
        case .inhale: wingSpread = 0.15 + eased * 0.85
        case .hold:   wingSpread = 1.0
        case .exhale: wingSpread = 1.0 - eased * 0.85
        case .rest:   wingSpread = 0.15
        }
    }

    private func withAnimationSpread(_ value: Double) {
        wingSpread = value
    }

    // MARK: - Counting

    /// Counts the seconds down inside each stage, but only from the third
    /// second on — counting "five, four" immediately after saying "five"
    /// stumbles over itself.
    private func speakCountIfNeeded(elapsed: TimeInterval) {
        guard speaksCount, stage != .rest else { return }
        let remaining = Int(ceil(stage.duration - elapsed))
        guard remaining != lastSpokenSecond,
              remaining > 0,
              remaining < Int(stage.duration) - 1
        else { return }

        lastSpokenSecond = remaining
        onCount?(remaining)
        if remaining <= 3 {
            coach?.speakLiteral(String(remaining))
        }
        Haptics.shared.play(.tempoTick)
    }

    // MARK: - Display

    var stageLabel: String { stage.label }

    var cycleLabel: String { "\(min(cyclesCompleted + 1, targetCycles)) of \(targetCycles)" }
}
