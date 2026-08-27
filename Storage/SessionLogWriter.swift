//
//  SessionLogWriter.swift
//  LAST LONGER
//
//  Owns the record for the session currently in flight and commits it to the
//  live CoreData stack through `Repository`. The live player talks only to this
//  writer, never to a managed-object context.
//
//  HISTORY
//  -------
//  An earlier `SessionLogWriter` lived in `Storage/SessionStore.swift` and wrote
//  to a second, parallel CoreData stack (managed-object `SessionRecord`,
//  `ArousalSample`, `EmergencyEvent`). That stack was removed when the app
//  consolidated onto the `Repository` / `PersistenceController` stack, which uses
//  the value-type `SessionRecord` and `CDSession`. This writer is the
//  replacement: same call surface `LiveSessionModel` already uses, but it builds
//  a value-type `SessionRecord` and hands it to `Repository.insert(_:)`, so a
//  finished session shows up in Home, Stats and Challenges immediately.
//

import Foundation

@MainActor
final class SessionLogWriter {

    private let repository: Repository

    // In-flight accumulators, flushed into a SessionRecord on endSession().
    private var plan: SessionPlan?
    private var startedAt: Date?
    private var lockedBPM: Double = 0
    private var finalBPM: Double = 0
    private var averageHeartRate: Int = 0
    private var peakHeartRate: Int = 0
    private var arousalSamples = 0

    init(repository: Repository = .shared) {
        self.repository = repository
    }

    // MARK: - Lifecycle

    func beginSession(plan: SessionPlan) {
        self.plan = plan
        self.startedAt = Date()
        lockedBPM = 0
        finalBPM = 0
        averageHeartRate = 0
        peakHeartRate = 0
        arousalSamples = 0
    }

    func logArousal(_ level: ArousalLevel, elapsed: TimeInterval) {
        // The value-type record does not carry a per-sample arousal series, but
        // we count check-ins so a future field has a source. No-op for now.
        _ = level
        _ = elapsed
        arousalSamples += 1
    }

    func logEmergency(elapsed: TimeInterval, completed: Bool, fromWatch: Bool) {
        // Emergency counts are derived from `ThresholdStreak` at endSession(),
        // which is the single source of truth for the tallies. Nothing to store
        // incrementally here.
        _ = (elapsed, completed, fromWatch)
    }

    func updateHeartRate(average: Int, peak: Int) {
        averageHeartRate = average
        peakHeartRate = peak
    }

    func updateTempo(locked: Double, final: Double) {
        lockedBPM = locked
        finalBPM = final
    }

    func endSession(duration: TimeInterval,
                    streak: ThresholdStreak,
                    reachedEndGoal: Bool) {
        guard let plan else { return }

        // Total threshold events = controlled cooldowns + emergency pullbacks.
        let thresholds = streak.totalCooldowns + streak.emergencyPullbacks

        let record = SessionRecord(
            startedAt: startedAt ?? Date(),
            duration: duration,
            primaryMode: plan.primary,
            secondaryMode: plan.secondary,
            switchAfterMinutes: switchAfterMinutes(for: plan),
            thresholds: thresholds,
            pullbacks: streak.totalCooldowns,
            emergencyPullbacks: streak.emergencyPullbacks,
            bestStreak: streak.best,
            tagIDs: plan.settings.enhancementStack.map(\.rawValue).sorted(),
            persona: plan.settings.persona.coachPersona,
            silentMode: plan.settings.silentMode,
            // Best available proxy: the watch was connected when the session
            // ended. Full HealthKit attestation is a later anti-cheat step.
            watchVerified: PhoneWatchLink.shared.isReachable,
            finished: reachedEndGoal
        )
        repository.insert(record)

        // Ready for a subsequent session.
        self.plan = nil
        self.startedAt = nil
    }

    /// Whole-minute switch offset for a split plan, or nil for a single mode /
    /// manual switch. `.random` resolves to a concrete time at plan build.
    private func switchAfterMinutes(for plan: SessionPlan) -> Int? {
        guard plan.isSplit, let seconds = plan.switchTime() else { return nil }
        return Int((seconds / 60).rounded())
    }
}
