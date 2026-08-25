//
//  ToneGenerator.swift
//  LAST LONGER
//
//  Success chimes synthesised at runtime. Nothing on disk, nothing licensed.
//
//  The pitch rises with the streak, but not linearly — a linear sweep turns
//  into a siren by streak 12. Degrees walk a minor pentatonic instead, so a
//  long streak sounds like it is climbing something rather than complaining.
//

import AVFoundation
import Foundation

// MARK: - Audio session

/// One owner for the session category. The app plays alongside whatever
/// the user already has running, so the category is fixed for the whole
/// process and only the ducking behaviour changes.
public enum AudioSessionController {

    public static func activateForCoaching(duckOthers: Bool) {
        let session = AVAudioSession.sharedInstance()
        var options: AVAudioSession.CategoryOptions = [.mixWithOthers]
        if duckOthers { options.insert(.duckOthers) }

        do {
            try session.setCategory(.playback, mode: .default, options: options)
            try session.setActive(true, options: [])
        } catch {
            assertionFailure("Audio session activation failed: \(error)")
        }
    }

    public static func deactivate() {
        try? AVAudioSession.sharedInstance().setActive(false, options: [.notifyOthersOnDeactivation])
    }
}

// MARK: - Tones

@MainActor
public final class ToneGenerator {

    public static let shared = ToneGenerator()

    private let engine = AVAudioEngine()
    private let player = AVAudioPlayerNode()
    private let format: AVAudioFormat
    private var isRunning = false

    /// 0…1, mirrors the coach volume slider.
    public var volume: Float = 0.8 {
        didSet { player.volume = max(0, min(1, volume)) }
    }

    private init() {
        format = AVAudioFormat(standardFormatWithSampleRate: 44_100, channels: 2)!
        engine.attach(player)
        engine.connect(player, to: engine.mainMixerNode, format: format)
    }

    private func startIfNeeded() {
        guard !isRunning else { return }
        do {
            try engine.start()
            player.play()
            isRunning = true
        } catch {
            isRunning = false
        }
    }

    public func stop() {
        player.stop()
        engine.stop()
        isRunning = false
    }

    // MARK: - Public cues

    /// Played on a confirmed pullback. Streak is the current consecutive
    /// count; pitch climbs with it and caps two octaves up.
    public func successChime(streak: Int) {
        let semitones = [0, 3, 5, 7, 10]
        let degree = max(0, streak) % semitones.count
        let octave = min(2, max(0, streak) / semitones.count)
        let offset = Double(semitones[degree] + 12 * octave)
        let frequency = 440.0 * pow(2.0, offset / 12.0)

        play(Chime(frequency: frequency, duration: 0.42, harmonics: [1.0, 0.35, 0.12]))
    }

    /// Badge unlock. A short arpeggio rather than a single note.
    public func unlockFanfare() {
        let intervals: [Double] = [0, 4, 7, 12]
        for (index, semitone) in intervals.enumerated() {
            let frequency = 440.0 * pow(2.0, semitone / 12.0)
            DispatchQueue.main.asyncAfter(deadline: .now() + Double(index) * 0.09) { [weak self] in
                self?.play(Chime(frequency: frequency, duration: 0.30, harmonics: [1.0, 0.4]))
            }
        }
    }

    /// Countdown tick during the pre-session and emergency countdowns.
    public func tick(emphasised: Bool = false) {
        play(Chime(
            frequency: emphasised ? 880 : 660,
            duration: 0.09,
            harmonics: [1.0],
            gain: emphasised ? 0.5 : 0.28
        ))
    }

    // MARK: - Synthesis

    private struct Chime {
        var frequency: Double
        var duration: Double
        /// Amplitude of each partial, starting at the fundamental.
        var harmonics: [Double]
        var gain: Double = 0.6
    }

    private func play(_ chime: Chime) {
        startIfNeeded()
        guard isRunning, let buffer = render(chime) else { return }
        player.scheduleBuffer(buffer, at: nil, options: [], completionHandler: nil)
    }

    private func render(_ chime: Chime) -> AVAudioPCMBuffer? {
        let sampleRate = format.sampleRate
        let frameCount = AVAudioFrameCount(sampleRate * chime.duration)
        guard frameCount > 0,
              let buffer = AVAudioPCMBuffer(pcmFormat: format, frameCapacity: frameCount),
              let channels = buffer.floatChannelData
        else { return nil }

        buffer.frameLength = frameCount

        // 4 ms raised-cosine fade in, exponential decay out. Without the
        // fade-in every chime starts with a click on the speaker.
        let attackFrames = max(1.0, sampleRate * 0.004)
        let normalisation = chime.harmonics.reduce(0, +)

        for frame in 0..<Int(frameCount) {
            let t = Double(frame) / sampleRate
            let progress = Double(frame) / Double(frameCount)

            var sample = 0.0
            for (index, amplitude) in chime.harmonics.enumerated() {
                let partial = chime.frequency * Double(index + 1)
                sample += amplitude * sin(2 * .pi * partial * t)
            }
            sample /= max(normalisation, 0.0001)

            let attack = min(1.0, Double(frame) / attackFrames)
            let decay = exp(-4.5 * progress)
            let value = Float(sample * attack * decay * chime.gain)

            for channel in 0..<Int(format.channelCount) {
                channels[channel][frame] = value
            }
        }

        return buffer
    }
}
