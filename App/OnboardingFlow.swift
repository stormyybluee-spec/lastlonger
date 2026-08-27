//
//  OnboardingFlow.swift
//  LAST LONGER
//
//  Four screens. Copy is verbatim from the spec — it is doing a job
//  (name the problem, reframe the habit, make the privacy claim, pick a
//  voice) and softening any of it would break the fourth screen's premise
//  that the app is telling the truth.
//
//  The pixel-noise transition respects Reduce Motion and falls back to a
//  plain cross-fade.
//

import SwiftUI

// MARK: - Page model

struct OnboardingPage: Identifiable {
    let id: Int
    let symbol: String
    let headline: String
    let subtext: String
    let cta: String

    static let all: [OnboardingPage] = [
        .init(
            id: 0,
            symbol: "figure.run",
            headline: "Control slips first. Fix the timing.",
            subtext: "Train your response. Build your stamina.",
            cta: "NEXT"
        ),
        .init(
            id: 1,
            symbol: "bolt.fill",
            headline: "Your session is the gym.",
            subtext: "Every session is a rep. Train while you focus.",
            cta: "NEXT"
        ),
        .init(
            id: 2,
            symbol: "mic.slash",
            headline: "Zero recordings. Zero servers.",
            subtext: "Everything stays on this phone. Forever.",
            cta: "NEXT"
        ),
        .init(
            id: 3,
            symbol: "figure.wave",
            headline: "Meet your coach.",
            subtext: "Choose your voice. Change it anytime.",
            cta: "START TRAINING"
        ),
    ]
}

// MARK: - Flow

public struct OnboardingFlow: View {

    public var onFinish: (CoachPersona) -> Void

    @State private var index = 0
    @State private var persona: CoachPersona = .drillSergeant
    @StateObject private var glitch = GlitchDriver()
    @StateObject private var voice = CoachVoice.shared
    @Environment(\.accessibilityReduceMotion) private var reduceMotion

    public init(onFinish: @escaping (CoachPersona) -> Void) {
        self.onFinish = onFinish
    }

    private var page: OnboardingPage { OnboardingPage.all[index] }

    public var body: some View {
        ZStack {
            LL.Palette.void.ignoresSafeArea()
            CircuitGrid(spacing: 34)
                .opacity(0.10)
                .ignoresSafeArea()

            VStack(alignment: .leading, spacing: 0) {
                header

                Spacer(minLength: 24)

                Group {
                    if index == 3 {
                        coachPicker
                    } else {
                        statement
                    }
                }
                .id(index)
                .transition(reduceMotion ? .opacity : .asymmetric(
                    insertion: .opacity.combined(with: .offset(x: 6)),
                    removal: .opacity
                ))

                Spacer(minLength: 24)

                advanceButton
            }
            .padding(.horizontal, LL.Metric.gutter)
            .padding(.bottom, 28)

            ScanlineOverlay(spacing: 3, opacity: 0.10)
                .ignoresSafeArea()

            PixelNoise(seed: glitch.seed, intensity: glitch.intensity, cell: 10)
                .ignoresSafeArea()
                .allowsHitTesting(false)
        }
        .preferredColorScheme(.dark)
        .onDisappear {
            voice.stop()
            glitch.cancel()
        }
    }

    // MARK: - Header

    private var header: some View {
        HStack(alignment: .top) {
            Wordmark(pixel: 3)
            Spacer()
            progressBlocks
        }
        .padding(.top, 12)
    }

    /// Four blocks, not dots. The onboarding is a real sequence with a
    /// known length, so the marker should say how far in you are.
    private var progressBlocks: some View {
        HStack(spacing: 4) {
            ForEach(0..<OnboardingPage.all.count, id: \.self) { position in
                Rectangle()
                    .fill(position <= index ? LL.Palette.text : LL.Palette.rule)
                    .frame(width: position == index ? 20 : 8, height: 4)
                    .animation(LL.Motion.stateFade, value: index)
            }
        }
        .padding(.top, 4)
        .accessibilityLabel("Step \(index + 1) of \(OnboardingPage.all.count)")
    }

    // MARK: - Statement pages

