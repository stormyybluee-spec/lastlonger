//
//  LLBadges.swift
//  LAST LONGER
//
//  PART C-2 — badge catalogue, weekly challenge model, progress evaluation.
//  Every glyph is an SF Symbol. No image assets ship with this target.
//

import SwiftUI

// MARK: - Badge

enum BadgeTier {
    case entry, control, endurance, mastery, utility

    var tint: Color {
        switch self {
        case .entry:     return LL.C.yellow
        case .control:   return LL.C.green
        case .endurance: return LL.C.red
        case .mastery:   return Color(hex: 0xBF5AF2)
        case .utility:   return LL.C.blue
        }
    }
}

struct Badge: Identifiable, Hashable {
    let id: String
    let title: String
    let symbol: String
    let requirement: String
    let tier: BadgeTier

    static func == (l: Badge, r: Badge) -> Bool { l.id == r.id }
    func hash(into h: inout Hasher) { h.combine(id) }
}

struct BadgeProgress: Identifiable {
    var id: String { badge.id }
    let badge: Badge
    /// 0...1
    let progress: Double
    let earnedAt: Date?
    /// Human-readable current standing, e.g. "38 / 50".
    let standing: String

    var isEarned: Bool { earnedAt != nil }
}

// MARK: - Catalogue

enum BadgeCatalog {

    static let all: [Badge] = [
        Badge(id: "first_threshold",  title: "First Threshold",  symbol: "flame",
              requirement: "Log one hold at threshold", tier: .entry),

        Badge(id: "threshold_lord",   title: "Threshold Lord",   symbol: "flame.fill",
              requirement: "50 thresholds in 7 days", tier: .endurance),

        Badge(id: "control_freak",    title: "Control Freak",    symbol: "shield.fill",
              requirement: "80% pullback across 5 sessions", tier: .control),

        Badge(id: "breath_master",    title: "Breath Master",    symbol: "wind",
              requirement: "10 guided cooldowns", tier: .control),

        Badge(id: "endurance_king",   title: "Endurance King",   symbol: "crown.fill",
              requirement: "5 sessions over 15 minutes", tier: .endurance),

        Badge(id: "consistency",      title: "Consistency",      symbol: "calendar",
              requirement: "7 consecutive days with a session", tier: .utility),

        Badge(id: "no_finish",        title: "No Finish",        symbol: "nosign",
              requirement: "3 days at threshold without reaching the end goal", tier: .control),

        Badge(id: "comeback",         title: "Comeback",         symbol: "arrow.up.circle.fill",
              requirement: "+20 stamina score within 30 days", tier: .mastery),

        Badge(id: "veteran",          title: "Veteran",          symbol: "100.circle.fill",
              requirement: "100 total sessions", tier: .mastery),

        Badge(id: "legend",           title: "Legend",           symbol: "star.circle.fill",
              requirement: "500 total thresholds", tier: .mastery),

        Badge(id: "emergency_hero",   title: "Emergency Hero",   symbol: "cross.case.fill",
              requirement: "10 emergency pullbacks completed", tier: .utility),

        Badge(id: "program_graduate", title: "Program Graduate", symbol: "graduationcap.fill",
              requirement: "Complete any training regimen", tier: .mastery),

        Badge(id: "streak_master",    title: "Streak Master",    symbol: "bolt.horizontal.circle.fill",
              requirement: "Threshold streak of 10 in one session", tier: .endurance),

        Badge(id: "silent_warrior",   title: "Silent Warrior",   symbol: "speaker.slash.fill",
              requirement: "5 sessions in Silent Mode", tier: .utility)
    ]
}

// MARK: - Evaluation

enum BadgeEvaluator {

