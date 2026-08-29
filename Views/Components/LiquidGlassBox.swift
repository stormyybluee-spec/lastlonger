//
//  LiquidGlassBox.swift
//  LAST LONGER
//
//  The liquid glass surface, and the large-box form of it. Home screen only.
//
//  Five layers, bottom to top:
//
//    1. Background blur   .ultraThinMaterial, so the circuit grid and the
//                         generative field behind Home warp through the panel.
//    2. Glass body        A cool vertical sheen over the blur, plus a hairline
//                         chrome rim that is bright at the top and steel at
//                         the bottom, which is what makes it read as a solid
//                         with thickness rather than a translucent rectangle.
//    3. Chrome specular   A soft highlight that slides with gravity. Drawn in
//                         the same Canvas as the edge, clipped to the shape.
//    4. Content           Whatever the caller puts in.
//    5. Liquid edge       A wave travelling around the border, shaded with the
//                         chroma ramp, amplitude and drift biased by tilt.
//
//  `LiquidGlassTile` is a thin wrapper over this, so both forms share one
//  surface and cannot drift apart.
//
//  Performance: exactly ONE TimelineView per surface, running at 30fps, and
//  only the Canvas is inside it. The material, the sheen, the rim and the
//  content all sit outside and never re-evaluate on a tick.
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

    @ViewBuilder
    private var glassBody: some View {
        ZStack {
            // Reduce Transparency: drop the blur entirely and sit on the solid
            // card colour. The panel keeps its shape and rim, loses the depth.
            if reduceTransparency {
                shape.fill(LL.Palette.card)
            } else {
                shape.fill(.ultraThinMaterial)
                shape.fill(LL.Palette.glass)
            }

            // Cool sheen, brighter at the top edge where light would land.
            shape.fill(
                LinearGradient(
                    colors: [
                        LL.Palette.chromeLight.opacity(reduceTransparency ? 0.05 : 0.11),
                        Color.clear,
                        LL.Palette.chromeDark.opacity(0.28)
                    ],
                    startPoint: .top,
                    endPoint: .bottom
                )
            )
        }
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

    // MARK: 3 + 5. Specular and liquid edge

    private var liquidLayer: some View {
        TimelineView(.animation(minimumInterval: 1.0 / 30.0, paused: isPaused)) { timeline in
            Canvas { ctx, size in
                // Frozen at a fixed, pleasant phase under Reduce Motion.
                let t = reduceMotion
                    ? 4.2
                    : timeline.date.timeIntervalSinceReferenceDate * 0.55 + phaseOffset

                let motion = LiquidMotionManager.shared
                let tilt = CGPoint(x: motion.tiltX, y: motion.tiltY)

                drawSpecular(&ctx, size: size, t: t, tilt: tilt)
                drawLiquidEdge(&ctx, size: size, t: t, tilt: tilt)
            }
        }
        .allowsHitTesting(false)
        .accessibilityHidden(true)
    }

    private var isPaused: Bool {
        reduceMotion || scenePhase != .active
    }

    /// The chrome highlight. Sits where gravity says the light pools, drifting
    /// slowly when the phone is flat so the glass is never fully still.
    private func drawSpecular(_ ctx: inout GraphicsContext,
                              size: CGSize, t: Double, tilt: CGPoint) {

        let driftX = cos(t * 0.6) * 0.16
        let driftY = sin(t * 0.42) * 0.16
        let cx = size.width  * (0.5 + driftX - tilt.x * 0.30)
        let cy = size.height * (0.5 + driftY - tilt.y * 0.30)
        let radius = max(size.width, size.height) * 0.62

        var layer = ctx
        layer.clip(to: shape.path(in: CGRect(origin: .zero, size: size)))
        layer.blendMode = .plusLighter
        layer.fill(
            Path(ellipseIn: CGRect(x: cx - radius, y: cy - radius,
                                   width: radius * 2, height: radius * 2)),
            with: .radialGradient(
                Gradient(colors: [
                    LL.Palette.chromeLight.opacity(reduceTransparency ? 0.05 : 0.13),
                    Color.clear
                ]),
                center: CGPoint(x: cx, y: cy),
                startRadius: 0,
                endRadius: radius
            )
        )
    }

    /// The wave travelling around the border.
    ///
    /// Every sample carries an outward normal, so the displacement pushes out
    /// of the shape rather than sideways - that is what keeps it reading as a
    /// liquid clinging to the rim instead of a wobbling outline.
    private func drawLiquidEdge(_ ctx: inout GraphicsContext,
                                size: CGSize, t: Double, tilt: CGPoint) {

        // Inset by the full wave swing, plus a hair, so no peak is clipped by
        // the surface's own clipShape. The liquid then sits just inside the
        // rim rather than being sliced in half by it.
        let inset = amplitude * 2.1 + 1.5
        let rect = CGRect(origin: .zero, size: size).insetBy(dx: inset, dy: inset)
        let waveRadius = max(2, cornerRadius - inset)
        guard rect.width > waveRadius * 2, rect.height > waveRadius * 2 else { return }

        // Gravity does two things: pulls the wave deeper on the low side, and
        // speeds its travel in the direction of the pull.
        let pull = min(1.0, (abs(tilt.x) + abs(tilt.y)))
        let amp = amplitude * (1 + pull * 1.6)
        let drift = t * 1.4 + (tilt.x + tilt.y) * 1.8

        let samples = 132
        var wave = Path()

        for i in 0...samples {
            let u = Double(i) / Double(samples)
            let (point, normal) = Self.perimeter(of: rect, radius: waveRadius, at: u)

            // Two waves at different rates so the border never looks periodic.
            let w1 = sin(u * .pi * 6 + drift)
            let w2 = sin(u * .pi * 10 - drift * 0.7 + phaseOffset)

            // Gravity deepens the side the phone is tilted toward.
            let facing = normal.dx * tilt.x + normal.dy * tilt.y
            let gravity = CGFloat(facing) * amp * 0.9

            let offset = CGFloat(w1 * 0.65 + w2 * 0.35) * amp + gravity
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

        // Bloom first, then the core, so the edge glows rather than outlines.
        ctx.drawLayer { layer in
            layer.addFilter(.blur(radius: 4))
            layer.stroke(wave, with: shading,
                         style: StrokeStyle(lineWidth: 2.4, lineJoin: .round))
        }
        ctx.stroke(wave, with: shading,
                   style: StrokeStyle(lineWidth: 0.9, lineJoin: .round))
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
