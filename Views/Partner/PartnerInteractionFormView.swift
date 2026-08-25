//
//  PartnerInteractionFormView.swift
//  LAST LONGER
//
//  PART C-4 — pre-session brief form. The derived coach profile updates live so
//  the user can see what each input actually changes rather than filling in a
//  form that disappears into a black box.
//

import SwiftUI
import UIKit

struct PartnerInteractionFormView: View {

    @State var brief = PartnerSessionBrief()
    var onStart: (PartnerSessionBrief, CoachProfile) -> Void

    @Environment(\.dismiss) private var dismiss

    private var profile: CoachProfile { CoachProfileBuilder.profile(for: brief) }

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                contextSection
                positionSection
                durationSection
                anxietySection
                profileReadout
                startButton
                Color.clear.frame(height: 30)
            }
            .padding(.horizontal, 18)
            .padding(.top, 10)
        }
        .background(LL.C.bg.ignoresSafeArea())
        .scrollIndicators(.hidden)
    }

    // MARK: Context

    private var contextSection: some View {
        VStack(alignment: .leading, spacing: 12) {
            LLSectionHeader(title: "Partner", readout: "tightens control")
            SegmentGrid(items: PartnerContext.allCases, selection: $brief.context, columns: 3) {
                ($0.title, $0.symbol, LL.C.blue)
            }
        }
    }

    // MARK: Position

    private var positionSection: some View {
        VStack(alignment: .leading, spacing: 12) {
            LLSectionHeader(title: "Position", readout: "cue set")
            SegmentGrid(items: PositionFocus.allCases, selection: $brief.position, columns: 4) {
                ($0.title, $0.symbol, LL.C.yellow)
            }
            Text(profile.positionCues.first ?? "")
                .font(LLFont.terminal(10))
                .foregroundStyle(LL.C.dim)
                .fixedSize(horizontal: false, vertical: true)
        }
    }

    // MARK: Duration

    private var durationSection: some View {
        VStack(alignment: .leading, spacing: 12) {
            LLSectionHeader(title: "Duration Goal",
                            readout: "\(brief.durationGoalMinutes) min")
            VStack(spacing: 10) {
                Slider(value: Binding(
                    get: { Double(brief.durationGoalMinutes) },
                    set: { brief.durationGoalMinutes = Int($0.rounded()) }
                ), in: 5...40, step: 1)
                .tint(LL.C.blue)

                HStack {
                    LLLabel("5 min", size: 9)
                    Spacer()
                    LLLabel("40 min", size: 9)
                }
            }
            .padding(14)
            .crtPanel()
            .accessibilityElement(children: .combine)
            .accessibilityLabel("Duration goal")
            .accessibilityValue("\(brief.durationGoalMinutes) minutes")
        }
    }

    // MARK: Anxiety

    private var anxietySection: some View {
        VStack(alignment: .leading, spacing: 12) {
            LLSectionHeader(title: "Anxiety Level",
                            readout: "\(brief.anxietyLevel) / 10",
                            rule: anxietyTint)

            VStack(spacing: 12) {
                HStack(spacing: 3) {
                    ForEach(1...10, id: \.self) { level in
                        Button {
                            UISelectionFeedbackGenerator().selectionChanged()
                            brief.anxietyLevel = level
                        } label: {
                            Rectangle()
                                .fill(level <= brief.anxietyLevel
                                      ? tint(for: level)
                                      : LL.C.hairline)
                                .frame(height: level == brief.anxietyLevel ? 34 : 24)
                                .overlay(alignment: .bottom) {
                                    if level == brief.anxietyLevel {
                                        Text("\(level)")
                                            .font(LLFont.terminal(8))
                                            .foregroundStyle(LL.C.bg)
                                            .padding(.bottom, 3)
                                    }
                                }
                        }
                        .buttonStyle(.plain)
                        .accessibilityLabel("Anxiety level \(level)")
                    }
                }
                .frame(height: 34, alignment: .bottom)
                .animation(.easeOut(duration: 0.15), value: brief.anxietyLevel)

                HStack {
                    LLLabel("Settled", size: 9)
                    Spacer()
                    LLLabel("Wired", size: 9)
                }
            }
            .padding(14)
            .crtPanel(tint: anxietyTint)

            if let advisory = profile.advisory {
                HStack(alignment: .top, spacing: 10) {
                    Image(systemName: "info.circle")
                        .font(.system(size: 12, weight: .semibold))
                        .foregroundStyle(LL.C.yellow)
                    Text(advisory)
                        .font(LLFont.label(11, weight: .medium))
                        .foregroundStyle(LL.C.text.opacity(0.9))
                        .fixedSize(horizontal: false, vertical: true)
                }
                .padding(14)
                .frame(maxWidth: .infinity, alignment: .leading)
                .crtPanel(tint: LL.C.yellow)
            }
        }
    }

    private var anxietyTint: Color { tint(for: brief.anxietyLevel) }

    private func tint(for level: Int) -> Color {
        switch level {
        case ...3: return LL.C.green
        case ...6: return LL.C.yellow
        default:   return LL.C.red
        }
    }

    // MARK: Profile readout

    private var profileReadout: some View {
        VStack(alignment: .leading, spacing: 12) {
            LLSectionHeader(title: "Coach Profile", readout: "derived")

            VStack(spacing: 14) {
                HStack {
                    LLLabel("Tone", size: 10)
                    Spacer()
                    Text(profile.toneLabel.uppercased())
                        .font(LLFont.terminal(10))
                        .tracking(0.8)
                        .foregroundStyle(anxietyTint)
                }

                meter("Pressure", profile.assertiveness, LL.C.red)
                meter("Breathing cues", profile.breathingWeight, LL.C.green)

                HStack {
                    LLLabel("Prompt cadence", size: 10)
                    Spacer()
                    Text("\(profile.promptCadence.lowerBound)–\(profile.promptCadence.upperBound)s")
                        .font(LLFont.readout(12))
                        .foregroundStyle(LL.C.text)
                }

                Divider().overlay(LL.C.hairline)

                Text(profile.openingLine)
                    .font(LLFont.terminal(10))
                    .foregroundStyle(LL.C.label)
                    .fixedSize(horizontal: false, vertical: true)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(14)
            .crtPanel()

            Text("Pressure peaks mid-scale and eases at the top. High anxiety gets a pacer, not a drill sergeant.")
                .font(LLFont.terminal(9))
                .foregroundStyle(LL.C.dim)
                .fixedSize(horizontal: false, vertical: true)
        }
    }

    private func meter(_ label: String, _ value: Double, _ tint: Color) -> some View {
        VStack(alignment: .leading, spacing: 6) {
            HStack {
                LLLabel(label, size: 10)
                Spacer()
                Text("\(Int(value * 100))%")
                    .font(LLFont.readout(11))
                    .foregroundStyle(tint)
            }
            GeometryReader { geo in
                ZStack(alignment: .leading) {
                    Rectangle().fill(LL.C.hairline).frame(height: 4)
                    Rectangle().fill(tint).frame(width: geo.size.width * value, height: 4)
                }
            }
            .frame(height: 4)
        }
        .accessibilityElement(children: .ignore)
        .accessibilityLabel(label)
        .accessibilityValue("\(Int(value * 100)) percent")
    }

    // MARK: Start

    private var startButton: some View {
        Button {
            UIImpactFeedbackGenerator(style: .heavy).impactOccurred()
            onStart(brief, profile)
        } label: {
            HStack {
                Spacer()
                LLLabel("Begin session", color: LL.C.text, size: 12)
                Spacer()
            }
            .frame(height: LL.Metric.tap)
            .background(
                LinearGradient(colors: [LL.C.red.opacity(0.85), LL.C.red.opacity(0.15)],
                               startPoint: .top, endPoint: .bottom)
            )
            .overlay(RoundedRectangle(cornerRadius: 8, style: .continuous)
                .strokeBorder(LL.C.red, lineWidth: 1))
            .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
        }
        .buttonStyle(.plain)
    }
}

