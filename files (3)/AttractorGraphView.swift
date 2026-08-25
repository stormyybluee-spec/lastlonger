//
//  AttractorGraphView.swift
//  LAST LONGER
//
//  Stamina Score plot. Deliberately NOT Swift Charts: the trajectory is a
//  6,000-point parametric curve that needs additive phosphor glow and a
//  brightened recent tail. Chart's mark system can render the polyline but not
//  the layered blur, and it allocates a mark per point. Canvas draws one Path.
//
//  Graphs 2 and 3 (duration, pullback) DO use Swift Charts — see StatsView.
//

import SwiftUI

struct AttractorGraphView: View {

    let scores: [Double]
    var height: CGFloat = 230

    @State private var trajectory: AttractorTrajectory = .empty
    @State private var pulse = false
    @Environment(\.accessibilityReduceMotion) private var reduceMotion

    var body: some View {
        ZStack {
            InstrumentGrid(divisions: 10, color: LL.C.grid.opacity(0.75))

            Canvas { ctx, size in
                guard trajectory.points.count > 2 else { return }

                var full = Path()
                var tail = Path()

                for (i, p) in trajectory.points.enumerated() {
                    let pt = CGPoint(x: p.x * size.width, y: p.y * size.height)
                    if i == 0 { full.move(to: pt) } else { full.addLine(to: pt) }
                    if i >= trajectory.recentIndex {
                        if i == trajectory.recentIndex { tail.move(to: pt) } else { tail.addLine(to: pt) }
                    }
                }

                // Bloom pass.
                ctx.drawLayer { layer in
                    layer.addFilter(.blur(radius: 7))
                    layer.stroke(full, with: .color(LL.C.blue.opacity(0.40)),
                                 style: StrokeStyle(lineWidth: 2.4, lineCap: .round, lineJoin: .round))
                }

                // Body of the orbit.
                ctx.stroke(full, with: .color(LL.C.blue.opacity(0.62)),
                           style: StrokeStyle(lineWidth: 0.85, lineCap: .round, lineJoin: .round))

                // Most recent arc reads hot.
                ctx.drawLayer { layer in
                    layer.addFilter(.blur(radius: 5))
                    layer.stroke(tail, with: .color(Color(hex: 0x64D2FF).opacity(0.85)),
                                 style: StrokeStyle(lineWidth: 2.8, lineCap: .round, lineJoin: .round))
                }
                ctx.stroke(tail, with: .color(Color(hex: 0xB8ECFF)),
                           style: StrokeStyle(lineWidth: 1.3, lineCap: .round, lineJoin: .round))
            }
            .drawingGroup()

            headMarker
            readout
            Scanlines(spacing: 3, opacity: 0.18)
        }
        .frame(height: height)
        .background(LL.C.graphite)
        .clipShape(RoundedRectangle(cornerRadius: LL.Metric.corner, style: .continuous))
        .overlay(
            RoundedRectangle(cornerRadius: LL.Metric.corner, style: .continuous)
                .strokeBorder(LL.C.blue.opacity(0.25), lineWidth: 1)
        )
        .task(id: scores) {
            let s = scores
            // Integration is ~7k RK4 steps; keep it off the main actor.
            let built = await Task.detached(priority: .userInitiated) {
                AttractorBuilder.build(scores: s)
            }.value
            trajectory = built
            if !reduceMotion { pulse = true }
        }
        .accessibilityElement(children: .ignore)
        .accessibilityLabel("Stamina score trajectory")
        .accessibilityValue(
            scores.isEmpty
            ? "No data"
            : "Current score \(Int(scores.last ?? 0)). Orbit regime \(trajectory.regime)."
        )
    }

    // MARK: Head

    private var headMarker: some View {
        GeometryReader { geo in
            let p = trajectory.head
            Circle()
                .fill(Color(hex: 0xD6F4FF))
                .frame(width: 6, height: 6)
                .shadow(color: LL.C.blue, radius: 6)
                .scaleEffect(pulse && !reduceMotion ? 1.7 : 1.0)
                .opacity(trajectory.points.isEmpty ? 0 : 1)
                .position(x: p.x * geo.size.width, y: p.y * geo.size.height)
                .animation(
                    reduceMotion ? nil : .easeInOut(duration: 1.1).repeatForever(autoreverses: true),
                    value: pulse
                )
        }
        .allowsHitTesting(false)
    }

    // MARK: Instrument readout

    private var readout: some View {
        VStack {
            HStack(alignment: .top) {
                VStack(alignment: .leading, spacing: 2) {
                    Text("RÖSSLER  a=0.20  b=0.20")
                        .font(LLFont.terminal(9))
                        .foregroundStyle(LL.C.dim)
                    Text(String(format: "c=%.2f", trajectory.currentC))
                        .font(LLFont.terminal(9))
                        .foregroundStyle(LL.C.blue)
                }
                Spacer()
                VStack(alignment: .trailing, spacing: 2) {
                    Text(trajectory.regime.uppercased())
                        .font(LLFont.terminal(9))
                        .tracking(1)
                        .foregroundStyle(regimeColor)
                    Text("\(trajectory.points.count) PTS")
                        .font(LLFont.terminal(9))
                        .foregroundStyle(LL.C.dim)
                }
            }
            Spacer()
            HStack {
                Text("CHAOTIC")
                    .font(LLFont.terminal(8)).tracking(1)
                    .foregroundStyle(LL.C.red.opacity(0.7))
                Rectangle()
                    .fill(LinearGradient(colors: [LL.C.red.opacity(0.55), LL.C.green.opacity(0.55)],
                                         startPoint: .leading, endPoint: .trailing))
                    .frame(height: 1)
                Text("LOCKED")
                    .font(LLFont.terminal(8)).tracking(1)
                    .foregroundStyle(LL.C.green.opacity(0.7))
            }
        }
        .padding(12)
        .allowsHitTesting(false)
    }

    private var regimeColor: Color {
        switch trajectory.currentC {
        case ..<3.5: return LL.C.green
        case ..<5.0: return LL.C.yellow
        default:     return LL.C.red
        }
    }
}
