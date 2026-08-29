//
//  SplashSystem.swift
//  LAST LONGER
//
//  The tab-transition splash. Two combos over the same flame-and-wordmark
//  mark, chosen by a weighted roll on every transition:
//
//    Full   (25%)  the onboarding splash in full - pixel noise behind the
//                  mark, a blue scan line sweeping down over it.
//    Glitch (75%)  the mark hit by a black/white pixel burst, like signal
//                  interference cutting across the channel.
//
//  Both share the flame and the wordmark; only the treatment over them
//  changes. Both run 0.5s (fade in, hold, fade out) with a light tap on
//  appearance.
//
//  Integration notes are at the bottom of this file.
//

import SwiftUI

// MARK: - Variant

/// Which of the two combos this appearance shows.
enum SplashVariant {
    case full
    case glitch

    /// The one and only source of randomness. A fresh, independent roll:
    /// 1-in-4 is Full (25%), the rest Glitch (75%). Nothing else weights,
    /// overrides, or sequences the choice - repeats are allowed and expected.
    static func random() -> SplashVariant {
        Int.random(in: 1...4) == 1 ? .full : .glitch
    }
}

// MARK: - SplashSystem

/// One 0.5s splash: fade in, hold, fade out, then `onFinish`.
///
///     SplashSystem { showing = false }
///
struct SplashSystem: View {

    var onFinish: () -> Void = {}

    /// 0.10 in, 0.30 hold, 0.10 out. Total 0.50s.
    static let fadeIn: TimeInterval  = 0.10
    static let hold: TimeInterval    = 0.30
    static let fadeOut: TimeInterval = 0.10
    static var duration: TimeInterval { fadeIn + hold + fadeOut }

    @Environment(\.accessibilityReduceMotion) private var reduceMotion
    @ScaledMetric(relativeTo: .largeTitle) private var markSize: CGFloat = 46

    /// Rolled once, when this instance is created. `TabSplashModifier` gives
    /// each transition a fresh instance (via `.id`), so each one re-rolls.
    @State private var variant: SplashVariant = .random()
    /// Stable per appearance so the noise field does not flicker between frames.
    @State private var noiseSeed: UInt64 = .random(in: 0..<UInt64.max)

    @State private var opacity: Double = 0
    @State private var markScale: CGFloat = 0.94
    @State private var sweep: CGFloat = 0        // Full: scan-line position, 0...1
    @State private var glitchIntensity: Double = 1  // Glitch: burst strength, ramps to 0

    var body: some View {
        ZStack {
            LL.Palette.background.ignoresSafeArea()

            // Full: subtle black/white noise behind the mark.
            if variant == .full {
                PixelNoise(seed: noiseSeed, intensity: 0.12, cell: 10)
                    .ignoresSafeArea()
                    .allowsHitTesting(false)
            }

            // The mark. Common to both combos.
            VStack(spacing: 22) {
                Image(systemName: "flame.fill")
                    .font(.system(size: markSize, weight: .black))
                    .foregroundStyle(LL.Palette.edge)
                    .shadow(color: LL.Palette.edge.opacity(0.40), radius: 20)
                    .scaleEffect(markScale)

                PixelText("LAST LONGER", pixel: 3, tracking: 1.4, color: LL.Palette.text)
            }

            // The treatment over the mark.
            switch variant {
            case .full:
                scanLine
            case .glitch:
                GlitchOverlay(intensity: glitchIntensity)
                    .ignoresSafeArea()
            }
        }
        .opacity(opacity)
        // Decorative and short-lived: never eat a tap, never announce itself.
        .allowsHitTesting(false)
        .accessibilityHidden(true)
        .task { await run() }
    }

    /// Full combo: a single blue line sweeping top to bottom, screen-blended so
    /// it lifts the mark as it passes. Suppressed under Reduce Motion.
    @ViewBuilder
    private var scanLine: some View {
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
                    .offset(y: (proxy.size.height + 90) * sweep - 90)
                    .blendMode(.screen)
            }
            .ignoresSafeArea()
            .allowsHitTesting(false)
        }
    }

    private func run() async {
        HapticEngine.shared.play(.tick)

        withAnimation(.easeOut(duration: Self.fadeIn)) {
            opacity = 1
            if !reduceMotion { markScale = 1 }
        }

        // Kick off the variant's own motion alongside the fade.
        if !reduceMotion {
            switch variant {
            case .full:
                withAnimation(.linear(duration: Self.fadeIn + Self.hold)) { sweep = 1 }
            case .glitch:
                // Burst hard, then resolve as the mark settles.
                withAnimation(.easeOut(duration: Self.fadeIn + Self.hold)) { glitchIntensity = 0 }
            }
        }

        try? await Task.sleep(for: .seconds(Self.fadeIn + Self.hold))
        withAnimation(.easeIn(duration: Self.fadeOut)) { opacity = 0 }
        try? await Task.sleep(for: .seconds(Self.fadeOut))

        onFinish()
    }
}

// MARK: - Integration

/// Drops a splash over the content whenever `selection` changes.
///
/// Attach it to the tab container, not to an individual tab - the splash has
/// to outlive the swap it is covering.
struct TabSplashModifier<Selection: Equatable>: ViewModifier {

    let selection: Selection
    /// Set false to disable the splash without unpicking the call site.
    var enabled: Bool = true

    /// Bumped on every transition so a repeat tap restarts the view - and
    /// re-rolls the variant - cleanly.
    @State private var run: Int = 0
    @State private var isShowing = false

    func body(content: Content) -> some View {
        content
            .overlay {
                if isShowing {
                    SplashSystem { isShowing = false }
                        .id(run)
                        .ignoresSafeArea()
                        .transition(.identity)   // the splash owns its own fade
                }
            }
            .onChange(of: selection) { _, _ in
                guard enabled else { return }
                run &+= 1
                isShowing = true
            }
    }
}

extension View {
    /// Fires a weighted-random splash on every change of `selection`.
    ///
    ///     TabView(selection: $tab) { ... }
    ///         .tabSplash(on: tab)
    ///
    func tabSplash<S: Equatable>(on selection: S, enabled: Bool = true) -> some View {
        modifier(TabSplashModifier(selection: selection, enabled: enabled))
    }
}

// MARK: - How this is wired
//
// The splash covers a TAB transition, so it belongs on the tab container in
// `RootTabView` (App/HomeView.swift), not in `RootView` or `LastLongerApp` -
// those only see launch phases and never observe the tab change.
//
// `RootTabView` already applies it:
//
//     ZStack(alignment: .bottom) {
//         TabView(selection: $tab) { ... }
//         InstrumentTabBar(selection: $tab)
//     }
//     .tabSplash(on: tab)
//
// Notes:
//
//  1. Put `.tabSplash(on:)` on the container. On a child it would be torn down
//     by the very swap it is meant to cover.
//
//  2. The variant is rolled once per appearance, in SplashVariant.random(),
//     and nothing else influences it. The `.id(run)` above is what gives each
//     transition a fresh instance and therefore a fresh roll.
//
//  3. To disable it at runtime (a Settings toggle, say):
//
//         .tabSplash(on: tab, enabled: settings.tabSplashesEnabled)
//
//  4. To preview one combo directly, override the state default in a copy, or
//     just run the previews below a few times - the roll shows both.

// MARK: - Preview

#Preview("Splash - rolls both") {
    SplashSystem()
        .preferredColorScheme(.dark)
}