    /// Deterministic pass over the full history. Cheap enough to run on the main
    /// actor for realistic session counts; move to a background task if history
    /// ever exceeds a few thousand records.
    ///
    /// `@MainActor` because it calls `StatsStore.bestDayStreak`, and `StatsStore`
    /// is a `@MainActor` type (so its statics inherit that isolation). The
    /// isolation matches the "run on the main actor" note above, and the only
    /// caller is a SwiftUI `View`, which is already main-actor-isolated.
    @MainActor
    static func evaluate(sessions: [StatsSessionRecord],
                         completedPrograms: Int = 0,
                         calendar: Calendar = .current) -> [BadgeProgress] {

        let totalSessions = sessions.count
        let totalThresholds = sessions.reduce(0) { $0 + $1.thresholdCount }
        let cooldowns = sessions.reduce(0) { $0 + $1.guidedCooldowns }
        let emergencies = sessions.reduce(0) { $0 + $1.emergencyPullbacks }
        let longSessions = sessions.filter { $0.minutes > 15 }.count
        let silentSessions = sessions.filter(\.silentMode).count
        let bestSessionStreak = sessions.map(\.bestThresholdStreak).max() ?? 0
        let dayStreak = StatsStore.bestDayStreak(in: sessions, calendar: calendar)

        // 50 thresholds inside any rolling 7-day window.
        let bestWeekThresholds: Int = {
            guard !sessions.isEmpty else { return 0 }
            var best = 0
            for anchor in sessions {
                let end = anchor.date
                let start = calendar.date(byAdding: .day, value: -7, to: end)!
                let sum = sessions.filter { $0.date > start && $0.date <= end }
                    .reduce(0) { $0 + $1.thresholdCount }
                best = max(best, sum)
            }
            return best
        }()

        // 5 most recent sessions at 80%+.
        let controlRun: Int = {
            let recent = sessions.suffix(5)
            return recent.filter { $0.pullbackSuccessRate >= 0.8 }.count
        }()

        // Consecutive days holding without reaching the end goal.
        let cleanDayRun: Int = {
            let days = Dictionary(grouping: sessions) { calendar.startOfDay(for: $0.date) }
            let sorted = days.keys.sorted()
            var best = 0, run = 0
            var previous: Date?
            for d in sorted {
                let clean = !(days[d] ?? []).contains(where: \.reachedEndGoal)
                let contiguous = previous.map { calendar.dateComponents([.day], from: $0, to: d).day == 1 } ?? false
                run = (clean && contiguous) ? run + 1 : (clean ? 1 : 0)
                best = max(best, run)
                previous = d
            }
            return best
        }()

        // Largest 30-day stamina gain.
        let comebackGain: Int = {
            guard sessions.count >= 2 else { return 0 }
            var best = 0
            for (i, s) in sessions.enumerated() {
                let horizon = calendar.date(byAdding: .day, value: 30, to: s.date)!
                for t in sessions[i...] where t.date <= horizon {
                    best = max(best, t.staminaScoreAfter - s.staminaScoreAfter)
                }
            }
            return best
        }()

        func make(_ id: String, _ current: Double, _ target: Double, _ standing: String) -> BadgeProgress {
            let badge = BadgeCatalog.all.first { $0.id == id }!
            let ratio = target > 0 ? min(1, current / target) : 0
            let earned = current >= target
            // Earned date resolution belongs in the persistence layer; the
            // evaluator only decides whether the condition currently holds.
            return BadgeProgress(badge: badge,
                                 progress: ratio,
                                 earnedAt: earned ? (sessions.last?.date ?? Date()) : nil,
                                 standing: standing)
        }

        return [
            make("first_threshold",  Double(totalThresholds > 0 ? 1 : 0), 1, totalThresholds > 0 ? "Logged" : "0 / 1"),
            make("threshold_lord",   Double(bestWeekThresholds), 50, "\(bestWeekThresholds) / 50 in 7d"),
            make("control_freak",    Double(controlRun), 5, "\(controlRun) / 5 sessions at 80%"),
            make("breath_master",    Double(cooldowns), 10, "\(cooldowns) / 10 cooldowns"),
            make("endurance_king",   Double(longSessions), 5, "\(longSessions) / 5 over 15m"),
            make("consistency",      Double(dayStreak), 7, "\(dayStreak) / 7 day streak"),
            make("no_finish",        Double(cleanDayRun), 3, "\(cleanDayRun) / 3 clean days"),
            make("comeback",         Double(comebackGain), 20, "+\(comebackGain) / +20 score"),
            make("veteran",          Double(totalSessions), 100, "\(totalSessions) / 100 sessions"),
            make("legend",           Double(totalThresholds), 500, "\(totalThresholds) / 500 thresholds"),
            make("emergency_hero",   Double(emergencies), 10, "\(emergencies) / 10 pullbacks"),
            make("program_graduate", Double(completedPrograms), 1, "\(completedPrograms) / 1 regimen"),
            make("streak_master",    Double(bestSessionStreak), 10, "\(bestSessionStreak) / 10 in one session"),
            make("silent_warrior",   Double(silentSessions), 5, "\(silentSessions) / 5 silent sessions")
        ]
    }
}

