//
//  BinauralEngine.swift
//  LAST LONGER
//
//  Two sine oscillators, one per ear, offset by the program's beat
//  frequency. Synthesised in-process with AVAudioSourceNode — no samples
//  to ship, no third-party audio library.
//
//  THREADING
//  ---------
//  The render block runs on a realtime audio thread and must never touch
//  main-actor state, allocate, or lock. All oscillator state therefore lives
//  in `ToneState`, a plain reference type the render block owns outright.
//  The main actor only ever writes scalar parameters into it; those writes
//  are benign at worst (a parameter lands one buffer early), which is the
//  standard trade for a lock-free render path.
//
//  Binaural beating only works on headphones — two tones played through one
//  speaker mix in the air and the effect is gone. The engine reports
//  `requiresHeadphones` so the UI can say so plainly.
//

import AVFoundation

// MARK: - Render-thread state

/// Owned by the audio render thread. Not main-actor isolated, by design.
private final class ToneState: @unchecked Sendable {
    var leftPhase: Double = 0
    var rightPhase: Double = 0

    var leftIncrement: Double = 0
    var rightIncrement: Double = 0

    var amplitude: Double = 0.06
    var envelope: Double = 0
    var envelopeTarget: Double = 0
    var envelopeStep: Double = 0.0001

    func configure(carrier: Double, beat: Double, sampleRate: Double) {
        guard carrier > 0, sampleRate > 0 else {
            leftIncrement = 0
            rightIncrement = 0
            return
        }
        leftIncrement  = 2 * .pi * (carrier - beat / 2) / sampleRate
        rightIncrement = 2 * .pi * (carrier + beat / 2) / sampleRate
        envelopeStep = 1.0 / (sampleRate * 0.04)   // ~40 ms ramp
    }
}

// MARK: - Engine

@MainActor
final class BinauralEngine: ObservableObject {

    @Published private(set) var isRunning = false
    @Published private(set) var program: BinauralProgram = .off

    private let engine = AVAudioEngine()
    private let tone = ToneState()
    private var sourceNode: AVAudioSourceNode?
    private var sampleRate: Double = 44_100
    private var fadeOutTask: Task<Void, Never>?

    var requiresHeadphones: Bool {
        let headphoneTypes: Set<AVAudioSession.Port> = [
            .headphones, .bluetoothA2DP, .bluetoothLE, .bluetoothHFP, .airPlay, .usbAudio
        ]
        return !AVAudioSession.sharedInstance().currentRoute.outputs
            .contains { headphoneTypes.contains($0.portType) }
    }

    // MARK: - Control

    func start(_ program: BinauralProgram) {
        guard program != .off else { stop(); return }

        fadeOutTask?.cancel()
        fadeOutTask = nil

        self.program = program
        if sourceNode == nil { buildGraph() }

        tone.configure(
            carrier: program.carrierFrequency,
            beat: program.beatFrequency,
            sampleRate: sampleRate
        )

        do {
            if !engine.isRunning { try engine.start() }
            tone.envelopeTarget = 1.0
            isRunning = true
        } catch {
            #if DEBUG
            print("BinauralEngine: start failed — \(error)")
            #endif
            isRunning = false
        }
    }

    func stop() {
        guard isRunning || engine.isRunning else { return }
        tone.envelopeTarget = 0

        // Let the envelope fall before tearing the graph down, otherwise the
        // tone cuts with an audible click.
        fadeOutTask?.cancel()
        fadeOutTask = Task { [weak self] in
            try? await Task.sleep(for: .milliseconds(300))
            guard let self, !Task.isCancelled else { return }
            self.engine.stop()
            self.tone.envelope = 0
            self.isRunning = false
            self.program = .off
        }
    }

    /// Peak amplitude, clamped. This sits under speech and under the user's
    /// own media, so the ceiling is deliberately low.
    func setAmplitude(_ value: Double) {
        tone.amplitude = min(max(value, 0), 0.2)
    }

    // MARK: - Graph

    private func buildGraph() {
        let hardwareRate = engine.outputNode.inputFormat(forBus: 0).sampleRate
        sampleRate = hardwareRate > 0 ? hardwareRate : 44_100

        guard let format = AVAudioFormat(
            standardFormatWithSampleRate: sampleRate,
            channels: 2
        ) else { return }

        let tone = self.tone

        let node = AVAudioSourceNode { _, _, frameCount, audioBufferList in
            let buffers = UnsafeMutableAudioBufferListPointer(audioBufferList)
            guard buffers.count >= 2,
                  let left = buffers[0].mData?.assumingMemoryBound(to: Float.self),
                  let right = buffers[1].mData?.assumingMemoryBound(to: Float.self)
            else { return noErr }

            for frame in 0..<Int(frameCount) {
                if tone.envelope < tone.envelopeTarget {
                    tone.envelope = min(tone.envelope + tone.envelopeStep, tone.envelopeTarget)
                } else if tone.envelope > tone.envelopeTarget {
                    tone.envelope = max(tone.envelope - tone.envelopeStep, tone.envelopeTarget)
                }

                let gain = tone.amplitude * tone.envelope
                left[frame]  = Float(sin(tone.leftPhase) * gain)
                right[frame] = Float(sin(tone.rightPhase) * gain)

                tone.leftPhase  += tone.leftIncrement
                tone.rightPhase += tone.rightIncrement
                if tone.leftPhase  > 2 * .pi { tone.leftPhase  -= 2 * .pi }
                if tone.rightPhase > 2 * .pi { tone.rightPhase -= 2 * .pi }
            }
            return noErr
        }

        engine.attach(node)
        engine.connect(node, to: engine.mainMixerNode, format: format)
        engine.mainMixerNode.outputVolume = 1.0
        sourceNode = node
    }
}
