//
//  LLSettings.swift
//  LAST LONGER
//
//  PART C-5 — configuration model.
//
//  Session records live in CoreData. Preferences live in UserDefaults, which is
//  where preferences belong: they are scalars, they are read on every launch
//  before the persistent container is ready, and they carry no relationships.
//

import SwiftUI
import AVFoundation

// MARK: - Coach persona

enum CoachPersona: String, CaseIterable, Identifiable, Codable {
    case drillSergeant, calmYogi, dominant, hypnotherapist

    var id: String { rawValue }

    var title: String {
        switch self {
        case .drillSergeant:  return "Drill Sergeant"
        case .calmYogi:       return "Calm Yogi"
        case .dominant:       return "Dominant"
        case .hypnotherapist: return "Hypnotherapist"
        }
    }

    var tone: String {
        switch self {
        case .drillSergeant:  return "Aggressive"
        case .calmYogi:       return "Soothing"
        case .dominant:       return "Assertive"
        case .hypnotherapist: return "Slow, trance-like"
        }
    }

    var symbol: String {
        switch self {
        case .drillSergeant:  return "megaphone.fill"
        case .calmYogi:       return "leaf.fill"
        case .dominant:       return "bolt.fill"
        case .hypnotherapist: return "waveform"
        }
    }

    /// The spec's rate figures (1.2 / 0.7 / 0.9 / 0.5) are MULTIPLIERS of the
    /// system default, not raw AVSpeechUtterance rates. Assigning 1.2 to
    /// `utterance.rate` directly pins it to the maximum and the coach becomes
    /// unintelligible — the property is 0...1 with a default near 0.5.
    var rateMultiplier: Float {
        switch self {
        case .drillSergeant:  return 1.2
        case .calmYogi:       return 0.7
        case .dominant:       return 0.9
        case .hypnotherapist: return 0.5
        }
    }

    var resolvedRate: Float {
        let raw = AVSpeechUtteranceDefaultSpeechRate * rateMultiplier
        return min(max(raw, AVSpeechUtteranceMinimumSpeechRate), AVSpeechUtteranceMaximumSpeechRate)
    }

    /// Valid range is 0.5...2.0.
    var pitch: Float {
        switch self {
        case .drillSergeant:  return 0.8
        case .calmYogi:       return 1.0
        case .dominant:       return 0.6
        case .hypnotherapist: return 0.9
        }
    }

    var volume: Float {
        switch self {
        case .drillSergeant:  return 1.0
        case .calmYogi:       return 0.8
        case .dominant:       return 1.0
        case .hypnotherapist: return 0.7
        }
    }

    private var preferredGender: AVSpeechSynthesisVoiceGender {
        switch self {
        case .drillSergeant, .hypnotherapist: return .male
        case .calmYogi, .dominant:            return .female
        }
    }

    /// Gendered voices are not guaranteed installed. Fall back to the language
    /// default rather than returning nil and getting silence.
    var voice: AVSpeechSynthesisVoice? {
        let candidates = AVSpeechSynthesisVoice.speechVoices()
            .filter { $0.language.hasPrefix("en") && $0.gender == preferredGender }
        return candidates.first(where: { $0.quality == .enhanced })
            ?? candidates.first
            ?? AVSpeechSynthesisVoice(language: "en-US")
    }
}

// MARK: - Angel skins

enum AngelSkin: String, CaseIterable, Identifiable, Codable {
    case white, bronze, silver, gold, shadow, crimson

    var id: String { rawValue }

    var title: String {
        switch self {
        case .white:   return "Default"
        case .bronze:  return "Bronze"
        case .silver:  return "Silver"
        case .gold:    return "Gold"
        case .shadow:  return "Shadow"
        case .crimson: return "Crimson"
        }
    }

    /// Badge that unlocks this skin. Nil means always available.
    var unlockBadgeID: String? {
        switch self {
        case .white:   return nil
        case .bronze:  return "first_threshold"
        case .silver:  return "control_freak"
        case .gold:    return "endurance_king"
        case .shadow:  return "no_finish"
        case .crimson: return "legend"
        }
    }

    var tint: Color {
        switch self {
        case .white:   return Color(hex: 0xE5F6FF)
        case .bronze:  return Color(hex: 0xCD7F32)
        case .silver:  return Color(hex: 0xC0C6CE)
        case .gold:    return Color(hex: 0xE8C547)
        case .shadow:  return Color(hex: 0x4A4A52)
        case .crimson: return LL.C.red
        }
    }

    var unlockRequirement: String {
        guard let id = unlockBadgeID,
              let badge = BadgeCatalog.all.first(where: { $0.id == id })
        else { return "Always available" }
        return "Unlocks with \(badge.title)"
    }
}

// MARK: - Scalar preferences

enum HapticIntensity: String, CaseIterable, Identifiable, Codable {
    case off, low, medium, high
    var id: String { rawValue }
    var title: String { rawValue.capitalized }
    var scale: CGFloat {
        switch self {
        case .off: return 0; case .low: return 0.4; case .medium: return 0.7; case .high: return 1.0
        }
    }
}

