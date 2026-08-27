//
//  MilestoneNotifier.swift
//  LAST LONGER
//
//  Local "come back and train" reminders, driven by the Settings →
//  Milestone Notifications frequency (Off / Daily / Every 2 days / Weekly).
//
//  Local notifications only — no server, no push token, nothing leaves the
//  device. Reschedule on launch so a frequency change takes effect next run.
//

import Foundation
import UserNotifications

enum MilestoneNotifier {

    /// Matches `MilestoneFrequency` in LLSettings and its UserDefaults key so
    /// this stays decoupled from the settings object graph.
    private static let defaultsKey = "ll.milestones"
    private static let requestID = "ll.milestone.reminder"

    /// Read the frequency, (re)requesting authorization and (re)scheduling a
    /// single repeating reminder. Call on launch and after the setting changes.
    static func reschedule() {
        let raw = UserDefaults.standard.string(forKey: defaultsKey) ?? "off"
        let center = UNUserNotificationCenter.current()
        center.removePendingNotificationRequests(withIdentifiers: [requestID])

        guard let interval = repeatInterval(for: raw) else { return }   // "off" → nothing

        center.requestAuthorization(options: [.alert, .sound]) { granted, _ in
            guard granted else { return }

            let content = UNMutableNotificationContent()
            content.title = "LAST LONGER"
            content.body = "Time to train. Keep the streak going."
            content.sound = .default

            // Repeating time-interval trigger. iOS requires >= 60s; all values
            // here are far above that.
            let trigger = UNTimeIntervalNotificationTrigger(timeInterval: interval, repeats: true)
            center.add(UNNotificationRequest(identifier: requestID, content: content, trigger: trigger))
        }
    }

    private static func repeatInterval(for raw: String) -> TimeInterval? {
        switch raw {
        case "daily":        return 24 * 3600
        case "everyTwoDays": return 48 * 3600
        case "weekly":       return 7 * 24 * 3600
        default:             return nil          // "off"
        }
    }
}
