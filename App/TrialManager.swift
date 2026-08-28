//
//  TrialManager.swift
//  LAST LONGER
//
//  The soft paywall's memory.
//
//  The app is a free download. The Trial hands a new user two complete rounds
//  of Free Hold; everything else in the Armory is locked until they subscribe.
//  This object owns that count, the per-round durations the Trial Complete
//  paywall reports back, and the single access decision every entry point into
//  a session asks before it starts one.
//
//  The count moves in exactly one place: `recordCompletedSession(duration:)`,
//  called from `LiveSessionModel.end(reachedEndGoal:)` once a session is over.
//  Never on start, never on launch, never in an `onAppear` - counting a round
//  the user has not finished yet would take a life they never spent.
//

import Foundation
import SwiftUI

// MARK: - Access decision

/// Which paywall a blocked tap should raise.
///
/// The two are not cosmetic variants: a locked mode is a user who has not
/// finished the Trial and is reaching past it, while a spent Trial is a user
/// with two rounds of their own telemetry to show. They get different screens.
enum PaywallContext: Equatable, Identifiable {
    /// Reached for a mode the Trial never included.
    case lockedMode(SessionMode)
    /// Both Trial rounds are spent.
    case trialComplete
    /// The post-onboarding upsell. Shown once, right after onboarding, before
    /// the user has any round telemetry - so it argues the feature set, not
    /// numbers, and is dismissible.
    case intro

    var id: String {
        switch self {
        case .lockedMode(let mode): return "locked.\(mode.rawValue)"
        case .trialComplete:        return "trialComplete"
        case .intro:                return "intro"
        }
    }
}

/// The answer to "can this user start this mode right now".
enum AccessDecision: Equatable {
    case allowed
    case blocked(PaywallContext)

    var isAllowed: Bool { self == .allowed }

    /// The paywall to present, or nil when the session may start.
    var paywall: PaywallContext? {
        if case .blocked(let context) = self { return context }
        return nil
    }
}

// MARK: - Trial manager

@MainActor
final class TrialManager: ObservableObject {

    /// One instance, so the non-View callers that end a session (LiveSessionModel)
    /// and the Views that gate one read and write the same count. The app root
    /// injects this same object into the environment.
    static let shared = TrialManager()

    /// Two complete rounds. Named rather than inlined so the onboarding copy,
    /// the Home banner and the gate can never disagree about the number.
    static let allowance = 2

    private enum Key {
        static let used   = "ll.trial.freeSessionsUsed"
        static let rounds = "ll.trial.roundDurations"
    }

    /// Completed Free Hold rounds. Only ever incremented after a session ends.
    @Published private(set) var freeSessionsUsed: Int
    /// Duration of each completed Trial round, in order. Drives the Trial
    /// Complete paywall's Round 1 / Round 2 / Improvement readout.
    @Published private(set) var roundDurations: [TimeInterval]

    /// Mirrors `StoreManager.isUnlocked`. Kept here so the gate has a single
    /// source of truth that non-View callers can read too; the app root syncs
    /// it whenever the entitlement resolves or changes.
    @Published private(set) var isSubscribed = false

    private let defaults: UserDefaults

    init(defaults: UserDefaults = .standard) {
        self.defaults = defaults
        self.freeSessionsUsed = defaults.integer(forKey: Key.used)
        self.roundDurations = (defaults.array(forKey: Key.rounds) as? [Double]) ?? []
    }

    // MARK: - State

    var remaining: Int { max(0, Self.allowance - freeSessionsUsed) }

    var hasSpentTrial: Bool { freeSessionsUsed >= Self.allowance }

    /// "2 rounds left" / "1 round left" / "Trial complete". Used on Home.
    var remainingLabel: String {
        switch remaining {
        case 0:  return "Trial complete"
        case 1:  return "1 round left"
        default: return "\(remaining) rounds left"
        }
    }

    // MARK: - Entitlement sync

    /// Called by the app root from `StoreManager.isUnlocked`.
    func setSubscribed(_ value: Bool) {
        guard value != isSubscribed else { return }
        isSubscribed = value
    }

    // MARK: - The gate

    /// The single question every path into a session asks.
    ///
    /// A subscriber is never blocked. Everyone else gets Free Hold while the
    /// Trial has a round left, and nothing else.
    func decide(for mode: SessionMode) -> AccessDecision {
        if isSubscribed { return .allowed }
        guard mode.isIncludedInTrial else { return .blocked(.lockedMode(mode)) }
        return hasSpentTrial ? .blocked(.trialComplete) : .allowed
    }

    /// Whether a card should render dimmed with a lock.
    func isLocked(_ mode: SessionMode) -> Bool {
        !isSubscribed && !mode.isIncludedInTrial
    }

    // MARK: - Recording

    /// Call once, after a session has actually finished.
    ///
    /// Subscribers spend nothing, so their sessions are not counted and the
    /// Trial stays intact underneath a lapsed subscription. Rounds past the
    /// allowance are not recorded either: the readout only ever describes the
    /// two rounds the Trial paid for.
    func recordCompletedSession(duration: TimeInterval) {
        guard !isSubscribed, !hasSpentTrial else { return }

        freeSessionsUsed += 1
        defaults.set(freeSessionsUsed, forKey: Key.used)

        roundDurations.append(max(0, duration))
        defaults.set(roundDurations, forKey: Key.rounds)
    }

    // MARK: - Round readout

    /// Elapsed seconds for a 1-based round number, if it has been run.
    func duration(forRound round: Int) -> TimeInterval? {
        let index = round - 1
        guard roundDurations.indices.contains(index) else { return nil }
        return roundDurations[index]
    }

    /// Percentage change from round 1 to round 2. Nil until both are in, or if
    /// round 1 was too short to divide by honestly.
    var improvementPercent: Int? {
        guard let first = duration(forRound: 1), let second = duration(forRound: 2),
              first >= 1 else { return nil }
        return Int(((second - first) / first * 100).rounded())
    }

#if DEBUG
    /// Puts the Trial back so the soft paywall can be walked end to end.
    func resetTrial() {
        freeSessionsUsed = 0
        roundDurations = []
        defaults.removeObject(forKey: Key.used)
        defaults.removeObject(forKey: Key.rounds)
    }
#endif
}
