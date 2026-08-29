//
//  LiquidGlassBox.swift
//  LAST LONGER
//
//  The liquid glass surface, and the large-box form of it. Home screen only.
//
//  Three layers, bottom to top. The liquid lives ONLY on the perimeter -
//  there is deliberately nothing filling the interior.
//
//    1. Glass body    A clean, semi-transparent DARK fill. No material and no
//                     blur: those lightened the black ground and washed the
//                     Home background out, so the panel now darkens the ground
//                     it sits on rather than lifting it. A hairline chrome rim
//                     gives it edge thickness.
//    2. Content       Whatever the caller puts in.
//    3. Liquid edge   A wave travelling around the border, shaded with the
//                     chroma ramp, amplitude and drift biased by tilt. Border
//                     only.
//
//  `LiquidGlassTile` is a thin wrapper over this, so both forms share one
//  surface and cannot drift apart.
//
//  Performance: exactly ONE TimelineView per surface, running at 30fps, and
//  only the border Canvas is inside it. The fill, the rim and the content sit
//  outside and never re-evaluate on a tick.
//

import SwiftUI
import Foundation

// MARK: - Surface

/// The shared liquid glass treatment. Wraps any content.
struct LiquidGlassSurface<Content: View>: View {

    var cornerRadius: CGFloat = LL.Metric.corner
    /// Biases the chroma ramp so neighbouring tiles are not in lockstep.
    var phaseOffset: Double = 0
    /// Wave height in points, before tilt.
    var amplitude: CGFloat = 2.6
    @ViewBuilder var content: Content

    @Environment(\.accessibilityReduceMotion) private var reduceMotion
    @Environment(\.accessibilityReduceTransparency) private var reduceTransparency
    @Environment(\.scenePhase) private var scenePhase

    private var shape: RoundedRectangle {
        RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
    }

    var body: some View {
        content
            // Order matters and is easy to get backwards: .background(A) puts A
            // behind the receiver, so chaining puts the LAST one furthest back.
            // Back to front this reads glassBody, liquidLayer, content.
            .background(liquidLayer)
            .background(glassBody)
            .overlay(chromeRim)
            .clipShape(shape)
            .liquidGravity()
    }

    // MARK: 1 + 2. Blur and glass body

    private var glassBody: some View {
        // Clean, minimal, and DARK. No blur material of any kind: the earlier
        // blur sampled the screen behind the panel and lightened the black
        // ground, which is what washed the Home background out. A
        // plain semi-transparent card fill darkens the ground instead of
        // lifting it. Reduce Transparency goes fully solid.
        shape.fill(reduceTransparency ? LL.Palette.card : LL.Palette.card.opacity(0.6))
    }

    // MARK: 2b. Chrome rim

