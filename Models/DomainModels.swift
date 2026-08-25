//
//  DomainModels.swift
//  LAST LONGER
//
//  Pure value types. No UIKit, no CoreData, no I/O.
//  Everything here is Sendable, Codable and unit-testable in isolation.
//

import Foundation

// MARK: - Session Mode
//
// `SessionMode` was declared here AND in Models/SessionMode.swift, with three of
// its eight cases spelled differently (randomThreshold/gripRepair/pressureRelease
// here, randomEdge/gripPressureRepair/release there) and different raw values.
// Models/SessionMode.swift is the surviving declaration: ModeDriver.swift
// switches over those case names to pick a driver per mode, and it also carries
// `atlasOrder`, `suppressesVisuals` and `allowsPairing`, which this version
// lacked. The two members only this version had — `title` and `estimatedMinutes`,
// both of which HomeView calls through `SessionConfig` — were moved onto it.
//
// The three call sites below in `RegimenProgram.task(for:)` were respelled to
// match.

// MARK: - Coach Persona

public enum CoachPersona: String, Codable, CaseIterable, Sendable, Identifiable {
    case drillSergeant = "drill_sergeant"
    case calmYogi      = "calm_yogi"
    case dominant      = "dominant"
    case hypnotherapist = "hypnotherapist"

    public var id: String { rawValue }

    public var title: String {
        switch self {
        case .drillSergeant:  return "DRILL SERGEANT"
        case .calmYogi:       return "CALM YOGI"
        case .dominant:       return "DOMINANT"
        case .hypnotherapist: return "HYPNOTHERAPIST"
        }
    }

    public var descriptor: String {
        switch self {
        case .drillSergeant:  return "Loud. Fast. No patience."
        case .calmYogi:       return "Slow. Even. Keeps you level."
        case .dominant:       return "Low and certain. Gives orders."
        case .hypnotherapist: return "Long pauses. Pulls you under."
        }
    }

    public var symbol: String {
        switch self {
        case .drillSergeant:  return "megaphone.fill"
        case .calmYogi:       return "leaf.fill"
        case .dominant:       return "crown.fill"
        case .hypnotherapist: return "spiral.3d"
        }
    }

    /// AVSpeechUtterance tuning. Rate is in AVSpeechUtterance units
    /// (0.0–1.0, where `AVSpeechUtteranceDefaultSpeechRate` is 0.5),
    /// *not* the 1.2 / 0.7 shorthand from the product spec.
    public var voice: VoiceProfile {
        switch self {
        case .drillSergeant:
            return VoiceProfile(rate: 0.58, pitch: 0.80, volume: 1.00, preferredGender: .male)
        case .calmYogi:
            return VoiceProfile(rate: 0.42, pitch: 1.00, volume: 0.80, preferredGender: .female)
        case .dominant:
            return VoiceProfile(rate: 0.48, pitch: 0.60, volume: 1.00, preferredGender: .female)
        case .hypnotherapist:
            return VoiceProfile(rate: 0.34, pitch: 0.90, volume: 0.70, preferredGender: .male)
        }
    }

    /// One short line per persona, used for tap-to-preview in onboarding.
    public var previewLine: String {
        switch self {
        case .drillSergeant:  return "Back off. Now. Hands still."
        case .calmYogi:       return "Ease down. Long breath out."
        case .dominant:       return "Slower. You go when I say."
        case .hypnotherapist: return "Heavy... slow... let it settle."
        }
    }
}

public struct VoiceProfile: Codable, Hashable, Sendable {
    public enum Gender: String, Codable, Sendable { case male, female, unspecified }

    public var rate: Float
    public var pitch: Float
    public var volume: Float
    public var preferredGender: Gender

    public init(rate: Float, pitch: Float, volume: Float, preferredGender: Gender) {
        self.rate = rate
        self.pitch = pitch
        self.volume = volume
        self.preferredGender = preferredGender
    }
}

// MARK: - Angel

/// Drives every visual, audio and haptic branch of the widget.
public enum AngelState: String, Codable, CaseIterable, Sendable {
    case safe
    case rising
    case edge
    case emergency
    case cooldown
    case ended

    /// Wing spread, 0 = wrapped inward, 1 = fully extended.
    public var wingSpread: Double {
        switch self {
        case .safe:      return 0.45
        case .rising:    return 0.62
        case .edge:      return 1.00
        case .emergency: return 1.00
        case .cooldown:  return 0.08
        case .ended:     return 0.30
        }
    }

