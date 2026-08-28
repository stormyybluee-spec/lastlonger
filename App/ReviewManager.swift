//
//  ReviewManager.swift
//  LAST LONGER
//
//  The review funnel. Three stages, escalating with use, each one quieter about
//  asking than the last is loud:
//
//    Stage 1  (>= 5 sessions)   A subtle banner on Home. "Maybe Later" mutes it
//                               for 7 days. Passive - it never interrupts.
//    Stage 2  (>= 10 sessions)  Apple's native SKStoreReview prompt, fired once
//                               at a calm moment (returning Home after a
//                               session). iOS rate-limits it, so it may not show.
//    Stage 3  (>= 20 sessions)  A custom popup, shown once, that opens the App
//                               Store review page.
//
//  The count moves in exactly one place: `recordCompletedSession()`, called from
//  `LiveSessionModel.end(reachedEndGoal:)` once a session is actually over.
//  Never on start, never on launch.
//
//  No emoji anywhere - SF Symbols only, matching the rest of the app.
//

import SwiftUI
import StoreKit

@MainActor
final class ReviewManager: ObservableObject {

    /// One instance, so the non-View caller that ends a session
    /// (LiveSessionModel) and the Views that read the funnel share one count.
    static let shared = ReviewManager()

    // MARK: Thresholds

    enum Threshold {
        static let banner = 5
        static let native = 10
        static let popup  = 20
    }

    /// The App Store "write a review" deep link. PLACEHOLDER app id - replace
    /// `id0000000000` with the real App Store id before shipping.
    static let appStoreReviewURL =
        "https://apps.apple.com/app/id0000000000?action=write-review"

    private enum Key {
        static let total          = "ll.review.totalSessions"
        static let reviewed       = "ll.review.hasReviewed"
        static let bannerUntil     = "ll.review.bannerDismissedUntil"
        static let nativeRequested = "ll.review.nativeRequested"
        static let popupShown      = "ll.review.stage3Shown"
    }

    // MARK: State

    @Published private(set) var totalSessions: Int
    @Published private(set) var hasReviewed: Bool
    @Published private(set) var bannerDismissedUntil: Date?
    @Published private(set) var nativeRequested: Bool
    @Published private(set) var stage3Shown: Bool

    private let defaults: UserDefaults

    init(defaults: UserDefaults = .standard) {
        self.defaults = defaults
        self.totalSessions = defaults.integer(forKey: Key.total)
        self.hasReviewed = defaults.bool(forKey: Key.reviewed)
        self.bannerDismissedUntil = defaults.object(forKey: Key.bannerUntil) as? Date
        self.nativeRequested = defaults.bool(forKey: Key.nativeRequested)
        self.stage3Shown = defaults.bool(forKey: Key.popupShown)
    }

    // MARK: Recording

    /// Call once, after a session has actually finished. Counts every completed
    /// session, subscriber or not - the funnel is about engagement, not payment.
    func recordCompletedSession() {
        totalSessions += 1
        defaults.set(totalSessions, forKey: Key.total)
    }

    // MARK: Stage 1 - banner

    /// The subtle Home banner. Shown from 5 sessions up to the popup threshold,
    /// while the user has not reviewed and has not muted it in the last 7 days.
    /// Above the popup threshold, Stage 3 owns the moment instead.
    var shouldShowBanner: Bool {
        guard !hasReviewed else { return false }
        guard totalSessions >= Threshold.banner, totalSessions < Threshold.popup else { return false }
        if let until = bannerDismissedUntil, Date() < until { return false }
        return true
    }

    /// "Maybe Later" - mute the banner for 7 days.
    func remindMeLater() {
        let until = Calendar.current.date(byAdding: .day, value: 7, to: Date())
        bannerDismissedUntil = until
        defaults.set(until, forKey: Key.bannerUntil)
    }

    // MARK: Stage 2 - native prompt

    /// Apple's own prompt, once, at 10+ sessions.
    var shouldRequestNativePrompt: Bool {
        !hasReviewed && !nativeRequested && totalSessions >= Threshold.native
    }

