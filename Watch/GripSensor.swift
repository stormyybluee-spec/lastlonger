//
//  GripSensor.swift
//  LAST LONGER — watchOS target only.
//
//  PART 12 — the Anti-Grip-Pressure Sensor.
//
//  THE SIGNAL
//  ----------
//  The spec's rule: low wrist angle variation while pace rate is high means
//  the grip is too tight. That's a sound intuition — a relaxed wrist rolls
//  and articulates through a stroke; a clenched one locks and moves the whole
//  forearm as a rigid unit.
//
//  Two independent measurements, both from CMDeviceMotion at 25 Hz:
//
//    RIGIDITY   Variance of wrist attitude (roll + pitch) across a 4-second
//               window. Low variance = the wrist isn't articulating.
//
//    CADENCE    Dominant frequency of user acceleration, estimated by
//               counting zero-crossings of the mean-removed magnitude. Cheap,
//               robust enough at these frequencies, and far less work than an
//               FFT for a signal we only need to bucket coarsely.
//
//  A warning fires when rigidity is below threshold AND cadence is above it,
//  sustained for `sustainWindow`, with a cooldown afterwards.
//
//  HONEST LIMITS — read before shipping
//  ------------------------------------
//  The thresholds below are starting values derived from the physics, not
//  from data. They WILL need calibration against real recordings before this
//  is trustworthy: wrist articulation varies with technique, watch fit, and
//  which arm the watch is on. Ship this behind a sensitivity setting and
//  default it to Off until you've tuned it, because a false "loosen your
//  wrist" mid-session is worse than no warning at all — it trains people to
//  ignore the feature.
//
//  `debugSnapshot` exists so you can log real values and set the thresholds
//  from evidence.
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

import CoreMotion
import Foundation

@MainActor
final class GripSensor: ObservableObject {

    // MARK: - Published

    @Published private(set) var isMonitoring = false
    @Published private(set) var rigidity: Double = 1.0    // 0 = fluid, 1 = locked
    @Published private(set) var cadence: Double = 0       // strokes per second
    @Published private(set) var isWarning = false

    /// Fires when the grip heuristic trips.
    var onGripTooTight: ((_ rigidity: Double, _ cadence: Double) -> Void)?

    // MARK: - Tuning (CALIBRATE THESE)

    /// Attitude variance below this counts as a locked wrist.
    var rigidityThreshold: Double = 0.72

    /// Strokes per second above this counts as a fast pace.
    var cadenceThreshold: Double = 1.1

    /// Condition must hold this long before warning — filters out a moment
    /// of stillness between strokes.
    var sustainWindow: TimeInterval = 4.0

    /// Minimum gap between warnings.
    var warningCooldown: TimeInterval = 45

    enum Sensitivity: String, CaseIterable, Identifiable {
        case off, low, medium, high
        var id: String { rawValue }
        var label: String { rawValue.capitalized }

        var rigidityThreshold: Double {
            switch self {
            case .off:    return -1      // never fires
            case .low:    return 0.82
            case .medium: return 0.72
            case .high:   return 0.62
            }
        }
    }

    var sensitivity: Sensitivity = .off {
        didSet { rigidityThreshold = sensitivity.rigidityThreshold }
    }

    // MARK: - Internals

    private let motionManager = CMMotionManager()
    private let sampleRate: Double = 25
    private var windowSeconds: Double { 4.0 }
    private var windowCapacity: Int { Int(sampleRate * windowSeconds) }

    private var rollSamples: [Double] = []
    private var pitchSamples: [Double] = []
    private var accelSamples: [Double] = []

    private var conditionStartedAt: Date?
    private var lastWarningAt: Date?

    // MARK: - Control

    func start() {
        guard sensitivity != .off,
              motionManager.isDeviceMotionAvailable,
              !isMonitoring
        else { return }

        motionManager.deviceMotionUpdateInterval = 1.0 / sampleRate
        motionManager.startDeviceMotionUpdates(to: .main) { [weak self] motion, _ in
            guard let self, let motion else { return }
            MainActor.assumeIsolated { self.ingest(motion) }
        }
        isMonitoring = true
    }

