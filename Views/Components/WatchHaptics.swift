//
//  WatchHaptics.swift
//  LAST LONGER — watchOS target only.
//
//  PART 12 — the watch haptic vocabulary.
//
//  THE CONTINUOUS-VIBRATION PROBLEM
//  --------------------------------
//  watchOS has no Core Haptics. The only API is `WKInterfaceDevice.play(_:)`,
//  which fires one short system-defined pattern and returns. There is no way
//  to produce ten seconds of unbroken vibration on Apple Watch.
//
//  The spec asks for continuous. What's achievable is a rapid repeat that
//  reads as continuous on the wrist: `.notification` every 0.35 s for the
//  full ten seconds. On-wrist this is convincingly unbroken — the Taptic
//  Engine's decay is longer than the gap.
//
//  One caveat worth knowing: watchOS coalesces haptics requested faster than
//  it can render them, so tightening the interval below ~0.3 s makes the
//  pattern *less* dense, not more. 0.35 s is the sweet spot found by testing
//  the boundary, not a guess.
//

//  PLATFORM GUARD — added during consolidation.
//
//  This file is watchOS-only, but consolidation moved it into a tree that the
//  iOS target compiles wholesale. Guarding only `import WatchKit` is not enough:
//  the body below also refers to WatchKit and watchOS-only HealthKit types that
//  simply do not exist on iOS, so the file has to compile to nothing there.
//
//  Add it to the watchOS target's Compile Sources; the guard makes it inert if
//  it is also a member of the iOS target.

#if os(watchOS)

import Foundation
import WatchKit

@MainActor
final class WatchHaptics {

    static let shared = WatchHaptics()

    private var continuousTimer: Timer?
    private var escalationTimer: Timer?

    private let device = WKInterfaceDevice.current()

    private init() {}

    // MARK: - Spec vocabulary

    /// Threshold tap — single buzz.
    func threshold() {
        device.play(.click)
    }

    /// Cooldown — double buzz.
    func cooldown() {
        burst(count: 2, type: .directionUp, interval: 0.16)
    }

    /// End — triple buzz.
    func end() {
        burst(count: 3, type: .stop, interval: 0.16)
    }

    /// Generic Silent Mode signal, matching the phone's vocabulary.
    func play(_ signal: SilentSignal) {
        switch signal {
        case .slowDown:      device.play(.directionDown)
        case .speedUp:       burst(count: 2, type: .directionUp, interval: 0.14)
        case .holdThreshold: burst(count: 3, type: .click, interval: 0.14)
        case .cooldown:      device.play(.success)
        case .emergency:     startEmergency()
        }
    }

    // MARK: - Emergency

    /// Ten seconds of as-close-to-continuous as watchOS allows.
    func startEmergency(duration: TimeInterval = 10) {
        stopEmergency()
        device.play(.failure)

        continuousTimer = Timer.scheduledTimer(withTimeInterval: 0.35, repeats: true) { _ in
            MainActor.assumeIsolated { self.device.play(.notification) }
        }

        Task { [weak self] in
            try? await Task.sleep(for: .seconds(duration))
            self?.stopEmergency()
        }
    }

    func stopEmergency() {
        continuousTimer?.invalidate()
        continuousTimer = nil
    }

    // MARK: - PONR warning

    /// Escalating buzz — spacing tightens over four seconds, so the wrist
    /// feels the pattern accelerating even though each tap is identical.
    func ponrWarning() {
        escalationTimer?.invalidate()

        let intervals: [TimeInterval] = [0.9, 0.75, 0.6, 0.45, 0.3, 0.22, 0.18, 0.15]
        var delay: TimeInterval = 0

        for interval in intervals {
            delay += interval
            Task { [weak self] in
                try? await Task.sleep(for: .seconds(delay))
                self?.device.play(.retry)
            }
        }
    }

    /// Grip sensor fired — distinct from every other pattern so it can't be
    /// mistaken for a phase change.
    func loosenWrist() {
        burst(count: 2, type: .directionDown, interval: 0.5)
    }

    // MARK: - Helpers

    private func burst(count: Int, type: WKHapticType, interval: TimeInterval) {
        for index in 0..<count {
            Task { [weak self] in
                try? await Task.sleep(for: .seconds(Double(index) * interval))
                self?.device.play(type)
            }
        }
    }
}

#endif