    /// Seconds per full flap cycle. `nil` = wings frozen.
    public var flapPeriod: Double? {
        switch self {
        case .safe:      return 2.6
        case .rising:    return 1.1
        case .edge:      return 0.45
        case .emergency: return nil
        case .cooldown:  return 5.0
        case .ended:     return nil
        }
    }

    /// Idle bob amplitude in points.
    public var bobAmplitude: Double {
        switch self {
        case .safe:      return 5
        case .rising:    return 4
        case .edge:      return 2
        case .emergency: return 0
        case .cooldown:  return 3
        case .ended:     return 0
        }
    }

    public var eyesClosed: Bool {
        self == .cooldown || self == .ended
    }
}

/// Cosmetic only. Never gates functionality.
public enum AngelSkin: String, Codable, CaseIterable, Sendable, Identifiable {
    case white
    case bronze
    case silver
    case gold
    case shadow
    case crimson

    public var id: String { rawValue }

    public var title: String {
        switch self {
        case .white:   return "DEFAULT"
        case .bronze:  return "BRONZE"
        case .silver:  return "SILVER"
        case .gold:    return "GOLD"
        case .shadow:  return "SHADOW"
        case .crimson: return "CRIMSON"
        }
    }

    /// Badge that unlocks this skin. `nil` = available from install.
    public var unlockedBy: BadgeID? {
        switch self {
        case .white:   return nil
        case .bronze:  return .firstThreshold
        case .silver:  return .controlFreak
        case .gold:    return .enduranceKing
        case .shadow:  return .noFinish
        case .crimson: return .legend
        }
    }
}

// MARK: - Badges

public enum BadgeID: String, Codable, CaseIterable, Sendable, Identifiable {
    case firstThreshold  = "first_threshold"
    case thresholdLord   = "threshold_lord"
    case controlFreak    = "control_freak"
    case breathMaster    = "breath_master"
    case enduranceKing   = "endurance_king"
    case consistency
    case noFinish        = "no_finish"
    case comeback
    case veteran
    case legend
    case emergencyHero   = "emergency_hero"
    case programGraduate = "program_graduate"
    case streakMaster    = "streak_master"
    case silentWarrior   = "silent_warrior"

    public var id: String { rawValue }

    public var title: String {
        switch self {
        case .firstThreshold:  return "FIRST THRESHOLD"
        case .thresholdLord:   return "THRESHOLD LORD"
        case .controlFreak:    return "CONTROL FREAK"
        case .breathMaster:    return "BREATH MASTER"
        case .enduranceKing:   return "ENDURANCE KING"
        case .consistency:     return "CONSISTENCY"
        case .noFinish:        return "NO FINISH"
        case .comeback:        return "COMEBACK"
        case .veteran:         return "VETERAN"
        case .legend:          return "LEGEND"
        case .emergencyHero:   return "EMERGENCY HERO"
        case .programGraduate: return "GRADUATE"
        case .streakMaster:    return "STREAK MASTER"
        case .silentWarrior:   return "SILENT WARRIOR"
        }
    }

    public var requirement: String {
        switch self {
        case .firstThreshold:  return "Log one threshold."
        case .thresholdLord:   return "50 thresholds in seven days."
        case .controlFreak:    return "80% pullback across five sessions."
        case .breathMaster:    return "Ten guided cooldowns."
        case .enduranceKing:   return "Five sessions over 15 minutes."
        case .consistency:     return "Seven days with a session on each."
        case .noFinish:        return "Three days training without finishing."
        case .comeback:        return "Raise your score 20 points in 30 days."
        case .veteran:         return "100 sessions."
        case .legend:          return "500 thresholds."
        case .emergencyHero:   return "Ten emergency pullbacks."
        case .programGraduate: return "Finish a regimen."
        case .streakMaster:    return "Streak of ten in one session."
        case .silentWarrior:   return "Five sessions on haptics only."
        }
    }

