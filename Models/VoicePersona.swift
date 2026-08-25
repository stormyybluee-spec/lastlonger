//
//  VoicePersona.swift
//  LAST LONGER
//
//  PARAMETER MAPPING — read this before changing numbers.
//
//  The spec gives rate as a multiplier of natural speech (1.2, 0.7, 0.9, 0.5).
//  AVSpeechUtterance.rate is NOT a multiplier: it is an absolute 0...1 value
//  where AVSpeechUtteranceDefaultSpeechRate (0.5) is normal. So the spec's
//  rate is applied as `default * multiplier`, then clamped to the legal range.
//
//  pitchMultiplier IS a true multiplier (0.5...2.0) and maps 1:1.
//  volume is 0...1 and maps 1:1, then scales by the user's volume slider.
//

import AVFoundation
import SwiftUI

enum VoicePersona: String, CaseIterable, Codable, Identifiable {
    case drillSergeant
    case calmYogi
    case dominant
    case hypnotherapist

    var id: String { rawValue }

    var name: String {
        switch self {
        case .drillSergeant:  return "Drill Sergeant"
        case .calmYogi:       return "Calm Yogi"
        case .dominant:       return "Dominant"
        case .hypnotherapist: return "Hypnotherapist"
        }
    }

    var descriptor: String {
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
        case .dominant:       return "bolt.horizontal.fill"
        case .hypnotherapist: return "eye.fill"
        }
    }

    var accent: Color {
        switch self {
        case .drillSergeant:  return Theme.edge
        case .calmYogi:       return Theme.safe
        case .dominant:       return Theme.rising
        case .hypnotherapist: return Theme.data
        }
    }

    // MARK: - Spec parameters

    /// Multiplier against natural speech rate, per spec.
    var rateMultiplier: Float {
        switch self {
        case .drillSergeant:  return 1.2
        case .calmYogi:       return 0.7
        case .dominant:       return 0.9
        case .hypnotherapist: return 0.5
        }
    }

    var pitchMultiplier: Float {
        switch self {
        case .drillSergeant:  return 0.8
        case .calmYogi:       return 1.0
        case .dominant:       return 0.6
        case .hypnotherapist: return 0.9
        }
    }

    var baseVolume: Float {
        switch self {
        case .drillSergeant:  return 1.0
        case .calmYogi:       return 0.8
        case .dominant:       return 1.0
        case .hypnotherapist: return 0.7
        }
    }

    @available(iOS 17.0, *)
    var preferredGender: AVSpeechSynthesisVoiceGender {
        switch self {
        case .drillSergeant, .hypnotherapist: return .male
        case .calmYogi, .dominant:            return .female
        }
    }

    /// Pause inserted before the line starts. Sells the character more than
    /// rate does — the Hypnotherapist's authority is entirely in the gaps.
    var preUtteranceDelay: TimeInterval {
        switch self {
        case .drillSergeant:  return 0.0
        case .calmYogi:       return 0.35
        case .dominant:       return 0.2
        case .hypnotherapist: return 0.6
        }
    }

    var postUtteranceDelay: TimeInterval {
        switch self {
        case .drillSergeant:  return 0.0
        case .calmYogi:       return 0.3
        case .dominant:       return 0.15
        case .hypnotherapist: return 0.5
        }
    }

    // MARK: - Resolution

    /// Absolute AVSpeechUtterance.rate, clamped to the legal range.
    var resolvedRate: Float {
        let raw = AVSpeechUtteranceDefaultSpeechRate * rateMultiplier
        return min(max(raw, AVSpeechUtteranceMinimumSpeechRate),
                   AVSpeechUtteranceMaximumSpeechRate)
    }

    /// Best available system voice for this persona.
    ///
    /// Gender metadata only exists on iOS 17+. Below that we fall back to a
    /// known-good identifier, and below *that* to the system default — so the
    /// coach always speaks even on a device with no downloaded voices.
    func resolveVoice(language: String = "en-US") -> AVSpeechSynthesisVoice? {
        let candidates = AVSpeechSynthesisVoice.speechVoices()
            .filter { $0.language.hasPrefix(String(language.prefix(2))) }

        if #available(iOS 17.0, *) {
            let target = preferredGender
            // Prefer enhanced/premium quality within the right gender.
            let matches = candidates.filter { $0.gender == target }
            if let premium = matches.first(where: { $0.quality == .premium }) { return premium }
            if let enhanced = matches.first(where: { $0.quality == .enhanced }) { return enhanced }
            if let any = matches.first { return any }
        }

        if let named = fallbackIdentifiers.lazy
            .compactMap({ AVSpeechSynthesisVoice(identifier: $0) })
            .first {
            return named
        }

        return AVSpeechSynthesisVoice(language: language) ?? candidates.first
    }

    private var fallbackIdentifiers: [String] {
        switch self {
        case .drillSergeant, .hypnotherapist:
            return ["com.apple.voice.enhanced.en-US.Aaron",
                    "com.apple.ttsbundle.siri_Aaron_en-US_compact",
                    "com.apple.voice.compact.en-US.Fred"]
        case .calmYogi, .dominant:
            return ["com.apple.voice.enhanced.en-US.Ava",
                    "com.apple.ttsbundle.siri_Nicky_en-US_compact",
                    "com.apple.voice.compact.en-US.Samantha"]
        }
    }
}
