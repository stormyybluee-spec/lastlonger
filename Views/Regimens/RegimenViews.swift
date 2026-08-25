//
//  RegimenViews.swift
//  LAST LONGER
//
//  PART C-3 — regimen browser, detail, and the Home card.
//

import SwiftUI
import UIKit

// MARK: - Home card

/// "Day 12 of 30: Threshold Ladder (15 min)" — the Home screen's program slot.
struct RegimenHomeCard: View {

    @ObservedObject var store: RegimenStore
    var onStart: (RegimenDay) -> Void

    var body: some View {
        if let regimen = store.regimen, let day = store.today {
            VStack(alignment: .leading, spacing: 14) {
                HStack(spacing: 10) {
                    Image(systemName: regimen.symbol)
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundStyle(regimen.tint)
                    GlitchText(text: regimen.title.uppercased(), size: 11)
                    Spacer()
                    if store.isTodayComplete {
                        Image(systemName: "checkmark.seal.fill")
                            .font(.system(size: 14))
                            .foregroundStyle(LL.C.green)
                            .accessibilityLabel("Today complete")
                    }
                }

                Text(day.headline(of: regimen.dayCount))
                    .font(LLFont.readout(17))
                    .foregroundStyle(LL.C.text)
                    .fixedSize(horizontal: false, vertical: true)

                Text(day.directive)
                    .font(LLFont.terminal(10))
                    .foregroundStyle(LL.C.dim)
                    .fixedSize(horizontal: false, vertical: true)

                DayLadder(total: regimen.dayCount,
                          completed: store.enrollment?.completedDays ?? [],
                          current: day.index,
                          tint: regimen.tint)

                Button {
                    UIImpactFeedbackGenerator(style: .heavy).impactOccurred()
                    onStart(day)
                } label: {
                    HStack {
                        Image(systemName: "play.fill").font(.system(size: 12, weight: .bold))
                        LLLabel(store.isTodayComplete ? "Repeat today" : "Start program session",
                                color: LL.C.text, size: 11)
                        Spacer()
                        Image(systemName: "chevron.right").font(.system(size: 11, weight: .bold))
                            .foregroundStyle(LL.C.dim)
                    }
                    .foregroundStyle(LL.C.text)
                    .padding(.horizontal, 14)
                    .frame(height: LL.Metric.tap)
                    .background(regimen.tint.opacity(0.14))
                    .overlay(
                        RoundedRectangle(cornerRadius: 8, style: .continuous)
                            .strokeBorder(regimen.tint.opacity(0.4), lineWidth: 1)
                    )
                    .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                }
                .buttonStyle(.plain)
            }
            .padding(16)
            .crtPanel(tint: regimen.tint)
        }
    }
}

/// Compact per-day rail. Filled = logged, hollow = missed, ring = today.
struct DayLadder: View {
    let total: Int
    let completed: Set<Int>
    let current: Int
    let tint: Color

    var body: some View {
        GeometryReader { geo in
            let spacing: CGFloat = 2
            let w = max(2, (geo.size.width - spacing * CGFloat(total - 1)) / CGFloat(total))
            HStack(spacing: spacing) {
                ForEach(1...total, id: \.self) { day in
                    Rectangle()
                        .fill(fill(day))
                        .frame(width: w, height: day == current ? 12 : 7)
                        .overlay(
                            day == current
                            ? Rectangle().strokeBorder(tint, lineWidth: 1)
                            : nil
                        )
                }
            }
            .frame(height: 12, alignment: .center)
        }
        .frame(height: 12)
        .accessibilityElement(children: .ignore)
        .accessibilityLabel("Program progress")
        .accessibilityValue("\(completed.count) of \(total) days logged, day \(current) is current")
    }

    private func fill(_ day: Int) -> Color {
        if completed.contains(day) { return tint }
        if day < current { return LL.C.hairline }
        return LL.C.hairline.opacity(0.45)
    }
}

// MARK: - Browser

struct RegimenBrowserView: View {

    @ObservedObject var store: RegimenStore
    @State private var pendingCancel = false
    @State private var detail: Regimen?

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 22) {
                if let regimen = store.regimen {
                    enrolledSection(regimen)
                }

                VStack(alignment: .leading, spacing: 12) {
                    LLSectionHeader(title: store.enrollment == nil ? "Programs" : "Other Programs",
                                    readout: "\(RegimenCatalog.all.count) available")
                    ForEach(RegimenCatalog.all.filter { $0.id != store.enrollment?.regimenID }) { r in
                        Button { detail = r } label: { RegimenRow(regimen: r) }
                            .buttonStyle(.plain)
                    }
                }

                Text("One program at a time. Enrolling in a new program ends the current one and its day count does not carry over.")
                    .font(LLFont.terminal(9))
                    .foregroundStyle(LL.C.dim)
                    .fixedSize(horizontal: false, vertical: true)

                Color.clear.frame(height: 40)
            }
            .padding(.horizontal, 18)
            .padding(.top, 8)
        }
        .background(LL.C.bg.ignoresSafeArea())
        .scrollIndicators(.hidden)
        .sheet(item: $detail) { RegimenDetailSheet(regimen: $0, store: store) }
        .confirmationDialog("Cancel program?",
                            isPresented: $pendingCancel,
                            titleVisibility: .visible) {
            Button("Cancel program", role: .destructive) { store.cancel() }
            Button("Keep going", role: .cancel) { }
        } message: {
            Text("Your session history stays. Program day count resets to zero.")
        }
    }

    private func enrolledSection(_ regimen: Regimen) -> some View {
        VStack(alignment: .leading, spacing: 12) {
            LLSectionHeader(title: "Enrolled",
                            readout: "\(Int(store.completionFraction * 100))% logged",
                            rule: regimen.tint)
            RegimenHomeCard(store: store) { _ in }

            Button(role: .destructive) { pendingCancel = true } label: {
                HStack {
                    Image(systemName: "xmark.octagon.fill").font(.system(size: 12))
                    LLLabel("Cancel program", color: LL.C.red, size: 11)
                    Spacer()
                }
                .foregroundStyle(LL.C.red)
                .padding(.horizontal, 14)
                .frame(height: 48)
                .background(LL.C.red.opacity(0.10))
                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
            }
            .buttonStyle(.plain)
        }
    }
}

