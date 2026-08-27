//
//  LiveSessionView.swift
//  LAST LONGER
//
//  PART 10/11 — the live player.
//
//  Layered, back to front:
//    1. CRT screen (grid, scanlines, vignette)
//    2. Telemetry rail — time, phase, heart rate, tempo
//    3. The Angel, and the streak readout directly under it
//    4. Threshold / Cooldown controls
//    5. Coach Interrupt sheet, when one is open
//    6. Emergency full-screen takeover
//
//  Layer 6 covers everything else completely. During an emergency there is
//  exactly one thing on screen worth reading, and one thing to do.
//

import SwiftUI

@MainActor
struct LiveSessionView: View {

    // One observed object only. `LiveSessionModel` forwards its children's
    // change notifications, so observing the engine separately here would
    // just double every redraw.
    @ObservedObject var model: LiveSessionModel
    @Environment(\.dismiss) private var dismiss
    @Environment(\.scenePhase) private var scenePhase

    private var engine: SessionEngine { model.engine }

    var body: some View {
        ZStack {
            sessionLayer
                .blur(radius: model.emergency.isActive ? 8 : 0)
                .opacity(model.emergency.isActive ? 0.25 : 1)

            if model.emergency.isActive {
                EmergencyLayer(protocolState: model.emergency)
                    .transition(.opacity)
            }
        }
        .crtScreen(grid: !model.emergency.isActive)
        .preferredColorScheme(.dark)
        .statusBarHidden()
        .animation(.easeInOut(duration: 0.22), value: model.emergency.isActive)
        .sheet(isPresented: $model.showEndGoalSheet) {
            EndSessionSheet(model: model) { dismiss() }
                .presentationDetents([.height(340)])
                .darkSheetBackground(Theme.bg)
        }
        .fullScreenCover(isPresented: $model.showResetProtocol) {
            ResetProtocolView(model: model) { dismiss() }
        }
        .onChange(of: scenePhase) { _, newPhase in
            // A phone call, Siri, or another app's audio can interrupt and tear
            // down our session while backgrounded. On return to the foreground,
            // re-assert the coaching category so TTS + binaural keep going.
            guard newPhase == .active,
                  engine.state == .running || engine.state == .paused else { return }
            AudioSessionController.activateForCoaching()
        }
    }

    // MARK: - Session layer

    private var sessionLayer: some View {
        VStack(spacing: 0) {
            telemetryRail
            Spacer(minLength: 12)
            angelBlock
            Spacer(minLength: 12)

            if model.interrupt.isAwaitingAnswer {
                interruptPanel
                    .transition(.move(edge: .bottom).combined(with: .opacity))
            } else if let signal = model.lastSilentSignal {
                silentBanner(signal)
                    .transition(.opacity)
            }

            controls
        }
        .padding(.horizontal, Theme.Metric.pageInset)
        .animation(.snappy(duration: 0.24), value: model.interrupt.isAwaitingAnswer)
        .animation(.easeInOut(duration: 0.2), value: model.lastSilentSignal)
    }

    // MARK: - Telemetry

    private var telemetryRail: some View {
        VStack(spacing: 10) {
            HStack(alignment: .firstTextBaseline) {
                Text(engine.elapsedLabel)
                    .font(Typeface.numeric(38))
                    .foregroundStyle(Theme.ink)

                if let remaining = engine.remainingLabel {
                    Text(remaining)
                        .font(Typeface.numeric(14))
                        .foregroundStyle(Theme.inkFaint)
                }

                Spacer()

                Button {
                    Haptics.shared.play(.tap)
                    engine.state == .running ? engine.pause() : engine.resume()
                } label: {
                    Image(systemName: engine.state == .running ? "pause.fill" : "play.fill")
                        .font(.system(size: 13, weight: .bold))
                        .foregroundStyle(Theme.inkDim)
                        .frame(width: 38, height: 38)
                        .background(Theme.card)
                        .clipShape(RoundedRectangle(cornerRadius: Theme.Metric.chipRadius))
                }
                .buttonStyle(.plain)
                .accessibilityLabel(engine.state == .running ? "Pause session" : "Resume session")
            }

            HStack(spacing: 8) {
                TelemetryChip(label: "Phase",
                              value: engine.phase.label,
                              tint: engine.phase.tint)

                TelemetryChip(label: "HR",
                              value: model.heartRate.map(String.init) ?? "--",
                              tint: Theme.edge,
                              symbol: "heart.fill")

                TelemetryChip(label: "BPM",
                              value: model.tempo.bpmLabel,
                              detail: model.tempo.decayLabel,
                              tint: Theme.data,
                              symbol: "metronome.fill")
            }

            if model.isGripWarningActive {
                warningBanner("Loosen your wrist", symbol: "hand.tap.fill", tint: Theme.rising)
                    .transition(.opacity)
            }

            Rule(color: engine.phase.tint.opacity(0.4))
        }
        .padding(.top, 6)
        .animation(.easeInOut(duration: 0.2), value: model.isGripWarningActive)
    }