enum BinauralDefault: String, CaseIterable, Identifiable, Codable {
    case off, theta, alpha, beta
    var id: String { rawValue }
    var title: String {
        switch self {
        case .off:   return "Off"
        case .theta: return "Theta 6 Hz"
        case .alpha: return "Alpha 10 Hz"
        case .beta:  return "Low Beta 14 Hz"
        }
    }
}

enum TalkFrequency: String, CaseIterable, Identifiable, Codable {
    case minimal, normal, aggressive
    var id: String { rawValue }
    var title: String { rawValue.capitalized }
}

enum DurationCap: String, CaseIterable, Identifiable, Codable {
    case none, ten, twenty, thirty
    var id: String { rawValue }
    var title: String {
        switch self {
        case .none: return "None"; case .ten: return "10 min"
        case .twenty: return "20 min"; case .thirty: return "30 min"
        }
    }
    var minutes: Int? {
        switch self {
        case .none: return nil; case .ten: return 10
        case .twenty: return 20; case .thirty: return 30
        }
    }
}

enum MilestoneFrequency: String, CaseIterable, Identifiable, Codable {
    case off, daily, everyTwoDays, weekly
    var id: String { rawValue }
    var title: String {
        switch self {
        case .off: return "Off"; case .daily: return "Daily"
        case .everyTwoDays: return "Every 2 days"; case .weekly: return "Weekly"
        }
    }
}

// MARK: - Settings store

/// `@AppStorage` deliberately NOT used here.
///
/// `@AppStorage` inside an `ObservableObject` writes to UserDefaults but does
/// not fire `objectWillChange` — the wrapper only republishes when it is
/// declared in a `View`. Every `$settings.someToggle` binding in the settings
/// screen would persist correctly and then fail to redraw. Plain `@Published`
/// with `didSet` persistence is the boring, correct version.
@MainActor
final class AppSettings: ObservableObject {

    private let d = UserDefaults.standard

    // Coach
    @Published var persona: CoachPersona          { didSet { d.set(persona.rawValue, forKey: K.persona) } }
    @Published var voiceEnabled: Bool             { didSet { d.set(voiceEnabled, forKey: K.voiceEnabled) } }
    @Published var voiceVolume: Double            { didSet { d.set(voiceVolume, forKey: K.voiceVolume) } }
    @Published var angelSkin: AngelSkin           { didSet { d.set(angelSkin.rawValue, forKey: K.angelSkin) } }

    // Session defaults
    @Published var defaultMode: TrainingMode      { didSet { d.set(defaultMode.rawValue, forKey: K.defaultMode) } }
    @Published var haptics: HapticIntensity       { didSet { d.set(haptics.rawValue, forKey: K.haptics) } }
    @Published var binaural: BinauralDefault      { didSet { d.set(binaural.rawValue, forKey: K.binaural) } }
    @Published var distractionQuestions: Bool     { didSet { d.set(distractionQuestions, forKey: K.distractionQ) } }
    @Published var coachInterrupt: Bool           { didSet { d.set(coachInterrupt, forKey: K.coachInterrupt) } }
    @Published var silentModeDefault: Bool        { didSet { d.set(silentModeDefault, forKey: K.silentMode) } }
    @Published var durationCap: DurationCap       { didSet { d.set(durationCap.rawValue, forKey: K.durationCap) } }
    @Published var talkFrequency: TalkFrequency   { didSet { d.set(talkFrequency.rawValue, forKey: K.talkFrequency) } }
    @Published var focusModePrompt: Bool          { didSet { d.set(focusModePrompt, forKey: K.focusPrompt) } }
    @Published var tempoLock: Bool                { didSet { d.set(tempoLock, forKey: K.tempoLock) } }
    @Published var milestoneFrequency: MilestoneFrequency { didSet { d.set(milestoneFrequency.rawValue, forKey: K.milestones) } }

    // Watch
    @Published var antiGripPressure: Bool         { didSet { d.set(antiGripPressure, forKey: K.antiGrip) } }

    /// User-set, not physiologically inferred. See RecoveryTracker.
    @Published var recoveryWindowHours: Int       { didSet { d.set(recoveryWindowHours, forKey: K.recoveryHours) } }

    /// Capped at 10 on write so no caller has to remember the limit.
    @Published var customPhrases: [String] {
        didSet {
            if customPhrases.count > 10 { customPhrases = Array(customPhrases.prefix(10)); return }
            d.set(customPhrases, forKey: K.customPhrases)
        }
    }

    private enum K {
        static let persona = "ll.persona", voiceEnabled = "ll.voiceEnabled"
        static let voiceVolume = "ll.voiceVolume", angelSkin = "ll.angelSkin"
        static let defaultMode = "ll.defaultMode", haptics = "ll.haptics"
        static let binaural = "ll.binaural", distractionQ = "ll.distractionQ"
        static let coachInterrupt = "ll.coachInterrupt", silentMode = "ll.silentMode"
        static let durationCap = "ll.durationCap", talkFrequency = "ll.talkFrequency"
        static let focusPrompt = "ll.focusPrompt", tempoLock = "ll.tempoLock"
        static let milestones = "ll.milestones", antiGrip = "ll.antiGrip"
        static let recoveryHours = "ll.recoveryHours", customPhrases = "ll.customPhrases"
    }