    public var symbol: String {
        switch self {
        case .firstThreshold:  return "flame"
        case .thresholdLord:   return "flame.fill"
        case .controlFreak:    return "shield.fill"
        case .breathMaster:    return "wind"
        case .enduranceKing:   return "crown.fill"
        case .consistency:     return "calendar"
        case .noFinish:        return "nosign"
        case .comeback:        return "arrow.up.circle.fill"
        case .veteran:         return "100.circle.fill"
        case .legend:          return "star.circle.fill"
        case .emergencyHero:   return "cross.case.fill"
        case .programGraduate: return "graduationcap.fill"
        case .streakMaster:    return "bolt.horizontal.circle.fill"
        case .silentWarrior:   return "speaker.slash.fill"
        }
    }
}

// MARK: - Stack tags

/// User-logged context for a session. Purely descriptive — the app
/// stores what the user typed in and never recommends anything.
public struct StackTag: Codable, Hashable, Sendable, Identifiable {
    public var id: String
    public var label: String
    public var isBuiltIn: Bool
    public var sortIndex: Int

    public init(id: String, label: String, isBuiltIn: Bool = false, sortIndex: Int = 0) {
        self.id = id
        self.label = label
        self.isBuiltIn = isBuiltIn
        self.sortIndex = sortIndex
    }

    public static let builtIns: [StackTag] = [
        StackTag(id: "topical",     label: "TOPICAL OINTMENT", isBuiltIn: true, sortIndex: 0),
        StackTag(id: "kanna",       label: "KANNA",            isBuiltIn: true, sortIndex: 1),
        StackTag(id: "ltheanine",   label: "L-THEANINE",       isBuiltIn: true, sortIndex: 2),
        StackTag(id: "magzinc",     label: "MAGNESIUM + ZINC", isBuiltIn: true, sortIndex: 3),
        StackTag(id: "alcohol",     label: "ALCOHOL",          isBuiltIn: true, sortIndex: 4),
        StackTag(id: "cannabis",    label: "CANNABIS",         isBuiltIn: true, sortIndex: 5),
        StackTag(id: "none",        label: "NOTHING",          isBuiltIn: true, sortIndex: 6),
    ]
}

// MARK: - Session

public struct SessionRecord: Codable, Hashable, Sendable, Identifiable {
    public var id: UUID
    public var startedAt: Date
    /// Seconds.
    public var duration: TimeInterval
    public var primaryMode: SessionMode
    public var secondaryMode: SessionMode?
    /// Minutes into the session at which mode 2 takes over. `nil` = manual.
    public var switchAfterMinutes: Int?

    public var thresholds: Int
    public var pullbacks: Int
    public var emergencyPullbacks: Int
    public var bestStreak: Int

    public var tagIDs: [String]
    public var persona: CoachPersona
    public var silentMode: Bool
    public var watchVerified: Bool
    public var finished: Bool

    public init(
        id: UUID = UUID(),
        startedAt: Date = .now,
        duration: TimeInterval = 0,
        primaryMode: SessionMode,
        secondaryMode: SessionMode? = nil,
        switchAfterMinutes: Int? = nil,
        thresholds: Int = 0,
        pullbacks: Int = 0,
        emergencyPullbacks: Int = 0,
        bestStreak: Int = 0,
        tagIDs: [String] = [],
        persona: CoachPersona = .drillSergeant,
        silentMode: Bool = false,
        watchVerified: Bool = false,
        finished: Bool = false
    ) {
        self.id = id
        self.startedAt = startedAt
        self.duration = duration
        self.primaryMode = primaryMode
        self.secondaryMode = secondaryMode
        self.switchAfterMinutes = switchAfterMinutes
        self.thresholds = thresholds
        self.pullbacks = pullbacks
        self.emergencyPullbacks = emergencyPullbacks
        self.bestStreak = bestStreak
        self.tagIDs = tagIDs
        self.persona = persona
        self.silentMode = silentMode
        self.watchVerified = watchVerified
        self.finished = finished
    }

    /// 0…1. Returns nil when there is nothing to divide by, so the UI
    /// can show a dash rather than a misleading 0%.
    public var pullbackRate: Double? {
        guard thresholds > 0 else { return nil }
        return min(1, Double(pullbacks) / Double(thresholds))
    }
}

// MARK: - Session configuration

public enum HapticIntensity: String, Codable, CaseIterable, Sendable {
    case low, medium, high

    public var scale: Float {
        switch self {
        case .low:    return 0.45
        case .medium: return 0.75
        case .high:   return 1.00
        }
    }
}

public enum TalkFrequency: String, Codable, CaseIterable, Sendable {
    case minimal, normal, aggressive

