//
//  ToneGenerator.swift
//  LAST LONGER
//
//  PART 10 — Success Sound. A short chime synthesised at call time. No
//  audio files ship with the app.
//
//  Pitch climbs with the threshold streak, but along a pentatonic scale
//  rather than by a fixed Hz step. A linear Hz ramp sounds wrong to the ear
//  (pitch perception is logarithmic) and drifts out of tune with itself;
//  stepping a minor pentatonic keeps every streak value consonant with the
//  last one, so a long streak sounds like a phrase rather than a siren.
//
//  The chime is rendered into a PCM buffer and played through a dedicated
//  AVAudioPlayerNode, so it mixes over the coach and the binaural bed
//  without interrupting either.
//

import AVFoundation

@MainActor
final class ToneGenerator {

    static let shared = ToneGenerator()

    private let engine = AVAudioEngine()
    private let player = AVAudioPlayerNode()
    private var isConfigured = false
    private var sampleRate: Double = 44_100

    /// Minor pentatonic from A3. Twelve rungs covers streaks well past what
    /// anyone reaches in a session; beyond that we hold at the ceiling rather
    /// than climbing into a range that reads as an alarm.
    private let scale: [Double] = [
        220.00, 261.63, 293.66, 329.63, 392.00,
        440.00, 523.25, 587.33, 659.25, 783.99,
        880.00, 1046.50
    ]

    private init() {}

    // MARK: - Setup

    private func configureIfNeeded() {
        guard !isConfigured else { return }
        let output = engine.outputNode
        let rate = output.inputFormat(forBus: 0).sampleRate
        sampleRate = rate > 0 ? rate : 44_100

        guard let format = AVAudioFormat(standardFormatWithSampleRate: sampleRate, channels: 2)
        else { return }

        engine.attach(player)
        engine.connect(player, to: engine.mainMixerNode, format: format)
        isConfigured = true
    }

    // MARK: - Chime

    /// Plays the success chime for a given streak (1-based).
    func playSuccess(streak: Int) {
        let index = min(max(streak - 1, 0), scale.count - 1)
        let root = scale[index]
        // Root plus a fifth above, the fifth quieter — a bare sine reads as a
        // test tone, two partials read as a chime.
        play(frequencies: [(root, 0.5), (root * 1.5, 0.22)], duration: 0.55)
    }

    /// Two-note falling figure marking the end of the emergency countdown.
    func playRecovery() {
        play(frequencies: [(392.00, 0.42)], duration: 0.35)
        Task {
            try? await Task.sleep(for: .milliseconds(280))
            play(frequencies: [(261.63, 0.42)], duration: 0.6)
        }
    }

    // MARK: - Synthesis

    private func play(frequencies: [(hz: Double, gain: Double)], duration: Double) {
        configureIfNeeded()
        guard isConfigured,
              let format = AVAudioFormat(standardFormatWithSampleRate: sampleRate, channels: 2),
              let buffer = render(frequencies: frequencies, duration: duration, format: format)
        else { return }

        do {
            if !engine.isRunning { try engine.start() }
            player.scheduleBuffer(buffer, at: nil, options: [], completionHandler: nil)
            if !player.isPlaying { player.play() }
        } catch {
            #if DEBUG
            print("ToneGenerator: playback failed — \(error)")
            #endif
        }
    }

    private func render(frequencies: [(hz: Double, gain: Double)],
                        duration: Double,
                        format: AVAudioFormat) -> AVAudioPCMBuffer? {

        let frameCount = AVAudioFrameCount(sampleRate * duration)
        guard frameCount > 0,
              let buffer = AVAudioPCMBuffer(pcmFormat: format, frameCapacity: frameCount),
              let channels = buffer.floatChannelData
        else { return nil }

        buffer.frameLength = frameCount

        let attack = sampleRate * 0.008          // 8 ms — enough to avoid a click
        let total = Double(frameCount)

        for frame in 0..<Int(frameCount) {
            let t = Double(frame) / sampleRate

            // Percussive envelope: fast attack, exponential decay.
            let attackGain = min(Double(frame) / attack, 1.0)
            let decayGain = exp(-3.2 * (Double(frame) / total))
            let envelope = attackGain * decayGain

            var sample = 0.0
            for partial in frequencies {
                sample += sin(2 * .pi * partial.hz * t) * partial.gain
            }
            let value = Float(sample * envelope)

            for channel in 0..<Int(format.channelCount) {
                channels[channel][frame] = value
            }
        }
        return buffer
    }
}
