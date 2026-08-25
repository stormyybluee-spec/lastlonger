//
//  PaywallView.swift
//  LAST LONGER
//
//  One product, one button, one link out. No countdown timer, no
//  strikethrough "was $29.99", no plan comparison — there is only one plan.
//
//  Apple requires the price, the fact that it is a one-time purchase, and
//  reachable Terms and Privacy links on any screen that sells something.
//  Those are here for review compliance, kept quiet so they do not compete
//  with the button.
//

import StoreKit
import SwiftUI

public struct PaywallView: View {

    public var onUnlocked: () -> Void

    @StateObject private var store = StoreManager.shared
    @Environment(\.openURL) private var openURL

    public init(onUnlocked: @escaping () -> Void) {
        self.onUnlocked = onUnlocked
    }

    public var body: some View {
        ZStack {
            LL.Palette.void.ignoresSafeArea()
            RadialGridBackdrop(anchor: .center).ignoresSafeArea()

            VStack(spacing: 0) {
                Spacer()

                AngelWidget(state: .safe, size: 120, showsStreak: false)
                    .allowsHitTesting(false)

                Spacer().frame(height: 32)

                Wordmark(pixel: 6)

                Spacer().frame(height: 18)

                Text("Train your stamina. Master your control.")
                    .font(.system(size: 16, weight: .medium))
                    .foregroundStyle(LL.Palette.textDim)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 32)

                Spacer()

                unlockButton

                restoreLink

                if case .failed(let message) = store.state {
                    Text(message)
                        .font(.system(size: 13, weight: .medium))
                        .foregroundStyle(LL.Palette.rising)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 32)
                        .padding(.top, 10)
                        .transition(.opacity)
                }

                legalRow
            }
            .padding(.horizontal, LL.Metric.gutter)
            .padding(.bottom, 24)

            ScanlineOverlay(opacity: 0.08).ignoresSafeArea()
        }
        .preferredColorScheme(.dark)
        .animation(LL.Motion.stateFade, value: store.state)
        .onChange(of: store.isUnlocked) { _, unlocked in
            if unlocked {
                HapticEngine.shared.play(.unlock)
                ToneGenerator.shared.unlockFanfare()
                onUnlocked()
            }
        }
        .task { await store.loadProduct() }
    }

    // MARK: - Unlock

    private var unlockButton: some View {
        Button {
            Task { await store.purchase() }
        } label: {
            VStack(spacing: 4) {
                if store.state == .purchasing || store.state == .loading {
                    ProgressView()
                        .tint(LL.Palette.text)
                        .frame(height: 22)
                } else {
                    Text("UNLOCK FOREVER")
                        .font(.llLabel(16))
                        .kerning(2.2)
                        .foregroundStyle(LL.Palette.text)
                }

                Text("\(store.displayPrice) once. No subscription.")
                    .font(.system(size: 12, weight: .medium))
                    .foregroundStyle(LL.Palette.text.opacity(0.65))
            }
            .frame(maxWidth: .infinity)
            .frame(height: 72)
            .background(
                LinearGradient(
                    colors: [LL.Palette.edge, LL.Palette.void],
                    startPoint: .top,
                    endPoint: .bottom
                ),
                in: RoundedRectangle(cornerRadius: LL.Metric.corner, style: .continuous)
            )
            .overlay(
                RoundedRectangle(cornerRadius: LL.Metric.corner, style: .continuous)
                    .strokeBorder(LL.Palette.edge.opacity(0.7), lineWidth: 1)
            )
        }
        .buttonStyle(.plain)
        .disabled(store.product == nil || store.state == .purchasing)
        .opacity(store.product == nil ? 0.5 : 1)
    }

    private var restoreLink: some View {
        Button {
            Task { await store.restore() }
        } label: {
            Text("Restore purchase")
                .font(.system(size: 14, weight: .medium))
                .foregroundStyle(LL.Palette.textDim)
                .frame(maxWidth: .infinity)
                .frame(height: 44)
        }
        .buttonStyle(.plain)
    }

    private var legalRow: some View {
        HStack(spacing: 18) {
            Button("Terms") { open("https://lastlonger.app/terms") }
            Text("·").foregroundStyle(LL.Palette.rule)
            Button("Privacy") { open("https://lastlonger.app/privacy") }
        }
        .font(.system(size: 12, weight: .regular))
        .foregroundStyle(LL.Palette.rule)
        .buttonStyle(.plain)
        .padding(.top, 12)
    }

    private func open(_ string: String) {
        guard let url = URL(string: string) else { return }
        openURL(url)
    }
}

#Preview {
    PaywallView(onUnlocked: {})
}
