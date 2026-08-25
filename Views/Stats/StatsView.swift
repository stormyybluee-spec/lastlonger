//
//  StatsView.swift
//  LAST LONGER
//
//  PART C-1 — Stats screen.
//

import SwiftUI
import UIKit
import Charts

struct StatsView: View {

    @ObservedObject var store: StatsStore

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 26) {
                board
                rangeTabs
                staminaGraph
                durationGraph
                pullbackGraph
                metrics
                correlation
                insights
                Color.clear.frame(height: 40)
            }
            .padding(.horizontal, 18)
            .padding(.top, 8)
        }
        .background(LL.C.bg.ignoresSafeArea())
        .scrollIndicators(.hidden)
    }

    // MARK: Heat map

    private var board: some View {
        VStack(alignment: .leading, spacing: 12) {
            LLSectionHeader(
                title: "Training Board",
                readout: Date().formatted(.dateTime.month(.wide).year()),
                rule: LL.C.pcbTrace
            )
            CircuitHeatMapView(days: store.monthDays)
        }
    }

    // MARK: Range

    private var rangeTabs: some View {
        HStack(spacing: 0) {
            ForEach(StatsRange.allCases) { r in
                Button {
                    UISelectionFeedbackGenerator().selectionChanged()
                    withAnimation(.easeOut(duration: 0.18)) { store.range = r }
                } label: {
                    LLLabel(r.rawValue,
                            color: store.range == r ? LL.C.text : LL.C.dim,
                            size: 11)
                        .frame(maxWidth: .infinity)
                        .frame(height: 38)
                        .background(
                            Rectangle()
                                .fill(store.range == r ? LL.C.blue.opacity(0.16) : .clear)
                        )
                        .overlay(alignment: .bottom) {
                            Rectangle()
                                .fill(store.range == r ? LL.C.blue : .clear)
                                .frame(height: 2)
                        }
                }
                .buttonStyle(.plain)
            }
        }
        .background(LL.C.card)
        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
        .overlay(
            RoundedRectangle(cornerRadius: 8, style: .continuous)
                .strokeBorder(LL.C.hairline, lineWidth: 1)
        )
        .accessibilityElement(children: .contain)
    }

    // MARK: Graph 1 — Stamina (attractor)

    private var staminaGraph: some View {
        VStack(alignment: .leading, spacing: 12) {
            LLSectionHeader(title: "Stamina Score",
                            readout: "\(store.summary.currentStamina) / 100")
            AttractorGraphView(scores: store.staminaSeries)
            Text("Orbit tightens as control improves. A single closed loop is mastery; a wide scattered band is volatility.")
                .font(LLFont.terminal(10))
                .foregroundStyle(LL.C.dim)
                .fixedSize(horizontal: false, vertical: true)
        }
    }

    // MARK: Graph 2 — Duration

    private var durationGraph: some View {
        VStack(alignment: .leading, spacing: 12) {
            LLSectionHeader(title: "Session Duration", readout: "minutes")

            Chart(store.durationSeries) { point in
                BarMark(
                    x: .value("Date", point.date, unit: .day),
                    y: .value("Minutes", point.minutes),
                    width: .fixed(6)
                )
                .foregroundStyle(
                    LinearGradient(colors: [LL.C.blue, LL.C.blue.opacity(0.25)],
                                   startPoint: .top, endPoint: .bottom)
                )
                .cornerRadius(1)
            }
            .chartXAxis { axisDates() }
            .chartYAxis {
                AxisMarks(position: .leading) { _ in
                    AxisGridLine().foregroundStyle(LL.C.grid)
                    AxisValueLabel()
                        .font(LLFont.terminal(9))
                        .foregroundStyle(LL.C.dim)
                }
            }
            .chartPlotStyle { $0.background(LL.C.graphite) }
            .frame(height: 150)
            .padding(10)
            .crtPanel()
        }
    }

    // MARK: Graph 3 — Pullback

    private var pullbackGraph: some View {
        VStack(alignment: .leading, spacing: 12) {
            LLSectionHeader(title: "Pullback Success",
                            readout: "\(Int(store.summary.avgPullback * 100))% avg")

            Chart(store.pullbackSeries) { point in
                AreaMark(
                    x: .value("Date", point.date, unit: .day),
                    y: .value("Rate", point.rate)
                )
                .foregroundStyle(
                    LinearGradient(colors: [LL.C.green.opacity(0.28), .clear],
                                   startPoint: .top, endPoint: .bottom)
                )
                .interpolationMethod(.monotone)

                LineMark(
                    x: .value("Date", point.date, unit: .day),
                    y: .value("Rate", point.rate)
                )
                .foregroundStyle(LL.C.green)
                .lineStyle(StrokeStyle(lineWidth: 1.6, lineCap: .round))
                .interpolationMethod(.monotone)
            }
            .chartYScale(domain: 0...1)
            .chartXAxis { axisDates() }
            .chartYAxis {
                AxisMarks(position: .leading, values: [0, 0.5, 1.0]) { _ in
                    AxisGridLine().foregroundStyle(LL.C.grid)
                    AxisValueLabel(format: FloatingPointFormatStyle<Double>.Percent())
                        .font(LLFont.terminal(9))
                        .foregroundStyle(LL.C.dim)
                }
            }
            .chartPlotStyle { $0.background(LL.C.graphite) }
            .frame(height: 150)
            .padding(10)
            .crtPanel(tint: LL.C.green)
        }
    }

    private func axisDates() -> some AxisContent {
        AxisMarks(values: .automatic(desiredCount: 5)) { _ in
            AxisGridLine().foregroundStyle(LL.C.grid)
            AxisValueLabel(format: .dateTime.month(.narrow).day())
                .font(LLFont.terminal(9))
                .foregroundStyle(LL.C.dim)
        }
    }

    // MARK: Metric tiles

    private var metrics: some View {
        let s = store.summary
        return VStack(alignment: .leading, spacing: 12) {
            LLSectionHeader(title: "Key Metrics", readout: store.range.rawValue)
            LazyVGrid(columns: [GridItem(.flexible(), spacing: 12),
                                GridItem(.flexible(), spacing: 12)], spacing: 12) {
                MetricTile(label: "Total sessions", value: "\(s.totalSessions)",
                           symbol: "square.stack.3d.up.fill", tint: LL.C.blue)
                MetricTile(label: "Thresholds logged", value: "\(s.totalThresholds)",
                           symbol: "flame.fill", tint: LL.C.red)
                MetricTile(label: "Avg pullback", value: "\(Int(s.avgPullback * 100))%",
                           symbol: "shield.fill",
                           tint: s.avgPullback >= 0.7 ? LL.C.green : LL.C.yellow)
                MetricTile(label: "Best streak", value: "\(s.bestStreak)d",
                           symbol: "calendar", tint: LL.C.yellow)
            }
        }
    }

    // MARK: Stack correlation

    @ViewBuilder
    private var correlation: some View {
        let rows = store.tagCorrelations
        if !rows.isEmpty {
            VStack(alignment: .leading, spacing: 12) {
                LLSectionHeader(title: "Stack Correlation", readout: "observational")
                VStack(spacing: 0) {
                    ForEach(rows) { CorrelationRow(item: $0) }
                }
                .crtPanel(tint: LL.C.yellow)

                Text("Correlation only. Small samples, no controls, confounded by sleep and time of day. Do not read as cause.")
                    .font(LLFont.terminal(9))
                    .foregroundStyle(LL.C.dim)
                    .fixedSize(horizontal: false, vertical: true)
            }
        }
    }

    // MARK: Insights

    private var insights: some View {
        VStack(alignment: .leading, spacing: 12) {
            LLSectionHeader(title: "Insights", readout: "rule-based")
            VStack(spacing: 10) {
                ForEach(store.insights) { InsightRow(insight: $0) }
            }
        }
    }
}

