//
//  SplashSystem.swift
//  LAST LONGER
//
//  The tab-transition splash. One design, matching the onboarding splash:
//  the flame mark over the pixel wordmark on the void, held for half a second.
//
//  This replaces an earlier nine-variant system. That set was procedurally
//  interesting and wrong for the job - a tab switch happens dozens of times a
//  session, and anything that changes between switches becomes something the
//  user has to read rather than something they pass through. One constant mark
//  is furniture in the good sense: it registers without asking for attention,
//  and it reinforces the brand every time instead of diluting it.
//
//  Integration notes are at the bottom of this file.
//

import SwiftUI

// MARK: - SplashSystem

/// One 0.5s splash: fade in, hold, fade out, then `onFinish`.
///
///     SplashSystem { showing = false }
///
struct SplashSystem: View {

    var onFinish: () -> Void = {}

    /// 0.10 in, 0.30 hold, 0.10 out. Total 0.50s, matching the onboarding splash.
    static let fadeIn: TimeInterval  = 0.10
    static let hold: TimeInterval    = 0.30
    static let fadeOut: TimeInterval = 0.10
    static var duration: TimeInterval { fadeIn + hold + fadeOut }

    @Environment(\.accessibilityReduceMotion) private var reduceMotion
    @ScaledMetric(relativeTo: .largeTitle) private var markSize: CGFloat = 46

    @State private var opacity: Double = 0
    @State private var markScale: CGFloat = 0.94

    var body: some View {
        ZStack {
            LL.Palette.background.ignoresSafeArea()

            VStack(spacing: 22) {
                Image(systemName: "flame.fill")
                    .font(.system(size: markSize, weight: .black))
                    .foregroundStyle(LL.Palette.edge)
                    .shadow(color: LL.Palette.edge.opacity(0.40), radius: 20)
                    .scaleEffect(markScale)

                PixelText("LAST LONGER", pixel: 3, tracking: 1.4, color: LL.Palette.text)
            }
        }
        .opacity(opacity)
        // Purely decorative and short-lived: it must never eat a tap, and
        // VoiceOver should not announce a screen that is already gone.
        .allowsHitTesting(false)
        .accessibilityHidden(true)
        .task { await run() }
    }

    private func run() async {
        HapticEngine.shared.play(.tick)

        withAnimation(.easeOut(duration: Self.fadeIn)) {
            opacity = 1
            if !reduceMotion { markScale = 1 }
        }
        try? await Task.sleep(for: .seconds(Self.fadeIn + Self.hold))

        withAnimation(.easeIn(duration: Self.fadeOut)) { opacity = 0 }
        try? await Task.sleep(for: .seconds(Self.fadeOut))

        onFinish()
    }
}

// MARK: - Integration

/// Drops the splash over the content whenever `selection` changes.
///
/// Attach it to the tab container, not to an individual tab - the splash has
/// to outlive the swap it is covering.
struct TabSplashModifier<Selection: Equatable>: ViewModifier {

    let selection: Selection
    /// Set false to disable the splash without unpicking the call site.
    var enabled: Bool = true

    /// Bumped on every transition so a repeat tap restarts the view cleanly.
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
    /// Fires the 0.5s splash on every change of `selection`.
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
//  2. To disable it at runtime (a Settings toggle, say):
//
//         .tabSplash(on: tab, enabled: settings.tabSplashesEnabled)
//
//  3. To preview the splash on its own:
//
//         SplashSystem { }
//

// MARK: - Preview

#Preview("Splash") {
    SplashSystem()
        .preferredColorScheme(.dark)
}
