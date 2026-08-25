//
//  LiveSessionModel.swift
//  LAST LONGER
//
//  The coordinator for the live player. Every Part B subsystem is a
//  collaborator here; none of them know about each other.
//
//      TapRouter ──┬─→ TempoLock ──→ beat haptics + voice count
//                  └─→ EmergencyProtocol
//      CoachInterrupt ──→ pace adjustment ──→ TempoLock + coach
//      ThresholdStreak ──→ ToneGenerator (pitch by streak)
//      BreathPacer ──→ Angel wing spread
//      PhoneWatchLink ←→ watch buttons, heart rate, grip sensor
//      SessionLogWriter ──→ Core Data
//
//  The view binds to this and to nothing else.
//

import Combine
import SwiftUI

@MainActor
final class LiveSessionModel: ObservableObject {

    // MARK: - Subsystems

    let engine: SessionEngine
    let coach: VoiceCoach
    let binaural: BinauralEngine

    let streak = ThresholdStreak()
    let tempo = TempoLock()
    let interrupt = CoachInterrupt()
    let recovery = RecoveryTracker()
    let emergency: EmergencyProtocol
    let breath: BreathPacer

    private let tapRouter = TapRouter()
    private let log = SessionLogWriter()
    private let watchLink = PhoneWatchLink.shared
    private let silent = SilentHaptics.shared

    // MARK: - Published UI state

    @Published private(set) var heartRate: Int?
    @Published private(set) var isGripWarningActive = false
    @Published private(set) var lastSilentSignal: SilentSignal?
    @Published private(set) var angelPulse: Double = 0
    @Published var showEndGoalSheet = false
    @Published var showResetProtocol = false

    private var plan: SessionPlan?
    private var settings: SessionSettings { plan?.settings ?? SessionSettings() }
    private var cancellables = Set<AnyCancellable>()

    private var heartRateSamples: [Int] = []
    private var lastEmergencyFromWatch = false

    // MARK: - Init

    init(engine: SessionEngine, coach: VoiceCoach, binaural: BinauralEngine) {
        self.engine = engine
        self.coach = coach
        self.binaural = binaural
        self.emergency = EmergencyProtocol(coach: coach)
        self.breath = BreathPacer(coach: coach)

        forwardChildUpdates()
        wireTapRouter()
        wireTempo()
        wireInterrupt()
        wireEmergency()
        wireWatch()
        observeEngine()
    }

    // MARK: - Lifecycle

    func begin(plan: SessionPlan) {
        self.plan = plan

        streak.resetForNewSession()
        tempo.reset()
        heartRateSamples.removeAll()

        interrupt.isEnabled = plan.settings.coachInterrupt
        interrupt.armForSession()

        silent.intensity = plan.settings.hapticIntensity
        breath.speaksCount = !plan.settings.silentMode

        log.beginSession(plan: plan)
        watchLink.activate()
        watchLink.send(.sessionStarted(mode: plan.displayTitle, startedAt: Date()))

        engine.start(plan)
    }

    func end(reachedEndGoal: Bool) {
        tempo.suspend()
        interrupt.cancel()
        engine.finish()

        log.updateTempo(locked: tempo.originalBPM, final: tempo.currentBPM)
        log.updateHeartRate(average: averageHeartRate, peak: peakHeartRate)
        log.endSession(duration: engine.elapsed, streak: streak, reachedEndGoal: reachedEndGoal)

        watchLink.send(.sessionEnded(reachedEndGoal: reachedEndGoal))

        if reachedEndGoal {
            streak.logEndGoal()
            recovery.logEndGoal()
            showResetProtocol = true
        }
    }

    // MARK: - Angel taps

    /// Every tap on the Angel enters here.
    func angelTapped(at time: Date) {
        // A tap during an open interrupt answers the interrupt instead.
        if interrupt.isAwaitingAnswer {
            interrupt.registerTap(elapsed: engine.elapsed)
            return
        }
        tapRouter.registerTap(at: time)
    }