    /// Seconds between unprompted coach lines.
    public var interval: ClosedRange<Double> {
        switch self {
        case .minimal:    return 90...180
        case .normal:     return 45...90
        case .aggressive: return 18...40
        }
    }
}

public enum BinauralPreset: String, Codable, CaseIterable, Sendable {
    case off
    case theta   // 6 Hz
    case alpha   // 10 Hz
    case lowBeta // 14 Hz

    public var beatHz: Double? {
        switch self {
        case .off:     return nil
        case .theta:   return 6
        case .alpha:   return 10
        case .lowBeta: return 14
        }
    }

    public var title: String {
        switch self {
        case .off:     return "OFF"
        case .theta:   return "THETA 6HZ"
        case .alpha:   return "ALPHA 10HZ"
        case .lowBeta: return "BETA 14HZ"
        }
    }
}

/// Everything the user can set before a session. Saved verbatim inside a Playlist.
public struct SessionConfig: Codable, Hashable, Sendable {
    public var primaryMode: SessionMode
    public var secondaryMode: SessionMode?
    public var switchAfterMinutes: Int?
    public var persona: CoachPersona
    public var voiceVolume: Double          // 0…1
    public var hapticIntensity: HapticIntensity
    public var binaural: BinauralPreset
    public var distractionQuestions: Bool
    public var coachInterrupt: Bool
    public var silentMode: Bool
    public var tempoLock: Bool
    public var focusModeOnStart: Bool
    /// Seconds. `nil` = no cap.
    public var durationCap: TimeInterval?
    public var talkFrequency: TalkFrequency
    public var tagIDs: [String]
    public var runRitual: Bool

    public init(
        primaryMode: SessionMode = .freeEdge,
        secondaryMode: SessionMode? = nil,
        switchAfterMinutes: Int? = nil,
        persona: CoachPersona = .drillSergeant,
        voiceVolume: Double = 0.8,
        hapticIntensity: HapticIntensity = .medium,
        binaural: BinauralPreset = .off,
        distractionQuestions: Bool = false,
        coachInterrupt: Bool = true,
        silentMode: Bool = false,
        tempoLock: Bool = false,
        focusModeOnStart: Bool = true,
        durationCap: TimeInterval? = nil,
        talkFrequency: TalkFrequency = .normal,
        tagIDs: [String] = [],
        runRitual: Bool = false
    ) {
        self.primaryMode = primaryMode
        self.secondaryMode = secondaryMode
        self.switchAfterMinutes = switchAfterMinutes
        self.persona = persona
        self.voiceVolume = voiceVolume
        self.hapticIntensity = hapticIntensity
        self.binaural = binaural
        self.distractionQuestions = distractionQuestions
        self.coachInterrupt = coachInterrupt
        self.silentMode = silentMode
        self.tempoLock = tempoLock
        self.focusModeOnStart = focusModeOnStart
        self.durationCap = durationCap
        self.talkFrequency = talkFrequency
        self.tagIDs = tagIDs
        self.runRitual = runRitual
    }

    /// One tap from Home. Free Edge, last-used everything else.
    public static func quickStart(from settings: UserSettings) -> SessionConfig {
        SessionConfig(
            primaryMode: .freeEdge,
            persona: settings.persona,
            voiceVolume: settings.voiceVolume,
            hapticIntensity: settings.hapticIntensity,
            binaural: settings.binaural,
            distractionQuestions: settings.distractionQuestions,
            coachInterrupt: settings.coachInterrupt,
            silentMode: settings.silentMode,
            focusModeOnStart: settings.focusModeOnStart,
            durationCap: settings.durationCap,
            talkFrequency: settings.talkFrequency
        )
    }
}

// MARK: - Playlist

public struct Playlist: Codable, Hashable, Sendable, Identifiable {
    public var id: UUID
    public var name: String
    public var config: SessionConfig
    public var createdAt: Date
    public var lastUsedAt: Date?

    public init(
        id: UUID = UUID(),
        name: String,
        config: SessionConfig,
        createdAt: Date = .now,
        lastUsedAt: Date? = nil
    ) {
        self.id = id
        self.name = name
        self.config = config
        self.createdAt = createdAt
        self.lastUsedAt = lastUsedAt
    }
}

// MARK: - Regimen