struct RegimenRow: View {
    let regimen: Regimen

    var body: some View {
        HStack(spacing: 14) {
            Image(systemName: regimen.symbol)
                .font(.system(size: 18, weight: .semibold))
                .foregroundStyle(regimen.tint)
                .frame(width: 38, height: 38)
                .background(regimen.tint.opacity(0.12))
                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))

            VStack(alignment: .leading, spacing: 4) {
                Text(regimen.title.uppercased())
                    .font(LLFont.pixel(11))
                    .foregroundStyle(LL.C.text)
                LLLabel(regimen.subtitle, size: 9)
            }

            Spacer()
            Image(systemName: "chevron.right")
                .font(.system(size: 11, weight: .bold))
                .foregroundStyle(LL.C.dim)
        }
        .padding(14)
        .crtPanel(tint: regimen.tint)
    }
}

// MARK: - Detail

struct RegimenDetailSheet: View {

    let regimen: Regimen
    @ObservedObject var store: RegimenStore
    @Environment(\.dismiss) private var dismiss

    private var weeks: [(week: Int, days: [RegimenDay])] {
        Dictionary(grouping: regimen.schedule) { ($0.index - 1) / 7 }
            .map { (week: $0.key + 1, days: $0.value.sorted { $0.index < $1.index }) }
            .sorted { $0.week < $1.week }
    }

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    header

                    ForEach(weeks, id: \.week) { block in
                        VStack(alignment: .leading, spacing: 10) {
                            LLSectionHeader(title: "Week \(block.week)",
                                            readout: "days \(block.days.first?.index ?? 0)–\(block.days.last?.index ?? 0)",
                                            rule: regimen.tint)

                            // Days inside a week share a mode, so show the
                            // phase once rather than repeating 7 identical rows.
                            if let first = block.days.first {
                                VStack(alignment: .leading, spacing: 8) {
                                    HStack(spacing: 8) {
                                        Image(systemName: first.mode.symbol)
                                            .font(.system(size: 13, weight: .semibold))
                                            .foregroundStyle(first.mode.tint)
                                        Text(first.mode.title.uppercased())
                                            .font(LLFont.pixel(11))
                                            .foregroundStyle(LL.C.text)
                                        Spacer()
                                        LLLabel("\(first.targetMinutes) min", size: 9)
                                    }
                                    Text(first.directive)
                                        .font(LLFont.terminal(10))
                                        .foregroundStyle(LL.C.dim)
                                        .fixedSize(horizontal: false, vertical: true)
                                }
                                .padding(14)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .crtPanel(tint: first.mode.tint)
                            }
                        }
                    }

                    enrollButton
                    Color.clear.frame(height: 30)
                }
                .padding(.horizontal, 18)
            }
            .background(LL.C.bg.ignoresSafeArea())
            .scrollIndicators(.hidden)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Close") { dismiss() }
                        .font(LLFont.label(12))
                        .foregroundStyle(LL.C.dim)
                }
            }
        }
        .preferredColorScheme(.dark)
    }

    private var header: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack(spacing: 12) {
                Image(systemName: regimen.symbol)
                    .font(.system(size: 24, weight: .semibold))
                    .foregroundStyle(regimen.tint)
                VStack(alignment: .leading, spacing: 4) {
                    GlitchText(text: regimen.title.uppercased(), size: 15)
                    LLLabel(regimen.subtitle, size: 10)
                }
                Spacer()
            }
        }
        .padding(.top, 8)
    }

    private var enrollButton: some View {
        Button {
            UINotificationFeedbackGenerator().notificationOccurred(.success)
            store.enroll(in: regimen)
            dismiss()
        } label: {
            HStack {
                Spacer()
                LLLabel("Enroll · \(regimen.dayCount) days", color: LL.C.text, size: 12)
                Spacer()
            }
            .frame(height: LL.Metric.tap)
            .background(
                LinearGradient(colors: [regimen.tint.opacity(0.30), regimen.tint.opacity(0.06)],
                               startPoint: .top, endPoint: .bottom)
            )
            .overlay(
                RoundedRectangle(cornerRadius: 8, style: .continuous)
                    .strokeBorder(regimen.tint, lineWidth: 1)
            )
            .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
        }
        .buttonStyle(.plain)
    }
}

// MARK: - Preview

#Preview("Regimens") {
    RegimenBrowserView(store: RegimenStore(
        enrollment: RegimenEnrollmentState(
            regimenID: "beginner_30",
            startedAt: Calendar.current.date(byAdding: .day, value: -11, to: Date())!,
            completedDays: [1, 2, 3, 5, 6, 8, 9, 10]
        )
    ))
    .preferredColorScheme(.dark)
}
