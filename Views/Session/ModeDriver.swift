//
//  ModeDriver.swift
//  LAST LONGER
//
//  One driver per mode. A driver is a small state machine: the engine ticks
//  it with the elapsed time *within that mode*, and it returns a directive
//  when something should happen. Drivers own no timers, play no audio and
//  touch no UI — which makes each one testable by feeding it a synthetic
//  time series.
//

import Foundation
import SwiftUI

// MARK: - Directive

/// What the engine should do at this instant.
struct SessionDirective {
    var phase: SessionPhase
    var category: PhraseCategory?
    var literal: String?                 // exact line, bypasses the phrase bank
    var tokens: [String: String] = [:]
    var haptic: HapticCue?
    var force: Bool = false              // bypass coach-frequency gating

    static func phaseChange(_ phase: SessionPhase,
                            category: PhraseCategory,
                            haptic: HapticCue,
                            tokens: [String: String] = [:]) -> SessionDirective {
        SessionDirective(phase: phase, category: category, literal: nil,
                         tokens: tokens, haptic: haptic, force: true)
    }

    static func cue(_ phase: SessionPhase,
                    category: PhraseCategory,
                    haptic: HapticCue? = nil,
                    force: Bool = false) -> SessionDirective {
        SessionDirective(phase: phase, category: category, literal: nil,
                         haptic: haptic, force: force)
    }

    static func spoken(_ phase: SessionPhase,
                       _ text: String,
                       haptic: HapticCue? = nil) -> SessionDirective {
        SessionDirective(phase: phase, category: nil, literal: text,
                         haptic: haptic, force: true)
    }
}

// MARK: - Phase

enum SessionPhase: String, Codable {
    case idle
    case warmup
    case slow
    case fast
    case hold          // at threshold
    case still         // hands off
    case cooldown
    case recovery
    case free
    case sensation     // Zen
    case finishing     // Release
    case complete

    var label: String {
        switch self {
        case .idle:       return "Standby"
        case .warmup:     return "Warm-up"
        case .slow:       return "Slow"
        case .fast:       return "Fast"
        case .hold:       return "Hold"
        case .still:      return "Stop"
        case .cooldown:   return "Cooldown"
        case .recovery:   return "Recovery"
        case .free:       return "Free"
        case .sensation:  return "Sensation"
        case .finishing:  return "Release"
        case .complete:   return "Complete"
        }
    }

    /// Drives the HUD ring color.
    var tint: Color {
        switch self {
        case .hold, .fast, .finishing:      return Theme.edge
        case .warmup, .slow, .sensation:    return Theme.rising
        case .cooldown, .recovery, .still:  return Theme.safe
        case .free:                         return Theme.data
        case .idle, .complete:              return Theme.inert
        }
    }

    /// Tempo Lock only ticks while the user is actually moving.
    var isActive: Bool {
        switch self {
        case .still, .cooldown, .recovery, .idle, .complete: return false
        default: return true
        }
    }
}

// MARK: - Protocol

protocol ModeDriver: AnyObject {
    var mode: SessionMode { get }
    var phase: SessionPhase { get }

    /// Progress through the mode's own script, 0...1, or nil if open-ended.
    var progress: Double? { get }

    /// Human-readable sub-status for the HUD, e.g. "Rung 4 · 3:00".
    var detail: String { get }

    /// Called on every engine tick with time elapsed inside this mode.
    /// Return nil when nothing should happen.
    func tick(elapsed: TimeInterval) -> SessionDirective?

    /// Called once when this driver takes over.
    func begin() -> SessionDirective?
}

extension ModeDriver {
    var progress: Double? { nil }
    var detail: String { "" }
}

// MARK: - 1. Free Edge

final class FreeEdgeDriver: ModeDriver {
    let mode: SessionMode = .freeEdge
    private(set) var phase: SessionPhase = .free
    var detail: String { "Unstructured" }

    private var nextCueAt: TimeInterval = 0

    func begin() -> SessionDirective? {
        nextCueAt = TimeInterval.random(in: 70...110)
        return .phaseChange(.free, category: .sessionStart, haptic: .phaseChange)
    }

    func tick(elapsed: TimeInterval) -> SessionDirective? {
        guard elapsed >= nextCueAt else { return nil }
        nextCueAt = elapsed + TimeInterval.random(in: 70...110)
        // Breath reminders live in the cooldown register — they're the only
        // structure this mode has.
        return .cue(.free, category: .cooldown, haptic: .tap, force: true)
    }
}

// MARK: - 2. Beginner 5-3-2

final class Beginner532Driver: ModeDriver {
    let mode: SessionMode = .beginner532
    private(set) var phase: SessionPhase = .slow

    /// The 5-3-2 figures are in minutes. Change this constant to run the
    /// drill in a shorter unit for testing.
    static let unit: TimeInterval = 60