    private func wireTapRouter() {
        tapRouter.onTempoTap = { [weak self] time in
            guard let self else { return }
            Haptics.shared.play(.tap)
            self.tempo.registerTap(at: time)
        }
        tapRouter.onRetractTempoTaps = { [weak self] count in
            self?.tempo.retractTaps(count)
        }
        tapRouter.onEmergency = { [weak self] in
            self?.triggerEmergency(fromWatch: false)
        }
    }

    // MARK: - Tempo

    private func wireTempo() {
        tempo.onLock = { [weak self] bpm in
            guard let self else { return }
            Haptics.shared.play(.phaseChange)
            self.speakOrBuzz("Tempo locked. \(Int(bpm)) beats per minute.", silent: .holdThreshold)
        }

        tempo.onBeat = { [weak self] beat in
            guard let self, !self.emergency.isActive else { return }
            Haptics.shared.play(.tempoTick)
            self.flashAngel()

            guard self.tempo.shouldSpeak(beat: beat), !self.settings.silentMode else { return }
            self.coach.speakLiteral(self.tempo.spokenCount(for: beat))
        }

        tempo.onDecay = { [weak self] bpm in
            guard let self else { return }
            self.speakOrBuzz("Slowing. \(Int(bpm)).", silent: .slowDown)
        }
    }

    private func flashAngel() {
        angelPulse = 1
        Task { @MainActor in
            try? await Task.sleep(for: .milliseconds(110))
            withAnimation(.easeOut(duration: 0.18)) { angelPulse = 0 }
        }
    }

    // MARK: - Interrupt

    private func wireInterrupt() {
        interrupt.onPrompt = { [weak self] in
            guard let self else { return }
            if self.settings.silentMode {
                self.emit(.holdThreshold)
            } else {
                self.coach.speak(.interrupt, force: true)
            }
            Haptics.shared.play(.warning)
        }

        interrupt.onAnswer = { [weak self] level, adjustment in
            guard let self else { return }
            self.log.logArousal(level, elapsed: self.engine.elapsed)

            // Nudge the locked tempo in the direction the answer implies.
            self.applyPaceAdjustment(adjustment)

            if self.settings.silentMode {
                self.emit(adjustment.silentSignal)
            } else {
                self.coach.speak(adjustment.phraseCategory, force: true)
            }
        }

        interrupt.onTimeout = { [weak self] in
            self?.emit(.slowDown)
        }
    }

    private func applyPaceAdjustment(_ adjustment: PaceAdjustment) {
        guard case .locked = tempo.state, adjustment != .hold else { return }
        // TempoLock owns its own decay ramp; a pace adjustment shifts the
        // ramp's current position rather than replacing the lock.
        tempo.suspend()
        tempo.resumeIfLocked()
    }

    // MARK: - Emergency

    func triggerEmergency(fromWatch: Bool) {
        guard !emergency.isActive else { return }
        lastEmergencyFromWatch = fromWatch
        tempo.suspend()
        interrupt.cancel()
        breath.stop()
        emergency.trigger()
    }

    private func wireEmergency() {
        emergency.onBroadcast = { [weak self] signal in
            self?.watchLink.send(signal)
        }

        emergency.onCompleted = { [weak self] in
            guard let self else { return }
            self.log.logEmergency(elapsed: self.engine.elapsed,
                                  completed: true,
                                  fromWatch: self.lastEmergencyFromWatch)
            let count = self.streak.logEmergencyPullback()
            ToneGenerator.shared.playSuccess(streak: count)
            self.emergency.dismiss()
            self.tempo.resumeIfLocked()
            self.startBreathPacer()
        }

        emergency.onCancelled = { [weak self] in
            guard let self else { return }
            self.log.logEmergency(elapsed: self.engine.elapsed,
                                  completed: false,
                                  fromWatch: self.lastEmergencyFromWatch)
            self.tempo.resumeIfLocked()
        }
    }

    // MARK: - Cooldown