    // MARK: - Angel

    private var angelBlock: some View {
        VStack(spacing: 16) {
            TappableAngel(
                state: model.angelState,
                spread: model.angelSpread,
                pulse: model.angelPulse,
                onTap: model.angelTapped,
                onHold: {
                    Haptics.shared.play(.warning)
                    model.showEndGoalSheet = true
                }
            )
            .frame(maxHeight: 240)

            // Threshold Streak, directly under the Angel per spec.
            VStack(spacing: 4) {
                Text(model.streak.label)
                    .font(Typeface.numeric(46))
                    .foregroundStyle(model.streak.isPersonalBest ? Theme.rising : Theme.ink)
                    .contentTransition(.numericText())

                HStack(spacing: 5) {
                    if model.streak.isPersonalBest {
                        Image(systemName: "flame.fill").font(.system(size: 8, weight: .bold))
                    }
                    Text(model.streak.isPersonalBest ? "Personal best" : "Threshold streak")
                        .font(Typeface.label(9))
                        .uppercaseLabel()
                }
                .foregroundStyle(model.streak.isPersonalBest ? Theme.rising : Theme.inkFaint)
            }
            .animation(.snappy(duration: 0.25), value: model.streak.current)

            if model.breath.isRunning {
                breathReadout
            } else if case .learning = model.tempo.state {
                Text("Tempo — tap the Angel  \(model.tempo.learningLabel)")
                    .font(Typeface.label(9))
                    .uppercaseLabel()
                    .foregroundStyle(Theme.data)
            }
        }
    }

    private var breathReadout: some View {
        VStack(spacing: 3) {
            Text(model.breath.stageLabel)
                .font(Typeface.label(11))
                .uppercaseLabel(tracking: 2)
                .foregroundStyle(Theme.safe)
            Text("\(model.breath.secondsRemaining)")
                .font(Typeface.numeric(20))
                .foregroundStyle(Theme.safe.opacity(0.8))
                .contentTransition(.numericText(countsDown: true))
        }
        .transition(.opacity)
    }

    // MARK: - Interrupt

