//
//  SessionDynamicIsland.swift
//  LAST LONGER
//
//  ┌─────────────────────────────────────────────────────────────────────────┐
//  │  THIS FILE AND DynamicIslandView.swift ARE A LIVE ACTIVITY SCAFFOLD.      │
//  │  They do NOT belong in the main app target on their own.                  │
//  │                                                                           │
//  │  To ship the Dynamic Island you must, in Xcode:                           │
//  │   1. File > New > Target > Widget Extension (check "Include Live          │
//  │      Activity"). Call it e.g. "LastLongerWidgets".                        │
//  │   2. Add DynamicIslandView.swift to that new target.                      │
//  │   3. Add THIS file to BOTH targets (app + widget) - the app starts and    │
//  │      updates the Activity, the widget renders it, so both need            │
//  │      `SessionActivityAttributes`.                                         │
//  │   4. Add the App Intents (FocusModeController.swift's LogHoldIntent etc.) │
//  │      to the widget target too, so the buttons can call them.              │
//  │   5. In the APP's Info.plist add:  NSSupportsLiveActivities = YES         │
//  │   6. Call SessionLiveActivityController.shared.start(...) when a session  │
//  │      begins, .update(...) on state changes, and .end() when it ends.      │
//  │                                                                           │
//  │  WHAT IS AND ISN'T POSSIBLE on the Dynamic Island:                        │
//  │   - Multi-tap (tap once = Hold, twice = Recover…) is NOT supported by     │
//  │     ActivityKit. A tap on the compact island only opens the app.          │
//  │   - The supported in-place control is Buttons backed by App Intents       │
//  │     (iOS 17+), shown in the EXPANDED region. That is what this scaffold    │
//  │     does: Hold / Recover / Emergency buttons.                             │
//  └─────────────────────────────────────────────────────────────────────────┘
//

import Foundation

#if canImport(ActivityKit)
import ActivityKit
#endif

// MARK: - Activity attributes (shared: app + widget)

/// The static + dynamic data for the session Live Activity. `ContentState` is
/// the part that changes during the session and is pushed with each update.
struct SessionActivityAttributes: ActivityAttributes {

    public struct ContentState: Codable, Hashable {
        /// Mirrors the live Angel's visual state. A plain string enum so it can
        /// cross the process boundary into the widget without importing the
        /// app's `AngelVisualState` (which carries a SwiftUI Color).
        var phase: Phase
        /// "12:34" elapsed, formatted by the app.
        var elapsedLabel: String
        /// Threshold streak, shown as a small number.
        var streak: Int

        enum Phase: String, Codable, Hashable {
            case safe, rising, hold, emergency, cooldown, ended
        }
    }

    /// Constant for the life of the activity.
    var sessionTitle: String
}

// MARK: - App-side controller

#if canImport(ActivityKit)

/// The app's handle on the Live Activity. Call `start` when a session begins,
/// `update` whenever the Angel state or clock changes, and `end` when it stops.
/// Every call is a no-op on OS versions or devices without Live Activities, and
/// when the user has them switched off, so callers never have to branch.
@available(iOS 16.1, *)
@MainActor
final class SessionLiveActivityController {

    static let shared = SessionLiveActivityController()
    private init() {}

    private var activity: Activity<SessionActivityAttributes>?

    var isSupported: Bool {
        ActivityAuthorizationInfo().areActivitiesEnabled
    }

    func start(title: String, state: SessionActivityAttributes.ContentState) {
        guard isSupported, activity == nil else { return }
        let attributes = SessionActivityAttributes(sessionTitle: title)
        do {
            if #available(iOS 16.2, *) {
                activity = try Activity.request(
                    attributes: attributes,
                    content: .init(state: state, staleDate: nil)
                )
            } else {
                activity = try Activity.request(attributes: attributes, contentState: state)
            }
        } catch {
            #if DEBUG
            print("LiveActivity start failed: \(error)")
            #endif
        }
    }

    func update(_ state: SessionActivityAttributes.ContentState) {
        guard let activity else { return }
        Task {
            if #available(iOS 16.2, *) {
                await activity.update(.init(state: state, staleDate: nil))
            } else {
                await activity.update(using: state)
            }
        }
    }

    func end() {
        guard let activity else { return }
        let current = activity
        self.activity = nil
        Task {
            if #available(iOS 16.2, *) {
                await current.end(nil, dismissalPolicy: .immediate)
            } else {
                await current.end(dismissalPolicy: .immediate)
            }
        }
    }
}

#endif
