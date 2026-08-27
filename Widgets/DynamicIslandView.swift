//
//  DynamicIslandView.swift
//  LAST LONGER — Widget Extension target ONLY.
//
//  The Live Activity widget: the mini Angel on the Dynamic Island, plus the
//  Hold / Recover / Emergency buttons in the expanded region. See the header of
//  SessionDynamicIsland.swift for the target/entitlement setup this needs.
//
//  A tap on the compact island opens the app (ActivityKit's only tap gesture).
//  In-place actions are the App-Intent buttons in the expanded view - multi-tap
//  is not something ActivityKit supports.
//

import SwiftUI
import WidgetKit

#if canImport(ActivityKit)
import ActivityKit
#endif

// MARK: - State colours (self-contained; no app dependency)

private extension SessionActivityAttributes.ContentState.Phase {
    var tint: Color {
        switch self {
        case .safe:      return Color(red: 0.62, green: 0.78, blue: 1.00) // white/blue
        case .rising:    return Color(red: 1.00, green: 0.80, blue: 0.00) // amber
        case .hold:      return Color(red: 1.00, green: 0.23, blue: 0.19) // red
        case .emergency: return Color(red: 0.86, green: 0.08, blue: 0.08) // deep red
        case .cooldown:  return Color(red: 0.04, green: 0.52, blue: 1.00) // blue
        case .ended:     return Color.gray
        }
    }

    /// Seconds per breath; 0 = steady.
    var pulsePeriod: Double {
        switch self {
        case .hold:      return 0.8
        case .emergency: return 0.45
        case .cooldown:  return 3.0
        case .rising, .safe: return 2.2
        case .ended:     return 0
        }
    }

    var label: String {
        switch self {
        case .safe: return "Safe"
        case .rising: return "Rising"
        case .hold: return "Hold"
        case .emergency: return "Emergency"
        case .cooldown: return "Cooldown"
        case .ended: return "Done"
        }
    }
}

// MARK: - Mini Angel

/// A small, glowing angel that matches the main Angel's read: a haloed figure
/// with wings, tinted and pulsing by state. Kept light (SF Symbol + halo) so it
/// renders crisply at Dynamic Island sizes and needs nothing from the app.
struct MiniAngel: View {
    let phase: SessionActivityAttributes.ContentState.Phase
    var size: CGFloat = 22

    @State private var pulse = false

    var body: some View {
        ZStack {
            Image(systemName: "figure.wave")
                .font(.system(size: size, weight: .semibold))
                .foregroundStyle(phase.tint)
                // Halo ring above the figure.
                .overlay(alignment: .top) {
                    Circle()
                        .stroke(phase.tint, lineWidth: 1.5)
                        .frame(width: size * 0.32, height: size * 0.32)
                        .offset(y: -size * 0.30)
                }
                .shadow(color: phase.tint.opacity(pulse ? 0.9 : 0.5),
                        radius: pulse ? size * 0.5 : size * 0.28)
                .scaleEffect(phase == .emergency && pulse ? 1.08 : 1.0)
        }
        .frame(width: size * 1.6, height: size * 1.6)
        .onAppear {
            guard phase.pulsePeriod > 0 else { return }
            withAnimation(.easeInOut(duration: phase.pulsePeriod).repeatForever(autoreverses: true)) {
                pulse = true
            }
        }
        .accessibilityLabel("Angel, \(phase.label)")
    }
}

// MARK: - Action buttons (iOS 17 interactive widgets)

/// The three in-place actions. `Button(intent:)` runs the App Intent without
/// leaving the current app - on iOS 16 the buttons are simply not shown (a tap
/// on the island opens the app instead), which the availability check handles.
@available(iOS 17.0, *)
private struct IslandActions: View {
    var body: some View {
        HStack(spacing: 8) {
            actionButton("Hold", "flame.fill", .init(red: 1, green: 0.23, blue: 0.19), intent: LogHoldIntent())
            actionButton("Recover", "wind", .init(red: 0.2, green: 0.78, blue: 0.35), intent: LogRecoverIntent())
            actionButton("SOS", "exclamationmark.triangle.fill", .init(red: 0.86, green: 0.08, blue: 0.08), intent: EmergencyIntent())
        }
    }

    private func actionButton(_ title: String, _ symbol: String, _ tint: Color, intent: some AppIntent) -> some View {
        Button(intent: intent) {
            VStack(spacing: 2) {
                Image(systemName: symbol).font(.system(size: 14, weight: .bold))
                Text(title).font(.system(size: 9, weight: .semibold))
            }
            .foregroundStyle(tint)
            .frame(maxWidth: .infinity)
            .padding(.vertical, 6)
            .background(tint.opacity(0.14), in: RoundedRectangle(cornerRadius: 8))
        }
        .buttonStyle(.plain)
    }
}

// MARK: - Widget

struct SessionLiveActivityWidget: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: SessionActivityAttributes.self) { context in
            // Lock Screen / banner presentation. Required by ActivityKit even
            // though the Dynamic Island is the focus; kept minimal.
            lockScreen(context.state, title: context.attributes.sessionTitle)
                .activityBackgroundTint(.black)
                .activitySystemActionForegroundColor(.white)
        } dynamicIsland: { context in
            let phase = context.state.phase
            return DynamicIsland {
                DynamicIslandExpandedRegion(.leading) {
                    MiniAngel(phase: phase, size: 26)
                }
                DynamicIslandExpandedRegion(.trailing) {
                    VStack(alignment: .trailing, spacing: 2) {
                        Text(context.state.elapsedLabel)
                            .font(.system(size: 16, weight: .bold, design: .monospaced))
                            .foregroundStyle(.white)
                        Text(phase.label.uppercased())
                            .font(.system(size: 9, weight: .semibold))
                            .foregroundStyle(phase.tint)
                    }
                }
                DynamicIslandExpandedRegion(.bottom) {
                    if #available(iOS 17.0, *) {
                        IslandActions()
                    } else {
                        Text("Open LAST LONGER to log")
                            .font(.system(size: 10))
                            .foregroundStyle(.white.opacity(0.6))
                    }
                }
            } compactLeading: {
                MiniAngel(phase: phase, size: 16)
            } compactTrailing: {
                Text(context.state.elapsedLabel)
                    .font(.system(size: 13, weight: .semibold, design: .monospaced))
                    .foregroundStyle(phase.tint)
            } minimal: {
                MiniAngel(phase: phase, size: 15)
            }
            .widgetURL(URL(string: "lastlonger://session"))
            .keylineTint(phase.tint)
        }
    }

    private func lockScreen(_ state: SessionActivityAttributes.ContentState, title: String) -> some View {
        HStack(spacing: 12) {
            MiniAngel(phase: state.phase, size: 26)
            VStack(alignment: .leading, spacing: 2) {
                Text(title).font(.system(size: 13, weight: .bold)).foregroundStyle(.white)
                Text(state.phase.label).font(.system(size: 11)).foregroundStyle(state.phase.tint)
            }
            Spacer()
            Text(state.elapsedLabel)
                .font(.system(size: 20, weight: .bold, design: .monospaced))
                .foregroundStyle(.white)
        }
        .padding(14)
    }
}
