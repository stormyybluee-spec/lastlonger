//
//  LLStatsModels.swift
//  LAST LONGER
//
//  Pure value types + aggregation. No CoreData imports here on purpose: the
//  store maps NSManagedObject -> StatsSessionRecord at the boundary so every
//  computation below stays testable and preview-able without a persistent
//  container.
//

import Foundation
import SwiftUI

// MARK: - Record

struct StatsSessionRecord: Identifiable, Hashable {
    let id: UUID
    let date: Date
    let durationSeconds: Int
    /// Count of holds at threshold logged during the session.
    let thresholdCount: Int
    /// Longest run of consecutive holds without reaching the end goal.
    let bestThresholdStreak: Int
    /// 0...1 — share of holds followed by a successful pullback.
    let pullbackSuccessRate: Double
    /// True when the session ended in ejaculation.
    let reachedEndGoal: Bool
    let emergencyPullbacks: Int
    let guidedCooldowns: Int
    let staminaScoreAfter: Int          // 0...100
    let silentMode: Bool
    /// Free-form tags. The stats layer never hardcodes tag names.
    let tags: [String]
    /// Watch-verified sessions score at full weight (see anti-cheat rules).
    let watchVerified: Bool

    var minutes: Double { Double(durationSeconds) / 60 }
}

// MARK: - Domain bridge

extension StatsSessionRecord {

    /// Maps a persisted domain `SessionRecord` (what `Repository` stores) into
    /// the value type the Stats and Challenges screens compute over.
    ///
    /// Fields the domain record does not carry yet map to sensible zeros:
    /// `staminaScoreAfter` (the score is recomputed from the whole history, not
    /// snapshotted per session) and `guidedCooldowns` mirrors `pullbacks`, the
    /// controlled-cooldown count.
    init(from record: SessionRecord) {
        let thresholds = record.thresholds
        let successfulPullbacks = record.pullbacks + record.emergencyPullbacks
        let rate = thresholds > 0
            ? min(1.0, Double(successfulPullbacks) / Double(thresholds))
            : 0

        self.init(
            id: record.id,
            date: record.startedAt,
            durationSeconds: Int(record.duration),
            thresholdCount: thresholds,
            bestThresholdStreak: record.bestStreak,
            pullbackSuccessRate: rate,
            reachedEndGoal: record.finished,
            emergencyPullbacks: record.emergencyPullbacks,
            guidedCooldowns: record.pullbacks,
            staminaScoreAfter: 0,
            silentMode: record.silentMode,
            tags: record.tagIDs,
            watchVerified: record.watchVerified
        )
    }
}

// MARK: - Range

enum StatsRange: String, CaseIterable, Identifiable {
    case week = "Week", month = "Month", all = "All Time"
    var id: String { rawValue }

    var dayCount: Int? {
        switch self {
        case .week:  return 7
        case .month: return 30
        case .all:   return nil
        }
    }
}

// MARK: - Day cell

enum DayState {
    case untracked      // gray — no session logged
    case trained        // green — held at threshold, no end goal
    case reachedEndGoal // red — session ended in ejaculation
    case future
}

struct DayActivity: Identifiable, Hashable {
    var id: Date { day }
    let day: Date
    let sessionCount: Int
    let totalSeconds: Int
    let thresholds: Int
    let avgPullback: Double
    let state: DayState

    /// 0...1, drives trace brightness on the board. Duration, not session count.
    var intensity: Double {
        min(1, Double(totalSeconds) / (25 * 60))
    }

    var minutes: Int { totalSeconds / 60 }
}

// MARK: - Series points

struct DurationPoint: Identifiable { let id = UUID(); let date: Date; let minutes: Double }
struct PullbackPoint: Identifiable { let id = UUID(); let date: Date; let rate: Double }

// MARK: - Tag correlation

struct TagCorrelation: Identifiable {
    var id: String { tag }
    let tag: String
    let taggedCount: Int
    let taggedAvgMinutes: Double
    let untaggedAvgMinutes: Double
    let taggedAvgPullback: Double

    var deltaMinutes: Double { taggedAvgMinutes - untaggedAvgMinutes }
}

// MARK: - Insight

struct Insight: Identifiable {
    enum Severity { case neutral, positive, caution }
    let id = UUID()
    let text: String
    let severity: Severity

    var color: Color {
        switch severity {
        case .neutral:  return LL.C.blue
        case .positive: return LL.C.green
        case .caution:  return LL.C.yellow
        }
    }

    var symbol: String {
        switch severity {
        case .neutral:  return "waveform.path.ecg"
        case .positive: return "arrow.up.right"
        case .caution:  return "exclamationmark.triangle"
        }
    }
}

// MARK: - Summary

struct StatsSummary {
    var totalSessions: Int = 0
    var totalThresholds: Int = 0
    var avgPullback: Double = 0
    var bestStreak: Int = 0
    var currentStamina: Int = 0
}

// MARK: - Store

@MainActor
final class StatsStore: ObservableObject {

    @Published var sessions: [StatsSessionRecord]
    @Published var range: StatsRange = .month