    func stop() {
        motionManager.stopDeviceMotionUpdates()
        isMonitoring = false
        rollSamples.removeAll()
        pitchSamples.removeAll()
        accelSamples.removeAll()
        conditionStartedAt = nil
        isWarning = false
    }

    // MARK: - Ingest

    private func ingest(_ motion: CMDeviceMotion) {
        append(&rollSamples, motion.attitude.roll)
        append(&pitchSamples, motion.attitude.pitch)

        let acceleration = motion.userAcceleration
        let magnitude = sqrt(acceleration.x * acceleration.x
                           + acceleration.y * acceleration.y
                           + acceleration.z * acceleration.z)
        append(&accelSamples, magnitude)

        guard rollSamples.count >= windowCapacity else { return }

        rigidity = computeRigidity()
        cadence = computeCadence()
        evaluate()
    }

    private func append(_ buffer: inout [Double], _ value: Double) {
        buffer.append(value)
        if buffer.count > windowCapacity {
            buffer.removeFirst(buffer.count - windowCapacity)
        }
    }

    // MARK: - Features

    /// Maps combined attitude variance onto 0…1, where 1 is fully locked.
    ///
    /// The 0.02 rad² reference is the variance of a wrist articulating
    /// normally through a stroke; anything well under that is a rigid wrist
    /// being moved by the forearm.
    private func computeRigidity() -> Double {
        let rollVariance = variance(of: rollSamples)
        let pitchVariance = variance(of: pitchSamples)
        let combined = rollVariance + pitchVariance

        let reference = 0.02
        let normalized = min(combined / reference, 1.0)
        return 1.0 - normalized
    }

    /// Dominant oscillation frequency via zero-crossing rate of the
    /// mean-removed acceleration magnitude. Two crossings per cycle.
    private func computeCadence() -> Double {
        guard accelSamples.count > 2 else { return 0 }

        let mean = accelSamples.reduce(0, +) / Double(accelSamples.count)
        let centered = accelSamples.map { $0 - mean }

        // Ignore crossings from near-zero noise — otherwise a still wrist
        // reads as very high cadence.
        let amplitude = centered.map(abs).reduce(0, +) / Double(centered.count)
        guard amplitude > 0.015 else { return 0 }

        var crossings = 0
        for index in 1..<centered.count {
            if centered[index - 1] <= 0 && centered[index] > 0 { crossings += 1 }
        }
        return Double(crossings) / windowSeconds
    }

    private func variance(of samples: [Double]) -> Double {
        guard samples.count > 1 else { return 0 }
        let mean = samples.reduce(0, +) / Double(samples.count)
        let sumSquares = samples.reduce(0) { $0 + ($1 - mean) * ($1 - mean) }
        return sumSquares / Double(samples.count - 1)
    }

    // MARK: - Decision

    private func evaluate() {
        let tripped = rigidity >= rigidityThreshold && cadence >= cadenceThreshold

        guard tripped else {
            conditionStartedAt = nil
            isWarning = false
            return
        }

        if conditionStartedAt == nil { conditionStartedAt = Date() }
        guard let started = conditionStartedAt,
              Date().timeIntervalSince(started) >= sustainWindow
        else { return }

        if let last = lastWarningAt, Date().timeIntervalSince(last) < warningCooldown {
            return
        }

        lastWarningAt = Date()
        conditionStartedAt = nil
        isWarning = true
        onGripTooTight?(rigidity, cadence)

        Task { @MainActor in
            try? await Task.sleep(for: .seconds(6))
            self.isWarning = false
        }
    }

    // MARK: - Calibration

    /// Log this during real sessions to set the thresholds from data rather
    /// than from the estimates above.
    var debugSnapshot: String {
        String(format: "rigidity %.3f  cadence %.2f/s  samples %d",
               rigidity, cadence, rollSamples.count)
    }
}

#endif
