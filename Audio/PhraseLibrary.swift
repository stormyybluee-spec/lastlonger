//
//  PhraseLibrary.swift
//  LAST LONGER
//
//  Four personas × sixteen categories. Lines are written in character:
//  the Drill Sergeant clips his consonants, the Yogi never uses an
//  imperative without a breath in front of it, the Dominant states rather
//  than asks, and the Hypnotherapist trails … into the next clause.
//
//  TOKENS
//    {MODE}  → name of the mode being switched to
//    {N}     → an integer supplied by the caller (rung number, rep count)
//    {SEC}   → a duration in seconds
//    {MATH}  → generated arithmetic prompt (distraction category only)
//
//  Substitution happens in VoiceCoach.render(_:tokens:). Any token left
//  unresolved is stripped rather than spoken aloud.
//

import Foundation

// MARK: - Categories

enum PhraseCategory: String, CaseIterable, Codable {
    case sessionStart
    case thresholdPrompt
    case cooldown
    case distraction
    case gripReminder
    case sessionEnd
    case warning              // heart-rate spike / physiological alarm
    case encouragement
    case challenge
    case emergency            // emergency protocol
    case partnerMode
    case zen
    case modeSwitch
    case interrupt            // Coach Interrupt: "What's your arousal level?"
    case failureProtection    // user went past the edge — de-escalate, no shame
    case custom               // user-injected

    /// Mandatory categories are always spoken; optional ones are gated by
    /// CoachFrequency.optionalChance.
    var isMandatory: Bool {
        switch self {
        case .sessionStart, .sessionEnd, .modeSwitch, .warning,
             .emergency, .failureProtection, .interrupt:
            return true
        case .thresholdPrompt, .cooldown, .gripReminder, .zen:
            return true
        case .distraction, .encouragement, .challenge, .partnerMode, .custom:
            return false
        }
    }
}

// MARK: - Library

enum PhraseLibrary {

    /// Lines injected by the user, merged into the rotation at runtime.
    /// Set once from SessionSettings before a session starts.
    static var customPhrases: [String] = []

    static func phrases(for persona: VoicePersona, category: PhraseCategory) -> [String] {
        if category == .custom { return customPhrases }
        return bank[persona]?[category] ?? []
    }

    /// Debug helper — verifies each persona is near the ~70-line target and
    /// that no category is empty. Call from a unit test.
    static func audit() -> [String] {
        var report: [String] = []
        for persona in VoicePersona.allCases {
            let table = bank[persona] ?? [:]
            let total = table.values.reduce(0) { $0 + $1.count }
            report.append("\(persona.name): \(total) lines")
            for category in PhraseCategory.allCases where category != .custom {
                if (table[category] ?? []).isEmpty {
                    report.append("  ⚠︎ empty: \(category.rawValue)")
                }
            }
        }
        return report
    }

    // MARK: - Bank

