//
//  SessionMode.swift
//  LAST LONGER
//
//  The 8 modes of the Precision Atlas. Pure value type — all timing logic
//  lives in the drivers (Session/ModeDriver.swift), not here.
//

import SwiftUI

// MARK: - Difficulty

enum Difficulty: Int, CaseIterable, Codable, Comparable {
    case none = 0, low, medium, high

    static func < (a: Difficulty, b: Difficulty) -> Bool { a.rawValue < b.rawValue }

    var label: String {
        switch self {
        case .none:   return "No difficulty"
        case .low:    return "Low"
        case .medium: return "Medium"
        case .high:   return "High"
        }
    }

    var dot: Color {
        switch self {
        case .none:   return Theme.inert
        case .low:    return Theme.safe
        case .medium: return Theme.rising
        case .high:   return Theme.edge
        }
    }
}

// MARK: - Mode

enum SessionMode: String, CaseIterable, Codable, Identifiable {
    case freeEdge
    case beginner532
    case thresholdLadder
    case randomEdge
    case disciplineDrill
    case gripPressureRepair
    case release
    case zen

    var id: String { rawValue }

    var name: String {
        switch self {
        case .freeEdge:           return "Free Edge"
        case .beginner532:        return "Beginner 5-3-2"
        case .thresholdLadder:    return "Threshold Ladder"
        case .randomEdge:         return "Random Edge"
        case .disciplineDrill:    return "Discipline Drill"
        case .gripPressureRepair: return "Grip Pressure Repair"
        case .release:            return "Release Mode"
        case .zen:                return "Zen Mode"
        }
    }

    /// One line. Says what the mode *does to you*, not what it is.
    var blurb: String {
        switch self {
        case .freeEdge:           return "No structure. Occasional breath cues."
        case .beginner532:        return "Counted phases: five slow, three fast, two still."
        case .thresholdLadder:    return "Holds that climb from 30 seconds to ten minutes."
        case .randomEdge:         return "Prompts arrive without warning. You react."
        case .disciplineDrill:    return "Full stops on command. Thirty seconds of nothing."
        case .gripPressureRepair: return "Retrains grip. Loosen, slow down, repeat."
        case .release:            return "Finish fast. A deliberate reset, not a test."
        case .zen:                return "Screen off. Eyes closed. Sensation only."
        }
    }

    var symbol: String {
        switch self {
        case .freeEdge:           return "waveform.path.ecg"
        case .beginner532:        return "list.number"
        case .thresholdLadder:    return "chart.line.uptrend.xyaxis"
        case .randomEdge:         return "shuffle"
        case .disciplineDrill:    return "hand.raised.fill"
        case .gripPressureRepair: return "hand.tap.fill"
        case .release:            return "bolt.fill"
        case .zen:                return "moon.stars.fill"
        }
    }

    var difficulty: Difficulty {
        switch self {
        case .freeEdge:           return .none
        case .beginner532:        return .low
        case .thresholdLadder:    return .medium
        case .randomEdge:         return .medium
        case .disciplineDrill:    return .high
        case .gripPressureRepair: return .low
        case .release:            return .low
        case .zen:                return .low
        }
    }

    /// Nominal run length used for the card badge and for planning a split session.
    var estimatedDuration: TimeInterval {
        switch self {
        case .freeEdge:           return 15 * 60
        case .beginner532:        return 30 * 60
        case .thresholdLadder:    return 25 * 60
        case .randomEdge:         return 15 * 60
        case .disciplineDrill:    return 20 * 60
        case .gripPressureRepair: return 12 * 60
        case .release:            return 5  * 60
        case .zen:                return 15 * 60
        }
    }

    var estimatedLabel: String {
        let minutes = Int(estimatedDuration / 60)
        return "~\(minutes) min"
    }

    /// Zen suppresses all visual content and dims the screen to black.
    var suppressesVisuals: Bool { self == .zen }

    /// Release is a reset, not a drill — it never participates in a two-mode split.
    var allowsPairing: Bool { self != .release }

    /// Display order in the Atlas grid.
    static var atlasOrder: [SessionMode] {
        [.freeEdge, .beginner532, .thresholdLadder, .randomEdge,
         .disciplineDrill, .gripPressureRepair, .release, .zen]
    }
}
