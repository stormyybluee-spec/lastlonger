//
//  ModelCompat.swift
//  LAST LONGER
//
//  Members re-homed during consolidation.
//
//  The project was assembled from seven independently-written Parts, several of
//  which declared their own copy of the same model enum. Two enums of one name
//  in one module is an invalid redeclaration, so each name now has a single
//  declaration — generally the `Models/DomainModels.swift` one, which is public,
//  Sendable, and carries the stable raw values the CoreData defaults reference.
//
//  The deleted copies were not always strict subsets: a few carried members the
//  surviving declaration lacked, and screens call them. Those members live here
//  as extensions rather than being pasted into DomainModels.swift, so it stays a
//  clean description of the domain and the merge stays reviewable in one place.
//
//  Nothing here changes behaviour. Each member returns what the deleted copy
//  returned.
//

import Foundation
import SwiftUI

// MARK: - HapticIntensity

// Four declarations of this enum existed: DomainModels.swift, LLSettings.swift,
// HapticEngine.swift and Haptics.swift. DomainModels' survived; it already had
// `scale`, which is the only member the haptic engines call.
//
// The settings UI needs two things it did not have. `SessionConfigSheet` writes
// `ForEach(HapticIntensity.allCases) { level in ... level.label }`, which needs
// both `Identifiable` and `label`.
//
// One case was dropped deliberately: LLSettings' copy had `.off` alongside
// low/medium/high. No call site referenced `.off`, and adding a fourth case
// would have put a dead "Off" chip in the intensity picker, so the three-case
// set is kept. Silent running is already handled by the Silent Mode toggle.
extension HapticIntensity: Identifiable {
    public var id: String { rawValue }

    /// Uppercase chip title. From Haptics.swift's copy.
    public var label: String { rawValue.uppercased() }

    /// Sentence-case form. From LLSettings' copy, which used it for row values.
    public var title: String { rawValue.capitalized }
}

// MARK: - TalkFrequency

// LLSettings' copy conformed to `Identifiable` and vended `title`; DomainModels'
// has neither, only `interval`.
extension TalkFrequency: Identifiable {
    public var id: String { rawValue }
    public var title: String { rawValue.capitalized }
}

// MARK: - AngelSkin

extension AngelSkin {
    /// LLSettings' copy called this `unlockBadgeID`; DomainModels' calls the same
    /// thing `unlockedBy`. Aliased rather than renamed so both spellings resolve.
    public var unlockBadgeID: BadgeID? { unlockedBy }
}

// MARK: - DurationCap

// Two declarations: Models/SessionSettings.swift (Int raw value — the minutes
// themselves, `.none` == 0) and LLSettings.swift (String raw value). The
// SessionSettings one survived because `SessionSettings.hardStop` and the
// SessionConfigSheet picker both read it, and because an Int raw value that *is*
// the duration cannot drift out of sync with the label.
//
// These two members came from the LLSettings copy.
extension DurationCap {
    /// "None" / "10 min" / "20 min" / "30 min".
    var title: String { self == .none ? "None" : "\(rawValue) min" }

    /// Minutes, or nil when uncapped.
    var minutes: Int? { self == .none ? nil : rawValue }
}

// MARK: - Settings ↔ Config bridges

// `SessionSettings` (the per-session tuning object the config sheet drives) and
// `SessionConfig` (the persisted, Codable shape a Playlist stores) carry the
// same preferences under differently-named enums. These map one to the other so
// a session's settings can be saved as a playlist and vice-versa.

extension VoicePersona {
    /// The domain `CoachPersona` this settings persona corresponds to. The two
    /// share case names but not raw values, so map by case.
    var coachPersona: CoachPersona {
        switch self {
        case .drillSergeant:  return .drillSergeant
        case .calmYogi:       return .calmYogi
        case .dominant:       return .dominant
        case .hypnotherapist: return .hypnotherapist
        }
    }
}

extension CoachPersona {
    /// The settings `VoicePersona` for this domain persona (inverse of the above).
    var voicePersona: VoicePersona {
        switch self {
        case .drillSergeant:  return .drillSergeant
        case .calmYogi:       return .calmYogi
        case .dominant:       return .dominant
        case .hypnotherapist: return .hypnotherapist
        }
    }
}

extension BinauralProgram {
    /// The persisted `BinauralPreset`. `.beta` maps to `.lowBeta` (both 14 Hz).
    var preset: BinauralPreset {
        switch self {
        case .off:   return .off
        case .theta: return .theta
        case .alpha: return .alpha
        case .beta:  return .lowBeta
        }
    }
}

extension BinauralPreset {
    /// The settings-side `BinauralProgram` for this preset.
    var program: BinauralProgram {
        switch self {
        case .off:     return .off
        case .theta:   return .theta
        case .alpha:   return .alpha
        case .lowBeta: return .beta
        }
    }
}

extension CoachFrequency {
    /// Same raw values as `TalkFrequency`; falls back to `.normal`.
    var talkFrequency: TalkFrequency { TalkFrequency(rawValue: rawValue) ?? .normal }
}

extension TalkFrequency {
    /// Same raw values as `CoachFrequency`; falls back to `.normal`.
    var coachFrequency: CoachFrequency { CoachFrequency(rawValue: rawValue) ?? .normal }
}
