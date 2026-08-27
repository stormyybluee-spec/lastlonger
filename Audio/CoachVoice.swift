//
//  CoachVoice.swift
//  LAST LONGER
//
//  AVSpeechSynthesizer wrapper. Used by onboarding for tap-to-preview and
//  by the session engine for every coach line.
//
//  Voice selection is best-effort. AVSpeechSynthesisVoice has no reliable
//  gender flag before iOS 17, and the installed voice set differs per device
//  and per user, so the persona asks for a gender and takes the closest
//  available en-US voice. Never assume a specific voice identifier exists.
//

import AVFoundation
import Foundation

@MainActor
public final class CoachVoice: NSObject, ObservableObject {

    public static let shared = CoachVoice()

    @Published public private(set) var isSpeaking = false
    /// The persona currently mid-utterance, for driving preview UI.
    @Published public private(set) var speakingPersona: CoachPersona?

    private let synthesizer = AVSpeechSynthesizer()

    private override init() {
        super.init()
        synthesizer.delegate = self
    }

    // MARK: - Speak

    public func speak(_ text: String, as persona: CoachPersona, volume: Double = 0.8) {
        guard !text.isEmpty else { return }

        AudioSessionController.activateForCoaching(duckOthers: true)

        let profile = persona.voice
        let utterance = AVSpeechUtterance(string: text)
        // Prefer the persona's pinned, device-tested voice so the onboarding
        // preview is literally the voice the session will use. `voice(for:)` is
        // the gender-based fallback for when that voice is not installed.
        utterance.voice = persona.voicePersona.resolveVoice() ?? Self.voice(for: profile)
        utterance.rate = profile.rate
        utterance.pitchMultiplier = profile.pitch
        utterance.volume = Float(volume) * profile.volume

        // The hypnotherapist needs air around the words; the drill sergeant
        // must not have any.
        utterance.preUtteranceDelay = persona == .hypnotherapist ? 0.25 : 0
        utterance.postUtteranceDelay = persona == .hypnotherapist ? 0.45 : 0.05

        speakingPersona = persona
        synthesizer.speak(utterance)
    }

    /// Tap-to-preview in onboarding and settings. Interrupts whatever is
    /// already playing so rapid taps across four cards stay responsive.
    public func preview(_ persona: CoachPersona, volume: Double = 0.9) {
        stop()
        speak(persona.previewLine, as: persona, volume: volume)
    }

    public func stop() {
        synthesizer.stopSpeaking(at: .immediate)
        isSpeaking = false
        speakingPersona = nil
    }

    // MARK: - Voice resolution

    private static var cache: [VoiceProfile.Gender: AVSpeechSynthesisVoice] = [:]

    static func voice(for profile: VoiceProfile) -> AVSpeechSynthesisVoice? {
        if let cached = cache[profile.preferredGender] { return cached }

        let candidates = AVSpeechSynthesisVoice.speechVoices()
            .filter { $0.language.hasPrefix("en-US") }

        let matching = candidates.filter { voice in
            switch profile.preferredGender {
            case .male:        return voice.gender == .male
            case .female:      return voice.gender == .female
            case .unspecified: return true
            }
        }

        // Prefer enhanced/premium quality when the user has downloaded it —
        // compact en-US is noticeably robotic and undercuts the whole
        // "this is a coach" premise.
        let ranked = (matching.isEmpty ? candidates : matching).sorted { lhs, rhs in
            rank(lhs.quality) > rank(rhs.quality)
        }

        let chosen = ranked.first ?? AVSpeechSynthesisVoice(language: "en-US")
        if let chosen { cache[profile.preferredGender] = chosen }
        return chosen
    }

    private static func rank(_ quality: AVSpeechSynthesisVoiceQuality) -> Int {
        switch quality {
        case .premium:  return 3
        case .enhanced: return 2
        case .default:  return 1
        @unknown default: return 0
        }
    }
}

extension CoachVoice: AVSpeechSynthesizerDelegate {
    nonisolated public func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer,
                                              didStart utterance: AVSpeechUtterance) {
        Task { @MainActor in self.isSpeaking = true }
    }

    nonisolated public func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer,
                                              didFinish utterance: AVSpeechUtterance) {
        Task { @MainActor in
            self.isSpeaking = false
            self.speakingPersona = nil
        }
    }

    nonisolated public func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer,
                                              didCancel utterance: AVSpeechUtterance) {
        Task { @MainActor in
            self.isSpeaking = false
            self.speakingPersona = nil
        }
    }
}