    /// Threshold reached and cooled down from. Extends the streak, chimes,
    /// and starts the 5-7-8 pacer.
    func logCooldown() {
        let count = streak.logCooldown()
        ToneGenerator.shared.playSuccess(streak: count)
        Haptics.shared.play(.cooldown)
        emit(.cooldown)
        watchLink.send(.stateUpdate(watchState))
        startBreathPacer()
    }

    /// Threshold reached, still holding.
    func logThreshold() {
        Haptics.shared.play(.thresholdHold)
        emit(.holdThreshold)
        if !settings.silentMode { coach.speak(.thresholdPrompt, force: true) }
    }

    private func startBreathPacer() {
        breath.speaksCount = !settings.silentMode
        breath.start(cycles: 1)
    }

    // MARK: - Watch

    private func wireWatch() {
        watchLink.onSignal = { [weak self] signal in
            guard let self else { return }
            switch signal {
            case .thresholdTapped:
                self.logThreshold()
            case .cooldownTapped:
                self.logCooldown()
            case .emergencyTapped:
                self.triggerEmergency(fromWatch: true)
            case .endTapped:
                self.showEndGoalSheet = true
            case .heartRate(let bpm, _):
                self.ingestHeartRate(bpm)
            case .gripTooTight:
                self.handleGripWarning()
            default:
                break
            }
        }
    }

    private func ingestHeartRate(_ bpm: Int) {
        heartRate = bpm
        heartRateSamples.append(bpm)

        // Spike detection: 25% above the session's running baseline, once
        // there's enough history for a baseline to mean anything.
        guard heartRateSamples.count > 30 else { return }
        let baseline = heartRateSamples.prefix(30).reduce(0, +) / 30
        if bpm > Int(Double(baseline) * 1.25), !emergency.isActive {
            if settings.silentMode {
                emit(.slowDown)
            } else {
                coach.speak(.warning, force: true)
            }
            watchLink.send(.ponrWarning)
        }
    }

    private func handleGripWarning() {
        guard !isGripWarningActive else { return }
        isGripWarningActive = true
        Haptics.shared.play(.warning)

        if settings.silentMode {
            emit(.slowDown)
        } else {
            coach.speak(.gripReminder, force: true)
        }

        Task { @MainActor in
            try? await Task.sleep(for: .seconds(20))
            self.isGripWarningActive = false
        }
    }

    // MARK: - Silent Mode

    private func emit(_ signal: SilentSignal) {
        guard settings.silentMode else { return }
        silent.play(signal)
        lastSilentSignal = signal
        watchLink.send(.hapticCommand(signal))

        Task { @MainActor in
            try? await Task.sleep(for: .seconds(3))
            if self.lastSilentSignal == signal { self.lastSilentSignal = nil }
        }
    }

    private func speakOrBuzz(_ line: String, silent signal: SilentSignal) {
        if settings.silentMode {
            emit(signal)
        } else {
            coach.speakLiteral(line)
        }
    }

    // MARK: - Child observation

    /// SwiftUI does not observe nested ObservableObjects. Without this, the
    /// streak counter, tempo readout and emergency countdown all mutate
    /// their own objects and the view never redraws — the single most
    /// common way a composed model like this silently fails.
    private func forwardChildUpdates() {
        forward(engine)
        forward(streak)
        forward(tempo)
        forward(interrupt)
        forward(emergency)
        forward(breath)
        forward(recovery)
    }

    private func forward<T: ObservableObject>(_ child: T)
        where T.ObjectWillChangePublisher == ObservableObjectPublisher {
        child.objectWillChange
            .sink { [weak self] _ in self?.objectWillChange.send() }
            .store(in: &cancellables)
    }

    // MARK: - Engine observation

