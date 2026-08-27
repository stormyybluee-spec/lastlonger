//
//  SessionEngine.swift
//  LAST LONGER
//
//  Owns the clock, the active driver, and every side effect (speech,
//  haptics, binaural). Drivers stay pure; this is where the world gets
//  touched.
//
//  TIMING
//  ------
//  Elapsed time is derived from wall clock (`Date`), never accumulated from
//  timer ticks. A `Timer` on a backgrounded app fires late and irregularly,
//  and accumulating those ticks would drift a 25-minute ladder by minutes.
//  The timer here only *samples*; the clock is the source of truth.
//

import Combine
import Foundation
import UIKit

@MainActor
final class SessionEngine: ObservableObject {

    // MARK: - Published

    @Published private(set) var state: State = .idle
    @Published private(set) var elapsed: TimeInterval = 0
    @Published private(set) var phase: SessionPhase = .idle
    @Published private(set) var currentMode: SessionMode?
    @Published private(set) var detail: String = ""
    @Published private(set) var didSwitchModes = false
    @Published private(set) var lastCoachLine: String = ""

    /// Set when Coach Interrupt fires; the HUD presents a 1–10 picker and
    /// calls `answerInterrupt(_:)`.
    @Published var pendingInterrupt = false

    /// Arousal self-reports, timestamped. Persisted to Core Data on finish.
    @Published private(set) var arousalLog: [(t: TimeInterval, level: Int)] = []

    enum State: Equatable { case idle, running, paused, finished }

    // MARK: - Collaborators

    private let coach: VoiceCoach
    private let binaural: BinauralEngine
    private let haptics = Haptics.shared

    // MARK: - Plan

    private(set) var plan: SessionPlan?
    private var driver: ModeDriver?
    private var switchTime: TimeInterval?

    // MARK: - Clock

    private var startedAt: Date?
    private var pausedAt: Date?
    private var pausedTotal: TimeInterval = 0
    private var modeStartedAt: TimeInterval = 0

    private var ticker: AnyCancellable?
    private let tickInterval: TimeInterval = 0.25

    // MARK: - Scheduled side channels

    private var nextTempoTick: TimeInterval = 0
    private var nextDistractionAt: TimeInterval = .infinity
    private var nextInterruptAt: TimeInterval = .infinity

    // MARK: - Init

    init(coach: VoiceCoach, binaural: BinauralEngine) {
        self.coach = coach
        self.binaural = binaural
    }

    // MARK: - Lifecycle

    func start(_ plan: SessionPlan) {
        self.plan = plan

        // Configure collaborators from the plan.
        coach.persona = plan.settings.persona
        coach.volume = plan.settings.effectiveVoiceVolume
        coach.frequency = plan.settings.coachFrequency
        coach.isSilent = plan.settings.silentMode
        coach.resetRotation()
        coach.activateAudioSession()

        PhraseLibrary.customPhrases = plan.settings.customPhrases

        haptics.intensity = plan.settings.hapticIntensity
        haptics.isEnabled = true
        haptics.prepare()

        if plan.settings.binaural != .off {
            binaural.start(plan.settings.binaural)
        } else {
            // No audible program: run an inaudible keep-alive so the app keeps
            // producing audio in the background and the coach isn't cut off
            // between spoken lines. `finish()` stops it.
            binaural.startKeepAlive()
        }

        // Clock.
        startedAt = Date()
        pausedTotal = 0
        pausedAt = nil
        elapsed = 0
        modeStartedAt = 0
        didSwitchModes = false
        arousalLog = []

        switchTime = plan.switchTime()

        nextTempoTick = 0
        nextDistractionAt = plan.settings.randomDistractions
            ? TimeInterval.random(in: 90...200) : .infinity
        nextInterruptAt = plan.settings.coachInterrupt
            ? TimeInterval.random(in: 150...260) : .infinity

        // Keep the screen awake even when the app is foregrounded on a HUD.
        UIApplication.shared.isIdleTimerDisabled = true

        currentMode = plan.primary
        driver = ModeDriverFactory.make(plan.primary)
        state = .running

        if let directive = driver?.begin() { apply(directive) }
        startTicker()
    }

    func pause() {
        guard state == .running else { return }
        pausedAt = Date()
        state = .paused
        ticker?.cancel()
        coach.pause()
        haptics.play(.tap)
    }

    func resume() {
        guard state == .paused, let pausedAt else { return }
        pausedTotal += Date().timeIntervalSince(pausedAt)
        self.pausedAt = nil
        state = .running
        coach.resume()
        haptics.play(.tap)
        startTicker()
    }

    func finish(announce: Bool = true) {
        ticker?.cancel()
        ticker = nil
        state = .finished
        phase = .complete

        if announce { coach.speak(.sessionEnd, force: true) }
        haptics.play(.sessionEnd)
        binaural.stop()

        UIApplication.shared.isIdleTimerDisabled = false

        // Give the closing line time to land before dropping the session.
        Task { [weak self] in
            try? await Task.sleep(for: .seconds(4))
            self?.coach.deactivateAudioSession()
        }
    }

