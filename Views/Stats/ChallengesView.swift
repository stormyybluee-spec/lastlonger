//
//  ChallengesView.swift
//  LAST LONGER
//
//  PART C-2 — Challenges and badges.
//

import SwiftUI
import UIKit

struct ChallengesView: View {

    @ObservedObject var store: StatsStore
    var completedPrograms: Int = 0

    @State private var selectedBadge: BadgeProgress?

    private var challenges: [WeeklyChallenge] { ChallengeCatalog.rotation() }
    private var active: WeeklyChallenge? { challenges.first { !$0.isLocked } }
    private var upcoming: [WeeklyChallenge] { challenges.filter(\.isLocked) }
    private var badges: [BadgeProgress] {
        BadgeEvaluator.evaluate(sessions: store.sessions, completedPrograms: completedPrograms)
    }

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 26) {
                if let active { activeSection(active) }
                upcomingSection
                badgeSection
                Color.clear.frame(height: 40)
            }
            .padding(.horizontal, 18)
            .padding(.top, 8)
        }
        .background(LL.C.bg.ignoresSafeArea())
        .scrollIndicators(.hidden)
        .sheet(item: $selectedBadge) { BadgeDetailSheet(item: $0) }
    }

    // MARK: Active

    private func activeSection(_ c: WeeklyChallenge) -> some View {
        VStack(alignment: .leading, spacing: 12) {
            LLSectionHeader(title: "This Week", readout: c.timeRemaining)
            ActiveChallengeCard(challenge: c)
        }
    }

    // MARK: Upcoming

    @ViewBuilder
    private var upcomingSection: some View {
        if !upcoming.isEmpty {
            VStack(alignment: .leading, spacing: 12) {
                LLSectionHeader(title: "Upcoming", readout: "\(upcoming.count) locked")
                VStack(spacing: 10) {
                    ForEach(upcoming) { LockedChallengeRow(challenge: $0) }
                }
            }
        }
    }

    // MARK: Badges

    private var badgeSection: some View {
        let earned = badges.filter(\.isEarned).count
        return VStack(alignment: .leading, spacing: 12) {
            LLSectionHeader(title: "Badges",
                            readout: "\(earned) / \(badges.count)",
                            rule: LL.C.yellow)

            LazyVGrid(columns: [GridItem(.adaptive(minimum: 96), spacing: 12)], spacing: 12) {
                ForEach(badges) { item in
                    Button {
                        UIImpactFeedbackGenerator(style: item.isEarned ? .medium : .light).impactOccurred()
                        selectedBadge = item
                    } label: {
                        BadgeCell(item: item)
                    }
                    .buttonStyle(.plain)
                }
            }
        }
    }
}

// MARK: - Active challenge card

struct ActiveChallengeCard: View {
    let challenge: WeeklyChallenge

    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
            HStack(spacing: 12) {
                Image(systemName: challenge.symbol)
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundStyle(LL.C.red)
                    .frame(width: 34, height: 34)
                    .background(LL.C.red.opacity(0.14))
                    .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))

                VStack(alignment: .leading, spacing: 3) {
                    GlitchText(text: challenge.title.uppercased(), size: 13)
                    LLLabel(challenge.requirement, size: 10)
                }
                Spacer()
            }

            // Split bar: verified segment solid, manual segment hatched at half weight.
            GeometryReader { geo in
                let w = geo.size.width
                let verified = min(1, challenge.verifiedProgress / challenge.target)
                let manual = min(1 - verified, (challenge.manualProgress * 0.5) / challenge.target)

                ZStack(alignment: .leading) {
                    Capsule().fill(LL.C.hairline)
                    HStack(spacing: 0) {
                        Capsule().fill(LL.C.red).frame(width: w * verified)
                        Rectangle().fill(LL.C.red.opacity(0.42)).frame(width: w * manual)
                    }
                    .clipShape(Capsule())
                }
            }
            .frame(height: 6)

            HStack {
                Text("\(Int(challenge.scoredProgress)) / \(Int(challenge.target))")
                    .font(LLFont.readout(15))
                    .foregroundStyle(LL.C.text)
                Spacer()
                HStack(spacing: 10) {
                    tally("VERIFIED", Int(challenge.verifiedProgress), LL.C.red)
                    tally("MANUAL ×0.5", Int(challenge.manualProgress), LL.C.red.opacity(0.45))
                }
            }
        }
        .padding(16)
        .crtPanel(tint: LL.C.red)
        .accessibilityElement(children: .ignore)
        .accessibilityLabel("\(challenge.title). \(challenge.requirement)")
        .accessibilityValue("\(Int(challenge.scoredProgress)) of \(Int(challenge.target)). \(challenge.timeRemaining)")
    }

    private func tally(_ label: String, _ value: Int, _ tint: Color) -> some View {
        HStack(spacing: 4) {
            RoundedRectangle(cornerRadius: 1).fill(tint).frame(width: 6, height: 6)
            Text("\(label) \(value)")
                .font(LLFont.terminal(8))
                .tracking(0.6)
                .foregroundStyle(LL.C.dim)
        }
    }
}

// MARK: - Locked challenge