    static let bank: [VoicePersona: [PhraseCategory: [String]]] = [

        // ─────────────────────────────────────────────────────────────
        .drillSergeant: [
            .sessionStart: [
                "On my count. We start now.",
                "Session live. You do not quit early.",
                "Eyes forward. Breathing steady. Begin.",
                "You showed up. Now earn it.",
                "Clock's running. Move."
            ],
            .thresholdPrompt: [
                "Take it to the line. Not past it.",
                "Close. Closer. Hold there.",
                "Right to the threshold. Stop.",
                "That's the line. Do not cross it.",
                "Approach. Hold. Do not rush this."
            ],
            .cooldown: [
                "Recover. All the way down.",
                "Hands still. Breathe out.",
                "Down. Recover. That's an order.",
                "Reset. Let it drop.",
                "Cool it down. {SEC} seconds."
            ],
            .distraction: [
                "Answer me. {MATH}",
                "Head in the game. {MATH}",
                "Quick. {MATH}",
                "Don't stall. {MATH}"
            ],
            .gripReminder: [
                "Loosen that grip. Now.",
                "Too tight. Ease off.",
                "Lighter. Slower. Control it.",
                "Death grip. Fix it."
            ],
            .sessionEnd: [
                "Session complete. Dismissed.",
                "That's the drill. Good work.",
                "Done. You held the line.",
                "Finished. Log it and rest."
            ],
            .warning: [
                "Heart rate's climbing. Slow down.",
                "Too hot. Back it off now.",
                "Red zone. Stop and breathe.",
                "Pull back. You're overcooking it."
            ],
            .encouragement: [
                "That's control. Keep it.",
                "Solid. Hold that.",
                "Better than last round.",
                "Good. Don't get cocky.",
                "You've got more than you think."
            ],
            .challenge: [
                "Thirty more seconds. Prove it.",
                "You want easy, go home.",
                "One more rung. Move.",
                "That was warm-up. Now work."
            ],
            .emergency: [
                "Stop. Hands off. Breathe.",
                "Full stop. Sit up. In through the nose.",
                "Abort. Slow breathing. Now."
            ],
            .partnerMode: [
                "Communicate. Out loud.",
                "Match their pace. Not yours.",
                "Check in. Then continue."
            ],
            .zen: [
                "Eyes shut. Nothing else.",
                "No screen. Just feel it.",
                "Silence. Focus."
            ],
            .modeSwitch: [
                "Phase two. {MODE}. Move.",
                "Switching. {MODE}. Adjust.",
                "New drill. {MODE}."
            ],
            .interrupt: [
                "Report. Arousal level, one to ten.",
                "Number. Now. How close?",
                "Status check. Where are you?"
            ],
            .failureProtection: [
                "Went over. Happens. Reset and continue.",
                "Not a failure. Data. Breathe.",
                "You crossed it. Log it, move on."
            ]
        ],

        // ─────────────────────────────────────────────────────────────
        .calmYogi: [
            .sessionStart: [
                "Settle in. Let the first breath be slow.",
                "We begin gently. There is no rush here.",
                "Soften your shoulders. And we start.",
                "Arrive first. Then we move.",
                "Breathe in through the nose. Beginning now."
            ],
            .thresholdPrompt: [
                "Move toward the threshold, and rest there.",
                "Approach slowly. Notice the moment before.",
                "Come close. Stay curious, not urgent.",
                "Find the threshold. Breathe into it.",
                "Right there. Hold, and keep breathing."
            ],
            .cooldown: [
                "Release. Let everything settle.",
                "Rest your hands. Long exhale.",
                "Let the wave pass. It always does.",
                "Soften. {SEC} seconds of stillness.",
                "Come back down. Slowly."
            ],
            .distraction: [
                "Gently, with me. {MATH}",
                "A small puzzle. {MATH}",
                "Take your attention here. {MATH}"
            ],
            .gripReminder: [
                "Loosen the hand. Let it be light.",
                "Less pressure. Much less.",
                "Open the grip. Slow the rhythm.",
                "Lighter touch. Nothing to prove."
            ],
            .sessionEnd: [
                "That's enough for today. Well done.",
                "We close here. Rest a moment before you move.",
                "Complete. Take one more full breath.",
                "Finished. Be kind to yourself now."
            ],
            .warning: [
                "Your body is asking you to slow down.",
                "Heart rate is high. Ease back, and breathe.",
                "Too fast. Come down with me.",
                "Pause here. Longer exhale than inhale."
            ],
            .encouragement: [
                "Beautifully steady.",
                "That's the awareness we're building.",
                "You're staying with it. Good.",
                "Nothing forced. Exactly right.",
                "This is patience. Keep going."
            ],
            .challenge: [
                "Can you stay one breath longer?",
                "See if the next one can be slower.",
                "A little more stillness. Just a little.",
                "Try holding without tensing."
            ],
            .emergency: [
                "Stop. Hands away. Breathe with me.",
                "Come back. In for four, out for eight.",
                "Let it all go. You're safe. Just breathe."
            ],
            .partnerMode: [
                "Speak, so they know where you are.",
                "Slow to their rhythm.",
                "Pause together. Then continue."
            ],
            .zen: [
                "Eyes closed. Only sensation.",
                "No image. No sound. Just this.",
                "Follow the feeling, not the thought.",
                "Rest your attention where it touches."
            ],
            .modeSwitch: [
                "We move on now. {MODE}.",
                "Second phase. {MODE}. Settle into it.",
                "Changing. {MODE}. No hurry."
            ],
            .interrupt: [
                "Where are you? One to ten.",
                "Check in with yourself. How close?",
                "Notice your level. Say it out loud."
            ],
            .failureProtection: [
                "That's alright. Truly. Breathe and reset.",
                "You went past. It's information, not a mistake.",
                "No judgment here. Begin again when ready."
            ]
        ],

        // ─────────────────────────────────────────────────────────────
        .dominant: [
            .sessionStart: [
                "We start when I say. Start.",
                "You'll follow my pace. Nothing else.",
                "I'm in control of this session. Begin.",
                "Hands ready. You wait for me.",
                "Listen carefully. We begin now."
            ],
            .thresholdPrompt: [
                "Take it to the threshold. Stop where I tell you.",
                "Closer. Closer. That's far enough.",
                "You go until I say stop. Go.",
                "Right there. You hold that for me.",
                "To the line. Not one inch past it."
            ],
            .cooldown: [
                "Stop. Hands off. I decide when you continue.",
                "That's enough. Down.",
                "You'll wait {SEC} seconds. Wait.",
                "Off. Breathe. Don't move.",
                "Cool down. I'll tell you when."
            ],
            .distraction: [
                "Answer. {MATH}",
                "You're not paying attention. {MATH}",
                "Focus on me. {MATH}"
            ],
            .gripReminder: [
                "Loosen it. I said loosen it.",
                "Too tight. Let go a little.",
                "Lighter. You don't need that pressure.",
                "Ease the grip. Slow it down."
            ],
            .sessionEnd: [
                "We're done. You did well.",
                "That's the end of it. Good.",
                "Session over. You held for me.",
                "Finished. I'm satisfied with that."
            ],
            .warning: [
                "Slow down. Now.",
                "Your heart rate is too high. Recover.",
                "Stop pushing. Breathe.",
                "You're going too hard. Ease it."
            ],
            .encouragement: [
                "Good. That's exactly what I wanted.",
                "You have more control than you admit.",
                "Better. Stay there.",
                "That's it. Don't lose it.",
                "I like that. Keep it."
            ],
            .challenge: [
                "Longer. You can give me longer.",
                "You stopped early. Again.",
                "Show me you can hold that.",
                "One more. I know you have it."
            ],
            .emergency: [
                "Stop everything. Hands away. Breathe.",
                "Sit up. Slow breaths. With me.",
                "We stop here. Breathe out fully."
            ],
            .partnerMode: [
                "Tell them where you are. Out loud.",
                "Their pace. Not yours.",
                "Both of you, pause. Now."
            ],
            .zen: [
                "Eyes closed. Keep them closed.",
                "You don't need to see anything.",
                "Only what you feel. Nothing else."
            ],
            .modeSwitch: [
                "We're changing. {MODE}. Keep up.",
                "Phase two. {MODE}.",
                "New rules now. {MODE}."
            ],
            .interrupt: [
                "Tell me your arousal level. One to ten.",
                "Number. Now.",
                "How close are you? Answer honestly."
            ],
            .failureProtection: [
                "You went over. I'm not angry. Reset.",
                "That's fine. We continue.",
                "Past the line. Note it. Start again."
            ]
        ],

        // ─────────────────────────────────────────────────────────────
        .hypnotherapist: [
            .sessionStart: [
                "Let your eyes soften … and we begin.",
                "Nothing to do … except follow my voice.",
                "Sinking … slowly … starting now.",
                "Each breath takes you further down.",
                "You are already relaxing … and we start here."
            ],
            .thresholdPrompt: [
                "Drifting closer … closer … and stopping there.",
                "Toward the threshold … slowly … and holding.",
                "Notice how close you are … and stay.",
                "Right at the boundary … suspended there.",
                "Approaching … and pausing … just before."
            ],
            .cooldown: [
                "Letting go … completely … drifting back down.",
                "Hands still … everything softening.",
                "Sinking away from it … {SEC} seconds.",
                "Release … and float.",
                "Down … deeper … and resting."
            ],
            .distraction: [
                "Somewhere in the back of your mind … {MATH}",
                "A small question, drifting past … {MATH}",
                "Answer without effort … {MATH}"
            ],
            .gripReminder: [
                "Let the hand loosen … almost by itself.",
                "Lighter … and lighter still.",
                "Feel the pressure fading away.",
                "Softening the grip … slowly."
            ],
            .sessionEnd: [
                "Coming back now … slowly … and complete.",
                "We finish here. Rest as long as you need.",
                "Session ending … drifting up … eyes open when ready.",
                "That's all. Stay with the calm a moment longer."
            ],
            .warning: [
                "Your heart is racing … slow it with me.",
                "Too quick. Breathe out … longer.",
                "Come down … slowly … pressure fading.",
                "Ease back … there is no hurry here."
            ],
            .encouragement: [
                "So steady … effortlessly.",
                "You're holding without trying.",
                "That's the control … it comes on its own.",
                "Deeper each time … and easier.",
                "Exactly right … nothing forced."
            ],
            .challenge: [
                "A little longer … you barely notice the effort.",
                "One more breath … and one more after that.",
                "See how long it can last … without trying."
            ],
            .emergency: [
                "Stop … hands away … breathe out slowly.",
                "Sit up. In through the nose … out through the mouth.",
                "Everything stops here. Just breathe."
            ],
            .partnerMode: [
                "Say it out loud … where you are.",
                "Match their rhythm … and drift.",
                "Both of you … pausing here."
            ],
            .zen: [
                "Eyes closed … nothing to look at.",
                "Only the sensation … nothing else exists.",
                "Following the feeling … deeper.",
                "No thought … only this."
            ],
            .modeSwitch: [
                "Drifting into the next phase … {MODE}.",
                "Changing now … {MODE} … stay with me.",
                "Second phase … {MODE} … slowly."
            ],
            .interrupt: [
                "Where are you … one to ten?",
                "Notice the level … and say it.",
                "How close … in a number?"
            ],
            .failureProtection: [
                "You drifted past … and that's perfectly fine.",
                "No failure here … only noticing.",
                "It passed. Let it go, and settle again."
            ]
        ]
    ]
}

// MARK: - Distraction generation

/// Math prompts for the distraction category. Difficulty is deliberately
/// low — the point is to occupy attention, not to be solvable only by
/// someone with a clear head.
enum DistractionGenerator {

    static func next() -> String {
        switch Int.random(in: 0..<4) {
        case 0:
            let a = Int.random(in: 12...48), b = Int.random(in: 12...48)
            return "What's \(a) plus \(b)?"
        case 1:
            let a = Int.random(in: 40...99), b = Int.random(in: 10...39)
            return "What's \(a) minus \(b)?"
        case 2:
            let a = Int.random(in: 3...12), b = Int.random(in: 3...9)
            return "What's \(a) times \(b)?"
        default:
            let start = Int.random(in: 60...99), step = [3, 4, 7].randomElement()!
            return "Count backwards from \(start) by \(step)."
        }
    }
}
