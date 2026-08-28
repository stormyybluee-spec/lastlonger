//
//  ResetProtocolView.swift
//  LAST LONGER
//
//  PART 11 — Failure Protection.
//
//  Triggered when a user logs "reached end goal". Offers a two-minute guided
//  reset (5-7-8 breathing plus reverse kegels) and a suggested recovery
//  window.
//
//  TONE
//  ----
//  The spec calls this Failure Protection, and the name is right for the
//  code — but nothing the user reads uses the word "failure". Someone who
//  just went over doesn't need to be told they lost, and an app that scolds
//  at this exact moment teaches people to stop logging honestly, which
//  destroys the streak data and the recovery estimate along with it.
//
//  So the copy is flat and procedural. The streak resets silently. Reverse
//  kegels are the point, not the verdict.
//

import SwiftUI

// MARK: - End sheet

@MainActor
struct EndSessionSheet: View {

    @ObservedObject var model: LiveSessionModel
    @Environment(\.dismiss) private var dismiss
    let onFinished: () -> Void

    var body: some View {
        VStack(alignment: .leading, spacing: 18) {
            VStack(alignment: .leading, spacing: 6) {
                Text("End session")
                    .font(Typeface.pixel(20))
                    .foregroundStyle(Theme.ink)
                Text("How did it finish? This is what the streak and recovery window are built from.")
                    .font(Typeface.body(12))
                    .foregroundStyle(Theme.inkDim)
                    .fixedSize(horizontal: false, vertical: true)
            }

            Rule()

            Button {
                Haptics.shared.play(.sessionEnd)
                model.end(reachedEndGoal: false)
                dismiss()
                onFinished()
            } label: {
                EndOptionRow(
                    title: "Held the whole way",
                    detail: "Streak stays at \(model.streak.current).",
                    symbol: "checkmark.shield.fill",
                    tint: Theme.safe
                )
            }
            .buttonStyle(.plain)

            Button {
                Haptics.shared.play(.cooldown)
                model.end(reachedEndGoal: true)
                dismiss()
            } label: {
                EndOptionRow(
                    title: "Reached the end goal",
                    detail: "Starts the reset protocol. Streak returns to zero.",
                    symbol: "arrow.counterclockwise.circle.fill",
                    tint: Theme.rising
                )
            }
            .buttonStyle(.plain)

            Button {
                Haptics.shared.play(.tap)
                dismiss()
            } label: {
                Text("Keep going")
                    .font(Typeface.label(11)).uppercaseLabel(tracking: 1.4)
                    .foregroundStyle(Theme.inkDim)
                    .frame(maxWidth: .infinity)
                    .frame(height: 44)
            }
            .buttonStyle(.plain)

            Spacer(minLength: 0)
        }
        .padding(Theme.Metric.pageInset)
        .background(Theme.bg)
        .preferredColorScheme(.dark)
    }
}

@MainActor
private struct EndOptionRow: View {
    let title: String
    let detail: String
    let symbol: String
    let tint: Color

    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: symbol)
                .font(.system(size: 17, weight: .semibold))
                .foregroundStyle(tint)
                .frame(width: 26)

            VStack(alignment: .leading, spacing: 2) {
                Text(title).font(Typeface.body(14)).foregroundStyle(Theme.ink)
                Text(detail).font(Typeface.body(11)).foregroundStyle(Theme.inkFaint)
                    .fixedSize(horizontal: false, vertical: true)
            }
            Spacer(minLength: 0)
        }
        .padding(12)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Theme.card)
        .overlay(
            RoundedRectangle(cornerRadius: Theme.Metric.cardRadius)
                .strokeBorder(tint.opacity(0.35), lineWidth: 1)
        )
        .clipShape(RoundedRectangle(cornerRadius: Theme.Metric.cardRadius))
    }
}

// MARK: - Reset protocol

@MainActor
struct ResetProtocolView: View {

    @ObservedObject var model: LiveSessionModel
    @Environment(\.dismiss) private var dismiss
    let onFinished: () -> Void

    @State private var stage: Stage = .offer
    @State private var kegelPhase = false

    private enum Stage { case offer, breathing, recovery }

    var body: some View {
        ZStack {
            Theme.bg.ignoresSafeArea()
            PrecisionGrid().ignoresSafeArea()

            switch stage {
            case .offer:     offerStage
            case .breathing: breathingStage
            case .recovery:  recoveryStage
            }

            ScanlineOverlay().ignoresSafeArea()
        }
        .preferredColorScheme(.dark)
        .onDisappear { model.breath.stop() }
    }

    // MARK: Offer

