//
//  CircuitHeatMapView.swift
//  LAST LONGER
//
//  Precision Lo-Fi heat map. Each day is a solder pad on a deep-blue substrate.
//  Gold traces route out of pads that carry a session and terminate in vias, so
//  a trained month reads as a populated board and an untrained one reads as bare
//  copper. Drawn entirely in Canvas — the grid, the routing and the hit testing
//  all share one layout struct so they cannot drift apart.
//

import SwiftUI
import UIKit

// MARK: - Layout

struct HeatMapLayout {
    let size: CGSize
    let columns = 7
    let rows: Int
    let cell: CGSize
    let padInset: CGFloat = 4

    init(size: CGSize, count: Int) {
        self.size = size
        self.rows = max(1, Int(ceil(Double(count) / 7.0)))
        self.cell = CGSize(width: size.width / 7,
                           height: size.height / CGFloat(rows))
    }

    func frame(index: Int) -> CGRect {
        let row = index / columns
        let col = index % columns
        return CGRect(x: CGFloat(col) * cell.width,
                      y: CGFloat(row) * cell.height,
                      width: cell.width,
                      height: cell.height)
    }

    func pad(index: Int) -> CGRect {
        frame(index: index).insetBy(dx: padInset, dy: padInset)
    }

    /// Gold bus running along the bottom of each row.
    func busY(row: Int) -> CGFloat {
        CGFloat(row) * cell.height + cell.height - padInset * 0.5
    }

    func index(at point: CGPoint) -> Int? {
        guard point.x >= 0, point.y >= 0, point.x < size.width, point.y < size.height else { return nil }
        let col = Int(point.x / cell.width)
        let row = Int(point.y / cell.height)
        return row * columns + min(col, columns - 1)
    }
}

// MARK: - View

struct CircuitHeatMapView: View {

    let days: [DayActivity]
    @State private var selected: DayActivity?

    private var rows: Int { max(1, Int(ceil(Double(days.count) / 7.0))) }
    private var boardHeight: CGFloat { CGFloat(rows) * 42 }

    var body: some View {
        VStack(spacing: 8) {
            weekdayRail

            GeometryReader { geo in
                let layout = HeatMapLayout(size: geo.size, count: days.count)
                Canvas { ctx, size in
                    drawSubstrate(ctx, size: size)
                    drawSilkscreen(ctx, layout: layout)
                    drawTraces(ctx, layout: layout)
                    drawPads(ctx, layout: layout)
                }
                .contentShape(Rectangle())
                .gesture(
                    SpatialTapGesture().onEnded { value in
                        guard let i = layout.index(at: value.location), i < days.count else { return }
                        let day = days[i]
                        guard day.state != .future else { return }
                        UIImpactFeedbackGenerator(style: .rigid).impactOccurred()
                        selected = day
                    }
                )
            }
            .frame(height: boardHeight)
            .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
            .overlay(
                RoundedRectangle(cornerRadius: 8, style: .continuous)
                    .strokeBorder(LL.C.pcbTrace.opacity(0.30), lineWidth: 1)
            )
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Training board")
            .accessibilityValue(accessibilitySummary)

            legend
        }
        .sheet(item: $selected) { DayDetailSheet(day: $0) }
    }

    // MARK: Rail

    private var weekdayRail: some View {
        let symbols = Calendar.current.veryShortWeekdaySymbols
        let first = Calendar.current.firstWeekday - 1
        let ordered = Array(symbols[first...] + symbols[..<first])

        return HStack(spacing: 0) {
            ForEach(Array(ordered.enumerated()), id: \.offset) { _, s in
                Text(s.uppercased())
                    .font(LLFont.terminal(9))
                    .tracking(0.8)
                    .foregroundStyle(LL.C.silkscreen.opacity(0.45))
                    .frame(maxWidth: .infinity)
            }
        }
    }

    private var legend: some View {
        HStack(spacing: 14) {
            legendKey(LL.C.green, "Held")
            legendKey(LL.C.red, "End goal")
            legendKey(LL.C.dim, "No session")
            Spacer()
            Text("INTENSITY = DURATION")
                .font(LLFont.terminal(8))
                .tracking(0.9)
                .foregroundStyle(LL.C.dim)
        }
    }

