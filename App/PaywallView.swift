//
//  PaywallView.swift
//  LAST LONGER
//
//  Two ways in, two screens.
//
//  `.lockedMode` is the original Armory listing: the user reached past the
//  Trial for a mode it never included, so the screen argues the feature set.
//  `.trialComplete` is the Trial debrief: both rounds are spent and the user
//  has their own telemetry on file, so the screen argues from their numbers.
//
//  Both sell the same two subscriptions and both carry Restore plus the
//  auto-renewal disclosure App Review requires on any subscription paywall.
//

import SwiftUI
import StoreKit

struct PaywallView: View {

    /// Which argument this presentation makes. Defaults to the Armory listing.
    var context: PaywallContext = .trialComplete
    /// Fired once an entitlement lands. The presenter dismisses.
    let onUnlocked: () -> Void
    /// Fired when the user backs out without buying.
    var onDismiss: (() -> Void)? = nil

    @EnvironmentObject private var store: StoreManager
    @EnvironmentObject private var trial: TrialManager
    @EnvironmentObject private var haptics: HapticEngine
    @Environment(\.openURL) private var openURL

    @ScaledMetric(relativeTo: .largeTitle) private var markSize: CGFloat = 40

    /// Which option the user actually tapped, so only that button shows the
    /// spinner instead of both going busy at once.
    @State private var purchasingTier: StoreManager.Tier?

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 26) {
                switch context {
                case .trialComplete:          trialDebrief
                case .lockedMode(let mode):   armoryListing(blocked: mode)
                case .intro:                  armoryListing(blocked: nil)
                }

                purchaseBlock
                legalBlock
            }
            .padding(LL.Metrics.gutter)
            .padding(.bottom, 40)
        }
        .scrollBounceBehavior(.basedOnSize)
        .voidBackground()
        .overlay(alignment: .topTrailing) { closeButton }
        .onChange(of: store.isUnlocked) { _, unlocked in
            guard unlocked else { return }
            haptics.play(.sessionEnd)
            onUnlocked()
        }
    }

    // MARK: - Close

    @ViewBuilder
    private var closeButton: some View {
        if let onDismiss {
            Button {
                haptics.play(.selection)
                onDismiss()
            } label: {
                Image(systemName: "xmark")
                    .font(.system(size: 13, weight: .bold))
                    .foregroundStyle(LL.Palette.textSecondary)
                    .frame(width: 44, height: 44)
                    .contentShape(Rectangle())
            }
            .buttonStyle(.plain)
            .padding(.trailing, 6)
            .accessibilityLabel("Close")
        }
    }

    // MARK: - Trial debrief (both rounds spent)

    private var trialDebrief: some View {
        VStack(alignment: .leading, spacing: 22) {

            // Social proof strip. SF Symbol, never an emoji.
            HStack(alignment: .top, spacing: 10) {
                Image(systemName: "flame.fill")
                    .font(.system(size: 13, weight: .bold))
                    .foregroundStyle(LL.Palette.warning)
                    .accessibilityHidden(true)
                Text("88% of trainees who make it to Round 2 unlock the Veteran Challenge.")
                    .font(PixelFont.label(12, weight: .semibold))
                    .foregroundStyle(LL.Palette.warning)
                    .fixedSize(horizontal: false, vertical: true)
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 10)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(LL.Palette.warning.opacity(0.10))
            .overlay(
                RoundedRectangle(cornerRadius: LL.Metrics.buttonRadius, style: .continuous)
                    .strokeBorder(LL.Palette.warning.opacity(0.35), lineWidth: 1)
            )
            .clipShape(RoundedRectangle(cornerRadius: LL.Metrics.buttonRadius, style: .continuous))
            .accessibilityElement(children: .combine)

            VStack(alignment: .leading, spacing: 10) {
                DisplayText(text: "TRIAL COMPLETE", size: 28, tracking: 2)
                    .accessibilityAddTraits(.isHeader)
                Text("You are in the bottom 80% of starters.")
                    .font(PixelFont.label(16, weight: .semibold))
                    .foregroundStyle(LL.Palette.textSecondary)
                    .fixedSize(horizontal: false, vertical: true)
            }

            roundReadout

            Text("Your nervous system is raw potential. But the Trial only gave you 2 rounds. The Full Armory gives you 8 training modes, advanced heat maps, stats, and the entire voice coach library. Beat the challenge.")
                .font(PixelFont.label(14, weight: .regular))
                .foregroundStyle(LL.Palette.textSecondary)
                .lineSpacing(3)
                .fixedSize(horizontal: false, vertical: true)
        }
        .padding(.top, 8)
        .frame(maxWidth: .infinity, alignment: .leading)
    }

    /// The user's own two rounds, read back as instrument telemetry.
    private var roundReadout: some View {
        CRTPanel(tint: LL.Palette.hairlineData, showsGrid: true) {
            VStack(alignment: .leading, spacing: 16) {
                FieldLabel(text: "Trial telemetry", color: LL.Palette.data)

                HStack(alignment: .top, spacing: 0) {
                    readoutCell("Round 1", secondsLabel(trial.duration(forRound: 1)), LL.Palette.textPrimary)
                    readoutDivider
                    readoutCell("Round 2", secondsLabel(trial.duration(forRound: 2)), LL.Palette.textPrimary)
                    readoutDivider
                    readoutCell("Improvement", improvementLabel, improvementColor)
                }
            }
        }
    }

    private var readoutDivider: some View {
        Rectangle()
            .fill(LL.Palette.hairline)
            .frame(width: 1, height: 44)
            .padding(.horizontal, 6)
    }

    private func readoutCell(_ label: String, _ value: String, _ tint: Color) -> some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(value)
                .font(.system(size: 26, weight: .heavy, design: .rounded).monospacedDigit())
                .foregroundStyle(tint)
                .minimumScaleFactor(0.5)
                .lineLimit(1)
            FieldLabel(text: label)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .accessibilityElement(children: .ignore)
        .accessibilityLabel(label)
        .accessibilityValue(value)
    }

    /// Whole seconds, per the debrief spec. Falls back to a dash when a round
    /// was never run, rather than reporting a zero the user did not earn.
    private func secondsLabel(_ duration: TimeInterval?) -> String {
        guard let duration else { return "-" }
        return "\(Int(duration.rounded()))s"
    }

    private var improvementLabel: String {
        guard let percent = trial.improvementPercent else { return "-" }
        return percent >= 0 ? "+\(percent)%" : "\(percent)%"
    }

    private var improvementColor: Color {
        guard let percent = trial.improvementPercent else { return LL.Palette.textTertiary }
        return percent >= 0 ? LL.Palette.secondary : LL.Palette.primary
    }

    // MARK: - Armory listing (locked mode, or the post-onboarding intro)

    /// `mode == nil` is the intro upsell shown right after onboarding; a mode
    /// means the user reached past the Trial for that specific locked mode.
    private func armoryListing(blocked mode: SessionMode?) -> some View {
        VStack(alignment: .leading, spacing: 22) {
            VStack(alignment: .leading, spacing: 14) {
                Image(systemName: mode == nil ? "flame.fill" : "lock.fill")
                    .font(.system(size: markSize, weight: .black))
                    .foregroundStyle(
                        LinearGradient(colors: [LL.Palette.warning, LL.Palette.primary],
                                       startPoint: .top, endPoint: .bottom)
                    )
                    .accessibilityHidden(true)

                wordmark

                Text(armorySubtitle(for: mode))
                    .font(PixelFont.label(15, weight: .medium))
                    .foregroundStyle(LL.Palette.textSecondary)
                    .fixedSize(horizontal: false, vertical: true)
            }

            CRTPanel(tint: LL.Palette.hairlineData, showsGrid: true) {
                VStack(alignment: .leading, spacing: 18) {
                    FieldLabel(text: "Included", color: LL.Palette.data)
                    VStack(alignment: .leading, spacing: 12) {
                        capability("square.grid.2x2.fill", "8 training modes", "The full Precision Atlas, unlocked.")
                        capability("waveform.path", "Voice coach", "Four personas. On-device speech.")
                        capability("applewatch", "Apple Watch control", "Log without touching your phone.")
                        capability("chart.bar.xaxis", "Full telemetry", "Heat maps and stats, all local.")
                        capability("lock.shield", "No account", "Nothing is uploaded. Ever.")
                    }
                }
            }
        }
        .padding(.top, 8)
        .frame(maxWidth: .infinity, alignment: .leading)
    }

    private func armorySubtitle(for mode: SessionMode?) -> String {
        if let mode {
            return "\(mode.name) is part of the Full Armory. The Trial covers Free Hold only."
        }
        return "Your Trial covers 2 rounds of Free Hold. The Full Armory unlocks everything else, any time."
    }

    // MARK: - Wordmark (hidden developer taps)

    /// "LAST LONGER", rendered exactly as before. In DEBUG builds each word is a
    /// concealed control - tapping "LAST" grants the Founder bypass and "LONGER"
    /// resets the Trial counter, with no visual tell. Both underlying calls are
    /// DEBUG-only (a live unlock/reset must never ship), so in release the
    /// wordmark is plain, inert text.
    private var wordmark: some View {
        HStack(spacing: 14) {
            lastWord
            longerWord
        }
        .accessibilityElement(children: .ignore)
        .accessibilityAddTraits(.isHeader)
        .accessibilityLabel("LAST LONGER")
    }

    @ViewBuilder
    private var lastWord: some View {
        #if DEBUG
        DisplayText(text: "LAST", size: 32, tracking: 3)
            .contentShape(Rectangle())
            .onTapGesture {
                haptics.play(.selection)
                store.enableFounderBeta()
            }
        #else
        DisplayText(text: "LAST", size: 32, tracking: 3)
        #endif
    }

    @ViewBuilder
    private var longerWord: some View {
        #if DEBUG
        DisplayText(text: "LONGER", size: 32, tracking: 3)
            .contentShape(Rectangle())
            .onTapGesture {
                haptics.play(.selection)
                trial.resetTrial()
            }
        #else
        DisplayText(text: "LONGER", size: 32, tracking: 3)
        #endif
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

    private var isBusy: Bool {
        store.state == .purchasing || store.state == .restoring
    }

    private var purchaseBlock: some View {
        VStack(spacing: 12) {
            ForEach(StoreManager.Tier.allCases) { tier in
                tierButton(tier)
            }

            Button("Restore Purchases") {
                haptics.play(.selection)
                Task { await store.restore() }
            }
            .buttonStyle(OutlineActionStyle())
            .disabled(isBusy)
            .accessibilityHint("Recovers a subscription already bought with this Apple Account.")

            statusLine

            // The visible "Founder Beta" and "Reset Trial Counter" buttons were
            // removed. In DEBUG both are still reachable, now as the concealed
            // taps on the "LAST" / "LONGER" wordmark (see `wordmark`).
        }
    }

    /// One subscription option. The whole card is the buy button.
    private func tierButton(_ tier: StoreManager.Tier) -> some View {
        Button {
            haptics.play(.selection)
            purchasingTier = tier
            Task {
                await store.purchase(tier)
                purchasingTier = nil
            }
        } label: {
            HStack(alignment: .center, spacing: 14) {
                VStack(alignment: .leading, spacing: 5) {
                    HStack(spacing: 8) {
                        Text(tier.title.uppercased())
                            .font(PixelFont.label(14, weight: .bold))
                            .tracking(1.4)
                            .foregroundStyle(LL.Palette.textPrimary)

                        if tier == .yearly {
                            Text("BEST VALUE")
                                .font(PixelFont.label(9, weight: .bold))
                                .tracking(1)
                                .foregroundStyle(LL.Palette.data)
                                .padding(.horizontal, 6)
                                .padding(.vertical, 3)
                                .overlay(Rectangle().stroke(LL.Palette.data.opacity(0.6), lineWidth: 1))
                        }
                    }

                    Text(priceLine(for: tier))
                        .font(PixelFont.label(12, weight: .regular))
                        .foregroundStyle(LL.Palette.textSecondary)
                }

                Spacer(minLength: 8)

                if purchasingTier == tier {
                    ProgressView().tint(LL.Palette.textPrimary)
                } else {
                    Image(systemName: "chevron.right")
                        .font(.system(size: 13, weight: .bold))
                        .foregroundStyle(LL.Palette.textSecondary)
                }
            }
            .padding(.horizontal, 16)
            .frame(maxWidth: .infinity, minHeight: LL.Metrics.minTapTarget + 8)
            .background(
                LinearGradient(colors: [tierTint(tier).opacity(0.30), LL.Palette.card],
                               startPoint: .top, endPoint: .bottom),
                in: RoundedRectangle(cornerRadius: LL.Metrics.buttonRadius, style: .continuous)
            )
            .overlay(
                RoundedRectangle(cornerRadius: LL.Metrics.buttonRadius, style: .continuous)
                    .strokeBorder(tierTint(tier).opacity(0.65), lineWidth: 1)
            )
            .contentShape(RoundedRectangle(cornerRadius: LL.Metrics.buttonRadius, style: .continuous))
        }
        .buttonStyle(.plain)
        .disabled(isBusy)
        .opacity(isBusy ? 0.6 : 1)
        .accessibilityElement(children: .combine)
        .accessibilityLabel("\(tier.title), \(priceLine(for: tier))")
        .accessibilityHint("Subscribes and unlocks every mode.")
    }

    private func tierTint(_ tier: StoreManager.Tier) -> Color {
        tier == .yearly ? LL.Palette.data : LL.Palette.primary
    }

    /// "$39.99 per year", prefixed with a real introductory offer if the
    /// product carries one. Never claims a trial StoreKit has not confirmed.
    private func priceLine(for tier: StoreManager.Tier) -> String {
        let price = store.priceLine(for: tier)
        guard let intro = store.introOfferLine(for: tier) else { return price }
        return "\(intro) \(price)"
    }

    // MARK: - Legal

    /// PLACEHOLDER URLs - swap the host for the real site before shipping. Kept
    /// in one place so the Settings copy and this footer cannot drift apart.
    private enum LegalLink {
        static let privacy = "https://your-site.netlify.app/privacy"
        static let terms   = "https://your-site.netlify.app/terms"
    }

    private var legalBlock: some View {
        VStack(spacing: 10) {
            Text("Subscription automatically renews unless canceled at least 24 hours before the end of the current period. You can cancel anytime in Settings > Apple ID > Subscriptions.")
                .font(PixelFont.label(10, weight: .regular))
                .foregroundStyle(LL.Palette.textTertiary)
                .multilineTextAlignment(.center)
                .lineSpacing(2)
                .fixedSize(horizontal: false, vertical: true)

            // Clickable legal links. A dot separates them - never an em dash.
            HStack(spacing: 8) {
                legalLink("Privacy Policy", LegalLink.privacy)
                Text("·")
                    .font(PixelFont.label(11, weight: .regular))
                    .foregroundStyle(LL.Palette.textTertiary)
                legalLink("Terms of Use", LegalLink.terms)
            }
        }
        .frame(maxWidth: .infinity)
    }

    private func legalLink(_ title: String, _ urlString: String) -> some View {
        Button {
            haptics.play(.selection)
            if let url = URL(string: urlString) { openURL(url) }
        } label: {
            Text(title)
                .font(PixelFont.label(11, weight: .medium))
                .foregroundStyle(LL.Palette.textSecondary)
                .underline()
        }
        .buttonStyle(.plain)
        .accessibilityAddTraits(.isLink)
        .accessibilityHint("Opens in your browser.")
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
            Label("Checking your Apple Account...", systemImage: "arrow.clockwise")
                .font(PixelFont.label(12, weight: .medium))
                .foregroundStyle(LL.Palette.textSecondary)
                .padding(.top, 4)

        default:
            EmptyView()
        }
    }
}

#Preview("Trial complete") {
    PaywallView(context: .trialComplete, onUnlocked: {}, onDismiss: {})
        .environmentObject(StoreManager())
        .environmentObject(TrialManager())
        .environmentObject(HapticEngine())
}

#Preview("Locked mode") {
    PaywallView(context: .lockedMode(.disciplineDrill), onUnlocked: {}, onDismiss: {})
        .environmentObject(StoreManager())
        .environmentObject(TrialManager())
        .environmentObject(HapticEngine())
}

#Preview("Intro (post-onboarding)") {
    PaywallView(context: .intro, onUnlocked: {}, onDismiss: {})
        .environmentObject(StoreManager())
        .environmentObject(TrialManager())
        .environmentObject(HapticEngine())
}
