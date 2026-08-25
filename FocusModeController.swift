//
//  FocusModeController.swift
//  LAST LONGER
//
//  READ THIS BEFORE WIRING THE SETTINGS TOGGLE.
//
//  The V4 spec says the app "auto-enables a custom Focus Mode when a session
//  starts." iOS does not permit that. There is no public API — on any iOS version —
//  for an app to turn a Focus on or off. Apple reserves that for the user, Shortcuts
//  automations, and the system.
//
//  What IS available, and what this file implements:
//
//   1. INFocusStatusCenter (iOS 15+) — read whether a Focus is currently active,
//      after the user grants authorization. Requires NSFocusStatusUsageDescription.
//
//   2. Focus Filters (iOS 16+) — declare a SetFocusFilterIntent so LAST LONGER
//      appears under Settings > Focus > Training > Focus Filters. The user attaches
//      it once; from then on the app changes its own behaviour whenever that Focus
//      turns on. This is the sanctioned inverse of what the spec asked for: the
//      Focus drives the app, not the app the Focus.
//
//   3. An App Intent + donated shortcut so the user can build the automation
//      "When I start a session in LAST LONGER, turn on Training Focus" themselves,
//      in two taps, in the Shortcuts app.
//
//  Ship 2 and 3, and word the Settings row honestly: "Set up Training Focus"
//  rather than "Auto-enable Focus". Anything that claims automatic control is a
//  promise the OS will not keep.
//

import Foundation
import SwiftUI
import Intents
import AppIntents
import os

// MARK: - Focus status

@MainActor
final class FocusModeController: ObservableObject {

    enum Authorization {
        case notDetermined, authorized, denied, restricted
    }

    @Published private(set) var authorization: Authorization = .notDetermined
    @Published private(set) var isFocusActive: Bool = false
    /// Set by the Focus Filter when the user's Training Focus turns on.
    @AppStorage("trainingFocusFilterEngaged") private(set) var filterEngaged = false

    private let log = Logger(subsystem: "com.lastlonger.app", category: "focus")

    func refreshAuthorization() {
        switch INFocusStatusCenter.default.authorizationStatus {
        case .authorized:    authorization = .authorized
        case .denied:        authorization = .denied
        case .restricted:    authorization = .restricted
        case .notDetermined: authorization = .notDetermined
        @unknown default:    authorization = .notDetermined
        }
        readStatus()
    }

    /// Ask once, in Settings, with a clear explanation of what it's for.
    /// Never prompt mid-session.
    func requestAuthorization() async {
        await withCheckedContinuation { continuation in
            INFocusStatusCenter.default.requestAuthorization { status in
                Task { @MainActor in
                    switch status {
                    case .authorized: self.authorization = .authorized
                    case .denied:     self.authorization = .denied
                    case .restricted: self.authorization = .restricted
                    default:          self.authorization = .notDetermined
                    }
                    self.readStatus()
                    continuation.resume()
                }
            }
        }
    }

    private func readStatus() {
        guard authorization == .authorized else {
            isFocusActive = false
            return
        }
        isFocusActive = INFocusStatusCenter.default.focusStatus.isFocused ?? false
    }

    /// Copy for the Settings row. States plainly what the OS allows.
    var settingsFooter: String {
        switch authorization {
        case .authorized:
            return "Attach LAST LONGER to a Focus in Settings > Focus. Sessions will dim notifications while that Focus is on."
        case .denied, .restricted:
            return "Focus access is off. Turn it on in Settings > Privacy & Security > Focus."
        case .notDetermined:
            return "Allow Focus access so sessions can respond when your Training Focus is on."
        }
    }
}

// MARK: - Focus Filter (iOS 16+)

/// Appears under Settings > Focus > [any Focus] > Focus Filters > LAST LONGER.
/// When that Focus activates, iOS calls `perform()` and the app records it.
struct TrainingFocusFilter: SetFocusFilterIntent {

    static var title: LocalizedStringResource = "Training mode"
    static var description = IntentDescription(
        "Puts LAST LONGER into training mode while this Focus is on: quick start on launch, notifications suppressed."
    )

    @Parameter(title: "Quick start on launch", default: true)
    var quickStartOnLaunch: Bool

    @Parameter(title: "Silent mode", default: false)
    var silentMode: Bool

    var displayRepresentation: DisplayRepresentation {
        DisplayRepresentation(
            title: "Training mode",
            subtitle: quickStartOnLaunch ? "Quick start enabled" : "Standard launch"
        )
    }

    func perform() async throws -> some IntentResult {
        let defaults = UserDefaults.standard
        defaults.set(true, forKey: "trainingFocusFilterEngaged")
        defaults.set(quickStartOnLaunch, forKey: "focusQuickStartOnLaunch")
        defaults.set(silentMode, forKey: "focusSilentMode")
        return .result()
    }
}

// MARK: - Session App Intent

/// Exposes "Start a session" to Shortcuts and Siri. The user pairs this with
/// "Turn on Training Focus" in a single Shortcuts automation, which is the only
/// supported route to the behaviour the spec describes.
struct StartSessionIntent: AppIntent {

    static var title: LocalizedStringResource = "Start a session"
    static var description = IntentDescription("Opens LAST LONGER and begins a quick session.")
    static var openAppWhenRun: Bool = true

    func perform() async throws -> some IntentResult {
        UserDefaults.standard.set(true, forKey: "pendingQuickStart")
        return .result()
    }
}

struct LastLongerShortcuts: AppShortcutsProvider {
    static var appShortcuts: [AppShortcut] {
        AppShortcut(
            intent: StartSessionIntent(),
            phrases: [
                "Start a session in \(.applicationName)",
                "Begin training in \(.applicationName)"
            ],
            shortTitle: "Start a session",
            systemImageName: "flame.fill"
        )
    }
}
