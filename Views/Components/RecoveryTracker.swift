//
//  RecoveryTracker.swift
//  LAST LONGER
//
//  PART C-4 — recovery status.
//
//  The window is a USER SETTING, not an inferred physiological estimate.
//  Refractory period varies enormously with age, sleep, and individual
//  baseline, and there is no defensible way to compute it from tap logs and a
//  wrist heart rate. Shipping a number that looks derived would be inventing
//  clinical authority the app does not have. So: the user sets their own
//  baseline in Settings, the app does arithmetic against it, and the copy says
//  so plainly.
//

import SwiftUI

// MARK: - Model

struct RecoveryState {

    enum Status: Equatable {
        case unknown
        case recovering(hoursRemaining: Double)
        case ready
    }

    let lastEndGoal: Date?
    let windowHours: Int

    var hoursSince: Double? {
        lastEndGoal.map { Date().timeIntervalSince($0) / 3600 }
    }

    var status: Status {
        guard let hours = hoursSince else { return .unknown }
        let remaining = Double(windowHours) - hours
        return remaining > 0 ? .recovering(hoursRemaining: remaining) : .ready
    }

    /// 0...1 through the window.
    var fraction: Double {
        guard let hours = hoursSince, windowHours > 0 else { return 1 }
        return min(1, hours / Double(windowHours))
    }

    var lastFinishedText: String {
        guard let hours = hoursSince else { return "No end goal logged" }
        if hours < 1 { return "Last finished: \(Int(hours * 60)) min ago" }
        if hours < 48 { return "Last finished: \(Int(hours)) hours ago" }
        return "Last finished: \(Int(hours / 24)) days ago"
    }

    var statusText: String {
        switch status {
        case .unknown: return "No baseline yet"
        case .ready:   return "Ready"
        case .recovering(let remaining):
            return remaining >= 1
                ? "Still recovering · \(Int(remaining.rounded()))h left"
                : "Still recovering · under 1h left"
        }
    }

    var tint: Color {
        switch status {
        case .unknown:    return LL.C.dim
        case .ready:      return LL.C.green
        case .recovering: return LL.C.yellow
        }
    }

    var symbol: String {
        switch status {
        case .unknown:    return "questionmark.circle"
        case .ready:      return "checkmark.circle.fill"
        case .recovering: return "hourglass"
        }
    }

    static func from(sessions: [SessionRecord], windowHours: Int) -> RecoveryState {
        RecoveryState(lastEndGoal: sessions.last(where: \.reachedEndGoal)?.date,
                      windowHours: windowHours)
    }
}

// MARK: - Home card

struct RecoveryHomeCard: View {

    let state: RecoveryState

    var body: some View {
        HStack(spacing: 14) {
            ZStack {
                Circle()
                    .stroke(LL.C.hairline, lineWidth: 3)
                Circle()
                    .trim(from: 0, to: state.fraction)
                    .stroke(state.tint, style: StrokeStyle(lineWidth: 3, lineCap: .round))
                    .rotationEffect(.degrees(-90))
                Image(systemName: state.symbol)
                    .font(.system(size: 15, weight: .semibold))
                    .foregroundStyle(state.tint)
            }
            .frame(width: 48, height: 48)

            VStack(alignment: .leading, spacing: 4) {
                Text(state.statusText.uppercased())
                    .font(LLFont.pixel(10))
                    .foregroundStyle(LL.C.text)
                LLLabel(state.lastFinishedText, size: 9)
            }

            Spacer()
        }
        .padding(14)
        .crtPanel(tint: state.tint)
        .accessibilityElement(children: .ignore)
        .accessibilityLabel("Recovery status")
        .accessibilityValue("\(state.statusText). \(state.lastFinishedText)")
    }
}

// MARK: - Detail

struct RecoveryDetailSheet: View {

    let state: RecoveryState
    @ObservedObject var settings: AppSettings
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                GlitchText(text: "RECOVERY", size: 14)
                Spacer()
                Button { dismiss() } label: {
                    Image(systemName: "xmark.circle.fill")
                        .font(.system(size: 24))
                        .foregroundStyle(LL.C.dim)
                }
                .accessibilityLabel("Close")
            }

            RecoveryHomeCard(state: state)

            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    LLLabel("Baseline window", size: 10)
                    Spacer()
                    Text("\(settings.recoveryWindowHours)h")
                        .font(LLFont.readout(15))
                        .foregroundStyle(LL.C.text)
                }
                Slider(value: Binding(
                    get: { Double(settings.recoveryWindowHours) },
                    set: { settings.recoveryWindowHours = Int($0.rounded()) }
                ), in: 4...96, step: 2)
                .tint(LL.C.blue)
            }
            .padding(14)
            .crtPanel()

            Text("This window is yours to set. The app does not estimate your refractory period — it counts hours against the number you choose. Set it from what you actually observe.")
                .font(LLFont.terminal(10))
                .foregroundStyle(LL.C.dim)
                .fixedSize(horizontal: false, vertical: true)

            Spacer()
        }
        .padding(20)
        .background(LL.C.bg)
        .presentationDetents([.height(420)])
        .presentationDragIndicator(.visible)
    }
}

// MARK: - Preview

#Preview("Recovery") {
    VStack(spacing: 12) {
        RecoveryHomeCard(state: RecoveryState(
            lastEndGoal: Calendar.current.date(byAdding: .hour, value: -9, to: Date()),
            windowHours: 24))
        RecoveryHomeCard(state: RecoveryState(
            lastEndGoal: Calendar.current.date(byAdding: .hour, value: -40, to: Date()),
            windowHours: 24))
        RecoveryHomeCard(state: RecoveryState(lastEndGoal: nil, windowHours: 24))
    }
    .padding()
    .background(LL.C.bg)
    .preferredColorScheme(.dark)
}