    private var chromeRim: some View {
        shape.strokeBorder(
            LinearGradient(
                colors: [
                    LL.Palette.chromeLight.opacity(0.38),
                    LL.Palette.rule.opacity(0.55),
                    LL.Palette.chromeDark.opacity(0.75)
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            ),
            lineWidth: 1
        )
        .allowsHitTesting(false)
    }

    // MARK: The liquid edge

    /// The wave travelling around the border, and nothing else. The interior
    /// chrome specular that used to fill the panel is gone: the liquid now
    /// lives ONLY on the perimeter, never inside.
    private var liquidLayer: some View {
        TimelineView(.animation(minimumInterval: 1.0 / 30.0, paused: isPaused)) { timeline in
            Canvas { ctx, size in
                // Frozen at a fixed, pleasant phase under Reduce Motion.
                let t = reduceMotion
                    ? 4.2
                    : timeline.date.timeIntervalSinceReferenceDate * 0.55 + phaseOffset

                let motion = LiquidMotionManager.shared
                let tilt = CGPoint(x: motion.tiltX, y: motion.tiltY)

                drawLiquidEdge(&ctx, size: size, t: t, tilt: tilt)
            }
        }
        .allowsHitTesting(false)
        .accessibilityHidden(true)
    }

    private var isPaused: Bool {
        reduceMotion || scenePhase != .active
    }

    /// The wave travelling around the border.
    ///
    /// Rides the rim itself, NOT an inset interior loop. The earlier version sat
    /// the wave several points inside the edge with a blur bloom, which read as
    /// a glowing coloured outline filling the tile. This one is centred on the
    /// border, a hair inside the rim, with a small swing so the surface's own
    /// clipShape trims its outer half. What survives is a thin, subtle liquid
    /// line exactly on the perimeter. No bloom, no glow, nothing in the middle.
    private func drawLiquidEdge(_ ctx: inout GraphicsContext,
                                size: CGSize, t: Double, tilt: CGPoint) {

        let inset: CGFloat = 1.5
        let rect = CGRect(origin: .zero, size: size).insetBy(dx: inset, dy: inset)
        let waveRadius = max(2, cornerRadius - inset)
        guard rect.width > waveRadius * 2, rect.height > waveRadius * 2 else { return }

        // Subtle. A gentle swell of about a point, biased lightly by tilt.
        let pull = min(1.0, (abs(tilt.x) + abs(tilt.y)))
        let amp = amplitude * 0.42 * (1 + pull * 0.8)
        let drift = t * 1.2 + (tilt.x + tilt.y) * 1.2

        let samples = 132
        var wave = Path()

        for i in 0...samples {
            let u = Double(i) / Double(samples)
            let (point, normal) = Self.perimeter(of: rect, radius: waveRadius, at: u)

            // Two waves at different rates so the border never looks periodic.
            let w1 = sin(u * .pi * 6 + drift)
            let w2 = sin(u * .pi * 10 - drift * 0.7 + phaseOffset)

            // Gravity deepens the side the phone is tilted toward, gently.
            let facing = normal.dx * tilt.x + normal.dy * tilt.y
            let gravity = CGFloat(facing) * amp * 0.6

            let offset = CGFloat(w1 * 0.6 + w2 * 0.4) * amp + gravity
            let p = CGPoint(x: point.x + normal.dx * offset,
                            y: point.y + normal.dy * offset)
            i == 0 ? wave.move(to: p) : wave.addLine(to: p)
        }
        wave.closeSubpath()

        let shading = GraphicsContext.Shading.linearGradient(
            Gradient(colors: LL.Palette.chromaLoop),
            startPoint: CGPoint(x: rect.minX, y: rect.minY),
            endPoint: CGPoint(x: rect.maxX, y: rect.maxY)
        )

        // One thin, half-opacity core stroke. No bloom pass, so the edge is a
        // quiet moving line rather than a glowing loop.
        ctx.drawLayer { layer in
            layer.opacity = 0.5
            layer.stroke(wave, with: shading,
                         style: StrokeStyle(lineWidth: 1, lineJoin: .round))
        }
    }

    // MARK: Perimeter

    /// A point on a rounded rectangle at `u` in 0...1, with its outward normal.
    ///
    /// Walks the four straight runs and four corner arcs in order, which keeps
    /// the normals exact instead of approximating them by finite difference.
    static func perimeter(of rect: CGRect,
                          radius: CGFloat,
                          at u: Double) -> (CGPoint, CGVector) {

        let r = min(radius, min(rect.width, rect.height) / 2)
        let straightH = rect.width - r * 2
        let straightV = rect.height - r * 2
        let arc = CGFloat.pi * r / 2
        let total = (straightH + straightV) * 2 + arc * 4
        guard total > 0 else { return (CGPoint(x: rect.midX, y: rect.midY), CGVector(dx: 0, dy: -1)) }

        var d = CGFloat(u.truncatingRemainder(dividingBy: 1)) * total
        if d < 0 { d += total }

        func onArc(center: CGPoint, from start: CGFloat, travelled: CGFloat) -> (CGPoint, CGVector) {
            let angle = start + (travelled / r)
            let n = CGVector(dx: cos(angle), dy: sin(angle))
            return (CGPoint(x: center.x + n.dx * r, y: center.y + n.dy * r), n)
        }

        // Top run, left to right.
        if d < straightH {
            return (CGPoint(x: rect.minX + r + d, y: rect.minY), CGVector(dx: 0, dy: -1))
        }
        d -= straightH

        // Top-right corner.
        if d < arc {
            return onArc(center: CGPoint(x: rect.maxX - r, y: rect.minY + r),
                         from: -.pi / 2, travelled: d)
        }
        d -= arc

        // Right run.
        if d < straightV {
            return (CGPoint(x: rect.maxX, y: rect.minY + r + d), CGVector(dx: 1, dy: 0))
        }
        d -= straightV

        // Bottom-right corner.
        if d < arc {
            return onArc(center: CGPoint(x: rect.maxX - r, y: rect.maxY - r),
                         from: 0, travelled: d)
        }
        d -= arc

        // Bottom run, right to left.
        if d < straightH {
            return (CGPoint(x: rect.maxX - r - d, y: rect.maxY), CGVector(dx: 0, dy: 1))
        }
        d -= straightH

        // Bottom-left corner.
        if d < arc {
            return onArc(center: CGPoint(x: rect.minX + r, y: rect.maxY - r),
                         from: .pi / 2, travelled: d)
        }
        d -= arc

        // Left run, bottom to top.
        if d < straightV {
            return (CGPoint(x: rect.minX, y: rect.maxY - r - d), CGVector(dx: -1, dy: 0))
        }
        d -= straightV

        // Top-left corner, closing the loop.
        return onArc(center: CGPoint(x: rect.minX + r, y: rect.minY + r),
                     from: .pi, travelled: d)
    }
}

// MARK: - Box

/// The large liquid glass panel. Used on Home for the RECENT list.
struct LiquidGlassBox<Content: View>: View {

    var cornerRadius: CGFloat = LL.Metric.corner
    var phaseOffset: Double = 0
    @ViewBuilder var content: Content

    var body: some View {
        LiquidGlassSurface(cornerRadius: cornerRadius,
                           phaseOffset: phaseOffset,
                           // A larger panel needs a shallower wave, or the
                           // border reads as a decoration rather than a rim.
                           amplitude: 2.2) {
            content
        }
    }
}

// MARK: - Preview

#Preview("Liquid glass box") {
    ZStack {
        LL.Palette.background.ignoresSafeArea()
        RadialGridBackdrop(anchor: .center).ignoresSafeArea()

        LiquidGlassBox {
            VStack(alignment: .leading, spacing: 12) {
                Text("RECENT").llLabelStyle(10)
                Text("Something behind the panel to blur")
                    .font(.llData(12))
                    .foregroundStyle(LL.Palette.textDim)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(16)
        }
        .padding(24)
    }
    .preferredColorScheme(.dark)
}