    /// Emergency protocol — hard stop, everything off, immediate de-escalation.
    func emergencyStop() {
        ticker?.cancel()
        coach.stop(immediately: true)
        haptics.play(.emergency)
        coach.speak(.emergency, force: true)
        binaural.stop()
        state = .finished
        phase = .complete
        UIApplication.shared.isIdleTimerDisabled = false
    }

    /// User reports having gone past the edge. Not a failure state — the
    /// coach de-escalates and the session continues.
    func reportOvershoot() {
        haptics.play(.cooldown)
        coach.speak(.failureProtection, force: true)
    }

    /// Manual mode switch, for `AutoSwitchPolicy.manual`.
    func switchModeNow() {
        guard let secondary = plan?.secondary, !didSwitchModes else { return }
        performSwitch(to: secondary)
    }

    func answerInterrupt(_ level: Int) {
        arousalLog.append((t: elapsed, level: level))
        pendingInterrupt = false
        haptics.play(.select)

        // Close the loop: high self-reports get a de-escalation line.
        if level >= 8 {
            coach.speak(.cooldown, force: true)
        } else if level <= 3 {
            coach.speak(.challenge, force: true)
        }
        nextInterruptAt = elapsed + TimeInterval.random(in: 150...260)
    }

    // MARK: - Ticker

    private func startTicker() {
        ticker?.cancel()
        ticker = Timer.publish(every: tickInterval, on: .main, in: .common)
            .autoconnect()
            .sink { [weak self] _ in
                // The publisher is scheduled on .main, so this always lands
                // on the main actor — no hop, no tick latency.
                MainActor.assumeIsolated { self?.tick() }
            }
    }

    private func tick() {
        guard state == .running, let startedAt, let plan else { return }

        elapsed = Date().timeIntervalSince(startedAt) - pausedTotal

        // 1. Duration cap.
        if let cap = plan.hardStop, elapsed >= cap {
            finish()
            return
        }

        // 2. Auto mode switch.
        if let switchTime, !didSwitchModes,
           let secondary = plan.secondary, elapsed >= switchTime {
            performSwitch(to: secondary)
            return
        }

        // 3. Driver.
        if let directive = driver?.tick(elapsed: elapsed - modeStartedAt) {
            apply(directive)
            if directive.phase == .complete { handleDriverCompletion(); return }
        }
        detail = driver?.detail ?? ""

        // 4. Tempo Lock metronome.
        if plan.settings.tempoLock, phase.isActive, elapsed >= nextTempoTick {
            let beat = 60.0 / Double(max(plan.settings.tempoBPM, 20))
            nextTempoTick = elapsed + beat
            haptics.play(.tempoTick)
        }

        // 5. Random distraction.
        if elapsed >= nextDistractionAt {
            nextDistractionAt = elapsed + TimeInterval.random(in: 120...240)
            if let line = coach.speak(.distraction) { lastCoachLine = line }
        }

        // 6. Coach Interrupt.
        if elapsed >= nextInterruptAt, !pendingInterrupt {
            nextInterruptAt = .infinity   // re-armed by answerInterrupt
            pendingInterrupt = true
            haptics.play(.warning)
            if let line = coach.speak(.interrupt, force: true) { lastCoachLine = line }
        }
    }

    // MARK: - Directives

    private func apply(_ directive: SessionDirective) {
        phase = directive.phase

        if let haptic = directive.haptic { haptics.play(haptic) }

        if let literal = directive.literal {
            coach.speakLiteral(literal)
            lastCoachLine = literal
        } else if let category = directive.category {
            if let line = coach.speak(category, force: directive.force, tokens: directive.tokens) {
                lastCoachLine = line
            }
        }
    }

    /// A driver ran out of script before the cap. Hand off to the second mode
    /// if there is one; otherwise close the session.
    private func handleDriverCompletion() {
        if let secondary = plan?.secondary, !didSwitchModes {
            performSwitch(to: secondary)
        } else {
            finish(announce: false)
        }
    }

    private func performSwitch(to mode: SessionMode) {
        didSwitchModes = true
        currentMode = mode
        modeStartedAt = elapsed
        driver = ModeDriverFactory.make(mode)

        haptics.play(.phaseChange)
        if let line = coach.speak(.modeSwitch, force: true, tokens: ["MODE": mode.name]) {
            lastCoachLine = line
        }
        if let directive = driver?.begin() {
            // The switch announcement already spoke; only take the phase and
            // haptic from the driver's opener so the two don't collide.
            phase = directive.phase
            if let haptic = directive.haptic { haptics.play(haptic) }
        }
        detail = driver?.detail ?? ""
    }

    // MARK: - Formatting

    var elapsedLabel: String {
        let total = Int(elapsed)
        return String(format: "%02d:%02d", total / 60, total % 60)
    }

    var remainingLabel: String? {
        guard let cap = plan?.hardStop else { return nil }
        let remaining = max(0, Int(cap - elapsed))
        return String(format: "-%02d:%02d", remaining / 60, remaining % 60)
    }

    var progress: Double? {
        if let cap = plan?.hardStop, cap > 0 { return min(elapsed / cap, 1) }
        return driver?.progress
    }
}
