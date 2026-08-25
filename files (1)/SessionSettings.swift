//
//  SessionSettings.swift
//  LAST LONGER
//
//  Everything the bottom sheet configures. Codable so the last-used
//  configuration round-trips through UserDefaults, and so a saved
//  Pre-Session Ritual can restore an exact setup.
//

import Foundation

// MARK: - Supporting enums

enum AutoSwitchPolicy: Codable, Hashable, Identifiable, CaseIterable {
    case minutes(Int)     // 10 / 15 / 20
    case random           // uniform 8...22 min, resolved at session start
    case manual           // user taps "Switch now" on the session HUD

    static var allCases: [AutoSwitchPolicy] {
        [.minutes(10), .minutes(15), .minutes(20), .random, .manual]
    }

    var id: String { label }

    var label: String {
        switch self {
        case .minutes(let m): return "\(m)"
        case .random:         return "Random"
        case .manual:         return "Manual"
        }
    }

    /// Concrete switch time, or nil when the user drives the switch by hand.
    func resolvedSwitchTime() -> TimeInterval? {
        switch self {
        case .minutes(let m): return TimeInterval(m * 60)
        case .random:         return TimeInterval(Int.random(in: 8...22) * 60)
        case .manual:         return nil
        }
    }
}

enum BinauralProgram: String, CaseIterable, Codable, Identifiable {
    case off, theta, alpha, beta
    var id: String { rawValue }
    var label: String { rawValue.capitalized }

    /// Difference tone between the two ears, in Hz.
    var beatFrequency: Double {
        switch self {
        case .off:   return 0
        case .theta: return 6.0
        case .alpha: return 10.0
        case .beta:  return 20.0
        }
    }

    /// Carrier pitch. Lower carriers make the beat easier to perceive.
    var carrierFrequency: Double {
        switch self {
        case .off:   return 0
        case .theta: return 180
        case .alpha: return 210
        case .beta:  return 240
        }
    }
}

enum CoachFrequency: String, CaseIterable, Codable, Identifiable {
    case minimal, normal, aggressive
    var id: String { rawValue }
    var label: String { rawValue.capitalized }

    /// Probability that an *optional* line (encouragement, challenge) is spoken.
    /// Mandatory lines — phase changes, warnings, start, end — ignore this.
    var optionalChance: Double {
        switch self {
        case .minimal:    return 0.0
        case .normal:     return 0.45
        case .aggressive: return 0.9
        }
    }

    /// Minimum gap between any two spoken lines.
    var minimumGap: TimeInterval {
        switch self {
        case .minimal:    return 90
        case .normal:     return 35
        case .aggressive: return 12
        }
    }
}

enum DurationCap: Int, CaseIterable, Codable, Identifiable {
    case none = 0, ten = 10, twenty = 20, thirty = 30
    var id: Int { rawValue }
    var label: String { self == .none ? "None" : "\(rawValue)" }
    var interval: TimeInterval? { self == .none ? nil : TimeInterval(rawValue * 60) }
}

/// User-logged context. Purely a journal tag — the app never dispenses
/// dosing guidance and never alters coaching based on these.
enum EnhancementTag: String, CaseIterable, Codable, Identifiable {
    case topicalOintment  = "Topical Ointment"
    case kanna            = "Kanna"
    case lTheanine        = "L-Theanine"
    case alcohol          = "Alcohol"
    case herbal           = "Herbal Supplements"
    case nothing          = "Nothing"

    var id: String { rawValue }
    var label: String { rawValue }

    var symbol: String {
        switch self {
        case .topicalOintment: return "drop.fill"
        case .kanna:           return "leaf.fill"
        case .lTheanine:       return "pills.fill"
        case .alcohol:         return "wineglass.fill"
        case .herbal:          return "camera.macro"
        case .nothing:         return "circle.slash"
        }
    }

    /// "Nothing" is exclusive with every other tag.
    var isExclusive: Bool { self == .nothing }
}

// MARK: - Settings

struct SessionSettings: Codable, Equatable {

    // Coach
    var persona: VoicePersona = .drillSergeant
    var voiceVolume: Double = 0.8            // 0...1
    var coachFrequency: CoachFrequency = .normal
    var coachInterrupt: Bool = false          // periodic "arousal level?" check-in
    var randomDistractions: Bool = false      // math prompts

    // Feel
    var hapticIntensity: HapticIntensity = .medium
    var silentMode: Bool = false              // haptics only, no speech
    var tempoLock: Bool = false               // metronome haptic during active phases
    var tempoBPM: Int = 60

    // Audio
    var binaural: BinauralProgram = .off

    // Bounds
    var durationCap: DurationCap = .none

    // System
    var focusModeAutoEnable: Bool = false

    // Journal
    var enhancementStack: Set<EnhancementTag> = []
    var usePreSessionRitual: Bool = false

    // Custom coach lines (max 10, enforced by `addCustomPhrase`)
    var customPhrases: [String] = []

    static let maxCustomPhrases = 10

    mutating func addCustomPhrase(_ phrase: String) {
        let trimmed = phrase.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !trimmed.isEmpty,
              customPhrases.count < Self.maxCustomPhrases,
              !customPhrases.contains(trimmed) else { return }
        customPhrases.append(trimmed)
    }

    /// Applies the "Nothing" exclusivity rule.
    mutating func toggleEnhancement(_ tag: EnhancementTag) {
        if tag.isExclusive {
            enhancementStack = enhancementStack.contains(tag) ? [] : [tag]
        } else {
            enhancementStack.remove(.nothing)
            if enhancementStack.contains(tag) {
                enhancementStack.remove(tag)
            } else {
                enhancementStack.insert(tag)
            }
        }
    }

    /// Silent Mode overrides the volume slider entirely.
    var effectiveVoiceVolume: Float { silentMode ? 0 : Float(voiceVolume) }
}

// MARK: - Plan

/// The immutable result of the Mode Selection screen — what Countdown and
/// SessionEngine both consume.
struct SessionPlan: Codable, Equatable {
    var primary: SessionMode
    var secondary: SessionMode?
    var autoSwitch: AutoSwitchPolicy
    var settings: SessionSettings

    var isSplit: Bool { secondary != nil }

    var displayTitle: String {
        guard let secondary else { return primary.name }
        return "\(primary.name) → \(secondary.name)"
    }

    /// When the second mode takes over.
    ///
    /// Precedence: an explicit auto-switch time wins; otherwise, if a duration
    /// cap is set, split it down the middle per the mode-switch spec.
    func switchTime() -> TimeInterval? {
        guard isSplit else { return nil }
        if let explicit = autoSwitch.resolvedSwitchTime() { return explicit }
        if let cap = settings.durationCap.interval { return cap / 2 }
        return nil   // manual
    }

    /// Hard stop, if any.
    var hardStop: TimeInterval? { settings.durationCap.interval }
}

// MARK: - Persistence

enum SettingsStore {
    private static let key = "lastlonger.settings.v1"

    static func load() -> SessionSettings {
        guard let data = UserDefaults.standard.data(forKey: key),
              let decoded = try? JSONDecoder().decode(SessionSettings.self, from: data)
        else { return SessionSettings() }
        return decoded
    }

    static func save(_ settings: SessionSettings) {
        guard let data = try? JSONEncoder().encode(settings) else { return }
        UserDefaults.standard.set(data, forKey: key)
    }
}