    private var offerStage: some View {
        VStack(spacing: 22) {
            Spacer()

            Image(systemName: "arrow.counterclockwise.circle")
                .font(.system(size: 34, weight: .light))
                .foregroundStyle(Theme.safe)

            VStack(spacing: 8) {
                Text("Reset Protocol")
                    .font(Typeface.pixel(24))
                    .foregroundStyle(Theme.ink)

                Text("Two minutes of paced breathing and reverse kegels. It settles the pelvic floor after it's been held tight.")
                    .font(Typeface.body(13))
                    .foregroundStyle(Theme.inkDim)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 32)
            }

            Spacer()

            VStack(spacing: 10) {
                Button {
                    Haptics.shared.play(.phaseChange)
                    startBreathing()
                } label: {
                    Text("Start reset")
                        .font(Typeface.label(12)).uppercaseLabel(tracking: 2)
                        .foregroundStyle(Theme.bg)
                        .frame(maxWidth: .infinity)
                        .frame(height: 52)
                        .background(Theme.safe)
                        .clipShape(RoundedRectangle(cornerRadius: Theme.Metric.cardRadius))
                }
                .buttonStyle(.plain)

                Button {
                    Haptics.shared.play(.tap)
                    stage = .recovery
                } label: {
                    Text("Skip to recovery window")
                        .font(Typeface.label(10)).uppercaseLabel(tracking: 1.4)
                        .foregroundStyle(Theme.inkDim)
                        .frame(height: 44)
                }
                .buttonStyle(.plain)
            }
            .padding(.horizontal, Theme.Metric.pageInset)
            .padding(.bottom, 24)
        }
    }

    private func startBreathing() {
        stage = .breathing
        model.breath.speaksCount = true
        model.breath.onStageChange = { breathStage in
            // Reverse kegel on the exhale — bearing down while breathing in
            // works against the diaphragm and people give up on it.
            kegelPhase = (breathStage == .exhale)
        }
        model.breath.onFinished = {
            Haptics.shared.play(.sessionEnd)
            stage = .recovery
        }
        model.breath.start(duration: 120)
    }

    // MARK: Breathing

    private var breathingStage: some View {
        VStack(spacing: 20) {
            Spacer()

            AngelWidget(
                state: .cooldown,
                spread: model.breath.wingSpread
            )
            .frame(maxHeight: 220)

            VStack(spacing: 6) {
                Text(model.breath.stageLabel)
                    .font(Typeface.pixel(22))
                    .foregroundStyle(Theme.safe)
                    .contentTransition(.opacity)

                Text("\(model.breath.secondsRemaining)")
                    .font(Typeface.numeric(50))
                    .foregroundStyle(Theme.ink)
                    .contentTransition(.numericText(countsDown: true))
            }

            // Reverse kegel cue, shown only during the exhale.
            Text(kegelPhase ? "Reverse kegel - let everything go slack and bear down gently"
                            : "Let the pelvic floor rest")
                .font(Typeface.body(12))
                .foregroundStyle(kegelPhase ? Theme.rising : Theme.inkFaint)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 36)
                .animation(.easeInOut(duration: 0.3), value: kegelPhase)

            Spacer()

            Text("Cycle \(model.breath.cycleLabel)")
                .font(Typeface.label(9)).uppercaseLabel()
                .foregroundStyle(Theme.inkFaint)

            Button {
                model.breath.stop()
                Haptics.shared.play(.tap)
                stage = .recovery
            } label: {
                Text("Skip")
                    .font(Typeface.label(10)).uppercaseLabel(tracking: 1.4)
                    .foregroundStyle(Theme.inkFaint)
                    .frame(height: 44)
            }
            .buttonStyle(.plain)
            .padding(.bottom, 20)
        }
    }

    // MARK: Recovery

    private var recoveryStage: some View {
        VStack(spacing: 22) {
            Spacer()

            VStack(spacing: 10) {
                Text("Next session")
                    .font(Typeface.label(10)).uppercaseLabel(tracking: 2)
                    .foregroundStyle(Theme.inkFaint)

                Text(model.recovery.windowLabel(
                    emergencyPullbacks: model.streak.emergencyPullbacks,
                    sessionDuration: model.engine.elapsed
                ))
                .font(Typeface.numeric(44))
                .foregroundStyle(Theme.data)

                Text(model.recovery.confidenceNote)
                    .font(Typeface.body(11))
                    .foregroundStyle(Theme.inkFaint)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 36)
            }

            Rule().padding(.horizontal, 40)

            // Session summary — plain numbers, no verdict attached to them.
            HStack(spacing: 10) {
                SummaryTile(value: model.streak.label,
                            label: "Best streak",
                            tint: Theme.rising)
                SummaryTile(value: "\(model.streak.totalCooldowns)",
                            label: "Cooldowns",
                            tint: Theme.safe)
                SummaryTile(value: "\(model.streak.emergencyPullbacks)",
                            label: "Pullbacks",
                            tint: Theme.edge)
            }
            .padding(.horizontal, Theme.Metric.pageInset)

            Text("Recovery varies a lot between people and between weeks. This is a suggestion built from your own logs, not a medical guideline.")
                .font(Typeface.body(11))
                .foregroundStyle(Theme.inkFaint)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 30)

            Spacer()

            Button {
                Haptics.shared.play(.sessionEnd)
                dismiss()
                onFinished()
            } label: {
                Text("Done")
                    .font(Typeface.label(12)).uppercaseLabel(tracking: 2)
                    .foregroundStyle(Theme.bg)
                    .frame(maxWidth: .infinity)
                    .frame(height: 52)
                    .background(Theme.ink)
                    .clipShape(RoundedRectangle(cornerRadius: Theme.Metric.cardRadius))
            }
            .buttonStyle(.plain)
            .padding(.horizontal, Theme.Metric.pageInset)
            .padding(.bottom, 24)
        }
    }
}

@MainActor
private struct SummaryTile: View {
    let value: String
    let label: String
    let tint: Color

    var body: some View {
        VStack(spacing: 4) {
            Text(value).font(Typeface.numeric(24)).foregroundStyle(tint)
            Text(label).font(Typeface.label(8)).uppercaseLabel(tracking: 0.9)
                .foregroundStyle(Theme.inkFaint)
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 12)
        .background(Theme.card)
        .clipShape(RoundedRectangle(cornerRadius: Theme.Metric.chipRadius))
    }
}
