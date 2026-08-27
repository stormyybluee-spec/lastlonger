//
//  PreSessionCountdownView.swift
//  LAST LONGER
//
//  PART 7 — Pre-Session Countdown.
//
//  ON "APP AUTOMATICALLY MINIMIZES"
//  ---------------------------------
//  iOS gives no API for an app to background itself. `UIApplication`'s
//  private suspend selector is a guaranteed App Review rejection and is
//  unreliable across releases. The honest implementation is:
//
//    1. Start the session engine here (audio session is already active, and
//       the `audio` background mode keeps the coach speaking once the user
//       leaves).
//    2. Start a Live Activity so the "Angel Widget" surfaces on the Lock
//       Screen and Dynamic Island the instant the user swipes away.
//    3. Tell the user to swipe up — one gesture, and the session continues.
//
//  Everything downstream of the countdown behaves identically whether the
//  app is foregrounded or not, so this costs one instruction and nothing else.
//
//  REQUIRED PROJECT CONFIG
//    Info.plist → UIBackgroundModes: [audio]
//    Capabilities → Background Modes → Audio, AirPlay, and Picture in Picture
//

import SwiftUI

@MainActor
struct PreSessionCountdownView: View {

    let plan: SessionPlan
    let onBegin: () -> Void
    let onCancel: () -> Void

    @State private var count: Int = 5
    @State private var hasFired = false
    @State private var pulse = false
    @State private var ticker: Timer?

    @Environment(\.accessibilityReduceMotion) private var reduceMotion

    var body: some View {
        ZStack {
            Theme.bg.ignoresSafeArea()

            VStack(spacing: 0) {
                Spacer()

                // ── Mode name(s)
                VStack(spacing: 10) {
                    GlitchText(
                        text: plan.primary.name.uppercased(),
                        font: Typeface.pixel(26),
                        active: pulse
                    )

                    if let secondary = plan.secondary {
                        HStack(spacing: 8) {
                            Image(systemName: "arrow.down")
                                .font(.system(size: 9, weight: .bold))
                            Text(secondary.name)
                                .font(Typeface.label(11))
                                .uppercaseLabel()
                        }
                        .foregroundStyle(Theme.inkDim)
                    }
                }

                Spacer().frame(height: 44)

                // ── Instruction
                Text("Open your external media now")
                    .font(Typeface.label(11))
                    .uppercaseLabel(tracking: 1.6)
                    .foregroundStyle(Theme.rising)
                    .multilineTextAlignment(.center)

                if plan.settings.focusModeAutoEnable {
                    Text("Turn on your Focus from Control Center")
                        .font(Typeface.body(11))
                        .foregroundStyle(Theme.inkFaint)
                        .padding(.top, 6)
                }

                Spacer().frame(height: 48)

                // ── Count
                ZStack {
                    Circle()
                        .strokeBorder(Theme.hairline, lineWidth: 1)
                        .frame(width: 208, height: 208)

                    Circle()
                        .trim(from: 0, to: CGFloat(count) / 5.0)
                        .stroke(Theme.edge, style: StrokeStyle(lineWidth: 2, lineCap: .butt))
                        .rotationEffect(.degrees(-90))
                        .frame(width: 208, height: 208)
                        .animation(.linear(duration: 1), value: count)

                    Text("\(count)")
                        .font(Typeface.numeric(104))
                        .foregroundStyle(Theme.ink)
                        .contentTransition(.numericText(countsDown: true))
                        .scaleEffect(pulse && !reduceMotion ? 1.06 : 1.0)
                        .animation(.spring(response: 0.28, dampingFraction: 0.55), value: pulse)
                }
                .accessibilityElement()
                .accessibilityLabel("Starting in \(count) seconds")

                Spacer()

                // ── Skip
                Button {
                    Haptics.shared.play(.tap)
                    fire()
                } label: {
                    Text("Skip")
                        .font(Typeface.label(11))
                        .uppercaseLabel(tracking: 2)
                        .foregroundStyle(Theme.inkDim)
                        .frame(height: 44)
                        .frame(maxWidth: 160)
                        .overlay(
                            RoundedRectangle(cornerRadius: Theme.Metric.chipRadius)
                                .strokeBorder(Theme.hairline, lineWidth: 1)
                        )
                }
                .buttonStyle(.plain)

                Button {
                    stop()
                    Haptics.shared.play(.deselect)
                    onCancel()
                } label: {
                    Text("Cancel")
                        .font(Typeface.label(10))
                        .uppercaseLabel(tracking: 1.4)
                        .foregroundStyle(Theme.inkFaint)
                        .frame(height: 40)
                }
                .buttonStyle(.plain)
                .padding(.bottom, 12)
            }
            .padding(.horizontal, 28)

            ScanlineOverlay().ignoresSafeArea()
            CRTVignette().ignoresSafeArea()
        }
        .preferredColorScheme(.dark)
        .statusBarHidden()
        .onAppear(perform: startCountdown)
        .onDisappear(perform: stop)
    }

    // MARK: - Countdown