    private func observeEngine() {
        // Drive the interrupt scheduler off the engine's clock so there is
        // one source of elapsed time in the app.
        //
        // `SessionEngine` exposes elapsed time as `@Published private(set) var
        // elapsed`, not a bespoke `elapsedPublisher`. `$elapsed` is that
        // property's projected publisher; it emits the current value on
        // subscription and then every tick, which is exactly the stream this
        // observer wants. Using it also gives the closure parameter a concrete
        // type (`TimeInterval`), resolving the type-inference error.
        engine.$elapsed
            .sink { [weak self] elapsed in
                guard let self else { return }
                self.interrupt.tick(elapsed: elapsed)
                self.throttledWatchUpdate(elapsed: elapsed)
            }
            .store(in: &cancellables)
    }

    private var lastWatchUpdate: TimeInterval = -1

    private func throttledWatchUpdate(elapsed: TimeInterval) {
        guard elapsed - lastWatchUpdate >= 1.0 else { return }
        lastWatchUpdate = elapsed
        watchLink.send(.stateUpdate(watchState))
    }

    // MARK: - Derived

    var watchState: WatchState {
        WatchState(
            elapsed: engine.elapsed,
            phase: engine.phase.label,
            phaseTint: tint(for: engine.phase),
            thresholdStreak: streak.current,
            bestStreak: streak.best,
            heartRate: heartRate,
            isEmergencyActive: emergency.isActive,
            isSilentMode: settings.silentMode
        )
    }

    private func tint(for phase: SessionPhase) -> WatchState.Tint {
        switch phase {
        case .hold, .fast, .finishing:     return .alert
        case .warmup, .slow, .sensation:   return .rising
        case .cooldown, .recovery, .still: return .safe
        case .free:                        return .data
        case .idle, .complete:             return .inert
        }
    }

    var angelState: AngelVisualState {
        if emergency.isActive { return .emergency }
        switch engine.phase {
        case .hold, .fast:                 return .threshold
        case .cooldown, .recovery, .still: return .cooldown
        case .idle, .complete:             return .idle
        default:                           return .active(tint: engine.phase.tint)
        }
    }

    var angelSpread: Double {
        if emergency.isActive { return 1.0 }
        if breath.isRunning { return breath.wingSpread }
        // Idle breathing: the wings drift with the tempo beat if locked,
        // otherwise sit half-open.
        return tempo.beatPulse ? 0.62 : 0.45
    }

    var averageHeartRate: Int {
        guard !heartRateSamples.isEmpty else { return 0 }
        return heartRateSamples.reduce(0, +) / heartRateSamples.count
    }

    var peakHeartRate: Int { heartRateSamples.max() ?? 0 }
}

// MARK: - Recovery tracker
//
// RESTORED during consolidation, and placed here rather than in
// RecoveryTracker.swift on purpose.
//
// Two different files were originally both named RecoveryTracker.swift. They
// were not duplicates: one held this ObservableObject engine (session-gap
// history, the recovery-window estimate, UserDefaults persistence); the other
// held the `RecoveryState` value type and the `RecoveryHomeCard` view. The
// by-filename dedup kept the value-type file and deleted this engine, which is
// the type `LiveSessionModel` above constructs (`RecoveryTracker()`), calls
// (`recovery.logEndGoal()`) and forwards change notifications from
// (`forward(recovery)` needs the `ObservableObject` conformance).
//
// It lives here because LiveSessionModel is its only consumer and this is the
// file that has to compile. If you prefer it back alongside RecoveryState, move
// this whole section into Views/Components/RecoveryTracker.swift verbatim —
// nothing here depends on anything in this file.

@MainActor
final class RecoveryTracker: ObservableObject {

    @Published private(set) var lastEndGoalAt: Date?
    @Published private(set) var historicalGaps: [TimeInterval] = []

    /// Used until the user has `minimumSamples` of their own history.
    private let defaultInterval: TimeInterval = 24 * 3600
    private let minimumSamples = 3
    private let maximumSamples = 20

    private let gapsKey = "lastlonger.recovery.gaps"
    private let lastKey = "lastlonger.recovery.lastEndGoal"