    private var interruptPanel: some View {
        VStack(spacing: 12) {
            Text("Arousal level")
                .font(Typeface.pixel(16))
                .foregroundStyle(Theme.ink)

            Text("Tap the Angel — once, twice, or three times")
                .font(Typeface.body(11))
                .foregroundStyle(Theme.inkFaint)

            HStack(spacing: 8) {
                ForEach(ArousalLevel.allCases) { level in
                    Button {
                        model.interrupt.answer(level, elapsed: engine.elapsed)
                    } label: {
                        VStack(spacing: 5) {
                            Image(systemName: level.symbol)
                                .font(.system(size: 15, weight: .semibold))
                            Text(level.label)
                                .font(Typeface.label(9)).uppercaseLabel(tracking: 0.8)
                            Text(level.tapHint)
                                .font(Typeface.label(8)).uppercaseLabel(tracking: 0.6)
                                .foregroundStyle(Theme.inkFaint)
                        }
                        .foregroundStyle(tintForLevel(level))
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 12)
                        .background(Theme.card)
                        .overlay(
                            RoundedRectangle(cornerRadius: Theme.Metric.chipRadius)
                                .strokeBorder(
                                    model.interrupt.pendingTapCount == level.rawValue
                                        ? tintForLevel(level) : Theme.hairline,
                                    lineWidth: 1
                                )
                        )
                        .clipShape(RoundedRectangle(cornerRadius: Theme.Metric.chipRadius))
                    }
                    .buttonStyle(.plain)
                }
            }
        }
        .padding(14)
        .background(Theme.card)
        .overlay(
            RoundedRectangle(cornerRadius: Theme.Metric.cardRadius)
                .strokeBorder(Theme.rising.opacity(0.5), lineWidth: 1)
        )
        .clipShape(RoundedRectangle(cornerRadius: Theme.Metric.cardRadius))
        .padding(.bottom, 12)
    }

    private func tintForLevel(_ level: ArousalLevel) -> Color {
        switch level {
        case .low:    return Theme.safe
        case .medium: return Theme.rising
        case .high:   return Theme.edge
        }
    }

    // MARK: - Silent banner

    private func silentBanner(_ signal: SilentSignal) -> some View {
        HStack(spacing: 10) {
            Image(systemName: signal.symbol).font(.system(size: 12, weight: .bold))
            Text(signal.meaning)
                .font(Typeface.label(11)).uppercaseLabel(tracking: 1.6)
            Spacer()
            Text(signal.glyph)
                .font(Typeface.numeric(13))
                .foregroundStyle(Theme.inkFaint)
        }
        .foregroundStyle(Theme.data)
        .padding(.horizontal, 14)
        .padding(.vertical, 12)
        .background(Theme.card)
        .overlay(
            RoundedRectangle(cornerRadius: Theme.Metric.cardRadius)
                .strokeBorder(Theme.data.opacity(0.5), lineWidth: 1)
        )
        .clipShape(RoundedRectangle(cornerRadius: Theme.Metric.cardRadius))
        .padding(.bottom, 12)
    }

    private func warningBanner(_ text: String, symbol: String, tint: Color) -> some View {
        HStack(spacing: 8) {
            Image(systemName: symbol).font(.system(size: 10, weight: .bold))
            Text(text).font(Typeface.label(10)).uppercaseLabel(tracking: 1.2)
            Spacer()
        }
        .foregroundStyle(tint)
        .padding(.horizontal, 12)
        .padding(.vertical, 9)
        .background(tint.opacity(0.12))
        .clipShape(RoundedRectangle(cornerRadius: Theme.Metric.chipRadius))
    }

    // MARK: - Controls

    private var controls: some View {
        VStack(spacing: 10) {
            HStack(spacing: 10) {
                ActionButton(title: "Threshold",
                             symbol: "flame.fill",
                             tint: Theme.edge) {
                    model.logThreshold()
                }

                ActionButton(title: "Cooldown",
                             symbol: "wind",
                             tint: Theme.safe) {
                    model.logCooldown()
                }
            }

            HStack(spacing: 10) {
                Button {
                    model.triggerEmergency(fromWatch: false)
                } label: {
                    HStack(spacing: 6) {
                        Image(systemName: "exclamationmark.triangle.fill")
                            .font(.system(size: 11, weight: .bold))
                        Text("Emergency")
                            .font(Typeface.label(10)).uppercaseLabel(tracking: 1.4)
                    }
                    .foregroundStyle(Theme.edge)
                    .frame(maxWidth: .infinity)
                    .frame(height: 44)
                    .overlay(
                        RoundedRectangle(cornerRadius: Theme.Metric.cardRadius)
                            .strokeBorder(Theme.edge.opacity(0.6), lineWidth: 1)
                    )
                }
                .buttonStyle(.plain)

                // A tap opens the end sheet; the sheet itself is the
                // confirmation step, so ending is never a single stray tap that
                // drops the session outright.
                Button {
                    Haptics.shared.play(.warning)
                    model.showEndGoalSheet = true
                } label: {
                    Text("End")
                        .font(Typeface.label(10)).uppercaseLabel(tracking: 1.4)
                        .foregroundStyle(Theme.inkDim)
                        .frame(maxWidth: .infinity)
                        .frame(height: 44)
                        .background(Theme.card)
                        .clipShape(RoundedRectangle(cornerRadius: Theme.Metric.cardRadius))
                        .contentShape(Rectangle())
                }
                .buttonStyle(.plain)
                .accessibilityLabel("End session")
                .accessibilityHint("Ends the session and returns to Home")
            }
        }
        .padding(.bottom, 16)
    }
}

// MARK: - Components

@MainActor
struct TelemetryChip: View {
    let label: String
    let value: String
    var detail: String?
    var tint: Color = Theme.data
    var symbol: String?

