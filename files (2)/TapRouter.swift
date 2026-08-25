//
//  TapRouter.swift
//  LAST LONGER
//
//  The Angel is one surface serving two gestures that fight each other:
//
//    · Tempo Lock taps, which must register with ZERO latency — every
//      millisecond of delay is BPM error.
//    · The emergency triple-tap, which by definition can't be recognised
//      until the third tap has arrived.
//
//  SwiftUI's `.onTapGesture(count: 3)` alongside `.onTapGesture(count: 1)`
//  would solve this by delaying every single tap until the triple-tap
//  recogniser gives up — roughly 300–400 ms. That is fatal for tempo: a
//  400 ms error on a 60 BPM tap is a 40% BPM error.
//
//  So this router inverts the problem. Every tap fires immediately and is
//  timestamped. Separately, the router looks backwards: if the last three
//  taps all landed inside `emergencyWindow`, that's the emergency gesture —
//  fire it and retract those three taps from the tempo buffer.
//
//  The retraction is safe because the two gestures don't overlap in the real
//  world. Three taps inside 500 ms is 360 BPM. Nobody is pacing at 360 BPM.
//

import Foundation

@MainActor
final class TapRouter: ObservableObject {

    /// Three taps within this span means emergency, not tempo.
    /// 0.5 s → 360 BPM, comfortably above any human pacing rhythm.
    var emergencyWindow: TimeInterval = 0.5

    /// Taps further apart than this start a new tempo phrase rather than
    /// extending the current one.
    var tempoStaleAfter: TimeInterval = 3.0

    private var taps: [Date] = []

    /// Fired immediately on every tap, with the tap's timestamp.
    var onTempoTap: ((Date) -> Void)?

    /// Fired when three taps land inside `emergencyWindow`.
    var onEmergency: (() -> Void)?

    /// Retract a tap already handed to tempo — the emergency gesture claimed it.
    var onRetractTempoTaps: ((Int) -> Void)?

    var isEnabled = true

    // MARK: - Input

    func registerTap(at time: Date = Date()) {
        guard isEnabled else { return }

        // Drop taps old enough to be a different phrase.
        taps = taps.filter { time.timeIntervalSince($0) < tempoStaleAfter }
        taps.append(time)

        // Emergency check first, so we know whether to claim this tap.
        if taps.count >= 3 {
            let window = taps.suffix(3)
            if let first = window.first, let last = window.last,
               last.timeIntervalSince(first) <= emergencyWindow {
                // The two earlier taps were already forwarded to tempo; pull
                // them back before firing.
                onRetractTempoTaps?(2)
                taps.removeAll()
                onEmergency?()
                return
            }
        }

        onTempoTap?(time)
    }

    func reset() {
        taps.removeAll()
    }
}
