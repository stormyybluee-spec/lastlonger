//
//  ThresholdStreak.swift
//  LAST LONGER
//
//  PART 10 — Threshold Streak.
//
//  A "streak" is the count of thresholds approached and successfully cooled
//  down from without reaching the end goal. It resets to zero on end goal
//  and on nothing else — not on an emergency pullback, which is a *success*
//  and increments it.
//
//  That distinction is the whole point of the metric. If emergencies broke
//  the streak, the app would be training users to avoid using the emergency
//  protocol, which is exactly backwards.
//

import Foundation

@MainActor
final class ThresholdStreak: ObservableObject {

    @Published private(set) var current: Int = 0
    @Published private(set) var best: Int = 0
    @Published private(set) var lifetimeBest: Int = 0
    @Published private(set) var lastEventAt: Date?

    /// Cooldowns completed in this session, whether or not they extended the
    /// streak. Written to the session log.
    @Published private(set) var totalCooldowns: Int = 0
    @Published private(set) var emergencyPullbacks: Int = 0

    private let lifetimeKey = "lastlonger.streak.lifetimeBest"

    init() {
        lifetimeBest = UserDefaults.standard.integer(forKey: lifetimeKey)
    }

    // MARK: - Events

    /// User reached threshold and cooled down without going over.
    @discardableResult
    func logCooldown() -> Int {
        current += 1
        totalCooldowns += 1
        lastEventAt = Date()
        promote()
        return current
    }

    /// Emergency protocol completed. Counts as a pullback — the hardest
    /// possible way to extend a streak, so it extends it.
    @discardableResult
    func logEmergencyPullback() -> Int {
        current += 1
        emergencyPullbacks += 1
        lastEventAt = Date()
        promote()
        return current
    }

    /// End goal reached. This is the only thing that resets the count.
    func logEndGoal() {
        current = 0
        lastEventAt = Date()
    }

    func resetForNewSession() {
        current = 0
        best = 0
        totalCooldowns = 0
        emergencyPullbacks = 0
        lastEventAt = nil
    }

    private func promote() {
        if current > best { best = current }
        if current > lifetimeBest {
            lifetimeBest = current
            UserDefaults.standard.set(lifetimeBest, forKey: lifetimeKey)
        }
    }

    // MARK: - Display

    var isPersonalBest: Bool { current > 0 && current >= lifetimeBest }

    /// Fixed-width so the readout doesn't reflow as the count climbs.
    var label: String { String(format: "%02d", current) }
}
