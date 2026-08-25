//
//  LastLongerApp.swift
//  LAST LONGER
//
//  Launch order is onboarding → paywall → home, not paywall first as the
//  V2 spec had it. Two reasons: App Review reacts badly to a hard paywall
//  before the app has shown what it does, and the fourth onboarding screen
//  is a voice picker — letting someone hear the coach before being asked
//  for ten dollars is the single strongest thing this app has to sell.
//

import SwiftUI

@main
struct LastLongerApp: App {
    @StateObject private var repository = Repository.shared
    @StateObject private var store = StoreManager.shared
    @State private var showSplash = true

    var body: some Scene {
        WindowGroup {
            ZStack {
                content
                if showSplash {
                    SplashView()
                        .transition(.opacity)
                        .zIndex(1)
                }
            }
            .environmentObject(repository)
            .preferredColorScheme(.dark)
            .task {
                HapticEngine.shared.apply(repository.settings.hapticIntensity)
                try? await Task.sleep(for: .milliseconds(500))
                withAnimation(.easeOut(duration: 0.35)) { showSplash = false }
            }
        }
    }

    @ViewBuilder
    private var content: some View {
        if !repository.settings.hasCompletedOnboarding {
            OnboardingFlow { persona in
                repository.update {
                    $0.persona = persona
                    $0.hasCompletedOnboarding = true
                }
            }
        } else if !store.isUnlocked {
            PaywallView {}
        } else {
            RootTabView()
        }
    }
}

struct SplashView: View {
    @State private var lit = false

    var body: some View {
        ZStack {
            LL.Palette.void.ignoresSafeArea()
            VStack(spacing: 22) {
                AngelWidget(state: .safe, size: 100, showsStreak: false)
                    .allowsHitTesting(false)
                    .opacity(lit ? 1 : 0)
                Wordmark(pixel: 5)
                    .opacity(lit ? 1 : 0)
            }
            ScanlineOverlay(opacity: 0.1).ignoresSafeArea()
        }
        .task {
            withAnimation(.easeOut(duration: 0.3)) { lit = true }
        }
    }
}
