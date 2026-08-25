//
//  LLRegimens.swift
//  LAST LONGER
//
//  PART C-3 — Training regimens.
//
//  Program *definitions* are static Swift, not CoreData rows. Content that
//  ships with the binary and never varies per user does not belong in the
//  store: putting it there buys you a migration every time you retune a day,
//  and a divergence bug between what the user enrolled in and what the current
//  build thinks the program is. CoreData holds enrollment + completion only.
//

import SwiftUI

// MARK: - Modes

enum TrainingMode: String, CaseIterable, Identifiable, Codable {
    case freeThreshold, beginner532, thresholdLadder, randomThreshold
    case disciplineDrill, gripPressureRepair, releaseMode, zen

    var id: String { rawValue }

    var title: String {
        switch self {
        case .freeThreshold:      return "Free Threshold"
        case .beginner532:        return "Beginner 5-3-2"
        case .thresholdLadder:    return "Threshold Ladder"
        case .randomThreshold:    return "Random Threshold"
        case .disciplineDrill:    return "Discipline Drill"
        case .gripPressureRepair: return "Grip Pressure Repair"
        case .releaseMode:        return "Release Mode"
        case .zen:                return "Zen Mode"
        }
    }

    var symbol: String {
        switch self {
        case .freeThreshold:      return "wind"
        case .beginner532:        return "figure.stairs"
        case .thresholdLadder:    return "chart.line.uptrend.xyaxis"
        case .randomThreshold:    return "dice.fill"
        case .disciplineDrill:    return "arrow.counterclockwise.circle.fill"
        case .gripPressureRepair: return "hand.raised.fill"
        case .releaseMode:        return "arrow.down.circle.fill"
        case .zen:                return "eye.slash.fill"
        }
    }

    var tint: Color {
        switch self {
        case .freeThreshold, .zen, .gripPressureRepair, .releaseMode: return LL.C.green
        case .beginner532, .thresholdLadder:                          return LL.C.yellow
        case .randomThreshold, .disciplineDrill:                      return LL.C.red
        }
    }
}

// MARK: - Regimen

struct RegimenDay: Identifiable, Hashable {
    var id: Int { index }
    /// 1-based.
    let index: Int
    let mode: TrainingMode
    let targetMinutes: Int
    /// Shown under the task line. Carries the week's intent.
    let directive: String

    /// "Day 12 of 30: Threshold Ladder (15 min)"
    func headline(of total: Int) -> String {
        "Day \(index) of \(total): \(mode.title) (\(targetMinutes) min)"
    }
}

struct Regimen: Identifiable, Hashable {
    let id: String
    let title: String
    let subtitle: String
    let symbol: String
    let tint: Color
    let schedule: [RegimenDay]

    var dayCount: Int { schedule.count }

    func day(_ index: Int) -> RegimenDay? {
        schedule.first { $0.index == index }
    }

    static func == (l: Regimen, r: Regimen) -> Bool { l.id == r.id }
    func hash(into h: inout Hasher) { h.combine(id) }
}

// MARK: - Catalogue

enum RegimenCatalog {

    static let all: [Regimen] = [beginner, gripPressure, anxietyReset]

    static func regimen(id: String) -> Regimen? { all.first { $0.id == id } }

    // 30 days. One mode per week, escalating. Days 29–30 are an unscripted
    // assessment so the user finishes on their own read of the material.
    static let beginner: Regimen = {
        var days: [RegimenDay] = []
        for i in 1...30 {
            let week = (i - 1) / 7
            let (mode, minutes, directive): (TrainingMode, Int, String) = {
                switch week {
                case 0:  return (.freeThreshold, 10,
                                 "Baseline week. No targets. Learn where your threshold actually sits.")
                case 1:  return (.beginner532, 12,
                                 "Phase counting. Let the coach own the tempo, not you.")
                case 2:  return (.thresholdLadder, 15,
                                 "Ladder week. Each hold runs longer than the last. Cooldown fully between rungs.")
                case 3:  return (.randomThreshold, 15,
                                 "Unpredictable prompts. Control has to survive without a rhythm to lean on.")
                default: return (.randomThreshold, 20,
                                 "Assessment. No scaffolding. Log honestly.")
                }
            }()
            days.append(RegimenDay(index: i, mode: mode, targetMinutes: minutes, directive: directive))
        }
        return Regimen(id: "beginner_30",
                       title: "Beginner Program",
                       subtitle: "30 days · four escalating phases",
                       symbol: "figure.stairs",
                       tint: LL.C.green,
                       schedule: days)
    }()

