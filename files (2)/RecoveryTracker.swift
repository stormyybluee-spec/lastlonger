//
//  RecoveryTracker.swift
//  LAST LONGER
//
//  PART 11 — "Next session in X hours".
//
//  WHAT THIS IS AND ISN'T
//  ----------------------
//  This is a habit tracker built from the user's own logged history. It is
//  not a physiological model, and the UI copy says so: refractory period
//  varies enormously between people and within one person, and no published
//  formula predicts it from data an app can collect.
//
//  So the number is derived from what this specific user has actually done —
//  a trimmed mean of their own historical gaps between end-goal events —
//  with a conservative default before enough history exists. Adjustments for
//  session intensity are small and bounded, because a confident-looking
//  number produced from three data points is worse than an honest range.
//
//  Presented as a range, never a countdown to a precise moment.
//

import Foundation

@MainActor
final class RecoveryTracker: ObservableObject {

    @Published private(set) var lastEndGoalAt: Date?
    @Published private(set) var historicalGaps: [TimeInterval] = []

    /// Used until the user has `minimumSamples` of their own history.
    private let defaultInterval: TimeInterval = 24 * 3600
    private let minimumSamples = 3
    private let maximumSamples = 20

    private let gapsKey = "lastlonger.recovery.gaps"
    private let lastKey = "lastlonger.recovery.lastEndGoal"

    init() {
        let defaults = UserDefaults.standard
        historicalGaps = defaults.array(forKey: gapsKey) as? [TimeInterval] ?? []
        lastEndGoalAt = defaults.object(forKey: lastKey) as? Date
    }

    // MARK: - Logging

    func logEndGoal(at date: Date = Date()) {
        if let previous = lastEndGoalAt {
            let gap = date.timeIntervalSince(previous)
            // Ignore gaps outside a plausible band — a 3-minute gap is a
            // double-tap on the log button, a 3-week gap is a holiday, and
            // neither says anything about recovery.
            if gap > 1800, gap < 14 * 24 * 3600 {
                historicalGaps.append(gap)
                if historicalGaps.count > maximumSamples {
                    historicalGaps.removeFirst(historicalGaps.count - maximumSamples)
                }
            }
        }
        lastEndGoalAt = date
        persist()
    }

    private func persist() {
        let defaults = UserDefaults.standard
        defaults.set(historicalGaps, forKey: gapsKey)
        defaults.set(lastEndGoalAt, forKey: lastKey)
    }

    func reset() {
        historicalGaps.removeAll()
        lastEndGoalAt = nil
        persist()
    }

    // MARK: - Estimate

    /// Trimmed mean of the user's own gaps, or the default before there's
    /// enough history to say anything.
    var baselineInterval: TimeInterval {
        guard historicalGaps.count >= minimumSamples else { return defaultInterval }
        let sorted = historicalGaps.sorted()
        // Drop the extremes once there's enough to afford it.
        let trimmed = sorted.count >= 5 ? Array(sorted.dropFirst().dropLast()) : sorted
        return trimmed.reduce(0, +) / Double(trimmed.count)
    }

    var isEstimateFromOwnHistory: Bool { historicalGaps.count >= minimumSamples }

    /// Suggested window, bounded so intensity adjustments can't run away.
    ///
    /// - Parameter emergencyPullbacks: more pullbacks means a more demanding
    ///   session, which nudges the suggestion later — by a few percent, not by
    ///   a factor.
    func suggestedWindow(emergencyPullbacks: Int = 0,
                         sessionDuration: TimeInterval = 0) -> ClosedRange<TimeInterval> {
        var interval = baselineInterval

        let intensityBump = min(Double(emergencyPullbacks) * 0.04, 0.20)
        let lengthBump = min(sessionDuration / 3600 * 0.03, 0.12)
        interval *= (1 + intensityBump + lengthBump)

        // Wide when we're guessing, narrower once it's the user's own data.
        let spread = isEstimateFromOwnHistory ? 0.20 : 0.35
        return (interval * (1 - spread))...(interval * (1 + spread))
    }

    /// Time until the suggested window opens, from the last logged end goal.
    func timeUntilWindow(emergencyPullbacks: Int = 0,
                         sessionDuration: TimeInterval = 0,
                         now: Date = Date()) -> TimeInterval? {
        guard let lastEndGoalAt else { return nil }
        let window = suggestedWindow(emergencyPullbacks: emergencyPullbacks,
                                     sessionDuration: sessionDuration)
        let opensAt = lastEndGoalAt.addingTimeInterval(window.lowerBound)
        let remaining = opensAt.timeIntervalSince(now)
        return remaining > 0 ? remaining : 0
    }

    // MARK: - Display

    func windowLabel(emergencyPullbacks: Int = 0,
                     sessionDuration: TimeInterval = 0) -> String {
        let window = suggestedWindow(emergencyPullbacks: emergencyPullbacks,
                                     sessionDuration: sessionDuration)
        let low = Int((window.lowerBound / 3600).rounded())
        let high = Int((window.upperBound / 3600).rounded())
        return low == high ? "\(low) hours" : "\(low)–\(high) hours"
    }

    var confidenceNote: String {
        if isEstimateFromOwnHistory {
            return "Based on your last \(historicalGaps.count) logged gaps."
        }
        return "A starting default. This adapts once you've logged a few sessions."
    }
}