public enum RegimenProgram: String, Codable, CaseIterable, Sendable, Identifiable {
    case beginner
    case gripRecovery = "grip_recovery"
    case anxietyReset = "anxiety_reset"

    public var id: String { rawValue }

    public var title: String {
        switch self {
        case .beginner:     return "BEGINNER"
        case .gripRecovery: return "GRIP RECOVERY"
        case .anxietyReset: return "ANXIETY RESET"
        }
    }

    public var totalDays: Int {
        switch self {
        case .beginner:     return 30
        case .gripRecovery: return 21
        case .anxietyReset: return 14
        }
    }

    /// Day is 1-based.
    public func task(forDay day: Int) -> RegimenTask {
        let clamped = max(1, min(day, totalDays))
        switch self {
        case .beginner:
            let week = (clamped - 1) / 7
            let mode: SessionMode = [.freeEdge, .beginner532, .thresholdLadder, .randomEdge][min(week, 3)]
            return RegimenTask(day: clamped, mode: mode, minutes: 10 + week * 5)
        case .gripRecovery:
            return RegimenTask(day: clamped, mode: .gripPressureRepair, minutes: 10)
        case .anxietyReset:
            let mode: SessionMode = clamped.isMultiple(of: 3) ? .release : .zen
            return RegimenTask(day: clamped, mode: mode, minutes: 12)
        }
    }
}

public struct RegimenTask: Codable, Hashable, Sendable {
    public var day: Int
    public var mode: SessionMode
    public var minutes: Int

    public var label: String { "\(mode.title) (\(minutes) MIN)" }
}

public struct RegimenEnrollment: Codable, Hashable, Sendable, Identifiable {
    public var id: UUID
    public var program: RegimenProgram
    public var startedAt: Date
    public var completedDays: Int
    public var isActive: Bool

    public init(
        id: UUID = UUID(),
        program: RegimenProgram,
        startedAt: Date = .now,
        completedDays: Int = 0,
        isActive: Bool = true
    ) {
        self.id = id
        self.program = program
        self.startedAt = startedAt
        self.completedDays = completedDays
        self.isActive = isActive
    }

    public var currentDay: Int { min(completedDays + 1, program.totalDays) }
    public var todaysTask: RegimenTask { program.task(forDay: currentDay) }
    public var progress: Double { Double(completedDays) / Double(program.totalDays) }
    public var dayLabel: String { "DAY \(currentDay) OF \(program.totalDays)" }
}

// MARK: - Challenge

public struct Challenge: Codable, Hashable, Sendable, Identifiable {
    public var id: String
    public var title: String
    public var detail: String
    public var target: Int
    public var progress: Int
    public var badge: BadgeID
    public var endsAt: Date

    public init(
        id: String,
        title: String,
        detail: String,
        target: Int,
        progress: Int = 0,
        badge: BadgeID,
        endsAt: Date
    ) {
        self.id = id
        self.title = title
        self.detail = detail
        self.target = target
        self.progress = progress
        self.badge = badge
        self.endsAt = endsAt
    }

    public var fraction: Double {
        guard target > 0 else { return 0 }
        return min(1, Double(progress) / Double(target))
    }

    public var isComplete: Bool { progress >= target }
}

// MARK: - Custom phrase

public struct CustomPhrase: Codable, Hashable, Sendable, Identifiable {
    public static let maxCount = 10

    public var id: UUID
    public var text: String
    public var enabled: Bool
    public var createdAt: Date

    public init(id: UUID = UUID(), text: String, enabled: Bool = true, createdAt: Date = .now) {
        self.id = id
        self.text = text
        self.enabled = enabled
        self.createdAt = createdAt
    }
}

// MARK: - User settings

public struct UserSettings: Codable, Hashable, Sendable {
    public var persona: CoachPersona
    public var voiceEnabled: Bool
    public var voiceVolume: Double
    public var hapticIntensity: HapticIntensity
    public var defaultMode: SessionMode
    public var binaural: BinauralPreset
    public var distractionQuestions: Bool
    public var coachInterrupt: Bool
    public var silentMode: Bool
    public var tempoLock: Bool
    public var focusModeOnStart: Bool
    public var durationCap: TimeInterval?
    public var talkFrequency: TalkFrequency
    public var angelSkin: AngelSkin
    public var hasCompletedOnboarding: Bool
    public var lastFinishedAt: Date?