// MARK: - Segment grid

struct SegmentGrid<Item: Identifiable & Hashable>: View {
    let items: [Item]
    @Binding var selection: Item
    let columns: Int
    let descriptor: (Item) -> (String, String, Color)

    var body: some View {
        LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 8), count: columns),
                  spacing: 8) {
            ForEach(items) { item in
                let (title, symbol, tint) = descriptor(item)
                let isSelected = item == selection

                Button {
                    UISelectionFeedbackGenerator().selectionChanged()
                    selection = item
                } label: {
                    VStack(spacing: 7) {
                        Image(systemName: symbol)
                            .font(.system(size: 16, weight: .semibold))
                            .foregroundStyle(isSelected ? tint : LL.C.dim)
                        Text(title.uppercased())
                            .font(LLFont.terminal(8))
                            .tracking(0.5)
                            .lineLimit(1)
                            .minimumScaleFactor(0.7)
                            .foregroundStyle(isSelected ? LL.C.text : LL.C.dim)
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: 66)
                    .background(isSelected ? tint.opacity(0.14) : LL.C.card)
                    .overlay(Scanlines(spacing: 3, opacity: isSelected ? 0.12 : 0.24))
                    .overlay(
                        RoundedRectangle(cornerRadius: 8, style: .continuous)
                            .strokeBorder(isSelected ? tint.opacity(0.6) : LL.C.hairline, lineWidth: 1)
                    )
                    .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                }
                .buttonStyle(.plain)
                .accessibilityAddTraits(isSelected ? [.isSelected, .isButton] : .isButton)
                .accessibilityLabel(title)
            }
        }
    }
}

// MARK: - Preview

#Preview("Partner Brief") {
    PartnerInteractionFormView { _, _ in }
        .preferredColorScheme(.dark)
}