    var body: some View {
        VStack(alignment: .leading, spacing: 3) {
            HStack(spacing: 4) {
                if let symbol {
                    Image(systemName: symbol).font(.system(size: 7, weight: .bold))
                }
                Text(label).font(Typeface.label(8)).uppercaseLabel(tracking: 0.9)
            }
            .foregroundStyle(Theme.inkFaint)

            HStack(alignment: .firstTextBaseline, spacing: 4) {
                Text(value)
                    .font(Typeface.numeric(15))
                    .foregroundStyle(tint)
                    .lineLimit(1)
                    .minimumScaleFactor(0.7)
                if let detail {
                    Text(detail)
                        .font(Typeface.label(8))
                        .foregroundStyle(Theme.inkFaint)
                }
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, 10)
        .padding(.vertical, 8)
        .background(Theme.card)
        .clipShape(RoundedRectangle(cornerRadius: Theme.Metric.chipRadius))
        .accessibilityElement(children: .combine)
    }
}

@MainActor
struct ActionButton: View {
    let title: String
    let symbol: String
    let tint: Color
    let action: () -> Void

    @State private var isPressed = false

    var body: some View {
        Button(action: action) {
            VStack(spacing: 6) {
                Image(systemName: symbol).font(.system(size: 17, weight: .bold))
                Text(title).font(Typeface.label(11)).uppercaseLabel(tracking: 1.4)
            }
            .foregroundStyle(Theme.bg)
            .frame(maxWidth: .infinity)
            .frame(height: 74)
            .background(tint.opacity(isPressed ? 0.75 : 1))
            .clipShape(RoundedRectangle(cornerRadius: Theme.Metric.cardRadius))
            .scaleEffect(isPressed ? 0.97 : 1)
        }
        .buttonStyle(.plain)
        .animation(.easeOut(duration: 0.1), value: isPressed)
        .simultaneousGesture(
            DragGesture(minimumDistance: 0)
                .onChanged { _ in isPressed = true }
                .onEnded { _ in isPressed = false }
        )
    }
}

// MARK: - Emergency layer

@MainActor
struct EmergencyLayer: View {

    @ObservedObject var protocolState: EmergencyProtocol

    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()

            GlitchOverlay(intensity: 1 - protocolState.progress * 0.6)
                .ignoresSafeArea()

            VStack(spacing: 24) {
                Spacer()

                AngelWidget(state: .emergency, spread: 1.0)
                    .frame(maxHeight: 190)

                Text(protocolState.instruction)
                    .font(Typeface.pixel(24))
                    .foregroundStyle(Theme.edge)
                    .multilineTextAlignment(.center)
                    .shadow(color: .black, radius: 8)

                if case .counting = protocolState.stage {
                    Text(protocolState.countLabel)
                        .font(Typeface.numeric(120))
                        .foregroundStyle(Theme.ink)
                        .contentTransition(.numericText(countsDown: true))
                        .shadow(color: .black, radius: 12)
                        .accessibilityLabel("\(protocolState.remaining) seconds remaining")
                }

                Text("Pelvic floor. Squeeze hard.")
                    .font(Typeface.label(11))
                    .uppercaseLabel(tracking: 2)
                    .foregroundStyle(Theme.ink.opacity(0.8))
                    .shadow(color: .black, radius: 6)

                Spacer()

                // Always escapable. A false trigger from a pocket tap must
                // not hold someone for ten seconds.
                Button {
                    protocolState.cancel()
                } label: {
                    Text("Cancel")
                        .font(Typeface.label(10)).uppercaseLabel(tracking: 1.6)
                        .foregroundStyle(Theme.ink.opacity(0.7))
                        .frame(height: 44)
                        .frame(maxWidth: 180)
                        .background(Color.black.opacity(0.7))
                        .overlay(
                            RoundedRectangle(cornerRadius: Theme.Metric.chipRadius)
                                .strokeBorder(Theme.ink.opacity(0.25), lineWidth: 1)
                        )
                }
                .buttonStyle(.plain)
                .padding(.bottom, 28)
            }
            .padding(.horizontal, 24)
        }
    }
}

// MARK: - Availability shims

private extension View {
    /// `presentationBackground` is iOS 16.4+, but the project deploys to 16.0.
    /// Apply it only where available; on 16.0–16.3 the sheet keeps its default
    /// system material. The app is dark-only, so that is a mild cosmetic
    /// regression on those two point releases, not a functional one.
    ///
    /// The clean alternative is to raise the deployment target to iOS 16.4,
    /// which removes this shim and the identical `presentationBackground` calls
    /// in ModeSelectionView and HomeView in one move.
    @ViewBuilder
    func darkSheetBackground(_ color: Color) -> some View {
        if #available(iOS 16.4, *) {
            self.presentationBackground(color)
        } else {
            self
        }
    }
}
