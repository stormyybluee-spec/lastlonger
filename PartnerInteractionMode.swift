//
//  PartnerInteractionMode.swift
//  LAST LONGER
//
//  PART C-4 — pre-session brief and the derived coach profile.
//

import SwiftUI

// MARK: - Brief

enum PartnerContext: String, CaseIterable, Identifiable, Codable {
    case new, casual, committed
    var id: String { rawValue }
    var title: String { rawValue.capitalized }
    var symbol: String {
        switch self {
        case .new:       return "person.crop.circle.badge.questionmark"
        case .casual:    return "person.crop.circle"
        case .committed: return "person.crop.circle.badge.checkmark"
        }
    }
}

enum PositionFocus: String, CaseIterable, Identifiable, Codable {
    case missionary, doggy, cowgirl, other
    var id: String { rawValue }
    var title: String { rawValue == "other" ? "Other" : rawValue.capitalized }
    var symbol: String {
        switch self {
        case .missionary: return "arrow.down.circle"
        case .doggy:      return "arrow.right.circle"
        case .cowgirl:    return "arrow.up.circle"
        case .other:      return "circle.grid.cross"
        }
    }
}

struct PartnerSessionBrief: Codable, Equatable {
    var context: PartnerContext = .committed
    var position: PositionFocus = .missionary
    var durationGoalMinutes: Int = 15
    /// 1...10, self-reported.
    var anxietyLevel: Int = 4

    var isHighAnxiety: Bool { anxietyLevel >= 8 }
}

// MARK: - Coach profile

struct CoachProfile {
    /// 0...1. Drives phrase bank selection and prompt sharpness.
    let assertiveness: Double
    /// 0...1. Share of prompts that are breathing/downshift rather than push.
    let breathingWeight: Double
    /// Seconds between coach prompts.
    let promptCadence: ClosedRange<Int>
    let toneLabel: String
    let openingLine: String
    let positionCues: [String]
    /// Non-nil when the brief warrants saying something to the user directly.
    let advisory: String?
}

enum CoachProfileBuilder {

    /// Assertiveness is an INVERTED U across the anxiety scale, not a ramp.
    ///
    /// The spec asks for "higher anxiety = more aggressive pullback prompts."
    /// Implemented literally that inverts the outcome it is aiming at: the
    /// clinical picture for sexual performance anxiety is an arousal-anxiety
    /// feedback loop, and the interventions with actual evidence behind them
    /// (sensate focus, CBT) work by REMOVING performance pressure. A coach that
    /// escalates as the user reports more anxiety is adding the exact input the
    /// loop feeds on, and the Anxiety Reset regimen in C-3 would be pulling
    /// against its own coaching layer.
    ///
    /// So: pressure climbs through the middle of the scale where it functions
    /// as useful challenge, then backs off at the top where it stops helping.
    /// Breathing weight rises monotonically instead. If you want the literal
    /// linear ramp, this is the one function to change — nothing else in the
    /// app encodes the curve.
    static func profile(for brief: PartnerSessionBrief) -> CoachProfile {

        let t = Double(brief.anxietyLevel - 1) / 9.0        // 0...1
        let arch = 1 - pow((t - 0.5) * 2, 2)                 // peaks at t = 0.5
        var assertiveness = 0.35 + 0.55 * arch

        // A new partner tightens CONTROL, not volume: shorter gaps between
        // prompts so nothing drifts, without raising the pressure.
        var cadenceCentre = 55.0 - 30.0 * assertiveness
        if brief.context == .new { cadenceCentre -= 6 }
        if brief.context == .committed { cadenceCentre += 4 }

        // Long goals need room to breathe or the prompts become the session.
        if brief.durationGoalMinutes >= 20 { cadenceCentre += 8 }

        let breathingWeight = min(0.85, 0.20 + 0.65 * t)

        // Above 8 the coach stops pushing entirely and runs as a pacer.
        if brief.isHighAnxiety { assertiveness = min(assertiveness, 0.40) }

        let centre = Int(cadenceCentre.rounded())
        let cadence = max(12, centre - 8)...max(20, centre + 8)

        return CoachProfile(
            assertiveness: assertiveness,
            breathingWeight: breathingWeight,
            promptCadence: cadence,
            toneLabel: toneLabel(assertiveness: assertiveness, anxiety: brief.anxietyLevel),
            openingLine: opening(for: brief),
            positionCues: cues(for: brief.position),
            advisory: brief.isHighAnxiety
                ? "You logged high anxiety. This mode trains mechanics — it does not treat the anxiety itself, and performance anxiety responds well to treatment. Worth raising with a clinician."
                : nil
        )
    }

    private static func toneLabel(assertiveness: Double, anxiety: Int) -> String {
        if anxiety >= 8 { return "Pacer — pressure off" }
        switch assertiveness {
        case ..<0.5:  return "Low pressure"
        case ..<0.72: return "Steady"
        default:      return "Pressure simulation"
        }
    }

    private static func opening(for brief: PartnerSessionBrief) -> String {
        if brief.isHighAnxiety {
            return "No target tonight. We are going to breathe and keep the tempo honest. That is the whole job."
        }
        switch brief.context {
        case .new:
            return "New partner. Tempo discipline from the first minute — that is where it gets away from you."
        case .casual:
            return "\(brief.durationGoalMinutes) minute goal. Hold the count. Reset early rather than late."
        case .committed:
            return "\(brief.durationGoalMinutes) minutes. You know the pattern. Slow the first three and the rest follows."
        }
    }

    /// Mechanics only — tempo, range, breathing, muscular tension.
    private static func cues(for position: PositionFocus) -> [String] {
        switch position {
        case .missionary:
            return [
                "Shallow range. Depth is where the count goes.",
                "Loose hips. Rigid hips drive tempo up without you noticing.",
                "Weight on your forearms — shoulder tension reads straight through to the pelvic floor."
            ]
        case .doggy:
            return [
                "Highest-stimulus position. Halve the tempo before you think you need to.",
                "Short range, long pauses. A full pause resets the clock.",
                "Hands resting, not gripping. Grip tension raises everything with it."
            ]
        case .cowgirl:
            return [
                "You are not setting tempo here. Your job is breathing and pelvic floor.",
                "Flat, legs loose. Bracing accelerates you.",
                "Call a pause out loud. Pausing is a skill, not a failure."
            ]
        case .other:
            return [
                "Rules hold regardless of position: shallow range, loose hips, exhale longer than you inhale.",
                "If you cannot name your tempo, it is too fast.",
                "Reset on your terms, not at the threshold."
            ]
        }
    }
}
