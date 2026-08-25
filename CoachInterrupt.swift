//
//  CoachInterrupt.swift
//  LAST LONGER
//
//  PART 10 — Coach Interrupt.
//
//  Every 3–7 minutes the coach asks for an arousal level. The user answers
//  by tapping: once low, twice medium, three times high. The coach then
//  adjusts pace.
//
//  WHY TAP-COUNTING IS SAFE HERE (AND ISN'T ON THE ANGEL)
//  -----------------------------------------------------
//  `TapRouter` refuses to introduce latency because tempo taps can't
//  tolerate it. This is the opposite case: nothing is being measured, so a
//  settle window costs nothing. Taps accumulate for `settleWindow` after the
//  last one, then the count is read. That means a user can tap three times
//  at any comfortable speed and still be understood — no double-tap timing
//  to get right while distracted.
//
//  Unanswered prompts time out rather than blocking the session.
//

import Combine
import Foundation

enum ArousalLevel: Int, Codable, CaseIterable, Identifiable {
    case low = 1, medium = 2, high = 3

    var id: Int { rawValue }

    var label: String {
        switch self {
        case .low:    return "Low"
        case .medium: return "Medium"
        case .high:   return "High"
        }
    }

    var tapHint: String {
        switch self {
        case .low:    return "One tap"
        case .medium: return "Two taps"
        case .high:   return "Three taps"
        }
    }

    var symbol: String {
        switch self {
        case .low:    return "gauge.low"
        case .medium: return "gauge.medium"
        case .high:   return "gauge.high"
        }
    }
}

/// What the coach does with the answer.
enum PaceAdjustment: Equatable {
    case slowDown           // high arousal — back off
    case hold               // medium — stay where you are
    case pushOn             // low — you have room

    var silentSignal: SilentSignal {
        switch self {
        case .slowDown: return .slowDown
        case .hold:     return .holdThreshold
        case .pushOn:   return .speedUp
        }
    }

    var phraseCategory: PhraseCategory {
        switch self {
        case .slowDown: return .cooldown
        case .hold:     return .thresholdPrompt
        case .pushOn:   return .challenge
        }
    }

    /// Multiplier applied to the Tempo Lock BPM when an answer lands.
    var tempoMultiplier: Double {
        switch self {
        case .slowDown: return 0.85
        case .hold:     return 1.0
        case .pushOn:   return 1.08
        }
    }
}

@MainActor
final class CoachInterrupt: ObservableObject {

    // MARK: - Published

    @Published private(set) var isAwaitingAnswer = false
    @Published private(set) var pendingTapCount = 0
    @Published private(set) var lastAnswer: ArousalLevel?
    @Published private(set) var history: [(at: TimeInterval, level: ArousalLevel)] = []

    // MARK: - Tuning

    /// Spec: randomized every 3–7 minutes.
    var interval: ClosedRange<TimeInterval> = 180...420

    /// Taps stop accumulating this long after the last one.
    var settleWindow: TimeInterval = 0.65

    /// An unanswered prompt gives up after this and the session moves on.
    var answerTimeout: TimeInterval = 25

    var isEnabled = true

    // MARK: - Callbacks

    /// Ask the question — speak it, or buzz in Silent Mode.
    var onPrompt: (() -> Void)?

    /// Deliver the answer and the resulting adjustment.
    var onAnswer: ((ArousalLevel, PaceAdjustment) -> Void)?

    /// Nobody answered.
    var onTimeout: (() -> Void)?

    // MARK: - Internals

    private var nextPromptAt: TimeInterval = .infinity
    private var settleTask: Task<Void, Never>?
    private var timeoutTask: Task<Void, Never>?

    // MARK: - Scheduling

    func armForSession() {
        guard isEnabled else { nextPromptAt = .infinity; return }
        nextPromptAt = TimeInterval.random(in: interval)
        history.removeAll()
        lastAnswer = nil
    }

    /// Call from the session tick with elapsed session time.
    func tick(elapsed: TimeInterval) {
        guard isEnabled, !isAwaitingAnswer, elapsed >= nextPromptAt else { return }
        prompt(at: elapsed)
    }

    private func prompt(at elapsed: TimeInterval) {
        isAwaitingAnswer = true
        pendingTapCount = 0
        nextPromptAt = .infinity   // re-armed on answer or timeout

        onPrompt?()

        timeoutTask?.cancel()
        timeoutTask = Task { [weak self] in
            try? await Task.sleep(for: .seconds(self?.answerTimeout ?? 25))
            guard let self, !Task.isCancelled, self.isAwaitingAnswer else { return }
            self.finishUnanswered(at: elapsed)
        }
    }

    // MARK: - Answer input

    /// Every tap while a prompt is open. Counting settles automatically.
    func registerTap(elapsed: TimeInterval) {
        guard isAwaitingAnswer else { return }

        pendingTapCount = min(pendingTapCount + 1, 3)
        Haptics.shared.play(.tap)

        settleTask?.cancel()
        settleTask = Task { [weak self] in
            try? await Task.sleep(for: .seconds(self?.settleWindow ?? 0.65))
            guard let self, !Task.isCancelled, self.isAwaitingAnswer else { return }
            self.commit(elapsed: elapsed)
        }
    }

    /// Direct selection, for the on-screen buttons and the watch.
    func answer(_ level: ArousalLevel, elapsed: TimeInterval) {
        pendingTapCount = level.rawValue
        commit(elapsed: elapsed)
    }

    private func commit(elapsed: TimeInterval) {
        let level = ArousalLevel(rawValue: pendingTapCount) ?? .medium
        let adjustment = adjustment(for: level)

        settleTask?.cancel(); settleTask = nil
        timeoutTask?.cancel(); timeoutTask = nil

        isAwaitingAnswer = false
        pendingTapCount = 0
        lastAnswer = level
        history.append((at: elapsed, level: level))

        Haptics.shared.play(.select)
        onAnswer?(level, adjustment)

        reschedule(from: elapsed)
    }

    private func finishUnanswered(at elapsed: TimeInterval) {
        isAwaitingAnswer = false
        pendingTapCount = 0
        settleTask?.cancel(); settleTask = nil
        onTimeout?()
        reschedule(from: elapsed)
    }

    private func reschedule(from elapsed: TimeInterval) {
        nextPromptAt = elapsed + TimeInterval.random(in: interval)
    }

    // MARK: - Policy

    /// Two consecutive highs escalate: the second one gets a firmer pullback
    /// than the first, because the first one clearly didn't take.
    private func adjustment(for level: ArousalLevel) -> PaceAdjustment {
        switch level {
        case .high:   return .slowDown
        case .medium: return history.suffix(2).allSatisfy { $0.level == .high } ? .slowDown : .hold
        case .low:    return .pushOn
        }
    }

    func cancel() {
        settleTask?.cancel(); settleTask = nil
        timeoutTask?.cancel(); timeoutTask = nil
        isAwaitingAnswer = false
        pendingTapCount = 0
    }
}