    public init(
        persona: CoachPersona = .drillSergeant,
        voiceEnabled: Bool = true,
        voiceVolume: Double = 0.8,
        hapticIntensity: HapticIntensity = .medium,
        defaultMode: SessionMode = .freeEdge,
        binaural: BinauralPreset = .off,
        distractionQuestions: Bool = false,
        coachInterrupt: Bool = true,
        silentMode: Bool = false,
        tempoLock: Bool = false,
        focusModeOnStart: Bool = true,
        durationCap: TimeInterval? = nil,
        talkFrequency: TalkFrequency = .normal,
        angelSkin: AngelSkin = .white,
        hasCompletedOnboarding: Bool = false,
        lastFinishedAt: Date? = nil
    ) {
        self.persona = persona
        self.voiceEnabled = voiceEnabled
        self.voiceVolume = voiceVolume
        self.hapticIntensity = hapticIntensity
        self.defaultMode = defaultMode
        self.binaural = binaural
        self.distractionQuestions = distractionQuestions
        self.coachInterrupt = coachInterrupt
        self.silentMode = silentMode
        self.tempoLock = tempoLock
        self.focusModeOnStart = focusModeOnStart
        self.durationCap = durationCap
        self.talkFrequency = talkFrequency
        self.angelSkin = angelSkin
        self.hasCompletedOnboarding = hasCompletedOnboarding
        self.lastFinishedAt = lastFinishedAt
    }
}

// MARK: - Stamina score

/// Rule-based, on-device, fully transparent. The breakdown is what
/// the user sees when they tap the ring, so it is part of the model,
/// not a display detail.
public struct StaminaScore: Codable, Hashable, Sendable {
    public struct Component: Codable, Hashable, Sendable, Identifiable {
        public var id: String
        public var label: String
        /// Human-readable measured value, e.g. "75%" or "12 MIN".
        public var reading: String
        /// 0…1 weight of the total.
        public var weight: Double
        /// Points contributed, already weighted.
        public var points: Int
    }

    public var total: Int
    public var components: [Component]

    public var band: String {
        switch total {
        case ..<21:  return "ROOKIE"
        case ..<41:  return "LEARNING"
        case ..<61:  return "IMPROVING"
        case ..<81:  return "CONTROLLED"
        default:     return "MASTER"
        }
    }

    public static let empty = StaminaScore(total: 0, components: [])

    /// Weights: pullback 40, duration 30, consistency 20, breath 10.
    public static func compute(from sessions: [SessionRecord], breathCompliance: Double?) -> StaminaScore {
        guard !sessions.isEmpty else { return .empty }

        let totalThresholds = sessions.reduce(0) { $0 + $1.thresholds }
        let totalPullbacks  = sessions.reduce(0) { $0 + $1.pullbacks }
        let pullbackRate    = totalThresholds > 0 ? Double(totalPullbacks) / Double(totalThresholds) : 0

        let avgDuration = sessions.reduce(0.0) { $0 + $1.duration } / Double(sessions.count)
        // 20 minutes is treated as the ceiling for scoring purposes.
        let durationScore = min(1, avgDuration / (20 * 60))

        let avgThresholds = Double(totalThresholds) / Double(sessions.count)
        // 10 thresholds per session is the ceiling.
        let consistency = min(1, avgThresholds / 10)

        let breath = breathCompliance ?? 0

        let p1 = Int((pullbackRate  * 40).rounded())
        let p2 = Int((durationScore * 30).rounded())
        let p3 = Int((consistency   * 20).rounded())
        let p4 = Int((breath        * 10).rounded())

        return StaminaScore(
            total: min(100, p1 + p2 + p3 + p4),
            components: [
                .init(id: "pullback",    label: "PULLBACK RATE",
                      reading: "\(Int(pullbackRate * 100))%", weight: 0.40, points: p1),
                .init(id: "duration",    label: "AVG DURATION",
                      reading: "\(Int(avgDuration / 60)) MIN", weight: 0.30, points: p2),
                .init(id: "consistency", label: "THRESHOLDS / SESSION",
                      reading: String(format: "%.1f", avgThresholds), weight: 0.20, points: p3),
                .init(id: "breath",      label: "BREATH COMPLIANCE",
                      reading: breathCompliance == nil ? "NO WATCH" : "\(Int(breath * 100))%",
                      weight: 0.10, points: p4),
            ]
        )
    }
}