    private let calendar = Calendar.current

    init(sessions: [StatsSessionRecord] = []) {
        self.sessions = sessions.sorted { $0.date < $1.date }
    }

    // Sessions inside the selected window.
    var scoped: [StatsSessionRecord] {
        guard let days = range.dayCount,
              let cutoff = calendar.date(byAdding: .day, value: -days, to: Date())
        else { return sessions }
        return sessions.filter { $0.date >= cutoff }
    }

    // MARK: Heat map

    /// Always renders the current calendar month so the board keeps a stable
    /// 7-column shape regardless of the selected range.
    var monthDays: [DayActivity] {
        let today = calendar.startOfDay(for: Date())
        guard let interval = calendar.dateInterval(of: .month, for: today) else { return [] }

        var buckets: [Date: [StatsSessionRecord]] = [:]
        for s in sessions {
            buckets[calendar.startOfDay(for: s.date), default: []].append(s)
        }

        var out: [DayActivity] = []
        var cursor = interval.start

        // Pad to the first weekday column.
        let leading = calendar.component(.weekday, from: cursor) - calendar.firstWeekday
        let pad = (leading + 7) % 7
        if pad > 0, let padStart = calendar.date(byAdding: .day, value: -pad, to: cursor) {
            var p = padStart
            while p < cursor {
                out.append(DayActivity(day: p, sessionCount: 0, totalSeconds: 0,
                                       thresholds: 0, avgPullback: 0, state: .untracked))
                p = calendar.date(byAdding: .day, value: 1, to: p)!
            }
        }

        while cursor < interval.end {
            let items = buckets[cursor] ?? []
            let state: DayState = {
                if cursor > today { return .future }
                if items.isEmpty { return .untracked }
                return items.contains(where: \.reachedEndGoal) ? .reachedEndGoal : .trained
            }()

            out.append(
                DayActivity(
                    day: cursor,
                    sessionCount: items.count,
                    totalSeconds: items.reduce(0) { $0 + $1.durationSeconds },
                    thresholds: items.reduce(0) { $0 + $1.thresholdCount },
                    avgPullback: items.isEmpty ? 0 : items.map(\.pullbackSuccessRate).reduce(0, +) / Double(items.count),
                    state: state
                )
            )
            cursor = calendar.date(byAdding: .day, value: 1, to: cursor)!
        }
        return out
    }

    // MARK: Series

    var durationSeries: [DurationPoint] {
        scoped.map { DurationPoint(date: $0.date, minutes: $0.minutes) }
    }

    var pullbackSeries: [PullbackPoint] {
        scoped.map { PullbackPoint(date: $0.date, rate: $0.pullbackSuccessRate) }
    }

    /// Oldest -> newest stamina scores. Drives the attractor's chaos parameter.
    var staminaSeries: [Double] {
        scoped.map { Double($0.staminaScoreAfter) }
    }

    // MARK: Summary

    var summary: StatsSummary {
        let s = scoped
        var out = StatsSummary()
        out.totalSessions = s.count
        out.totalThresholds = s.reduce(0) { $0 + $1.thresholdCount }
        out.avgPullback = s.isEmpty ? 0 : s.map(\.pullbackSuccessRate).reduce(0, +) / Double(s.count)
        out.bestStreak = Self.bestDayStreak(in: sessions, calendar: calendar)
        out.currentStamina = sessions.last?.staminaScoreAfter ?? 0
        return out
    }

    static func bestDayStreak(in sessions: [StatsSessionRecord], calendar: Calendar) -> Int {
        let days = Set(sessions.map { calendar.startOfDay(for: $0.date) }).sorted()
        guard !days.isEmpty else { return 0 }
        var best = 1, run = 1
        for i in 1..<days.count {
            let gap = calendar.dateComponents([.day], from: days[i - 1], to: days[i]).day ?? 0
            run = gap == 1 ? run + 1 : 1
            best = max(best, run)
        }
        return best
    }

    // MARK: Tag correlation

    /// Tag-agnostic. Whatever the session tagger writes is what shows up here —
    /// the stats layer has no opinion about the vocabulary.
    var tagCorrelations: [TagCorrelation] {
        let s = scoped
        guard s.count >= 4 else { return [] }
        let vocabulary = Set(s.flatMap(\.tags))

        return vocabulary.compactMap { tag -> TagCorrelation? in
            let tagged   = s.filter { $0.tags.contains(tag) }
            let untagged = s.filter { !$0.tags.contains(tag) }
            guard tagged.count >= 2, untagged.count >= 2 else { return nil }

            return TagCorrelation(
                tag: tag,
                taggedCount: tagged.count,
                taggedAvgMinutes:   tagged.map(\.minutes).reduce(0, +) / Double(tagged.count),
                untaggedAvgMinutes: untagged.map(\.minutes).reduce(0, +) / Double(untagged.count),
                taggedAvgPullback:  tagged.map(\.pullbackSuccessRate).reduce(0, +) / Double(tagged.count)
            )
        }
        .sorted { abs($0.deltaMinutes) > abs($1.deltaMinutes) }
    }

