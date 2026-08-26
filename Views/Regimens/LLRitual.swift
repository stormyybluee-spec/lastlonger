//
//  LLRitual.swift
//  LAST LONGER
//
//  PART C-3 — Pre-Session Ritual.
//
//  Blocks are user-ordered and run before the session proper, with voice
//  guidance and haptics. The runner drives an AVSpeechSynthesizer over a
//  mixWithOthers audio session so it ducks external media rather than
//  interrupting it — the whole app is designed to run alongside something else.
//

import SwiftUI
import AVFoundation
import UIKit

// MARK: - Block kinds

struct RitualBlockKind: Identifiable, Hashable {
    let id: String
    let title: String
    let symbol: String
    let tint: Color
    /// Seconds. Ignored when `isRepBased`.
    let defaultDuration: Int
    let isRepBased: Bool
    let defaultReps: Int
    /// Spoken on block entry.
    let cue: String
    let detail: String
}

enum RitualCatalog {

    static let all: [RitualBlockKind] = [
        RitualBlockKind(
            id: "breathing", title: "Deep Breathing", symbol: "wind", tint: LL.C.green,
            defaultDuration: 30, isRepBased: false, defaultReps: 0,
            cue: "Deep breathing. In through the nose, slow. Out longer than in.",
            detail: "Down-regulates before you start. Longer exhale than inhale."
        ),
        RitualBlockKind(
            id: "reverse_kegel", title: "Reverse Kegels", symbol: "arrow.down.to.line", tint: LL.C.blue,
            defaultDuration: 40, isRepBased: true, defaultReps: 5,
            cue: "Reverse kegels. Bear down gently and release. Do not clench.",
            detail: "Lengthens the pelvic floor. The opposite of a kegel — release, do not squeeze."
        ),
        RitualBlockKind(
            id: "pelvic_floor", title: "Pelvic Floor Release", symbol: "hand.point.up.left.fill", tint: LL.C.yellow,
            defaultDuration: 10, isRepBased: false, defaultReps: 0,
            cue: "Pelvic floor. Light pressure. Ten seconds.",
            detail: "Brief manual release of the pelvic floor. Light pressure only."
        ),
        RitualBlockKind(
            id: "visualization", title: "Visualization", symbol: "brain.head.profile", tint: LL.C.blue,
            defaultDuration: 30, isRepBased: false, defaultReps: 0,
            cue: "Visualize the outcome. You are in control the entire time. Hold that picture.",
            detail: "Rehearse the outcome, not the failure. Thirty seconds is enough."
        ),
        RitualBlockKind(
            id: "hypnosis", title: "Hypnosis Snippet", symbol: "waveform", tint: Color(hex: 0xBF5AF2),
            defaultDuration: 60, isRepBased: false, defaultReps: 0,
            cue: "Let your shoulders drop. Nothing to prove here. Your body already knows how to slow down.",
            detail: "Spoken induction at the Hypnotherapist cadence. One minute."
        )
    ]

    static func kind(_ id: String) -> RitualBlockKind? { all.first { $0.id == id } }
}

// MARK: - Instance

struct RitualBlock: Identifiable, Hashable, Codable {
    var id: UUID = UUID()
    var kindID: String
    var duration: Int
    var reps: Int

    var kind: RitualBlockKind? { RitualCatalog.kind(kindID) }

    init(kind: RitualBlockKind) {
        self.kindID = kind.id
        self.duration = kind.defaultDuration
        self.reps = kind.defaultReps
    }

    var summary: String {
        guard let kind else { return "" }
        return kind.isRepBased ? "\(reps) reps · \(duration)s" : "\(duration)s"
    }
}

struct Ritual: Codable, Equatable {
    var blocks: [RitualBlock] = []
    var isEnabled: Bool = false

    var totalSeconds: Int { blocks.reduce(0) { $0 + $1.duration } }

    var formattedTotal: String {
        let m = totalSeconds / 60, s = totalSeconds % 60
        return m > 0 ? "\(m)m \(s)s" : "\(s)s"
    }

    static let suggested: Ritual = {
        var r = Ritual()
        r.blocks = [
            RitualBlock(kind: RitualCatalog.all[0]),   // breathing
            RitualBlock(kind: RitualCatalog.all[1]),   // reverse kegels
            RitualBlock(kind: RitualCatalog.all[3])    // visualization
        ]
        return r
    }()
}

// MARK: - Store

@MainActor
final class RitualStore: ObservableObject {

    @Published var ritual: Ritual {
        didSet { persist() }
    }

    private let key = "ll.ritual"

    init(ritual: Ritual? = nil) {
        if let ritual {
            self.ritual = ritual
        } else if let data = UserDefaults.standard.data(forKey: key),
                  let decoded = try? JSONDecoder().decode(Ritual.self, from: data) {
            self.ritual = decoded
        } else {
            self.ritual = Ritual()
        }
    }

    func add(_ kind: RitualBlockKind) {
        guard ritual.blocks.count < 8 else { return }
        ritual.blocks.append(RitualBlock(kind: kind))
    }