// MARK: - Weekly challenge

struct WeeklyChallenge: Identifiable {
    let id: String
    let weekIndex: Int              // 1...4, rotates monthly
    let title: String
    let requirement: String
    let symbol: String
    let target: Double
    /// Progress earned from Watch-verified logs — full weight.
    let verifiedProgress: Double
    /// Progress from manual logs — scored at 50% per the anti-cheat rules.
    let manualProgress: Double
    let endsAt: Date
    let isLocked: Bool

    /// Manual taps count half. Taps under 30s apart are rejected upstream at
    /// log time, so nothing needs to re-filter them here.
    var scoredProgress: Double { verifiedProgress + manualProgress * 0.5 }
    var fraction: Double { target > 0 ? min(1, scoredProgress / target) : 0 }
    var isComplete: Bool { scoredProgress >= target }

    var timeRemaining: String {
        let seconds = max(0, endsAt.timeIntervalSinceNow)
        let days = Int(seconds) / 86_400
        let hours = (Int(seconds) % 86_400) / 3_600
        return days > 0 ? "\(days)d \(hours)h left" : "\(hours)h left"
    }
}

enum ChallengeCatalog {

    /// Four-week rotation matching the badge set.
    ///
    /// NOTE: `verifiedProgress` / `manualProgress` are populated here with
    /// placeholder values so the screen renders standalone. Wire them to the
    /// session store before shipping — the shape is right, the numbers are not.
    static func rotation(reference: Date = Date(),
                         calendar: Calendar = .current) -> [WeeklyChallenge] {
        let weekOfMonth = calendar.component(.weekOfMonth, from: reference)
        let endOfWeek = calendar.dateInterval(of: .weekOfYear, for: reference)?.end ?? reference

        let specs: [(String, String, String, String, Double)] = [
            ("threshold_lord", "Threshold Lord", "50 thresholds in 7 days",        "flame.fill",  50),
            ("control_freak",  "Control Freak",  "80% pullback success",           "shield.fill",  5),
            ("breath_master",  "Breath Master",  "10 guided cooldowns",            "wind",        10),
            ("endurance_king", "Endurance King", "5 sessions over 15 minutes",     "crown.fill",   5)
        ]

        return specs.enumerated().map { index, spec in
            let week = index + 1
            let active = week == min(weekOfMonth, 4)
            return WeeklyChallenge(
                id: spec.0,
                weekIndex: week,
                title: spec.1,
                requirement: spec.2,
                symbol: spec.3,
                target: spec.4,
                verifiedProgress: active ? spec.4 * 0.42 : 0,
                manualProgress: active ? spec.4 * 0.24 : 0,
                endsAt: calendar.date(byAdding: .day,
                                      value: (week - min(weekOfMonth, 4)) * 7,
                                      to: endOfWeek) ?? endOfWeek,
                isLocked: !active
            )
        }
    }
}
