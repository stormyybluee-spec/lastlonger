//
//  SessionSignal.swift
//  LAST LONGER — shared between the iOS and watchOS targets.
//
//  One Codable enum is the entire wire protocol. Both sides encode to a
//  single dictionary key, so there is exactly one place where a typo can
//  break the link, and adding a case is a compile error on the side that
//  hasn't handled it yet.
//
//  TARGET MEMBERSHIP: add this file to BOTH the iOS app target and the
//  watchOS app target. Do not duplicate it.
//

import Foundation

// MARK: - Signal

enum SessionSignal: Codable, Equatable {

    // ── Watch → Phone (user actions on the wrist)
    case thresholdTapped
    case cooldownTapped
    case emergencyTapped
    case endTapped

    // ── Watch → Phone (sensors)
    case heartRate(bpm: Int, at: Date)
    case gripTooTight(rigidity: Double, cadence: Double)

    // ── Phone → Watch (state mirroring)
    case sessionStarted(mode: String, startedAt: Date)
    case sessionEnded(reachedEndGoal: Bool)
    case stateUpdate(WatchState)
    case emergencyBegan(duration: TimeInterval)
    case emergencyEnded(completed: Bool)
    case ponrWarning              // point-of-no-return escalation
    case hapticCommand(SilentSignal)

    // MARK: Envelope

    private static let key = "lastlonger.signal"

    func encoded() -> [String: Any] {
        guard let data = try? JSONEncoder().encode(self) else { return [:] }
        return [Self.key: data]
    }

    static func decode(from payload: [String: Any]) -> SessionSignal? {
        guard let data = payload[key] as? Data else { return nil }
        return try? JSONDecoder().decode(SessionSignal.self, from: data)
    }
}

// MARK: - Mirrored state

/// The snapshot the watch renders. Deliberately tiny — this crosses the
/// link roughly once a second, and WatchConnectivity throttles hard on
/// payload size long before it throttles on frequency.
struct WatchState: Codable, Equatable {
    var elapsed: TimeInterval = 0
    var phase: String = "Standby"
    var phaseTint: Tint = .inert
    var thresholdStreak: Int = 0
    var bestStreak: Int = 0
    var heartRate: Int?
    var isEmergencyActive: Bool = false
    var isSilentMode: Bool = false

    enum Tint: String, Codable {
        case alert, safe, rising, data, inert
    }

    var elapsedLabel: String {
        let total = Int(elapsed)
        return String(format: "%02d:%02d", total / 60, total % 60)
    }
}

// MARK: - Silent Mode vocabulary

/// PART 10 — the haptic language that replaces speech.
///
/// The five patterns are separated by *rhythm*, not by strength. That matters:
/// in Silent Mode the user's phone is face-down and their eyes are elsewhere,
/// so intensity differences are unreadable but counts are not.
enum SilentSignal: String, Codable, CaseIterable {
    case slowDown      // single buzz
    case speedUp       // double buzz
    case holdThreshold // triple buzz
    case cooldown      // one long buzz
    case emergency     // continuous

    var meaning: String {
        switch self {
        case .slowDown:      return "Slow down"
        case .speedUp:       return "Speed up"
        case .holdThreshold: return "Hold at threshold"
        case .cooldown:      return "Cool down"
        case .emergency:     return "Emergency"
        }
    }

    var glyph: String {
        switch self {
        case .slowDown:      return "•"
        case .speedUp:       return "••"
        case .holdThreshold: return "•••"
        case .cooldown:      return "▬"
        case .emergency:     return "▬▬▬▬"
        }
    }

    var symbol: String {
        switch self {
        case .slowDown:      return "tortoise.fill"
        case .speedUp:       return "hare.fill"
        case .holdThreshold: return "pause.fill"
        case .cooldown:      return "wind"
        case .emergency:     return "exclamationmark.triangle.fill"
        }
    }
}