    private func startCountdown() {
        Haptics.shared.intensity = plan.settings.hapticIntensity
        Haptics.shared.play(.countdownTick)
        pulseOnce()

        ticker = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
            Task { @MainActor in
                guard count > 1 else { fire(); return }
                count -= 1
                Haptics.shared.play(.countdownTick)
                pulseOnce()
            }
        }
    }

    private func pulseOnce() {
        pulse = true
        Task { @MainActor in
            try? await Task.sleep(for: .milliseconds(220))
            pulse = false
        }
    }

    private func fire() {
        guard !hasFired else { return }
        hasFired = true
        stop()
        Haptics.shared.play(.countdownFire)
        onBegin()
    }

    private func stop() {
        ticker?.invalidate()
        ticker = nil
    }
}

// MARK: - Handoff

/// Shown immediately after the countdown. This is the screen the user swipes
/// away from — it exists because iOS won't let the app do the swiping.
@MainActor
struct SessionHandoffView: View {

    @ObservedObject var engine: SessionEngine
    let onOpenHUD: () -> Void

    var body: some View {
        VStack(spacing: 22) {
            Spacer()

            Image(systemName: "chevron.up")
                .font(.system(size: 26, weight: .light))
                .foregroundStyle(Theme.inkFaint)
                .pulsingSymbol()

            VStack(spacing: 8) {
                Text("Session running")
                    .font(Typeface.pixel(20))
                    .foregroundStyle(Theme.ink)

                Text("Your session is running. The voice coach and haptics continue while the screen is off.")
                    .font(Typeface.body(12))
                    .foregroundStyle(Theme.inkDim)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 36)
            }

            Text(engine.elapsedLabel)
                .font(Typeface.numeric(46))
                .foregroundStyle(engine.phase.tint)

            Spacer()

            Button(action: onOpenHUD) {
                Text("Stay on the session screen")
                    .font(Typeface.label(10))
                    .uppercaseLabel(tracking: 1.4)
                    .foregroundStyle(Theme.inkDim)
                    .frame(height: 44)
                    .frame(maxWidth: .infinity)
                    .background(Theme.card)
                    .clipShape(RoundedRectangle(cornerRadius: Theme.Metric.cardRadius))
            }
            .buttonStyle(.plain)
            .padding(.horizontal, Theme.Metric.pageInset)
            .padding(.bottom, 24)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .crtScreen(grid: false)
        .preferredColorScheme(.dark)
    }
}

// MARK: - Flow container

/// Wires Part 6 → Part 7 → session. Drop this wherever the session flow
/// is launched from.
@MainActor
struct SessionFlowView: View {

    @StateObject private var coach = VoiceCoach()
    @StateObject private var binaural = BinauralEngine()
    @StateObject private var engine: SessionEngine

    @State private var stage: Stage = .selecting

    private enum Stage: Equatable {
        case selecting
        case countdown(SessionPlan)
        case handoff
    }

    init() {
        let coach = VoiceCoach()
        let binaural = BinauralEngine()
        _coach = StateObject(wrappedValue: coach)
        _binaural = StateObject(wrappedValue: binaural)
        _engine = StateObject(wrappedValue: SessionEngine(coach: coach, binaural: binaural))
    }

    var body: some View {
        Group {
            switch stage {
            case .selecting:
                ModeSelectionView { plan in
                    stage = .countdown(plan)
                }

            case .countdown(let plan):
                PreSessionCountdownView(
                    plan: plan,
                    onBegin: {
                        engine.start(plan)
                        stage = .handoff
                    },
                    onCancel: { stage = .selecting }
                )

            case .handoff:
                SessionHandoffView(engine: engine) {
                    // Part B: push the live session HUD here.
                }
            }
        }
        .animation(.easeInOut(duration: 0.25), value: stage)
    }
}

// MARK: - Availability shims

/// A repeating pulse on a symbol.
///
/// `symbolEffect(.pulse, options: .repeating)` is iOS 17+, but the project
/// deploys to 16.0. On 17 it is used as intended; on 16 it falls back to a
/// hand-rolled opacity pulse that reads the same. Reduce Motion suppresses the
/// fallback entirely, matching the app's motion discipline elsewhere.
///
/// The identical iOS-17 `symbolEffect(.variableColor…)` in OnboardingFlow needs
/// its own gate — availability is per call site, so this shim does not reach it.
private struct PulsingSymbol: ViewModifier {
    @Environment(\.accessibilityReduceMotion) private var reduceMotion
    @State private var dim = false

    func body(content: Content) -> some View {
        if #available(iOS 17.0, *) {
            content.symbolEffect(.pulse, options: .repeating)
        } else if reduceMotion {
            content
        } else {
            content
                .opacity(dim ? 0.4 : 1.0)
                .animation(.easeInOut(duration: 0.9).repeatForever(autoreverses: true),
                           value: dim)
                .onAppear { dim = true }
        }
    }
}

private extension View {
    func pulsingSymbol() -> some View { modifier(PulsingSymbol()) }
}
