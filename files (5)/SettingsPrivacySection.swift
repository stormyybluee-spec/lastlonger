//
//  SettingsPrivacySection.swift
//  LAST LONGER
//
//  The Privacy and About blocks. These two panels are the app's entire
//  trust argument, so they say exactly what is true and nothing more.
//

import SwiftUI

struct SettingsPrivacySection: View {

    @EnvironmentObject private var haptics: HapticEngine
    @State private var confirmingDelete = false

    let onExport: () -> Void
    let onDeleteAll: () -> Void

    private var versionString: String {
        let v = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String ?? "1.0"
        let b = Bundle.main.infoDictionary?["CFBundleVersion"] as? String ?? "1"
        return "\(v) (\(b))"
    }

    var body: some View {
        VStack(spacing: LL.Metrics.stackSpacing) {

            // MARK: Privacy
            CRTPanel(tint: LL.Palette.hairlineData, showsGrid: true) {
                VStack(alignment: .leading, spacing: 16) {
                    FieldLabel(text: "Privacy", color: LL.Palette.data)

                    HStack(alignment: .top, spacing: 12) {
                        LabelledSymbol(symbol: "lock.shield", size: 20, color: LL.Palette.data,
                                       decorative: true)
                        Text(LL.Copy.privacyLine)
                            .font(PixelFont.label(14, weight: .semibold))
                            .foregroundStyle(LL.Palette.textPrimary)
                    }

                    Text("No account. No server. No analytics. No microphone, camera, or screen recording. Sessions are stored locally and are deleted with the app.")
                        .font(PixelFont.label(12, weight: .regular))
                        .foregroundStyle(LL.Palette.textSecondary)
                        .fixedSize(horizontal: false, vertical: true)

                    Divider().overlay(LL.Palette.hairline)

                    Button {
                        haptics.play(.selection)
                        onExport()
                    } label: {
                        HStack {
                            LabelledSymbol(symbol: "square.and.arrow.up", size: 16,
                                           color: LL.Palette.textPrimary, decorative: true)
                            Text("Export data")
                            Spacer()
                            Text("CSV / JSON")
                                .font(PixelFont.label(11))
                                .foregroundStyle(LL.Palette.textTertiary)
                        }
                    }
                    .buttonStyle(OutlineActionStyle())
                    .accessibilityLabel("Export data as CSV or JSON")

                    Button(role: .destructive) {
                        haptics.play(.warning)
                        confirmingDelete = true
                    } label: {
                        HStack {
                            LabelledSymbol(symbol: "trash.fill", size: 16,
                                           color: LL.Palette.primary, decorative: true)
                            Text("Delete all data")
                            Spacer()
                        }
                    }
                    .buttonStyle(OutlineActionStyle(tint: LL.Palette.primary))
                    .accessibilityHint("Permanently removes every session, badge, and setting on this device.")
                }
            }

            // MARK: About
            CRTPanel {
                VStack(alignment: .leading, spacing: 14) {
                    FieldLabel(text: "About")

                    LabeledRow(label: "Version", value: versionString)

                    Divider().overlay(LL.Palette.hairline)

                    // Required disclaimer. Do not reword, do not hide behind a link.
                    Text(LL.Copy.disclaimer)
                        .font(PixelFont.label(12, weight: .medium))
                        .foregroundStyle(LL.Palette.textSecondary)
                        .fixedSize(horizontal: false, vertical: true)
                        .accessibilityAddTraits(.isStaticText)

                    Text("Persistent difficulty with ejaculatory control, pelvic floor pain, or erectile function is worth raising with a clinician.")
                        .font(PixelFont.label(11, weight: .regular))
                        .foregroundStyle(LL.Palette.textTertiary)
                        .fixedSize(horizontal: false, vertical: true)
                }
            }
        }
        .confirmationDialog(
            "Delete all data?",
            isPresented: $confirmingDelete,
            titleVisibility: .visible
        ) {
            Button("Delete everything", role: .destructive) {
                haptics.play(.sessionEnd)
                onDeleteAll()
                Accessibility.announce("All data deleted.")
            }
            Button("Cancel", role: .cancel) { }
        } message: {
            Text("Every session, badge, streak, and setting is removed from this device. This cannot be undone.")
        }
    }
}

// MARK: - Row

private struct LabeledRow: View {
    let label: String
    let value: String

    var body: some View {
        HStack {
            Text(label)
                .font(PixelFont.label(12))
                .textCase(.uppercase)
                .tracking(1.2)
                .foregroundStyle(LL.Palette.textSecondary)
            Spacer(minLength: 12)
            Text(value)
                .font(PixelFont.telemetry(13))
                .foregroundStyle(LL.Palette.textPrimary)
        }
        .accessibilityElement(children: .combine)
    }
}

#Preview {
    ScrollView {
        SettingsPrivacySection(onExport: {}, onDeleteAll: {})
            .padding(LL.Metrics.gutter)
    }
    .voidBackground()
    .environmentObject(HapticEngine())
}