    /// Fires the native prompt in the foreground scene, if the funnel wants it.
    /// Marks it requested either way so it is a genuine one-shot.
    func requestNativePromptIfDue() {
        guard shouldRequestNativePrompt else { return }
        nativeRequested = true
        defaults.set(true, forKey: Key.nativeRequested)
        if let scene = Self.activeScene {
            SKStoreReviewController.requestReview(in: scene)
        }
    }

    // MARK: Stage 3 - custom popup

    /// The custom popup, once, at 20+ sessions.
    var shouldShowPopup: Bool {
        !hasReviewed && !stage3Shown && totalSessions >= Threshold.popup
    }

    /// Called when the popup is actually presented, so it never returns twice.
    func markPopupShown() {
        stage3Shown = true
        defaults.set(true, forKey: Key.popupShown)
    }

    // MARK: Shared action

    /// The user chose to review. Opens the App Store page and retires the funnel
    /// - once they have gone to review, nothing here should ask again.
    func writeReview(openURL: (URL) -> Void) {
        markReviewed()
        if let url = URL(string: Self.appStoreReviewURL) { openURL(url) }
    }

    private func markReviewed() {
        hasReviewed = true
        defaults.set(true, forKey: Key.reviewed)
    }

    private static var activeScene: UIWindowScene? {
        UIApplication.shared.connectedScenes
            .compactMap { $0 as? UIWindowScene }
            .first { $0.activationState == .foregroundActive }
    }

#if DEBUG
    /// Rewind the funnel so all three stages can be walked in testing.
    func resetFunnel() {
        totalSessions = 0
        hasReviewed = false
        bannerDismissedUntil = nil
        nativeRequested = false
        stage3Shown = false
        [Key.total, Key.reviewed, Key.bannerUntil, Key.nativeRequested, Key.popupShown]
            .forEach { defaults.removeObject(forKey: $0) }
    }

    /// Jump the counter for testing a specific stage.
    func debugSetSessions(_ count: Int) {
        totalSessions = count
        defaults.set(count, forKey: Key.total)
    }
#endif
}

// MARK: - Stage 1 banner

/// Subtle, dismissible Home banner. Sits at the bottom of the Home scroll, above
/// the tab bar, so it never covers content. SF Symbols only.
struct ReviewBanner: View {

    @ObservedObject var review: ReviewManager
    @Environment(\.openURL) private var openURL

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack(spacing: 8) {
                Image(systemName: "heart.fill")
                    .font(.system(size: 13, weight: .bold))
                    .foregroundStyle(LL.Palette.primary)
                Text("Loving LAST LONGER?")
                    .font(.llLabel(13))
                    .kerning(0.8)
                    .foregroundStyle(LL.Palette.text)
            }

            HStack(spacing: 6) {
                Text("Tap to rate us")
                    .font(.system(size: 13, weight: .regular))
                    .foregroundStyle(LL.Palette.textDim)
                HStack(spacing: 2) {
                    ForEach(0..<5, id: \.self) { _ in
                        Image(systemName: "star.fill")
                            .font(.system(size: 10, weight: .semibold))
                            .foregroundStyle(LL.Palette.rising)
                    }
                }
            }

