//
//  SplashView.swift
//  LAST LONGER
//
//  0.5 second hold on black. SF Symbol "flame.fill" over a pixel wordmark,
//  with a one-frame CRT power-on. Fades straight to the paywall.
//

import SwiftUI

struct SplashView: View {

    /// Fired once the hold and fade have completed.
    let onFinish: () -> Void

    @State private var markOpacity: Double = 0
    @State private var markScale: CGFloat = 0.92
    @State private var glitchActive = false
    @State private var sweepProgress: CGFloat = 0
    @State private var isLeaving = false

    @Environment(\.accessibilityReduceMotion) private var reduceMotion
    @ScaledMetric(relativeTo: .largeTitle) private var markSize: CGFloat = 62

    /// 0.5s hold, then a 0.25s fade. Reduce Motion collapses the animation but keeps
    /// the same total duration so the handoff timing never changes.
    private let hold: TimeInterval = 0.5
    private let fade: TimeInterval = 0.25

    var body: some View {
        ZStack {
            LL.Palette.background.ignoresSafeArea()

            VStack(spacing: 22) {
                Image(systemName: "flame.fill")
                    .font(.system(size: markSize, weight: .black))
                    .foregroundStyle(
                        LinearGradient(
                            colors: [LL.Palette.warning, LL.Palette.primary],
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
                    .shadow(color: LL.Palette.primary.opacity(0.55), radius: 24)
                    .scaleEffect(markScale)
                    .glitch(glitchActive, amount: 2.5)

                DisplayText(text: "LAST LONGER", size: 30, tracking: 4)
                    .glitch(glitchActive, amount: 1.5)
            }
            .opacity(markOpacity)

            // CRT power-on sweep: a single bright line crossing the panel once.
            if !reduceMotion {
                GeometryReader { proxy in
                    Rectangle()
                        .fill(
                            LinearGradient(
                                colors: [.clear, LL.Palette.data.opacity(0.35), .clear],
                                startPoint: .top, endPoint: .bottom
                            )
                        )
                        .frame(height: 90)
                        .offset(y: (proxy.size.height + 90) * sweepProgress - 90)
                        .blendMode(.screen)
                }
                .allowsHitTesting(false)
                .accessibilityHidden(true)
            }

            Scanlines(spacing: 3, opacity: 0.08)
                .ignoresSafeArea()
        }
        .opacity(isLeaving ? 0 : 1)
        // VoiceOver reads the launch screen as a single element and moves on.
        .accessibilityElement(children: .ignore)
        .accessibilityLabel("Last Longer")
        .accessibilityAddTraits(.isHeader)
        .task { await runSequence() }
    }

    private func runSequence() async {
        if reduceMotion {
            markOpacity = 1
            markScale = 1
        } else {
            withAnimation(.easeOut(duration: 0.18)) {
                markOpacity = 1
                markScale = 1
            }
            withAnimation(.linear(duration: 0.42)) { sweepProgress = 1 }

            // Single glitch frame at ~120ms. One frame only; never a strobe.
            try? await Task.sleep(for: .milliseconds(120))
            glitchActive = true
            try? await Task.sleep(for: .milliseconds(60))
            glitchActive = false
        }

        let elapsed: TimeInterval = reduceMotion ? 0 : 0.18
        let remaining = max(0, hold - elapsed)
        try? await Task.sleep(for: .seconds(remaining))

        withAnimation(.easeInOut(duration: fade)) { isLeaving = true }
        try? await Task.sleep(for: .seconds(fade))
        onFinish()
    }
}

#Preview {
    SplashView(onFinish: {})
}
