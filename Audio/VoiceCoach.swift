//
//  VoiceCoach.swift
//  LAST LONGER
//
//  Wraps AVSpeechSynthesizer. Responsibilities:
//    · persona parameter application
//    · phrase selection with no-repeat-within-3 per (persona, category)
//    · custom phrase injection into the rotation
//    · coach-frequency gating and minimum inter-line spacing
//    · Silent Mode (speech suppressed, haptics still fire upstream)
//    · duck-and-mix audio session so a session can run under the user's
//      own media without stopping it
//

import AVFoundation
import Combine

@MainActor
final class VoiceCoach: NSObject, ObservableObject {

    // MARK: - Published state

    @Published private(set) var isSpeaking = false
    @Published private(set) var lastLine: String = ""

    // MARK: - Configuration

    var persona: VoicePersona = .drillSergeant
    var volume: Float = 0.8
    var frequency: CoachFrequency = .normal
    var isSilent: Bool = false

    // MARK: - Internals

    private let synthesizer = AVSpeechSynthesizer()

    /// Ring of recently used indices per (persona, category). Cap 3 → a line
    /// cannot recur until three other lines from that category have played.
    private var recent: [String: [Int]] = [:]
    private let noRepeatWindow = 3

    private var lastSpokenAt: Date = .distantPast

    override init() {
        super.init()
        synthesizer.delegate = self
    }

    // MARK: - Audio session

    /// Call once before the countdown fires.
    ///
    /// `.duckOthers` is the important flag: the user's external media keeps
    /// playing and dips under the coach rather than being interrupted.
    /// `.playback` + the `audio` background mode keeps the coach alive after
    /// the app leaves the foreground.
    func activateAudioSession() {
        do {
            let session = AVAudioSession.sharedInstance()
            try session.setCategory(
                .playback,
                mode: .spokenAudio,
                options: [.duckOthers, .mixWithOthers]
            )
            try session.setActive(true, options: [])
        } catch {
            #if DEBUG
            print("VoiceCoach: audio session activation failed — \(error)")
            #endif
        }
    }

    func deactivateAudioSession() {
        try? AVAudioSession.sharedInstance()
            .setActive(false, options: [.notifyOthersOnDeactivation])
    }

    // MARK: - Speaking

    /// Speak a line drawn from `category`.
    ///
    /// - Parameters:
    ///   - force: bypasses frequency gating and the minimum gap. Use for
    ///            emergency, warnings and phase changes.
    ///   - tokens: substitution map, e.g. `["MODE": "Threshold Ladder"]`.
    /// - Returns: the line that was spoken, or nil if the call was gated out.
    @discardableResult
    func speak(_ category: PhraseCategory,
               force: Bool = false,
               tokens: [String: String] = [:]) -> String? {

        guard !isSilent else { return nil }
        guard force || passesGate(category) else { return nil }

        // Optional categories occasionally yield to a user custom line.
        let sourceCategory: PhraseCategory = {
            guard !category.isMandatory,
                  !PhraseLibrary.customPhrases.isEmpty,
                  Double.random(in: 0...1) < 0.25
            else { return category }
            return .custom
        }()

        guard let raw = pick(sourceCategory) else { return nil }
        let line = render(raw, tokens: tokens, category: category)

        utter(line)
        lastSpokenAt = Date()
        lastLine = line
        return line
    }

    /// Speak an exact string, bypassing the phrase bank. Used for counted
    /// phases ("Five. Slow.") and ladder rung announcements.
    func speakLiteral(_ text: String, force: Bool = true) {
        guard !isSilent else { return }
        guard force || passesGate(.encouragement) else { return }
        utter(text)
        lastSpokenAt = Date()
        lastLine = text
    }

    func stop(immediately: Bool = true) {
        synthesizer.stopSpeaking(at: immediately ? .immediate : .word)
    }

    func pause() { synthesizer.pauseSpeaking(at: .word) }
    func resume() { synthesizer.continueSpeaking() }

    /// Clears rotation history. Call on session start so a new session
    /// doesn't inherit the previous one's exclusions.
    func resetRotation() {
        recent.removeAll()
        lastSpokenAt = .distantPast
    }

    // MARK: - Gating

    private func passesGate(_ category: PhraseCategory) -> Bool {
        if Date().timeIntervalSince(lastSpokenAt) < frequency.minimumGap { return false }
        if category.isMandatory { return true }
        return Double.random(in: 0...1) < frequency.optionalChance
    }

    // MARK: - Selection

    private func pick(_ category: PhraseCategory) -> String? {
        let pool = PhraseLibrary.phrases(for: persona, category: category)
        guard !pool.isEmpty else { return nil }
        guard pool.count > 1 else { return pool[0] }

        let key = "\(persona.rawValue).\(category.rawValue)"
        var used = recent[key] ?? []

        // If the exclusion window has eaten the whole pool, drop the oldest.
        while used.count >= min(noRepeatWindow, pool.count - 1) {
            used.removeFirst()
        }

        let available = pool.indices.filter { !used.contains($0) }
        guard let choice = available.randomElement() else { return pool.randomElement() }

        used.append(choice)
        recent[key] = used
        return pool[choice]
    }

    // MARK: - Rendering

    private func render(_ template: String,
                        tokens: [String: String],
                        category: PhraseCategory) -> String {
        var line = template

        if line.contains("{MATH}") {
            line = line.replacingOccurrences(of: "{MATH}", with: DistractionGenerator.next())
        }
        for (key, value) in tokens {
            line = line.replacingOccurrences(of: "{\(key)}", with: value)
        }

        // Strip any token the caller didn't supply rather than speaking braces.
        line = line.replacingOccurrences(
            of: "\\{[A-Z]+\\}",
            with: "",
            options: .regularExpression
        )
        return line
            .replacingOccurrences(of: "  ", with: " ")
            .trimmingCharacters(in: .whitespaces)
    }

    // MARK: - Utterance

    private func utter(_ text: String) {
        let utterance = AVSpeechUtterance(string: text)
        utterance.voice = persona.resolveVoice()
        utterance.rate = persona.resolvedRate
        utterance.pitchMultiplier = persona.pitchMultiplier
        utterance.volume = persona.baseVolume * volume
        utterance.preUtteranceDelay = persona.preUtteranceDelay
        utterance.postUtteranceDelay = persona.postUtteranceDelay
        synthesizer.speak(utterance)
    }

    // MARK: - Preview

    /// One-line sample for the persona picker.
    func preview(_ persona: VoicePersona) {
        let saved = self.persona
        self.persona = persona
        stop()
        let sample = PhraseLibrary
            .phrases(for: persona, category: .sessionStart)
            .randomElement() ?? "Session starting."
        utter(sample)
        self.persona = saved
    }
}

// MARK: - AVSpeechSynthesizerDelegate

extension VoiceCoach: AVSpeechSynthesizerDelegate {

    nonisolated func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer,
                                       didStart utterance: AVSpeechUtterance) {
        Task { @MainActor in self.isSpeaking = true }
    }

    nonisolated func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer,
                                       didFinish utterance: AVSpeechUtterance) {
        Task { @MainActor in self.isSpeaking = false }
    }

    nonisolated func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer,
                                       didCancel utterance: AVSpeechUtterance) {
        Task { @MainActor in self.isSpeaking = false }
    }
}