    func move(from source: IndexSet, to destination: Int) {
        ritual.blocks.move(fromOffsets: source, toOffset: destination)
    }

    func remove(at offsets: IndexSet) {
        ritual.blocks.remove(atOffsets: offsets)
    }

    private func persist() {
        guard let data = try? JSONEncoder().encode(ritual) else { return }
        UserDefaults.standard.set(data, forKey: key)
    }
}

// MARK: - Runner

@MainActor
final class RitualRunner: ObservableObject {

    @Published private(set) var index: Int = 0
    @Published private(set) var remaining: Int = 0
    @Published private(set) var isRunning: Bool = false
    @Published private(set) var isFinished: Bool = false

    let blocks: [RitualBlock]
    private let persona: CoachPersona
    private let hapticIntensity: HapticIntensity
    private let voiceEnabled: Bool

    private var timer: Timer?
    private let synth = AVSpeechSynthesizer()

    var current: RitualBlock? { blocks.indices.contains(index) ? blocks[index] : nil }

    var elapsedFraction: Double {
        guard let current, current.duration > 0 else { return 0 }
        return 1 - Double(remaining) / Double(current.duration)
    }

    init(blocks: [RitualBlock],
         persona: CoachPersona,
         hapticIntensity: HapticIntensity,
         voiceEnabled: Bool) {
        self.blocks = blocks
        self.persona = persona
        self.hapticIntensity = hapticIntensity
        self.voiceEnabled = voiceEnabled
    }

    // MARK: Transport

    func start() {
        guard !blocks.isEmpty, !isRunning else { return }
        configureAudioSession()
        isRunning = true
        isFinished = false
        index = 0
        enterCurrentBlock()
    }

    func skip() {
        haptic(.light)
        advance()
    }

    func stop() {
        timer?.invalidate(); timer = nil
        synth.stopSpeaking(at: .immediate)
        isRunning = false
        deactivateAudioSession()
    }

    // MARK: Internals

    /// `.mixWithOthers` + `.duckOthers`: the coach lowers whatever the user is
    /// already playing instead of killing it. `.interruptSpokenAudioAndMix`
    /// would stop podcasts outright, which is the wrong behaviour here.
    private func configureAudioSession() {
        let session = AVAudioSession.sharedInstance()
        try? session.setCategory(.playback, mode: .spokenAudio,
                                 options: [.mixWithOthers, .duckOthers])
        try? session.setActive(true)
    }

    private func deactivateAudioSession() {
        try? AVAudioSession.sharedInstance().setActive(false, options: .notifyOthersOnDeactivation)
    }

    private func enterCurrentBlock() {
        guard let block = current else { finish(); return }
        remaining = block.duration
        haptic(.medium)
        if let cue = block.kind?.cue { speak(cue) }

        timer?.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { [weak self] _ in
            Task { @MainActor in self?.tick() }
        }
    }

    private func tick() {
        guard isRunning else { return }
        remaining -= 1

        // Last three seconds get a tick so the transition is not a surprise.
        if remaining <= 3 && remaining > 0 { haptic(.light) }
        if remaining <= 0 { advance() }
    }

    private func advance() {
        timer?.invalidate()
        index += 1
        if index >= blocks.count { finish() } else { enterCurrentBlock() }
    }

    private func finish() {
        timer?.invalidate(); timer = nil
        isRunning = false
        isFinished = true
        UINotificationFeedbackGenerator().notificationOccurred(.success)
        speak("Ritual complete. Starting session.")
    }

    private func speak(_ text: String) {
        guard voiceEnabled else { return }
        // `persona` is a `CoachPersona`, whose speech parameters live on
        // `persona.voice` (a `VoiceProfile`) — the same path CoachVoice.speak
        // uses. The previous code read `persona.resolvedRate/.pitch/.volume`,
        // which are `VoicePersona`/`VoiceProfile` members that `CoachPersona`
        // does not expose, and assigned the `VoiceProfile` itself to
        // `AVSpeechUtterance.voice` (which needs an `AVSpeechSynthesisVoice`).
        let profile = persona.voice
        let u = AVSpeechUtterance(string: text)
        u.voice = CoachVoice.voice(for: profile)
        u.rate = profile.rate
        u.pitchMultiplier = profile.pitch
        u.volume = profile.volume
        u.postUtteranceDelay = 0.15
        synth.speak(u)
    }

    private func haptic(_ style: UIImpactFeedbackGenerator.FeedbackStyle) {
        // `HapticIntensity` is low/medium/high — the `.off` case was removed in
        // consolidation, and haptics are gated at the settings layer, not here.
        // `.scale` is always > 0, so play at the configured intensity.
        let generator = UIImpactFeedbackGenerator(style: style)
        // `.scale` is a Float; `impactOccurred(intensity:)` wants a CGFloat.
        generator.impactOccurred(intensity: CGFloat(hapticIntensity.scale))
    }
}
