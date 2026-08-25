//
//  PaywallView.swift
//  LAST LONGER
//
//  One product. One price. One button. Restore link sits directly beneath it —
//  App Review rejects non-consumables that bury or omit restore.
//

import SwiftUI
import StoreKit

struct PaywallView: View {

    let onUnlocked: () -> Void

    @EnvironmentObject private var store: StoreManager
    @EnvironmentObject private var haptics: HapticEngine
    @Environment(\.accessibilityReduceMotion) private var reduceMotion

    @ScaledMetric(relativeTo: .largeTitle) private var markSize: CGFloat = 40

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 28) {

                header

                CRTPanel(tint: LL.Palette.hairlineData, showsGrid: true) {
                    VStack(alignment: .leading, spacing: 18) {
                        FieldLabel(text: "Included", color: LL.Palette.data)
                        VStack(alignment: .leading, spacing: 12) {
                            capability("waveform.path", "Voice coach", "Four personas. On-device speech.")
                            capability("applewatch", "Apple Watch control", "Log without touching your phone.")
                            capability("chart.bar.xaxis", "Full telemetry", "Every session, charted and local.")
                            capability("lock.shield", "No account", "Nothing is uploaded. Ever.")
                        }
                    }
                }

                purchaseBlock

                Text(LL.Copy.disclaimer)
                    .font(PixelFont.label(11, weight: .regular))
                    .foregroundStyle(LL.Palette.textTertiary)
                    .frame(maxWidth: .infinity, alignment: .center)
            }
            .padding(LL.Metrics.gutter)
            .padding(.bottom, 40)
        }
        .scrollBounceBehavior(.basedOnSize)
        .voidBackground()
        .onChange(of: store.isUnlocked) { _, unlocked in
            guard unlocked else { return }
            haptics.play(.sessionEnd)
            onUnlocked()
        }
    }

    // MARK: - Header

    private var header: some View {
        VStack(alignment: .leading, spacing: 14) {
            Image(systemName: "flame.fill")
                .font(.system(size: markSize, weight: .black))
                .foregroundStyle(
                    LinearGradient(colors: [LL.Palette.warning, LL.Palette.primary],
                                   startPoint: .top, endPoint: .bottom)
                )
                .accessibilityHidden(true)

            DisplayText(text: "LAST LONGER", size: 32, tracking: 3)
                .accessibilityAddTraits(.isHeader)

            Text("Train your stamina. Master your control.")
                .font(PixelFont.label(15, weight: .medium))
                .foregroundStyle(LL.Palette.textSecondary)
        }
        .padding(.top, 32)
        .frame(maxWidth: .infinity, alignment: .leading)
    }

    private func capability(_ symbol: String, _ title: String, _ detail: String) -> some View {
        HStack(alignment: .top, spacing: 14) {
            Image(systemName: symbol)
                .font(.system(size: 17, weight: .semibold))
                .foregroundStyle(LL.Palette.data)
                .frame(width: 24)
                .accessibilityHidden(true)

            VStack(alignment: .leading, spacing: 3) {
                Text(title)
                    .font(PixelFont.label(14, weight: .semibold))
                    .foregroundStyle(LL.Palette.textPrimary)
                Text(detail)
                    .font(PixelFont.label(12, weight: .regular))
                    .foregroundStyle(LL.Palette.textSecondary)
            }
        }
        .accessibilityElement(children: .combine)
        .accessibilityLabel("\(title). \(detail)")
    }

    // MARK: - Purchase

    private var purchaseBlock: some View {
        VStack(spacing: 14) {

            Button {
                haptics.play(.selection)
                Task { await store.purchase() }
            } label: {
                HStack(spacing: 10) {
                    if store.state == .purchasing {
                        ProgressView().tint(.white)
                    }
                    Text("UNLOCK FOREVER — \(store.displayPrice)")
                }
            }
            .buttonStyle(PrimaryActionStyle())
            .disabled(store.state == .purchasing || store.state == .restoring)
            .accessibilityLabel("Unlock forever, \(store.displayPrice), one time purchase")
            .accessibilityHint("Unlocks every feature. No subscription.")

            Button("Restore purchase") {
                Task { await store.restore() }
            }
            .buttonStyle(OutlineActionStyle())
            .disabled(store.state == .purchasing || store.state == .restoring)
            .accessibilityHint("Recovers a previous purchase made with this Apple Account.")

            Text("One-time purchase. No subscription. No account.")
                .font(PixelFont.label(11, weight: .regular))
                .textCase(.uppercase)
                .tracking(1)
                .foregroundStyle(LL.Palette.textTertiary)

            statusLine
        }
    }

    @ViewBuilder
    private var statusLine: some View {
        switch store.state {
        case .failed(let message):
            Label(message, systemImage: "exclamationmark.triangle.fill")
                .font(PixelFont.label(12, weight: .medium))
                .foregroundStyle(LL.Palette.warning)
                .multilineTextAlignment(.center)
                .padding(.top, 4)
                .transition(.opacity)
                .accessibilityAddTraits(.isStaticText)
                .onAppear {
                    haptics.play(.warning)
                    Accessibility.announce(message)
                }

        case .pending:
            Label("Waiting for approval on this account.", systemImage: "clock.fill")
                .font(PixelFont.label(12, weight: .medium))
                .foregroundStyle(LL.Palette.textSecondary)
                .padding(.top, 4)

        case .restoring:
            Label("Checking your Apple Account…", systemImage: "arrow.clockwise")
                .font(PixelFont.label(12, weight: .medium))
                .foregroundStyle(LL.Palette.textSecondary)
                .padding(.top, 4)

        default:
            EmptyView()
        }
    }
}

#Preview {
    PaywallView(onUnlocked: {})
        .environmentObject(StoreManager())
        .environmentObject(HapticEngine())
}
