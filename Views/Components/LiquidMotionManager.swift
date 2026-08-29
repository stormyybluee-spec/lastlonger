//
//  LiquidMotionManager.swift
//  LAST LONGER
//
//  Gravity for the liquid glass surfaces. One accelerometer for the whole app,
//  low-pass filtered, refcounted by the views that want it.
//
//  ── READ THIS BEFORE ENABLING ────────────────────────────────────────────
//
//  `isEnabled` ships FALSE, on purpose. The project has twice committed to the
//  phone not reading motion:
//
//    - Resources/Info.plist, header comment: "NSMotionUsageDescription - the
//      phone does not read motion, and shipping that string on the phone
//      contradicts the paywall's privacy claim."
//    - Docs/AppStore-Submission.md, the privacy policy text: "It does not read
//      device motion on iPhone."
//
//  Raw accelerometer needs no usage string and prompts nobody, so turning this
//  on is technically free. It is not editorially free: it makes that policy
//  sentence untrue, in an app whose onboarding shows a checkable privacy
//  ledger. To enable it, flip `isEnabled` AND update those two documents in
//  the same commit.
//
//  With it off, tilt reads a constant zero and the liquid flows from time
//  alone, which is the majority of the effect. Nothing else changes.
//

import Foundation
import SwiftUI
#if canImport(CoreMotion)
import CoreMotion
#endif

@MainActor
final class LiquidMotionManager: ObservableObject {

    /// One accelerometer per process. Apple is explicit that CMMotionManager
    /// should be instantiated once; five tiles each owning one would fight.
    static let shared = LiquidMotionManager()

    /// The compliance switch. See the note at the top of this file.
    static let isEnabled = false

    /// Current gravity direction, roughly -1...1 on each axis.
    ///
    /// Deliberately NOT @Published. These are read inside the surfaces' Canvas
    /// closures, which already redraw on their own TimelineView tick, so
    /// publishing at 30Hz would re-render every subscriber a second time for
    /// no visual gain.
    private(set) var tiltX: Double = 0
    private(set) var tiltY: Double = 0

    /// True once updates are actually flowing. Published because it changes
    /// rarely and a view may want to know (previews, simulator).
    @Published private(set) var isLive = false

    #if canImport(CoreMotion)
    private let motion = CMMotionManager()
    #endif

    /// How many surfaces currently want gravity. The accelerometer runs only
    /// while this is above zero.
    private var clients = 0

    /// Smoothing. Raw accelerometer is far too jittery to drive a border with;
    /// this eases toward the target so the liquid lags the hand slightly, which
    /// is what makes it read as mass rather than as noise.
    private let smoothing = 0.12

    /// Below this the axis is treated as flat, so a phone resting on a table
    /// does not shimmer.
    private let deadZone = 0.04

    private init() {}

    // MARK: - Lifecycle

    /// Called by a surface as it appears.
    func retain() {
        clients += 1
        guard clients == 1 else { return }
        start()
    }

    /// Called by a surface as it disappears. The last one out stops the
    /// hardware, so a backgrounded or unvisited Home screen costs nothing.
    func release() {
        clients = max(0, clients - 1)
        guard clients == 0 else { return }
        stop()
    }

    private func start() {
        guard Self.isEnabled else { return }
        #if canImport(CoreMotion) && !targetEnvironment(simulator)
        guard motion.isAccelerometerAvailable else { return }

        // 30Hz, matching the surfaces' frame rate. 60 would double the
        // callbacks to deliver frames nothing draws.
        motion.accelerometerUpdateInterval = 1.0 / 30.0
        motion.startAccelerometerUpdates(to: .main) { [weak self] data, _ in
            guard let data else { return }
            // Reading the values out here keeps the CMAccelerometerData off the
            // concurrency boundary; only two Doubles cross it.
            let ax = data.acceleration.x
            let ay = data.acceleration.y
            Task { @MainActor in self?.ingest(x: ax, y: ay) }
        }
        isLive = true
        #endif
    }

    private func stop() {
        #if canImport(CoreMotion)
        motion.stopAccelerometerUpdates()
        #endif
        isLive = false
        tiltX = 0
        tiltY = 0
    }

    // MARK: - Filtering

    private func ingest(x rawX: Double, y rawY: Double) {
        let targetX = shape(rawX)
        // The accelerometer's y is positive toward the top of the device and
        // the screen's y grows downward, so it is negated here once rather
        // than at every call site.
        let targetY = shape(-rawY)

        tiltX += (targetX - tiltX) * smoothing
        tiltY += (targetY - tiltY) * smoothing
    }

    /// Dead zone, gain, clamp.
    private func shape(_ v: Double) -> Double {
        guard abs(v) > deadZone else { return 0 }
        return max(-1, min(1, v * 0.8))
    }
}

// MARK: - View plumbing

private struct LiquidGravityModifier: ViewModifier {
    @Environment(\.accessibilityReduceMotion) private var reduceMotion

    func body(content: Content) -> some View {
        content
            .onAppear {
                // Reduce Motion means static glass, so there is no reason to
                // spin the hardware up at all.
                guard !reduceMotion else { return }
                LiquidMotionManager.shared.retain()
            }
            .onDisappear {
                guard !reduceMotion else { return }
                LiquidMotionManager.shared.release()
            }
    }
}

extension View {
    /// Keeps the shared accelerometer running for as long as this view is on
    /// screen. Applied by the liquid glass surfaces; nothing else needs it.
    func liquidGravity() -> some View {
        modifier(LiquidGravityModifier())
    }
}
