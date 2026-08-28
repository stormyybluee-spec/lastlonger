//
//  LastLongerApp.swift
//  LAST LONGER
//
//  Entry point, launch phase routing, and the audio session that keeps the
//  voice coach alive while the app is backgrounded behind external media.
//

import SwiftUI
import AVFoundation
import os

// MARK: - Launch phases

/// The app is a free download, so nothing gates launch. The soft paywall is
/// raised on demand elsewhere (see `PaywallContext`). The one scripted spot is
/// right after onboarding: `.paywall(.intro)` shows the upsell once, and it is
/// dismissible - closing it drops straight to Home, still free.
enum AppPhase: Equatable {
    case splash
    case onboarding
    case paywall(PaywallContext)
    case home
}

// MARK: - App

@main
struct LastLongerApp: App {

    @StateObject private var store = StoreManager()
    @StateObject private var trial = TrialManager.shared
    @StateObject private var audio = AudioSessionController()
    @StateObject private var haptics = HapticEngine()

    @AppStorage("hasCompletedOnboarding") private var hasCompletedOnboarding = false
    @State private var phase: AppPhase = .splash
    @Environment(\.scenePhase) private var scenePhase

    var body: some Scene {
        WindowGroup {
            RootView(phase: $phase)
                .environmentObject(store)
                .environmentObject(trial)
                .environmentObject(audio)
                .environmentObject(haptics)
                .environmentObject(Repository.shared)   // HomeView reads this
                // Dark only. Belt and braces alongside UIUserInterfaceStyle in Info.plist.
                .preferredColorScheme(.dark)
                .tint(LL.Palette.primary)
                .task {
                    audio.configure()
                    await haptics.prepare()
                    // Schedule "come back and train" reminders per the
                    // Settings → Milestone Notifications frequency.
                    MilestoneNotifier.reschedule()
                }
                .onChange(of: scenePhase) { _, newPhase in
                    // CoreHaptics tears its engine down on resign; rebuild on return.
                    if newPhase == .active { Task { await haptics.prepare() } }
                }
                .onOpenURL(perform: handleDeepLink)
        }
    }

    /// Entry point for `lastlonger://` links - today only the Live Activity's
    /// `lastlonger://session`, fired when the compact Dynamic Island is tapped.
    ///
    /// The activity only exists while a session is running, and the live HUD is
    /// already presented over Home, so tapping the island simply brings the app
    /// forward onto it - there is deliberately nothing to navigate here.
    ///
    /// It is NOT wired to launch a session: the app runs a session inside a
    /// `fullScreenCover` over the `.home` phase, so the phase alone cannot tell
    /// "no session" from "session running", and forcing Quick Start could try to
    /// present a second cover over the live one. The handler just claims the
    /// scheme so the tap opens the app cleanly.
    private func handleDeepLink(_ url: URL) {
        guard url.scheme == "lastlonger" else { return }
        // Reserved for future hosts (e.g. deep links into Stats). `session`
        // needs no action beyond the foreground the system already did.
    }
}

// MARK: - Root router

struct RootView: View {

    @Binding var phase: AppPhase
    @AppStorage("hasCompletedOnboarding") private var hasCompletedOnboarding = false

    @EnvironmentObject private var store: StoreManager
    @EnvironmentObject private var trial: TrialManager

    var body: some View {
        ZStack {
            LL.Palette.background.ignoresSafeArea()

            switch phase {
            case .splash:
                SplashView { advanceFromSplash() }
                    .transition(.opacity)

            case .onboarding:
                OnboardingFlow { persona in
                    // Persist the chosen coach so AppSettings picks it up
                    // (same UserDefaults key it loads from).
                    UserDefaults.standard.set(persona.rawValue, forKey: "ll.persona")
                    hasCompletedOnboarding = true
                    // After screen 5 ("Accept the Terms of Engagement"), show
                    // the paywall once. Dismissing it lands on Home.
                    phase = .paywall(.intro)
                }
                .transition(.opacity)

            case .paywall(let context):
                PaywallView(
                    context: context,
                    onUnlocked: { phase = .home },
                    onDismiss: { phase = .home }
                )
                .transition(.opacity)

            case .home:
                // RootTabView is the real tab bar: Home / Stats / Challenges /
                // Settings. (HomeView alone showed no tabs.)
                RootTabView()
                    .transition(.opacity)
            }
        }
        .animation(LL.Motion.stateFade, value: phase)
        // The gate reads entitlement from TrialManager so that non-View callers
        // (LiveSessionModel) can see it too. Mirror it here, at the one place
        // that is always mounted.
        .task { trial.setSubscribed(store.isUnlocked) }
        .onChange(of: store.isUnlocked) { _, unlocked in
            trial.setSubscribed(unlocked)
        }
    }

    /// Free download: the splash hands straight to onboarding, then Home.
    /// Entitlement is irrelevant here - it only decides what a session tap does.
    private func advanceFromSplash() {
        phase = hasCompletedOnboarding ? .home : .onboarding
    }
}

// MARK: - Audio session

/// Configures the shared session so AVSpeechSynthesizer and the binaural generator
/// keep playing while the user is in another app watching external media.
///
/// `.mixWithOthers` lets the external media keep playing.
/// `.duckOthers` drops its level for the duration of each coach utterance.
/// Requires `UIBackgroundModes: [audio]` in Info.plist — without it the session
/// is torn down the moment the app resigns active.
@MainActor
final class AudioSessionController: ObservableObject {

    private let log = Logger(subsystem: "com.lastlonger.app", category: "audio")
    @Published private(set) var isConfigured = false

    func configure() {
        let session = AVAudioSession.sharedInstance()
        do {
            try session.setCategory(
                .playback,
                mode: .spokenAudio,
                options: [.mixWithOthers, .duckOthers]
            )
            try session.setActive(true, options: [])
            isConfigured = true
        } catch {
            log.error("Audio session configuration failed: \(error.localizedDescription, privacy: .public)")
            isConfigured = false
        }
    }

    /// Static convenience for callers that don't hold the injected instance
    /// (e.g. CoachVoice). Mirrors `configure()`: spoken-audio playback that
    /// ducks/mixes with the user's external media rather than interrupting it.
    static func activateForCoaching(duckOthers: Bool = true) {
        let session = AVAudioSession.sharedInstance()
        let options: AVAudioSession.CategoryOptions = duckOthers
            ? [.mixWithOthers, .duckOthers]
            : [.mixWithOthers]
        try? session.setCategory(.playback, mode: .spokenAudio, options: options)
        try? session.setActive(true, options: [])
    }

    /// Call when a session ends so the user's media returns to full volume immediately
    /// rather than waiting for the system to notice we went idle.
    func deactivate() {
        do {
            try AVAudioSession.sharedInstance()
                .setActive(false, options: [.notifyOthersOnDeactivation])
        } catch {
            log.error("Audio session deactivation failed: \(error.localizedDescription, privacy: .public)")
        }
    }
}

// MARK: - Placeholders (replaced by Parts B and C)

struct OnboardingPlaceholderView: View {
    let onFinish: () -> Void
    var body: some View {
        VStack(spacing: 24) {
            DisplayText(text: "ONBOARDING", size: 26)
            FieldLabel(text: "Part B")
            Button("Continue", action: onFinish)
                .buttonStyle(PrimaryActionStyle())
        }
        .padding(LL.Metrics.gutter)
        .voidBackground()
    }
}

struct HomePlaceholderView: View {
    var body: some View {
        VStack(spacing: 12) {
            DisplayText(text: "LAST LONGER", size: 26)
            FieldLabel(text: "Part C")
        }
        .voidBackground()
    }
}