    init() {
        let defaults = UserDefaults.standard
        historicalGaps = defaults.array(forKey: gapsKey) as? [TimeInterval] ?? []
        lastEndGoalAt = defaults.object(forKey: lastKey) as? Date
    }

    // MARK: - Logging

    func logEndGoal(at date: Date = Date()) {
        if let previous = lastEndGoalAt {
            let gap = date.timeIntervalSince(previous)
            // Ignore gaps outside a plausible band — a 3-minute gap is a
            // double-tap on the log button, a 3-week gap is a holiday, and
            // neither says anything about recovery.
            if gap > 1800, gap < 14 * 24 * 3600 {
                historicalGaps.append(gap)
                if historicalGaps.count > maximumSamples {
                    historicalGaps.removeFirst(historicalGaps.count - maximumSamples)
                }
            }
        }
        lastEndGoalAt = date
        persist()
    }

    private func persist() {
        let defaults = UserDefaults.standard
        defaults.set(historicalGaps, forKey: gapsKey)
        defaults.set(lastEndGoalAt, forKey: lastKey)
    }

    func reset() {
        historicalGaps.removeAll()
        lastEndGoalAt = nil
        persist()
    }

    // MARK: - Estimate

    /// Trimmed mean of the user's own gaps, or the default before there's
    /// enough history to say anything.
    var baselineInterval: TimeInterval {
        guard historicalGaps.count >= minimumSamples else { return defaultInterval }
        let sorted = historicalGaps.sorted()
        // Drop the extremes once there's enough to afford it.
        let trimmed = sorted.count >= 5 ? Array(sorted.dropFirst().dropLast()) : sorted
        return trimmed.reduce(0, +) / Double(trimmed.count)
    }

    var isEstimateFromOwnHistory: Bool { historicalGaps.count >= minimumSamples }

    /// Suggested window, bounded so intensity adjustments can't run away.
    ///
    /// - Parameter emergencyPullbacks: more pullbacks means a more demanding
    ///   session, which nudges the suggestion later — by a few percent, not by
    ///   a factor.
    func suggestedWindow(emergencyPullbacks: Int = 0,
                         sessionDuration: TimeInterval = 0) -> ClosedRange<TimeInterval> {
        var interval = baselineInterval

        let intensityBump = min(Double(emergencyPullbacks) * 0.04, 0.20)
        let lengthBump = min(sessionDuration / 3600 * 0.03, 0.12)
        interval *= (1 + intensityBump + lengthBump)

        // Wide when we're guessing, narrower once it's the user's own data.
        let spread = isEstimateFromOwnHistory ? 0.20 : 0.35
        return (interval * (1 - spread))...(interval * (1 + spread))
    }

    /// Time until the suggested window opens, from the last logged end goal.
    func timeUntilWindow(emergencyPullbacks: Int = 0,
                         sessionDuration: TimeInterval = 0,
                         now: Date = Date()) -> TimeInterval? {
        guard let lastEndGoalAt else { return nil }
        let window = suggestedWindow(emergencyPullbacks: emergencyPullbacks,
                                     sessionDuration: sessionDuration)
        let opensAt = lastEndGoalAt.addingTimeInterval(window.lowerBound)
        let remaining = opensAt.timeIntervalSince(now)
        return remaining > 0 ? remaining : 0
    }

    // MARK: - Display

    func windowLabel(emergencyPullbacks: Int = 0,
                     sessionDuration: TimeInterval = 0) -> String {
        let window = suggestedWindow(emergencyPullbacks: emergencyPullbacks,
                                     sessionDuration: sessionDuration)
        let low = Int((window.lowerBound / 3600).rounded())
        let high = Int((window.upperBound / 3600).rounded())
        return low == high ? "\(low) hours" : "\(low)–\(high) hours"
    }

    var confidenceNote: String {
        if isEstimateFromOwnHistory {
            return "Based on your last \(historicalGaps.count) logged gaps."
        }
        return "A starting default. This adapts once you've logged a few sessions."
    }
}
