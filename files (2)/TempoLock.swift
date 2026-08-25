//
//  TempoLock.swift
//  LAST LONGER
//
//  PART 10 — Tempo Lock.
//
//  User taps the Angel to their own rhythm. After five taps the app has a
//  BPM. From then on it drives the beat and drags it 5% slower every 30
//  seconds, so the user is pulled down a ramp they set themselves.
//
//  BPM ESTIMATION
//  --------------
//  Five taps give four intervals. A plain mean is badly behaved here: one
//  hesitant tap contributes a huge outlier interval and drags the estimate
//  low. The median of the four intervals is used instead — it discards a
//  single bad tap entirely, which is the failure mode that actually happens.
//
//  DECAY
//  -----
//  5% compounding every 30 s is steeper than it sounds: 60 BPM falls to 46
//  in five minutes and 35 in ten. `floorBPM` stops it before the beat
//  becomes uncountable.
//

import Combine
import Foundation

@MainActor
final class TempoLock: ObservableObject {

    enum State: Equatable {
        case idle
        case learning(tapsSoFar: Int)
        case locked
    }

    // MARK: - Published

    @Published private(set) var state: State = .idle
    @Published private(set) var currentBPM: Double = 0
    @Published private(set) var originalBPM: Double = 0
    @Published private(set) var beatCount: Int = 0
    @Published private(set) var beatPulse = false

    // MARK: - Tuning

    /// Taps required before the tempo locks.
    let tapsRequired = 5

    /// Fraction removed from the tempo at each decay step.
    var decayFraction: Double = 0.05

    /// How often the decay is applied.
    var decayInterval: TimeInterval = 30

    /// The tempo never falls below this — a beat slower than ~28 BPM stops
    /// reading as a rhythm and starts reading as unrelated pulses.
    var floorBPM: Double = 28

    /// Spoken count on every Nth beat. Counting all four beats of a slow
    /// tempo is intrusive; counting the downbeat is enough to stay locked.
    var speakEveryNthBeat: Int = 4

    // MARK: - Callbacks

    /// Fires on every beat. Wire to haptics and to the voice count.
    var onBeat: ((Int) -> Void)?

    /// Fires when the tempo steps down, with the new BPM.
    var onDecay: ((Double) -> Void)?

    /// Fires once when the tempo first locks.
    var onLock: ((Double) -> Void)?

    // MARK: - Internals

    private var tapTimes: [Date] = []
    private var beatTimer: AnyCancellable?
    private var decayTimer: AnyCancellable?

    // MARK: - Tap input

    /// Feed every tap here. Timestamps come from `TapRouter` so they carry
    /// no gesture-recogniser latency.
    func registerTap(at time: Date) {
        if case .locked = state { return }

        tapTimes.append(time)
        state = .learning(tapsSoFar: tapTimes.count)

        guard tapTimes.count >= tapsRequired else { return }
        lock(using: Array(tapTimes.suffix(tapsRequired)))
    }

    /// Undo taps claimed by the emergency gesture.
    func retractTaps(_ count: Int) {
        guard case .learning = state else { return }
        tapTimes.removeLast(min(count, tapTimes.count))
        state = tapTimes.isEmpty ? .idle : .learning(tapsSoFar: tapTimes.count)
    }

    // MARK: - Lock

    private func lock(using times: [Date]) {
        let intervals = zip(times.dropFirst(), times).map { $0.timeIntervalSince($1) }
        guard let interval = median(of: intervals), interval > 0.05 else {
            // Taps too fast to be a rhythm — throw them away rather than
            // locking to a nonsense tempo.
            reset()
            return
        }

        let bpm = min(max(60.0 / interval, floorBPM), 240)
        originalBPM = bpm
        currentBPM = bpm
        beatCount = 0
        state = .locked

        onLock?(bpm)
        startBeat()
        startDecay()
    }

    private func median(of values: [TimeInterval]) -> TimeInterval? {
        guard !values.isEmpty else { return nil }
        let sorted = values.sorted()
        let mid = sorted.count / 2
        return sorted.count.isMultiple(of: 2)
            ? (sorted[mid - 1] + sorted[mid]) / 2
            : sorted[mid]
    }

    // MARK: - Beat

    private func startBeat() {
        beatTimer?.cancel()
        guard currentBPM > 0 else { return }
        let interval = 60.0 / currentBPM

        beatTimer = Timer.publish(every: interval, on: .main, in: .common)
            .autoconnect()
            .sink { [weak self] _ in
                MainActor.assumeIsolated { self?.tickBeat() }
            }
    }

    private func tickBeat() {
        beatCount += 1
        onBeat?(beatCount)

        beatPulse = true
        Task { @MainActor in
            try? await Task.sleep(for: .milliseconds(90))
            beatPulse = false
        }
    }

    /// True when this beat should be spoken aloud.
    func shouldSpeak(beat: Int) -> Bool {
        speakEveryNthBeat <= 1 || beat % speakEveryNthBeat == 1
    }

    /// The spoken count for a beat, 1…4.
    func spokenCount(for beat: Int) -> String {
        String(((beat - 1) % 4) + 1)
    }

    // MARK: - Decay

    private func startDecay() {
        decayTimer?.cancel()
        decayTimer = Timer.publish(every: decayInterval, on: .main, in: .common)
            .autoconnect()
            .sink { [weak self] _ in
                MainActor.assumeIsolated { self?.applyDecay() }
            }
    }

    private func applyDecay() {
        guard case .locked = state else { return }
        let next = max(currentBPM * (1 - decayFraction), floorBPM)
        guard next < currentBPM - 0.01 else { return }   // already at the floor

        currentBPM = next
        onDecay?(next)
        startBeat()   // re-arm at the new interval
    }

    // MARK: - Control

    func reset() {
        tapTimes.removeAll()
        beatTimer?.cancel(); beatTimer = nil
        decayTimer?.cancel(); decayTimer = nil
        state = .idle
        currentBPM = 0
        originalBPM = 0
        beatCount = 0
    }

    /// Suspends the beat without losing the locked tempo — used while the
    /// emergency protocol or the breath pacer owns the user's attention.
    func suspend() {
        beatTimer?.cancel(); beatTimer = nil
        decayTimer?.cancel(); decayTimer = nil
    }

    func resumeIfLocked() {
        guard case .locked = state else { return }
        startBeat()
        startDecay()
    }

    // MARK: - Display

    var bpmLabel: String { currentBPM > 0 ? String(Int(currentBPM.rounded())) : "--" }

    var decayLabel: String? {
        guard originalBPM > 0, currentBPM < originalBPM else { return nil }
        let drop = (1 - currentBPM / originalBPM) * 100
        return String(format: "-%.0f%%", drop)
    }

    var learningLabel: String {
        if case .learning(let taps) = state {
            return "\(taps) of \(tapsRequired)"
        }
        return ""
    }
}