struct LockedChallengeRow: View {
    let challenge: WeeklyChallenge

    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: challenge.symbol)
                .font(.system(size: 16, weight: .semibold))
                .foregroundStyle(LL.C.dim)
                .frame(width: 30)

            VStack(alignment: .leading, spacing: 3) {
                Text(challenge.title.uppercased())
                    .font(LLFont.pixel(11))
                    .foregroundStyle(LL.C.label)
                LLLabel(challenge.requirement, color: LL.C.dim, size: 9)
            }
            Spacer()
            Image(systemName: "lock.fill")
                .font(.system(size: 12))
                .foregroundStyle(LL.C.dim)
        }
        .padding(14)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(LL.C.card)
        .clipShape(RoundedRectangle(cornerRadius: LL.Metric.corner, style: .continuous))
        .overlay(Scanlines(spacing: 3, opacity: 0.28))
        .clipShape(RoundedRectangle(cornerRadius: LL.Metric.corner, style: .continuous))
        .blur(radius: 2.4)
        .overlay(
            // Kept legible above the blur so the goal still communicates.
            HStack(spacing: 6) {
                Image(systemName: "lock.fill").font(.system(size: 10, weight: .bold))
                Text("WEEK \(challenge.weekIndex)").font(LLFont.terminal(9)).tracking(1)
            }
            .foregroundStyle(LL.C.label)
            .padding(.horizontal, 10)
            .padding(.vertical, 5)
            .background(LL.C.bg.opacity(0.72))
            .clipShape(Capsule())
        )
        .accessibilityElement(children: .ignore)
        .accessibilityLabel("Locked challenge, week \(challenge.weekIndex): \(challenge.title)")
        .accessibilityHint(challenge.requirement)
    }
}

// MARK: - Badge cell

struct BadgeCell: View {
    let item: BadgeProgress

    private var tint: Color { item.isEarned ? item.badge.tier.tint : LL.C.dim }

    var body: some View {
        VStack(spacing: 8) {
            ZStack {
                // Progress ring on locked badges — a silhouette that still
                // tells you how close you are.
                Circle()
                    .stroke(LL.C.hairline, lineWidth: 2)
                Circle()
                    .trim(from: 0, to: item.isEarned ? 1 : item.progress)
                    .stroke(tint.opacity(item.isEarned ? 1 : 0.55),
                            style: StrokeStyle(lineWidth: 2, lineCap: .round))
                    .rotationEffect(.degrees(-90))

                Image(systemName: item.badge.symbol)
                    .font(.system(size: 21, weight: .semibold))
                    .foregroundStyle(item.isEarned ? tint : LL.C.dim.opacity(0.55))
                    .shadow(color: item.isEarned ? tint.opacity(0.8) : .clear, radius: 8)
            }
            .frame(width: 54, height: 54)

            Text(item.badge.title.uppercased())
                .font(LLFont.terminal(8))
                .tracking(0.5)
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .minimumScaleFactor(0.8)
                .foregroundStyle(item.isEarned ? LL.C.text : LL.C.dim)
                .frame(height: 22)
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 14)
        .background(LL.C.card)
        .overlay(Scanlines(spacing: 3, opacity: item.isEarned ? 0.14 : 0.26))
        .overlay(
            RoundedRectangle(cornerRadius: 10, style: .continuous)
                .strokeBorder(item.isEarned ? tint.opacity(0.45) : LL.C.hairline, lineWidth: 1)
        )
        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
        .saturation(item.isEarned ? 1 : 0)
        .accessibilityElement(children: .ignore)
        .accessibilityLabel(item.badge.title)
        .accessibilityValue(item.isEarned ? "Earned" : "Locked. \(item.standing)")
    }
}

// MARK: - Badge detail

struct BadgeDetailSheet: View {
    let item: BadgeProgress
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        VStack(spacing: 18) {
            HStack {
                Spacer()
                Button { dismiss() } label: {
                    Image(systemName: "xmark.circle.fill")
                        .font(.system(size: 24))
                        .foregroundStyle(LL.C.dim)
                }
                .accessibilityLabel("Close")
            }

            ZStack {
                Circle()
                    .stroke(LL.C.hairline, lineWidth: 3)
                Circle()
                    .trim(from: 0, to: item.isEarned ? 1 : item.progress)
                    .stroke(item.badge.tier.tint,
                            style: StrokeStyle(lineWidth: 3, lineCap: .round))
                    .rotationEffect(.degrees(-90))
                Image(systemName: item.badge.symbol)
                    .font(.system(size: 40, weight: .semibold))
                    .foregroundStyle(item.isEarned ? item.badge.tier.tint : LL.C.dim)
                    .shadow(color: item.isEarned ? item.badge.tier.tint.opacity(0.7) : .clear, radius: 14)
            }
            .frame(width: 108, height: 108)
            .saturation(item.isEarned ? 1 : 0)

            GlitchText(text: item.badge.title.uppercased(), size: 16)

            Text(item.badge.requirement)
                .font(LLFont.label(12, weight: .medium))
                .foregroundStyle(LL.C.label)
                .multilineTextAlignment(.center)
                .fixedSize(horizontal: false, vertical: true)

            VStack(spacing: 6) {
                LLLabel(item.isEarned ? "Earned" : "Progress",
                        color: item.isEarned ? LL.C.green : LL.C.label, size: 10)
                Text(item.isEarned
                     ? (item.earnedAt?.formatted(.dateTime.month(.abbreviated).day().year()) ?? "—")
                     : item.standing)
                    .font(LLFont.readout(17))
                    .foregroundStyle(LL.C.text)
            }
            .frame(maxWidth: .infinity)
            .padding(14)
            .crtPanel(tint: item.isEarned ? LL.C.green : LL.C.blue)

            Spacer()
        }
        .padding(20)
        .background(LL.C.bg)
        .presentationDetents([.height(430)])
        .presentationDragIndicator(.visible)
    }
}

// MARK: - Preview

#Preview("Challenges") {
    ChallengesView(store: StatsSample.store(), completedPrograms: 0)
        .preferredColorScheme(.dark)
}