    init() {
        let d = UserDefaults.standard
        func str<T: RawRepresentable>(_ key: String, _ fallback: T) -> T where T.RawValue == String {
            (d.string(forKey: key).flatMap(T.init(rawValue:))) ?? fallback
        }
        func bool(_ key: String, _ fallback: Bool) -> Bool {
            d.object(forKey: key) as? Bool ?? fallback
        }

        persona              = str(K.persona, CoachPersona.drillSergeant)
        voiceEnabled         = bool(K.voiceEnabled, true)
        voiceVolume          = d.object(forKey: K.voiceVolume) as? Double ?? 0.8
        angelSkin            = str(K.angelSkin, AngelSkin.white)
        defaultMode          = str(K.defaultMode, TrainingMode.freeThreshold)
        haptics              = str(K.haptics, HapticIntensity.medium)
        binaural             = str(K.binaural, BinauralDefault.off)
        distractionQuestions = bool(K.distractionQ, false)
        coachInterrupt       = bool(K.coachInterrupt, true)
        silentModeDefault    = bool(K.silentMode, false)
        durationCap          = str(K.durationCap, DurationCap.twenty)
        talkFrequency        = str(K.talkFrequency, TalkFrequency.normal)
        focusModePrompt      = bool(K.focusPrompt, true)
        tempoLock            = bool(K.tempoLock, false)
        milestoneFrequency   = str(K.milestones, MilestoneFrequency.off)
        antiGripPressure     = bool(K.antiGrip, true)
        recoveryWindowHours  = d.object(forKey: K.recoveryHours) as? Int ?? 24
        customPhrases        = d.stringArray(forKey: K.customPhrases) ?? []
    }

    func unlockedSkins(badges: [BadgeProgress]) -> Set<AngelSkin> {
        let earned = Set(badges.filter(\.isEarned).map(\.badge.id))
        return Set(AngelSkin.allCases.filter { skin in
            guard let required = skin.unlockBadgeID else { return true }
            return earned.contains(required)
        })
    }
}

// MARK: - Export

enum DataExporter {

    enum Format: String, CaseIterable, Identifiable {
        case csv, json
        var id: String { rawValue }
        var title: String { rawValue.uppercased() }
        var ext: String { rawValue }
    }

    private struct ExportRow: Encodable {
        let date: String, durationSeconds: Int, thresholds: Int, bestStreak: Int
        let pullbackRate: Double, reachedEndGoal: Bool, emergencyPullbacks: Int
        let guidedCooldowns: Int, staminaScore: Int, silentMode: Bool
        let watchVerified: Bool, tags: String
    }

    /// Writes to the caches directory so the OS reclaims it. Nothing here
    /// leaves the device unless the user picks a destination in the share sheet.
    static func write(_ sessions: [SessionRecord], format: Format) throws -> URL {
        let iso = ISO8601DateFormatter()
        let rows = sessions.map {
            ExportRow(date: iso.string(from: $0.date),
                      durationSeconds: $0.durationSeconds,
                      thresholds: $0.thresholdCount,
                      bestStreak: $0.bestThresholdStreak,
                      pullbackRate: $0.pullbackSuccessRate,
                      reachedEndGoal: $0.reachedEndGoal,
                      emergencyPullbacks: $0.emergencyPullbacks,
                      guidedCooldowns: $0.guidedCooldowns,
                      staminaScore: $0.staminaScoreAfter,
                      silentMode: $0.silentMode,
                      watchVerified: $0.watchVerified,
                      tags: $0.tags.joined(separator: "|"))
        }

        let data: Data
        switch format {
        case .json:
            let encoder = JSONEncoder()
            encoder.outputFormatting = [.prettyPrinted, .sortedKeys]
            data = try encoder.encode(rows)
        case .csv:
            let header = "date,duration_seconds,thresholds,best_streak,pullback_rate,reached_end_goal,emergency_pullbacks,guided_cooldowns,stamina_score,silent_mode,watch_verified,tags"
            let body = rows.map {
                "\($0.date),\($0.durationSeconds),\($0.thresholds),\($0.bestStreak),\(String(format: "%.4f", $0.pullbackRate)),\($0.reachedEndGoal),\($0.emergencyPullbacks),\($0.guidedCooldowns),\($0.staminaScore),\($0.silentMode),\($0.watchVerified),\"\($0.tags)\""
            }.joined(separator: "\n")
            data = Data(([header] + [body]).joined(separator: "\n").utf8)
        }

        let stamp = ISO8601DateFormatter().string(from: Date())
            .replacingOccurrences(of: ":", with: "-")
        let url = FileManager.default.temporaryDirectory
            .appendingPathComponent("lastlonger-export-\(stamp).\(format.ext)")
        try data.write(to: url, options: .atomic)
        return url
    }
}
