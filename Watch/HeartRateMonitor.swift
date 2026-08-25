//
//  HeartRateMonitor.swift
//  LAST LONGER — watchOS target only.
//
//  PART 12 — heart rate, and only heart rate.
//
//  WHY THIS RUNS AN HKWorkoutSession
//  ---------------------------------
//  An `HKAnchoredObjectQuery` on heart rate will technically deliver samples,
//  but the watch only *writes* heart rate every few minutes outside a workout
//  — the high-rate sensor is off. Polling it gives you a number that's five
//  minutes stale, which is useless for spike detection.
//
//  `HKWorkoutSession` + `HKLiveWorkoutBuilder` turns the sensor to continuous
//  and delivers roughly 1 Hz. It also keeps the watch app running in the
//  background for the session's duration, which the four control buttons
//  need anyway.
//
//  The cost: this registers as a workout. `.other` with `.indoor` keeps it
//  unlabelled in the Health app, and `endSession` discards the builder rather
//  than saving, so nothing is written to HealthKit. The app reads heart rate
//  and stores nothing.
//
//  REQUIRED CONFIGURATION
//    watchOS target → Signing & Capabilities → HealthKit, with "Workout
//      Processing" background mode enabled.
//    Info.plist (both targets) → NSHealthShareUsageDescription
//    watchOS Info.plist → NSHealthUpdateUsageDescription (required by
//      HKWorkoutSession even though nothing is saved)
//

import Foundation
import HealthKit

@MainActor
final class HeartRateMonitor: NSObject, ObservableObject {

    @Published private(set) var currentBPM: Int?
    @Published private(set) var isAuthorized = false
    @Published private(set) var isRunning = false

    /// Every new sample. Wire to the connectivity link.
    var onSample: ((Int) -> Void)?

    private let healthStore = HKHealthStore()
    private var workoutSession: HKWorkoutSession?
    private var builder: HKLiveWorkoutBuilder?

    private let heartRateType = HKQuantityType(.heartRate)
    private let bpmUnit = HKUnit.count().unitDivided(by: .minute())

    // MARK: - Authorization

    func requestAuthorization() async {
        guard HKHealthStore.isHealthDataAvailable() else { return }

        // `share` is required for HKWorkoutSession to start at all, even
        // though this app never writes a sample.
        let share: Set<HKSampleType> = [HKQuantityType.workoutType()]
        let read: Set<HKObjectType> = [heartRateType]

        do {
            try await healthStore.requestAuthorization(toShare: share, read: read)
            isAuthorized = true
        } catch {
            isAuthorized = false
            #if DEBUG
            print("HeartRateMonitor: authorization failed — \(error)")
            #endif
        }
    }

    // MARK: - Session

    func start() {
        guard HKHealthStore.isHealthDataAvailable(), !isRunning else { return }

        let configuration = HKWorkoutConfiguration()
        configuration.activityType = .other
        configuration.locationType = .indoor

        do {
            let session = try HKWorkoutSession(healthStore: healthStore,
                                               configuration: configuration)
            let builder = session.associatedWorkoutBuilder()
            builder.dataSource = HKLiveWorkoutDataSource(healthStore: healthStore,
                                                         workoutConfiguration: configuration)
            session.delegate = self
            builder.delegate = self

            let start = Date()
            session.startActivity(with: start)
            builder.beginCollection(withStart: start) { _, _ in }

            self.workoutSession = session
            self.builder = builder
            self.isRunning = true
        } catch {
            #if DEBUG
            print("HeartRateMonitor: session start failed — \(error)")
            #endif
        }
    }

    /// Ends the session and discards the workout. Nothing is written to
    /// HealthKit — no record of this session exists in Health.
    func stop() {
        guard isRunning else { return }
        workoutSession?.end()
        builder?.discardWorkout()
        workoutSession = nil
        builder = nil
        isRunning = false
        currentBPM = nil
    }

    // MARK: - Sample handling

    fileprivate func ingest(_ statistics: HKStatistics?) {
        guard let statistics,
              statistics.quantityType == heartRateType,
              let quantity = statistics.mostRecentQuantity()
        else { return }

        let bpm = Int(quantity.doubleValue(for: bpmUnit).rounded())
        guard bpm > 20, bpm < 260 else { return }   // discard obvious artefacts

        currentBPM = bpm
        onSample?(bpm)
    }
}

// MARK: - HKWorkoutSessionDelegate

extension HeartRateMonitor: HKWorkoutSessionDelegate {

    nonisolated func workoutSession(_ workoutSession: HKWorkoutSession,
                                    didChangeTo toState: HKWorkoutSessionState,
                                    from fromState: HKWorkoutSessionState,
                                    date: Date) {
        Task { @MainActor in
            self.isRunning = (toState == .running)
        }
    }

    nonisolated func workoutSession(_ workoutSession: HKWorkoutSession,
                                    didFailWithError error: Error) {
        Task { @MainActor in
            self.isRunning = false
            #if DEBUG
            print("HeartRateMonitor: session failed — \(error)")
            #endif
        }
    }
}

// MARK: - HKLiveWorkoutBuilderDelegate

extension HeartRateMonitor: HKLiveWorkoutBuilderDelegate {

    nonisolated func workoutBuilder(_ workoutBuilder: HKLiveWorkoutBuilder,
                                    didCollectDataOf collectedTypes: Set<HKSampleType>) {
        let heartRateType = HKQuantityType(.heartRate)
        guard collectedTypes.contains(heartRateType) else { return }
        let statistics = workoutBuilder.statistics(for: heartRateType)
        Task { @MainActor in self.ingest(statistics) }
    }

    nonisolated func workoutBuilderDidCollectEvent(_ workoutBuilder: HKLiveWorkoutBuilder) {}
}