    private func legendKey(_ color: Color, _ text: String) -> some View {
        HStack(spacing: 5) {
            RoundedRectangle(cornerRadius: 1.5)
                .fill(color)
                .frame(width: 7, height: 7)
            LLLabel(text, color: LL.C.label, size: 9)
        }
    }

    private var accessibilitySummary: String {
        let trained = days.filter { $0.state == .trained }.count
        let ended = days.filter { $0.state == .reachedEndGoal }.count
        return "\(trained) days held at threshold, \(ended) days reached end goal this month."
    }

    // MARK: Drawing

    private func drawSubstrate(_ ctx: GraphicsContext, size: CGSize) {
        let rect = CGRect(origin: .zero, size: size)
        ctx.fill(Path(rect), with: .linearGradient(
            Gradient(colors: [LL.C.pcbSub, LL.C.pcbDeep]),
            startPoint: .zero,
            endPoint: CGPoint(x: size.width, y: size.height)
        ))
    }

    /// Sharp white silkscreen grid — the printed layer under the copper.
    private func drawSilkscreen(_ ctx: GraphicsContext, layout: HeatMapLayout) {
        var path = Path()
        for c in 1..<layout.columns {
            let x = CGFloat(c) * layout.cell.width
            path.move(to: CGPoint(x: x, y: 0))
            path.addLine(to: CGPoint(x: x, y: layout.size.height))
        }
        for r in 1..<max(1, layout.rows) {
            let y = CGFloat(r) * layout.cell.height
            path.move(to: CGPoint(x: 0, y: y))
            path.addLine(to: CGPoint(x: layout.size.width, y: y))
        }
        ctx.stroke(path, with: .color(LL.C.silkscreen.opacity(0.10)), lineWidth: 0.5)
    }

    /// Gold routing. Bus per row, stubs from populated pads with 45° miters,
    /// vias at each junction.
    private func drawTraces(_ ctx: GraphicsContext, layout: HeatMapLayout) {
        var cold = Path()
        var hot = Path()
        var vias: [CGPoint] = []

        for row in 0..<layout.rows {
            let y = layout.busY(row: row)
            let rowStart = row * layout.columns
            let populated = (0..<layout.columns).filter { col in
                let i = rowStart + col
                return i < days.count && days[i].sessionCount > 0
            }
            guard !populated.isEmpty else { continue }

            // Bus spans from the first to the last populated pad in the row.
            let firstX = layout.frame(index: rowStart + populated.first!).midX
            let lastX  = layout.frame(index: rowStart + populated.last!).midX
            cold.move(to: CGPoint(x: firstX, y: y))
            cold.addLine(to: CGPoint(x: lastX, y: y))

            for col in populated {
                let i = rowStart + col
                let pad = layout.pad(index: i)
                let x = pad.midX
                let miter: CGFloat = 5

                var stub = Path()
                stub.move(to: CGPoint(x: x, y: pad.maxY))
                stub.addLine(to: CGPoint(x: x, y: y - miter))
                stub.addLine(to: CGPoint(x: x + miter, y: y))   // 45° break-out

                if days[i].intensity > 0.55 { hot.addPath(stub) } else { cold.addPath(stub) }
                vias.append(CGPoint(x: x + miter, y: y))
            }

            // Terminate the bus with a via on each end.
            vias.append(CGPoint(x: firstX, y: y))
        }

        ctx.stroke(cold, with: .color(LL.C.pcbTrace.opacity(0.62)),
                   style: StrokeStyle(lineWidth: 1.4, lineCap: .round, lineJoin: .round))

        ctx.drawLayer { layer in
            layer.addFilter(.blur(radius: 2.5))
            layer.stroke(hot, with: .color(LL.C.pcbTraceHot.opacity(0.75)),
                         style: StrokeStyle(lineWidth: 2.2, lineCap: .round, lineJoin: .round))
        }
        ctx.stroke(hot, with: .color(LL.C.pcbTraceHot),
                   style: StrokeStyle(lineWidth: 1.5, lineCap: .round, lineJoin: .round))

        for v in vias {
            let outer = CGRect(x: v.x - 2.6, y: v.y - 2.6, width: 5.2, height: 5.2)
            let inner = CGRect(x: v.x - 1.1, y: v.y - 1.1, width: 2.2, height: 2.2)
            ctx.fill(Path(ellipseIn: outer), with: .color(LL.C.pcbTrace.opacity(0.85)))
            ctx.fill(Path(ellipseIn: inner), with: .color(LL.C.pcbDeep))
        }
    }