    // MARK: Insights

    var insights: [Insight] { InsightEngine.evaluate(scoped, all: sessions, calendar: calendar) }
}

// MARK: - Insight engine (deterministic if/then, no model inference)

enum InsightEngine {

    static func evaluate(_ scoped: [StatsSessionRecord],
                         all: [StatsSessionRecord],
                         calendar: Calendar) -> [Insight] {
        var out: [Insight] = []
        guard scoped.count >= 3 else {
            return [Insight(text: "Not enough sessions logged yet. Insights unlock at three.",
                            severity: .neutral)]
        }

        // R1 — duration cliff.
        let long  = scoped.filter { $0.minutes > 10 }
        let short = scoped.filter { $0.minutes <= 10 }
        if long.count >= 2, short.count >= 2 {
            let l = long.map(\.pullbackSuccessRate).reduce(0, +) / Double(long.count)
            let s = short.map(\.pullbackSuccessRate).reduce(0, +) / Double(short.count)
            if s - l > 0.08 {
                out.append(Insight(
                    text: "Your pullback rate drops \(Int((s - l) * 100)) points after 10 minutes. Try capping sessions shorter.",
                    severity: .caution))
            } else if l - s > 0.08 {
                out.append(Insight(
                    text: "You hold control better in longer sessions. Warm-up time is doing real work.",
                    severity: .positive))
            }
        }

        // R2 — strongest weekday.
        var byWeekday: [Int: [Double]] = [:]
        for s in scoped { byWeekday[calendar.component(.weekday, from: s.date), default: []].append(s.pullbackSuccessRate) }
        if let best = byWeekday.filter({ $0.value.count >= 2 })
            .max(by: { ($0.value.reduce(0,+) / Double($0.value.count)) < ($1.value.reduce(0,+) / Double($1.value.count)) }) {
            let name = calendar.weekdaySymbols[best.key - 1]
            let avg = best.value.reduce(0, +) / Double(best.value.count)
            if avg > 0.7 {
                out.append(Insight(text: "\(name) is your strongest day at \(Int(avg * 100))% pullback.",
                                   severity: .positive))
            }
        }

        // R3 — verification weight (anti-cheat scoring).
        let verified = scoped.filter(\.watchVerified).count
        if Double(verified) / Double(scoped.count) < 0.35 {
            out.append(Insight(text: "Most logs are manual and score at half weight. Pair the Watch for full credit.",
                               severity: .neutral))
        }

        // R4 — threshold density.
        let avgThresholds = Double(scoped.reduce(0) { $0 + $1.thresholdCount }) / Double(scoped.count)
        let avgPullback = scoped.map(\.pullbackSuccessRate).reduce(0, +) / Double(scoped.count)
        if avgThresholds > 12, avgPullback < 0.6 {
            out.append(Insight(text: "You average \(Int(avgThresholds)) holds per session at \(Int(avgPullback * 100))% control. Fewer holds, longer holds.",
                               severity: .caution))
        }

        // R5 — recovery window.
        if let lastFinish = all.last(where: \.reachedEndGoal) {
            let hours = Date().timeIntervalSince(lastFinish.date) / 3600
            if hours < 12 {
                out.append(Insight(text: "Last end goal was \(Int(hours))h ago. Expect a shorter session while you recover.",
                                   severity: .neutral))
            }
        }

        return Array(out.prefix(3))
    }
}

// MARK: - Sample data (previews + UI tests only)

enum StatsSample {
    @MainActor
    static func store() -> StatsStore { StatsStore(sessions: sessions()) }

    static func sessions(count: Int = 34) -> [StatsSessionRecord] {
        let cal = Calendar.current
        var out: [StatsSessionRecord] = []
        var score = 38.0

        for i in stride(from: count, through: 1, by: -1) {
            guard i % 4 != 0 else { continue }   // rest days
            let date = cal.date(byAdding: .day, value: -i, to: Date())!
                .addingTimeInterval(Double.random(in: 0...36_000))

            score = min(94, score + Double.random(in: -3.5...5.5))
            let pullback = min(0.97, max(0.28, score / 100 + Double.random(in: -0.16...0.12)))
            let finished = Double.random(in: 0...1) > (0.30 + score / 260)

            out.append(StatsSessionRecord(
                id: UUID(),
                date: date,
                durationSeconds: Int(Double.random(in: 5...26) * 60),
                thresholdCount: Int.random(in: 3...16),
                bestThresholdStreak: Int.random(in: 1...11),
                pullbackSuccessRate: pullback,
                reachedEndGoal: finished,
                emergencyPullbacks: Int.random(in: 0...3),
                guidedCooldowns: Int.random(in: 0...4),
                staminaScoreAfter: Int(score),
                silentMode: Bool.random(),
                tags: Bool.random() ? ["l-theanine"] : (Bool.random() ? ["magnesium"] : []),
                watchVerified: Double.random(in: 0...1) > 0.45
            ))
        }
        return out
    }
}