    // 21 days. Grip pressure steps down on a fixed ramp; the coach's reminder
    // cadence tightens as the target drops.
    static let gripPressure: Regimen = {
        let days = (1...21).map { i -> RegimenDay in
            let stage = (i - 1) / 7            // 0, 1, 2
            let target = ["moderate", "light", "minimal"][stage]
            let cadence = [3, 2, 2][stage]
            return RegimenDay(
                index: i,
                mode: .gripPressureRepair,
                targetMinutes: 12,
                directive: "Target pressure: \(target). Grip reminder every \(cadence) min. If sensation drops, stop and reset — do not compensate with pressure."
            )
        }
        return Regimen(id: "grip_21",
                       title: "Grip Pressure Recovery",
                       subtitle: "21 days · stepped pressure reduction",
                       symbol: "hand.raised.fill",
                       tint: LL.C.yellow,
                       schedule: days)
    }()

    // 14 days. Release Mode + breathing + hypnosis snippet. Deliberately the
    // lowest-pressure program in the catalogue — see CoachProfile for why the
    // intensity curve inverts at the top of the anxiety scale.
    static let anxietyReset: Regimen = {
        let days = (1...14).map { i -> RegimenDay in
            let mode: TrainingMode = i % 3 == 0 ? .zen : .releaseMode
            return RegimenDay(
                index: i,
                mode: mode,
                targetMinutes: i <= 7 ? 8 : 12,
                directive: i % 3 == 0
                    ? "Eyes closed. No external media. Sensation only — you are re-learning the signal without the noise."
                    : "Release Mode with 5-7-8 pacing and a hypnosis snippet on close. No performance target today."
            )
        }
        return Regimen(id: "anxiety_14",
                       title: "Partner Interaction Anxiety Reset",
                       subtitle: "14 days · low-pressure reconditioning",
                       symbol: "lungs.fill",
                       tint: LL.C.blue,
                       schedule: days)
    }()
}

// MARK: - Enrollment

struct RegimenEnrollment: Codable, Equatable {
    let regimenID: String
    let startedAt: Date
    var completedDays: Set<Int>
}

@MainActor
final class RegimenStore: ObservableObject {

    @Published private(set) var enrollment: RegimenEnrollment?

    private let calendar = Calendar.current
    private let defaultsKey = "ll.regimen.enrollment"

    init(enrollment: RegimenEnrollment? = nil) {
        if let enrollment {
            self.enrollment = enrollment
        } else if let data = UserDefaults.standard.data(forKey: defaultsKey),
                  let decoded = try? JSONDecoder().decode(RegimenEnrollment.self, from: data) {
            self.enrollment = decoded
        }
    }

    var regimen: Regimen? {
        enrollment.flatMap { RegimenCatalog.regimen(id: $0.regimenID) }
    }

    /// Calendar days elapsed, clamped to the program length. A missed day does
    /// not stall the program — the schedule is a calendar, not a queue.
    var currentDayIndex: Int? {
        guard let enrollment, let regimen else { return nil }
        let elapsed = calendar.dateComponents([.day],
                                              from: calendar.startOfDay(for: enrollment.startedAt),
                                              to: calendar.startOfDay(for: Date())).day ?? 0
        return min(max(1, elapsed + 1), regimen.dayCount)
    }

    var today: RegimenDay? {
        guard let regimen, let index = currentDayIndex else { return nil }
        return regimen.day(index)
    }

    var isTodayComplete: Bool {
        guard let index = currentDayIndex else { return false }
        return enrollment?.completedDays.contains(index) ?? false
    }

    var completionFraction: Double {
        guard let regimen, let enrollment else { return 0 }
        return Double(enrollment.completedDays.count) / Double(regimen.dayCount)
    }

    var isGraduated: Bool {
        guard let regimen, let enrollment else { return false }
        // Graduation needs 80% of days actually logged, not just elapsed time.
        return Double(enrollment.completedDays.count) >= Double(regimen.dayCount) * 0.8
    }

    // MARK: Mutation

    func enroll(in regimen: Regimen) {
        enrollment = RegimenEnrollment(regimenID: regimen.id, startedAt: Date(), completedDays: [])
        persist()
    }

    func markTodayComplete() {
        guard var e = enrollment, let index = currentDayIndex else { return }
        e.completedDays.insert(index)
        enrollment = e
        persist()
    }

    func cancel() {
        enrollment = nil
        UserDefaults.standard.removeObject(forKey: defaultsKey)
    }

    private func persist() {
        guard let enrollment, let data = try? JSONEncoder().encode(enrollment) else { return }
        UserDefaults.standard.set(data, forKey: defaultsKey)
    }
}