// MARK: - Metric tile

struct MetricTile: View {
    let label: String
    let value: String
    let symbol: String
    let tint: Color

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Image(systemName: symbol)
                    .font(.system(size: 12, weight: .semibold))
                    .foregroundStyle(tint)
                Spacer()
            }
            Text(value)
                .font(LLFont.readout(30))
                .foregroundStyle(LL.C.text)
                .minimumScaleFactor(0.6)
                .lineLimit(1)
            LLLabel(label, size: 9)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(14)
        .crtPanel(tint: tint)
        .accessibilityElement(children: .ignore)
        .accessibilityLabel(label)
        .accessibilityValue(value)
    }
}

// MARK: - Correlation row

struct CorrelationRow: View {
    let item: TagCorrelation

    private var tint: Color { item.deltaMinutes >= 0 ? LL.C.green : LL.C.red }

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                LLLabel(item.tag, color: LL.C.text, size: 11)
                Spacer()
                Text(String(format: "%+.1f min", item.deltaMinutes))
                    .font(LLFont.readout(13))
                    .foregroundStyle(tint)
            }

            GeometryReader { geo in
                let magnitude = min(1, abs(item.deltaMinutes) / 12)
                ZStack(alignment: .leading) {
                    Rectangle().fill(LL.C.hairline).frame(height: 3)
                    Rectangle().fill(tint)
                        .frame(width: geo.size.width * magnitude, height: 3)
                }
            }
            .frame(height: 3)

            Text("Tagged \(item.taggedCount)x · \(String(format: "%.0f", item.taggedAvgMinutes))m avg vs \(String(format: "%.0f", item.untaggedAvgMinutes))m untagged · \(Int(item.taggedAvgPullback * 100))% pullback")
                .font(LLFont.terminal(9))
                .foregroundStyle(LL.C.dim)
                .fixedSize(horizontal: false, vertical: true)
        }
        .padding(14)
        .overlay(alignment: .bottom) {
            Rectangle().fill(LL.C.hairline).frame(height: 1)
        }
    }
}

// MARK: - Insight row

struct InsightRow: View {
    let insight: Insight

    var body: some View {
        HStack(alignment: .top, spacing: 12) {
            Image(systemName: insight.symbol)
                .font(.system(size: 13, weight: .semibold))
                .foregroundStyle(insight.color)
                .frame(width: 20)
            Text(insight.text)
                .font(LLFont.label(12, weight: .medium))
                .foregroundStyle(LL.C.text.opacity(0.9))
                .fixedSize(horizontal: false, vertical: true)
            Spacer(minLength: 0)
        }
        .padding(14)
        .frame(maxWidth: .infinity, alignment: .leading)
        .crtPanel(tint: insight.color)
    }
}

// MARK: - Preview

#Preview("Stats") {
    StatsView(store: StatsSample.store())
        .preferredColorScheme(.dark)
}
