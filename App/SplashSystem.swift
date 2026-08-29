//
//  SplashSystem.swift
//  LAST LONGER
//
//  The tab-transition splash. Two splashes, deliberately unalike, chosen by a
//  weighted roll on every transition:
//
//    Glitch   (75%)  Pure signal interference. A black and white pixel burst
//                    on the void. No flame, no wordmark, nothing to read.
//    Original (25%)  The complete onboarding splash: pixel noise, the flame,
//                    the wordmark, and the blue scan line sweeping down.
//
//  They share the ground and the envelope and nothing else. That is the point:
//  the common case is a hard cut of noise the user passes straight through,
//  and one time in four the brand actually shows up. A splash that always
//  carries the wordmark stops being a moment and becomes furniture.
//
//  Integration notes are at the bottom of this file.
//

import SwiftUI

// MARK: - Variant

/// Which of the two splashes this appearance shows.
enum SplashVariant {
    case glitch
    case original

    /// The one and only source of randomness. A fresh, independent roll:
    /// 1-in-4 is Original (25%), the rest Glitch (75%). Nothing else weights,
    /// overrides or sequences the choice, and repeats are expected.
    static func random() -> SplashVariant {
        Int.random(in: 1...4) == 1 ? .original : .glitch
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

    /// Rolled once, when this instance is created. `TabSplashModifier` gives
    /// each transition a fresh instance via `.id`, so each one re-rolls.
    @State private var variant: SplashVariant = .random()

    @State private var opacity: Double = 0

    var body: some View {
        ZStack {
            LL.Palette.background.ignoresSafeArea()

            switch variant {
            case .glitch:   glitchSplash
            case .original: originalSplash
            }
        }
        .opacity(opacity)
        // Decorative and short-lived: never eat a tap, never announce itself.
        .allowsHitTesting(false)
        .accessibilityHidden(true)
        .task { await run() }
    }

    // MARK: Glitch (75%)

    /// Pure interference. Deliberately empty of anything to read - no mark, no
    /// type, no sweep. `GlitchOverlay` animates itself and already renders a
    /// single static frame under Reduce Motion.
    private var glitchSplash: some View {
        GlitchOverlay(intensity: 1.0)
            .ignoresSafeArea()
    }

    // MARK: Original (25%)

    /// The onboarding splash: flame, wordmark, and the scan line. No pixel
    /// noise - the void stays clean behind the mark.
    private var originalSplash: some View {
        ZStack {
            // The flame and the wordmark.
            VStack(spacing: 22) {
                Image(systemName: "flame.fill")
                    .font(.system(size: markSize, weight: .black))
                    .foregroundStyle(LL.Palette.edge)
                    .shadow(color: LL.Palette.edge.opacity(0.40), radius: 20)
                    .scaleEffect(markScale)

                PixelText("LAST LONGER", pixel: 3, tracking: 1.4, color: LL.Palette.text)
            }

            // The scan line, over the mark.
            scanLine
        }
    }

    @ScaledMetric(relativeTo: .largeTitle) private var markSize: CGFloat = 46
    @State private var markScale: CGFloat = 0.94
    @State private var sweep: CGFloat = 0

    /// A single blue line sweeping top to bottom, screen-blended so it lifts
    /// the mark as it passes. Suppressed under Reduce Motion.
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

    // MARK: Envelope

    private func run() async {
        HapticEngine.shared.play(.tick)

        withAnimation(.easeOut(duration: Self.fadeIn)) {
            opacity = 1
            if !reduceMotion { markScale = 1 }
        }

        // Only Original has anything of its own to animate; Glitch drives
        // itself from its own TimelineView.
        if variant == .original, !reduceMotion {
            withAnimation(.linear(duration: Self.fadeIn + Self.hold)) { sweep = 1 }
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
//  2. The variant is rolled once per appearance in SplashVariant.random() and
//     nothing else influences it. The `.id(run)` above is what gives each
//     transition a fresh instance and therefore a fresh roll.
//
//  3. To disable it at runtime (a Settings toggle, say):
//
//         .tabSplash(on: tab, enabled: settings.tabSplashesEnabled)
//

// MARK: - Previews

#Preview("Glitch - 75%") {
    ZStack {
        LL.Palette.background.ignoresSafeArea()
        GlitchOverlay(intensity: 1.0).ignoresSafeArea()
    }
    .preferredColorScheme(.dark)
}

#Preview("Rolls both") {
    SplashSystem()
        .preferredColorScheme(.dark)
}