            HStack(spacing: 10) {
                Button {
                    HapticEngine.shared.play(.selection)
                    review.writeReview { openURL($0) }
                } label: {
                    Text("RATE NOW")
                        .font(.llLabel(12))
                        .kerning(1.4)
                        .foregroundStyle(LL.Palette.text)
                        .frame(maxWidth: .infinity)
                        .frame(height: 42)
                        .background(
                            LinearGradient(colors: [LL.Palette.edge, LL.Palette.void],
                                           startPoint: .top, endPoint: .bottom),
                            in: RoundedRectangle(cornerRadius: LL.Metric.corner, style: .continuous)
                        )
                        .overlay(
                            RoundedRectangle(cornerRadius: LL.Metric.corner, style: .continuous)
                                .strokeBorder(LL.Palette.edge.opacity(0.6), lineWidth: 1)
                        )
                }
                .buttonStyle(.plain)

                Button {
                    HapticEngine.shared.play(.tick)
                    withAnimation(LL.Motion.stateFade) { review.remindMeLater() }
                } label: {
                    Text("MAYBE LATER")
                        .font(.llLabel(12))
                        .kerning(1.4)
                        .foregroundStyle(LL.Palette.textDim)
                        .frame(maxWidth: .infinity)
                        .frame(height: 42)
                        .overlay(
                            RoundedRectangle(cornerRadius: LL.Metric.corner, style: .continuous)
                                .strokeBorder(LL.Palette.rule, lineWidth: 1)
                        )
                }
                .buttonStyle(.plain)
            }
        }
        .padding(14)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(LL.Palette.card,
                    in: RoundedRectangle(cornerRadius: LL.Metric.corner, style: .continuous))
        .overlay(
            RoundedRectangle(cornerRadius: LL.Metric.corner, style: .continuous)
                .strokeBorder(LL.Palette.rule, lineWidth: 1)
        )
        .accessibilityElement(children: .contain)
        .accessibilityLabel("Loving LAST LONGER? Tap to rate us five stars.")
    }
}

// MARK: - Stage 3 popup

/// The 20-session popup. Presented once as a sheet from Home; opens the App
/// Store review page. SF Symbols only, no emoji.
struct ReviewPopup: View {

    @ObservedObject var review: ReviewManager
    let onClose: () -> Void
    @Environment(\.openURL) private var openURL

    var body: some View {
        ZStack {
            LL.Palette.background.ignoresSafeArea()

            VStack(alignment: .leading, spacing: 20) {
                Image(systemName: "flame.fill")
                    .font(.system(size: 40, weight: .black))
                    .foregroundStyle(
                        LinearGradient(colors: [LL.Palette.rising, LL.Palette.primary],
                                       startPoint: .top, endPoint: .bottom)
                    )
                    .accessibilityHidden(true)

                VStack(alignment: .leading, spacing: 10) {
                    Text("You have trained \(review.totalSessions) times.")
                        .font(.system(size: 26, weight: .heavy))
                        .foregroundStyle(LL.Palette.text)
                        .fixedSize(horizontal: false, vertical: true)
                    Text("That is real commitment.")
                        .font(.system(size: 17, weight: .semibold))
                        .foregroundStyle(LL.Palette.textDim)
                }

                Text("Help others take control too. Leave a review on the App Store.")
                    .font(.system(size: 15, weight: .regular))
                    .foregroundStyle(LL.Palette.textDim)
                    .lineSpacing(3)
                    .fixedSize(horizontal: false, vertical: true)

                Spacer(minLength: 0)

                Button {
                    HapticEngine.shared.play(.selection)
                    review.writeReview { openURL($0) }
                    onClose()
                } label: {
                    Text("WRITE A REVIEW")
                        .font(.llLabel(14))
                        .kerning(1.6)
                        .foregroundStyle(LL.Palette.text)
                        .frame(maxWidth: .infinity)
                        .frame(height: LL.Metric.tapTarget)
                        .background(
                            LinearGradient(colors: [LL.Palette.edge, LL.Palette.void],
                                           startPoint: .top, endPoint: .bottom),
                            in: RoundedRectangle(cornerRadius: LL.Metric.corner, style: .continuous)
                        )
                        .overlay(
                            RoundedRectangle(cornerRadius: LL.Metric.corner, style: .continuous)
                                .strokeBorder(LL.Palette.edge.opacity(0.6), lineWidth: 1)
                        )
                }
                .buttonStyle(.plain)

                Button {
                    HapticEngine.shared.play(.tick)
                    onClose()
                } label: {
                    Text("Maybe later")
                        .font(.system(size: 14, weight: .medium))
                        .foregroundStyle(LL.Palette.textDim)
                        .frame(maxWidth: .infinity)
                        .frame(height: 44)
                }
                .buttonStyle(.plain)
            }
            .padding(.horizontal, LL.Metric.gutter)
            .padding(.top, 36)
            .padding(.bottom, 20)
        }
        .preferredColorScheme(.dark)
    }
}
