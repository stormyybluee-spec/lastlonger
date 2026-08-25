//
//  AccessibilityKit.swift
//  LAST LONGER
//
//  VoiceOver and Dynamic Type support.
//
//  Two rules this file exists to enforce:
//   1. No SF Symbol ever reaches VoiceOver as its raw name. "flame.fill" must never
//      be spoken. Symbols are either labelled or hidden — there is no third option.
//   2. Clinical vocabulary is what VoiceOver speaks. The spoken interface is the one
//      most likely to be overheard, so it stays the most clinical surface in the app.
//

import SwiftUI
#if canImport(UIKit)
import UIKit
#endif

// MARK: - Announcements

enum Accessibility {

    /// Speaks a message without moving VoiceOver focus. Used for state changes the
    /// user must know about but that shouldn't steal their place in the interface.
    static func announce(_ message: String) {
        #if canImport(UIKit)
        guard UIAccessibility.isVoiceOverRunning else { return }
        // A short delay lets any in-flight layout announcement finish first,
        // otherwise UIKit silently drops ours.
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            UIAccessibility.post(notification: .announcement, argument: message)
        }
        #endif
    }

    /// High-priority interruption. Emergency protocol only.
    static func announceUrgent(_ message: String) {
        #if canImport(UIKit)
        guard UIAccessibility.isVoiceOverRunning else { return }
        let attributed = NSAttributedString(
            string: message,
            attributes: [.accessibilitySpeechAnnouncementPriority:
                            UIAccessibilityPriority.high.rawValue]
        )
        UIAccessibility.post(notification: .announcement, argument: attributed)
        #endif
    }

    static var isVoiceOverRunning: Bool {
        #if canImport(UIKit)
        return UIAccessibility.isVoiceOverRunning
        #else
        return false
        #endif
    }
}

// MARK: - Symbol label registry

/// Every SF Symbol used anywhere in LAST LONGER, with the phrase VoiceOver speaks.
/// Adding a symbol to the app without adding it here is a review-blocking bug.
enum SymbolLabel {

    private static let map: [String: String] = [
        // Navigation
        "house.fill":                    "Home",
        "chart.bar.fill":                "Statistics",
        "chart.bar.xaxis":               "Statistics",
        "trophy.fill":                   "Challenges",
        "gearshape.fill":                "Settings",

        // Session
        "flame.fill":                    "Last Longer",
        "figure.wave":                   "Coach",
        "waveform.path":                 "Voice coach",
        "bolt.fill":                     "Intensity",
        "wind":                          "Breath pacer",
        "nosign":                        "No release",
        "cross.case.fill":               "Emergency protocol",
        "speaker.slash.fill":            "Silent mode",
        "bolt.horizontal.circle.fill":   "Consecutive holds",

        // Progress
        "crown.fill":                    "Endurance",
        "shield.fill":                   "Control",
        "calendar":                      "Consistency",
        "arrow.up.circle.fill":          "Improvement",
        "100.circle.fill":               "Veteran",
        "star.circle.fill":              "Legend",
        "graduationcap.fill":            "Program complete",

        // System
        "applewatch":                    "Apple Watch",
        "lock.shield":                   "Privacy",
        "mic.slash":                     "No microphone",
        "clock.fill":                    "Pending",
        "arrow.clockwise":               "Retry",
        "exclamationmark.triangle.fill": "Warning",
        "square.and.arrow.up":           "Export",
        "trash.fill":                    "Delete"
    ]

    /// Returns the spoken label, or nil if the symbol is undocumented.
    static func label(for symbol: String) -> String? { map[symbol] }
}

// MARK: - Labelled symbol

/// The only sanctioned way to place an SF Symbol in this app.
/// Decorative symbols pass `decorative: true` and are hidden from VoiceOver entirely.
struct LabelledSymbol: View {

    let symbol: String
    var size: CGFloat = 17
    var weight: Font.Weight = .semibold
    var color: Color = LL.Palette.textPrimary
    var decorative: Bool = false
    /// Overrides the registry entry when context demands something more specific.
    var overrideLabel: String? = nil

    var body: some View {
        Image(systemName: symbol)
            .font(.system(size: size, weight: weight))
            .foregroundStyle(color)
            .accessibilityHidden(decorative)
            .modifier(LabelIfNeeded(
                label: decorative ? nil : (overrideLabel ?? SymbolLabel.label(for: symbol))
            ))
    }

    private struct LabelIfNeeded: ViewModifier {
        let label: String?
        func body(content: Content) -> some View {
            if let label {
                content.accessibilityLabel(label)
            } else {
                content
            }
        }
    }
}

// MARK: - Dynamic Type

extension View {

    /// Applies a minimum scale floor only where truncation would lose meaning,
    /// e.g. a live telemetry numeral. Never used on body copy — body copy wraps.
    func telemetryScaling() -> some View {
        self.minimumScaleFactor(0.6)
            .lineLimit(1)
            .allowsTightening(true)
    }

    /// Guarantees the 60pt tap floor even when a control's content is small.
    func tapTargetFloor() -> some View {
        self.frame(minWidth: LL.Metrics.minTapTarget,
                   minHeight: LL.Metrics.minTapTarget)
            .contentShape(Rectangle())
    }

    /// Marks a live-updating value so VoiceOver re-reads it in place instead of
    /// announcing a whole new element. Used by the session counters.
    func liveValue(_ value: String) -> some View {
        self.accessibilityValue(value)
            .accessibilityAddTraits(.updatesFrequently)
    }
}

// MARK: - Session control accessibility

/// Accessibility descriptions for the floating coach widget's gestures.
/// VoiceOver users cannot discover a triple-tap, so each gesture is also exposed as
/// a custom action on the widget element.
enum WidgetAccessibility {

    static let elementLabel = "Session coach"

    static func value(state: String, holds: Int) -> String {
        "\(state). \(holds) consecutive \(holds == 1 ? "hold" : "holds")."
    }

    static let hint = "Use the rotor actions to log a hold, back off, or end the session."

    struct Actions {
        var logHold: () -> Void
        var backOff: () -> Void
        var emergency: () -> Void
        var endSession: () -> Void
    }
}

extension View {
    /// Attaches the four gesture equivalents as VoiceOver custom actions.
    func widgetAccessibilityActions(_ actions: WidgetAccessibility.Actions) -> some View {
        self
            .accessibilityAction(named: Text("Log hold at threshold"), actions.logHold)
            .accessibilityAction(named: Text("Log back off"), actions.backOff)
            .accessibilityAction(named: Text("Emergency protocol"), actions.emergency)
            .accessibilityAction(named: Text("End session"), actions.endSession)
    }
}