    private var statement: some View {
        VStack(alignment: .leading, spacing: 22) {
            Image(systemName: page.symbol)
                .font(.system(size: 56, weight: .bold))
                .foregroundStyle(LL.Palette.text)
                .frame(height: 64, alignment: .leading)
                .channelSplit(active: glitch.intensity > 0.2, amount: 3)

            Text(page.headline)
                .font(.system(size: 40, weight: .heavy))
                .foregroundStyle(LL.Palette.text)
                .lineSpacing(-2)
                .fixedSize(horizontal: false, vertical: true)

            Text(page.subtext)
                .font(.system(size: 17, weight: .medium))
                .foregroundStyle(LL.Palette.textDim)
                .fixedSize(horizontal: false, vertical: true)

            if index == 2 {
                privacyLedger
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }

    /// Screen 3 makes a hard claim. Showing the actual permission list the
    /// app never requests is more persuasive than the sentence alone, and
    /// it is checkable against the App Store privacy label.
    private var privacyLedger: some View {
        VStack(alignment: .leading, spacing: 8) {
            ForEach(["MICROPHONE", "CAMERA", "PHOTOS", "CONTACTS", "LOCATION", "NETWORK"], id: \.self) { item in
                HStack(spacing: 10) {
                    Image(systemName: "xmark")
                        .font(.system(size: 9, weight: .black))
                        .foregroundStyle(LL.Palette.edge)
                        .frame(width: 12)
                    Text(item)
                        .font(.llData(11))
                        .kerning(1.2)
                        .foregroundStyle(LL.Palette.textDim)
                    Spacer()
                    Text("NOT REQUESTED")
                        .font(.llData(11))
                        .foregroundStyle(LL.Palette.rule)
                }
            }
        }
        .padding(.top, 6)
    }

    // MARK: - Coach picker

    private var coachPicker: some View {
        VStack(alignment: .leading, spacing: 18) {
            VStack(alignment: .leading, spacing: 10) {
                Text(page.headline)
                    .font(.system(size: 36, weight: .heavy))
                    .foregroundStyle(LL.Palette.text)
                Text(page.subtext)
                    .font(.system(size: 16, weight: .medium))
                    .foregroundStyle(LL.Palette.textDim)
            }

            VStack(spacing: 10) {
                ForEach(CoachPersona.allCases) { candidate in
                    PersonaCard(
                        persona: candidate,
                        isSelected: persona == candidate,
                        isSpeaking: voice.speakingPersona == candidate
                    ) {
                        persona = candidate
                        HapticEngine.shared.play(.tick)
                        voice.preview(candidate)
                    }
                }
            }
        }
    }

    // MARK: - CTA

    private var advanceButton: some View {
        Button {
            advance()
        } label: {
            Text(page.cta)
                .font(.llLabel(15))
                .kerning(2)
                .foregroundStyle(LL.Palette.text)
                .frame(maxWidth: .infinity)
                .frame(height: LL.Metric.tapTarget)
                .background(
                    LinearGradient(
                        colors: [LL.Palette.edge, LL.Palette.void],
                        startPoint: .top,
                        endPoint: .bottom
                    ),
                    in: RoundedRectangle(cornerRadius: LL.Metric.corner, style: .continuous)
                )
                .overlay(
                    RoundedRectangle(cornerRadius: LL.Metric.corner, style: .continuous)
                        .strokeBorder(LL.Palette.edge.opacity(0.6), lineWidth: 1)
                )
        }
        .buttonStyle(.plain)
    }

    private func advance() {
        voice.stop()
        HapticEngine.shared.play(.threshold)

        guard index < OnboardingPage.all.count - 1 else {
            onFinish(persona)
            return
        }

        glitch.fire(reduceMotion: reduceMotion)

        // Swap content at the peak of the burst so the change is hidden
        // inside the noise rather than sliding underneath it.
        let delay = reduceMotion ? 0.0 : 0.09
        DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
            withAnimation(reduceMotion ? .easeInOut(duration: 0.2) : nil) {
                index += 1
            }
        }
    }
}

// MARK: - Persona card

struct PersonaCard: View {
    let persona: CoachPersona
    let isSelected: Bool
    let isSpeaking: Bool
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            HStack(spacing: 14) {
                Image(systemName: persona.symbol)
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundStyle(isSelected ? LL.Palette.void : LL.Palette.text)
                    .frame(width: 34, height: 34)
                    .background(
                        Circle().fill(isSelected ? LL.Palette.text : LL.Palette.rule)
                    )

                VStack(alignment: .leading, spacing: 3) {
                    Text(persona.title)
                        .font(.llLabel(13))
                        .kerning(1.6)
                        .foregroundStyle(LL.Palette.text)
                    Text(persona.descriptor)
                        .font(.system(size: 13, weight: .regular))
                        .foregroundStyle(LL.Palette.textDim)
                }

                Spacer()

                Image(systemName: isSpeaking ? "waveform" : "play.fill")
                    .font(.system(size: 13, weight: .bold))
                    .foregroundStyle(isSpeaking ? LL.Palette.circuit : LL.Palette.textDim)
                    .symbolEffect(.variableColor.iterative, isActive: isSpeaking)
            }
            .padding(14)
            .frame(minHeight: LL.Metric.tapTarget)
            .background(LL.Palette.card, in: RoundedRectangle(cornerRadius: LL.Metric.corner, style: .continuous))
            .overlay(
                RoundedRectangle(cornerRadius: LL.Metric.corner, style: .continuous)
                    .strokeBorder(isSelected ? LL.Palette.text : LL.Palette.rule, lineWidth: 1)
            )
        }
        .buttonStyle(.plain)
        .animation(LL.Motion.stateFade, value: isSelected)
        .accessibilityLabel("\(persona.title). \(persona.descriptor)")
        .accessibilityHint("Plays a sample and selects this coach.")
        .accessibilityAddTraits(isSelected ? [.isSelected, .isButton] : .isButton)
    }
}

#Preview {
    OnboardingFlow { _ in }
}