    private let script: [(phase: SessionPhase, minutes: Int, line: String)] = [
        (.slow,  5, "Five minutes. Slow."),
        (.fast,  3, "Three minutes. Faster."),
        (.still, 2, "Two minutes. Hands off. Complete stop.")
    ]
    private let rounds = 3

    private var stepIndex = 0
    private var round = 0
    private var stepStart: TimeInterval = 0
    private var didAnnounceStep = false

    var detail: String { "Round \(min(round + 1, rounds)) of \(rounds) · \(phase.label)" }

    var progress: Double? {
        let total = Double(rounds * script.reduce(0) { $0 + $1.minutes })
        let done = Double(round * script.reduce(0) { $0 + $1.minutes }
                          + script.prefix(stepIndex).reduce(0) { $0 + $1.minutes })
        return total > 0 ? done / total : nil
    }

    func begin() -> SessionDirective? {
        stepIndex = 0; round = 0; stepStart = 0; didAnnounceStep = true
        phase = script[0].phase
        return .spoken(phase, "Beginner five three two. \(script[0].line)", haptic: .phaseChange)
    }

    func tick(elapsed: TimeInterval) -> SessionDirective? {
        guard round < rounds else { return nil }
        let step = script[stepIndex]
        let duration = TimeInterval(step.minutes) * Self.unit

        guard elapsed - stepStart >= duration else { return nil }

        stepStart = elapsed
        stepIndex += 1
        if stepIndex >= script.count {
            stepIndex = 0
            round += 1
            if round >= rounds {
                phase = .complete
                return .phaseChange(.complete, category: .sessionEnd, haptic: .sessionEnd)
            }
        }

        let next = script[stepIndex]
        phase = next.phase
        let prefix = (stepIndex == 0) ? "Round \(round + 1). " : ""
        return .spoken(next.phase, prefix + next.line, haptic: .phaseChange)
    }
}

// MARK: - 3. Threshold Ladder

final class ThresholdLadderDriver: ModeDriver {
    let mode: SessionMode = .thresholdLadder
    private(set) var phase: SessionPhase = .hold

    /// Hold durations in seconds. 30s → 10min, per spec.
    private let rungs: [TimeInterval] = [30, 60, 120, 180, 300, 420, 600]

    /// Cooldown between rungs scales with the rung just completed.
    private func cooldown(after rung: Int) -> TimeInterval {
        min(90, 30 + rungs[rung] * 0.15)
    }

    private var rung = 0
    private var isHolding = true
    private var segmentStart: TimeInterval = 0

    var detail: String {
        let seconds = Int(rungs[min(rung, rungs.count - 1)])
        let label = seconds >= 60 ? "\(seconds / 60)m" : "\(seconds)s"
        return isHolding ? "Rung \(rung + 1) · \(label) hold" : "Cooldown"
    }

    var progress: Double? { Double(rung) / Double(rungs.count) }

    func begin() -> SessionDirective? {
        rung = 0; isHolding = true; segmentStart = 0
        phase = .hold
        return .spoken(.hold, "Threshold Ladder. Rung one. Thirty seconds. To the threshold and hold.",
                       haptic: .thresholdHold)
    }

    func tick(elapsed: TimeInterval) -> SessionDirective? {
        guard rung < rungs.count else { return nil }
        let duration = isHolding ? rungs[rung] : cooldown(after: rung)
        guard elapsed - segmentStart >= duration else { return nil }

        segmentStart = elapsed

        if isHolding {
            isHolding = false
            phase = .cooldown
            return .phaseChange(.cooldown, category: .cooldown, haptic: .cooldown,
                                tokens: ["SEC": String(Int(cooldown(after: rung)))])
        }

        rung += 1
        if rung >= rungs.count {
            phase = .complete
            return .spoken(.complete, "Ladder complete. Every rung. Well done.", haptic: .sessionEnd)
        }

        isHolding = true
        phase = .hold
        let seconds = Int(rungs[rung])
        let spoken = seconds >= 60 ? "\(seconds / 60) minute" + (seconds == 60 ? "" : "s")
                                   : "\(seconds) seconds"
        return .spoken(.hold, "Rung \(rung + 1). \(spoken). Back to the threshold.",
                       haptic: .thresholdHold)
    }
}

// MARK: - 4. Random Edge

final class RandomEdgeDriver: ModeDriver {
    let mode: SessionMode = .randomEdge
    private(set) var phase: SessionPhase = .free

    private var nextEventAt: TimeInterval = 0
    private var holdUntil: TimeInterval?

    var detail: String { holdUntil != nil ? "Holding" : "Awaiting prompt" }

    func begin() -> SessionDirective? {
        nextEventAt = TimeInterval.random(in: 45...120)
        phase = .free
        return .spoken(.free, "Random Hold. Prompts arrive without warning. Stay ready.",
                       haptic: .phaseChange)
    }