    private func drawPads(_ ctx: GraphicsContext, layout: HeatMapLayout) {
        for (i, day) in days.enumerated() {
            let pad = layout.pad(index: i)
            let shape = Path(roundedRect: pad, cornerRadius: 2.5, style: .continuous)

            switch day.state {
            case .future:
                ctx.stroke(shape, with: .color(LL.C.silkscreen.opacity(0.06)), lineWidth: 0.5)

            case .untracked:
                ctx.fill(shape, with: .color(LL.C.dim.opacity(0.16)))
                ctx.stroke(shape, with: .color(LL.C.pcbTrace.opacity(0.18)), lineWidth: 0.75)
                let hole = CGRect(x: pad.midX - 1.2, y: pad.midY - 1.2, width: 2.4, height: 2.4)
                ctx.fill(Path(ellipseIn: hole), with: .color(LL.C.pcbDeep))

            case .trained, .reachedEndGoal:
                let tint = day.state == .trained ? LL.C.green : LL.C.red
                let alpha = 0.30 + day.intensity * 0.62

                ctx.drawLayer { layer in
                    layer.addFilter(.blur(radius: 4))
                    layer.fill(shape, with: .color(tint.opacity(alpha * 0.55)))
                }
                ctx.fill(shape, with: .color(tint.opacity(alpha)))
                ctx.stroke(shape, with: .color(LL.C.pcbTraceHot.opacity(0.55)), lineWidth: 0.9)

                if day.sessionCount > 1 {
                    let text = Text("\(day.sessionCount)")
                        .font(LLFont.terminal(8))
                        .foregroundStyle(LL.C.silkscreen)
                    ctx.draw(text, at: CGPoint(x: pad.midX, y: pad.midY))
                }
            }
        }
    }
}

// MARK: - Day detail

struct DayDetailSheet: View {
    let day: DayActivity
    @Environment(\.dismiss) private var dismiss

    private var title: String {
        day.day.formatted(.dateTime.weekday(.wide).month(.abbreviated).day())
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                GlitchText(text: title.uppercased(), size: 14)
                Spacer()
                Button { dismiss() } label: {
                    Image(systemName: "xmark.circle.fill")
                        .font(.system(size: 24))
                        .foregroundStyle(LL.C.dim)
                }
                .accessibilityLabel("Close")
            }

            if day.sessionCount == 0 {
                VStack(alignment: .leading, spacing: 6) {
                    LLLabel("No session logged", color: LL.C.label, size: 12)
                    Text("Bare pad. Nothing routed.")
                        .font(LLFont.terminal(11))
                        .foregroundStyle(LL.C.dim)
                }
            } else {
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 12) {
                    detailTile("Sessions", "\(day.sessionCount)", LL.C.blue)
                    detailTile("Duration", "\(day.minutes)m", LL.C.blue)
                    detailTile("Thresholds", "\(day.thresholds)", LL.C.yellow)
                    detailTile("Pullback", "\(Int(day.avgPullback * 100))%",
                               day.avgPullback >= 0.7 ? LL.C.green : LL.C.red)
                }

                HStack(spacing: 8) {
                    Image(systemName: day.state == .reachedEndGoal ? "nosign" : "checkmark.shield.fill")
                        .foregroundStyle(day.state == .reachedEndGoal ? LL.C.red : LL.C.green)
                    LLLabel(day.state == .reachedEndGoal ? "Reached end goal" : "Held to session end",
                            color: LL.C.text, size: 11)
                }
            }

            Spacer()
        }
        .padding(20)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(LL.C.bg)
        .presentationDetents([.height(320)])
        .presentationDragIndicator(.visible)
    }

    private func detailTile(_ label: String, _ value: String, _ tint: Color) -> some View {
        VStack(alignment: .leading, spacing: 4) {
            LLLabel(label, size: 9)
            Text(value)
                .font(LLFont.readout(24))
                .foregroundStyle(tint)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(12)
        .crtPanel(tint: tint, corner: 8)
    }
}
