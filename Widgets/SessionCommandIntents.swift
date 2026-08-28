//
//  SessionCommandIntents.swift
//  LAST LONGER
//
//  The in-session voice commands - Log a hold / recover, Emergency, End - and
//  the notification the running session listens for.
//
//  TARGET MEMBERSHIP: add this file to BOTH the app target and the Widget
//  Extension target. The app runs the intents (and observes the notification in
//  LiveSessionModel); the widget only needs the types to build its
//  `Button(intent:)` controls. It imports nothing app-specific, so it is safe in
//  the extension - unlike FocusModeController, which pulls in Focus-status APIs.
//
//  Each intent posts a local notification the live session observes;
//  openAppWhenRun = false so logging never yanks the user out of their media. If
//  no session is active the post is a harmless no-op.
//

import Foundation
import AppIntents

extension Notification.Name {
    static let llSessionCommand = Notification.Name("ll.session.command")
}

/// The vocabulary shared by the Siri intents, the Live Activity buttons and the
/// live model's handler.
enum SessionCommand: String {
    case hold, recover, emergency, end

    func post() {
        NotificationCenter.default.post(name: .llSessionCommand, object: rawValue)
    }
}

struct LogHoldIntent: AppIntent {
    static var title: LocalizedStringResource = "Log a hold"
    static var description = IntentDescription("Logs a Hold in the running session - you've reached the threshold.")
    static var openAppWhenRun: Bool = false
    func perform() async throws -> some IntentResult & ProvidesDialog {
        SessionCommand.hold.post()
        return .result(dialog: "Hold logged.")
    }
}

struct LogRecoverIntent: AppIntent {
    static var title: LocalizedStringResource = "Log a recover"
    static var description = IntentDescription("Logs a Recover in the running session - you've backed off.")
    static var openAppWhenRun: Bool = false
    func perform() async throws -> some IntentResult & ProvidesDialog {
        SessionCommand.recover.post()
        return .result(dialog: "Recover logged.")
    }
}

struct EmergencyIntent: AppIntent {
    static var title: LocalizedStringResource = "Emergency protocol"
    static var description = IntentDescription("Triggers the Emergency Protocol in the running session.")
    static var openAppWhenRun: Bool = false
    func perform() async throws -> some IntentResult & ProvidesDialog {
        SessionCommand.emergency.post()
        return .result(dialog: "Emergency protocol.")
    }
}

struct EndSessionIntent: AppIntent {
    static var title: LocalizedStringResource = "End the session"
    static var description = IntentDescription("Ends the running session.")
    static var openAppWhenRun: Bool = false
    func perform() async throws -> some IntentResult & ProvidesDialog {
        SessionCommand.end.post()
        return .result(dialog: "Ending the session.")
    }
}