    func tick(elapsed: TimeInterval) -> SessionDirective? {
        // End of an active hold → drop back to free.
        if let until = holdUntil, elapsed >= until {
            holdUntil = nil
            phase = .free
            nextEventAt = elapsed + TimeInterval.random(in: 45...180)
            return .phaseChange(.free, category: .cooldown, haptic: .cooldown)
        }

        guard holdUntil == nil, elapsed >= nextEventAt else { return nil }

        let hold = TimeInterval.random(in: 20...75)
        holdUntil = elapsed + hold
        phase = .hold
        return .phaseChange(.hold, category: .thresholdPrompt, haptic: .thresholdHold)
    }
}

// MARK: - 5. Discipline Drill

final class DisciplineDrillDriver: ModeDriver {
    let mode: SessionMode = .disciplineDrill
    private(set) var phase: SessionPhase = .hold

    private let workWindow: ClosedRange<TimeInterval> = 60...150
    private let pauseDuration: TimeInterval = 30

    private var segmentEnd: TimeInterval = 0
    private var isWorking = true
    private var reps = 0

    var detail: String { isWorking ? "Rep \(reps + 1)" : "Full stop · 30s" }

    func begin() -> SessionDirective? {
        reps = 0; isWorking = true
        segmentEnd = TimeInterval.random(in: workWindow)
        phase = .hold
        return .spoken(.hold, "Discipline Drill. You stop when I say stop. Begin.",
                       haptic: .phaseChange)
    }

    func tick(elapsed: TimeInterval) -> SessionDirective? {
        guard elapsed >= segmentEnd else { return nil }

        if isWorking {
            isWorking = false
            reps += 1
            segmentEnd = elapsed + pauseDuration
            phase = .still
            return .spoken(.still, "Hold. Pause thirty seconds. Hands off.", haptic: .warning)
        } else {
            isWorking = true
            segmentEnd = elapsed + TimeInterval.random(in: workWindow)
            phase = .hold
            return .spoken(.hold, "Start again.", haptic: .phaseChange)
        }
    }
}

// MARK: - 6. Grip Pressure Repair

final class GripPressureRepairDriver: ModeDriver {
    let mode: SessionMode = .gripPressureRepair
    private(set) var phase: SessionPhase = .slow

    private let interval: TimeInterval = 120
    private var nextCueAt: TimeInterval = 120

    var detail: String { "Light grip · slow pacing" }

    func begin() -> SessionDirective? {
        nextCueAt = interval
        phase = .slow
        return .spoken(.slow, "Grip Pressure Repair. Loosen your grip. Slow rhythmic pacing.",
                       haptic: .phaseChange)
    }

    func tick(elapsed: TimeInterval) -> SessionDirective? {
        guard elapsed >= nextCueAt else { return nil }
        nextCueAt = elapsed + interval
        return .cue(.slow, category: .gripReminder, haptic: .tap, force: true)
    }
}

// MARK: - 7. Release Mode

final class ReleaseDriver: ModeDriver {
    let mode: SessionMode = .release
    private(set) var phase: SessionPhase = .finishing

    private var didNudge = false

    var detail: String { "Reset" }

    func begin() -> SessionDirective? {
        didNudge = false
        phase = .finishing
        return .spoken(.finishing,
                       "Release Mode. Reach the end goal as fast as possible. This is a reset, not a test.",
                       haptic: .phaseChange)
    }

    func tick(elapsed: TimeInterval) -> SessionDirective? {
        guard !didNudge, elapsed >= 90 else { return nil }
        didNudge = true
        return .cue(.finishing, category: .encouragement, haptic: .tap, force: true)
    }
}

// MARK: - 8. Zen Mode

final class ZenDriver: ModeDriver {
    let mode: SessionMode = .zen
    private(set) var phase: SessionPhase = .sensation

    private var nextCueAt: TimeInterval = 0

    var detail: String { "Eyes closed" }

    func begin() -> SessionDirective? {
        nextCueAt = TimeInterval.random(in: 120...200)
        phase = .sensation
        return .cue(.sensation, category: .zen, haptic: .cooldown, force: true)
    }

    func tick(elapsed: TimeInterval) -> SessionDirective? {
        guard elapsed >= nextCueAt else { return nil }
        nextCueAt = elapsed + TimeInterval.random(in: 120...200)
        return .cue(.sensation, category: .zen, haptic: .tap, force: true)
    }
}

// MARK: - Factory

enum ModeDriverFactory {
    static func make(_ mode: SessionMode) -> ModeDriver {
        switch mode {
        case .freeEdge:           return FreeEdgeDriver()
        case .beginner532:        return Beginner532Driver()
        case .thresholdLadder:    return ThresholdLadderDriver()
        case .randomEdge:         return RandomEdgeDriver()
        case .disciplineDrill:    return DisciplineDrillDriver()
        case .gripPressureRepair: return GripPressureRepairDriver()
        case .release:            return ReleaseDriver()
        case .zen:                return ZenDriver()
        }
    }
}
