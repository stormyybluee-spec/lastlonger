//
//  InstrumentTabBar.swift
//  LAST LONGER
//
//  "The Sampler" - the bottom navigation as a piece of worked cloth.
//
//  A sampler is a practice cloth: rows of the same motif worked over and over
//  until the hand knows them. One rule underneath everything here:
//
//      The cloth is woven, the icons are stitched, and nothing is drawn.
//
//  Three things make it read as material rather than as a texture overlay:
//
//    1. Threads cross, they do not blend. Warp over weft, hard edges.
//    2. Every stitch catches light on one side only, from the upper left.
//       The press inverts that, which is the whole physical-button trick.
//    3. Nothing is perfectly regular. Every endpoint is jittered by a
//       fraction of a point, hashed on index so the cloth never crawls.
//
//  All Canvas. No Core Image, no blur stacks, no image assets. The cloth is
//  drawn once per state into a drawingGroup; only selection and press cause a
//  redraw.
//
//  Full direction: Docs/NavBar-Textile-Direction.md
//

import SwiftUI
import Foundation

// MARK: - Thread

/// Deterministic jitter. Every irregularity in the cloth is a pure function of
/// its own index, never `random()` - a random value re-rolled each frame makes
/// the weave crawl, which reads as a rendering bug rather than as fabric.
private func threadHash(_ i: Int) -> Double {
    var x = UInt64(bitPattern: Int64(i &* 2_654_435_761)) &+ 0x9E37_79B9_7F4A_7C15
    x = (x ^ (x >> 30)) &* 0xBF58_476D_1CE4_E5B9
    x = (x ^ (x >> 27)) &* 0x94D0_49BB_1331_11EB
    x = x ^ (x >> 31)
    return Double(x % 100_000) / 100_000.0
}

/// The one colour added for this direction. Not an interface colour: it exists
/// only as the light catching the upper-left leg of a stitch.
private let linenHighlight = Color(hex: 0xC8BCA6)

// MARK: - Motifs

/// The four tab motifs as 11 x 11 counted grids, authored in the same style as
/// `PixelType.glyphs`. '#' is a worked stitch.
///
/// Stats is bars rather than a waveform on purpose: at eleven cells an ECG line
/// turns to mush, and bars read as "stats" instantly at any size.
enum TabMotif {

    static let side = 11

    static let home: [String] = [
        "...........",
        ".####.####.",
        ".####.####.",
        ".####.####.",
        ".####.####.",
        "...........",
        ".####.####.",
        ".####.####.",
        ".####.####.",
        ".####.####.",
        "..........."
    ]

    static let stats: [String] = [
        "...........",
        "........##.",
        "........##.",
        ".....##.##.",
        ".....##.##.",
        "..##.##.##.",
        "..##.##.##.",
        "..##.##.##.",
        "..##.##.##.",
        "...........",
        "..........."
    ]

    static let challenges: [String] = [
        "...........",
        "...#####...",
        "..#.....#..",
        ".#.......#.",
        ".#..###..#.",
        ".#..###..#.",
        ".#..###..#.",
        ".#.......#.",
        "..#.....#..",
        "...#####...",
        "..........."
    ]

    static let settings: [String] = [
        "...........",
        ".#########.",
        "...##......",
        "...........",
        ".#########.",
        ".......##..",
        "...........",
        ".#########.",
        ".....##....",
        "...........",
        "..........."
    ]
}

// MARK: - Stitch primitives

/// The five primitives everything is built from. Each takes a `GraphicsContext`
/// so they compose inside a single Canvas pass.
private enum Stitch {

    // MARK: Even weave

    /// Warp and weft at 3pt with per-thread alpha jitter, plus the occasional
    /// slub - a thicker thread, the flaw that proves it is cloth.
    ///
    /// `density` lifts every thread together (the selected cell sits denser);
    /// `flatten` is the Reduce Transparency path, which raises the weave rather
    /// than hiding it, so the cloth survives when the system flattens layers.
    static func weave(_ ctx: inout GraphicsContext,
                      size: CGSize,
                      density: Double = 0,
                      flatten: Bool = false) {

        let pitch: CGFloat = 3
        let lift = flatten ? 0.55 : 0

        var x: CGFloat = 0
        while x < size.width {
            let a = (0.16 + threadHash(Int(x)) * 0.10) * (1 + density) + lift * 0.10
            ctx.fill(Path(CGRect(x: x.rounded(), y: 0, width: 1, height: size.height)),
                     with: .color(LL.Palette.card.opacity(min(0.6, a))))
            x += pitch
        }

        var y: CGFloat = 0
        while y < size.height {
            let a = (0.10 + threadHash(Int(y) &* 7 &+ 3) * 0.08) * (1 + density) + lift * 0.08
            ctx.fill(Path(CGRect(x: 0, y: y.rounded(), width: size.width, height: 1)),
                     with: .color(LL.Palette.rule.opacity(min(0.5, a))))
            y += pitch
        }

        let slubs = max(1, Int(size.width / 70))
        for i in 0..<slubs {
            let sy = (threadHash(i &* 31) * Double(size.height)).rounded()
            ctx.fill(Path(CGRect(x: 0, y: sy, width: size.width, height: 2)),
                     with: .color(LL.Palette.rule.opacity(0.18 + lift * 0.10)))
        }
    }

    // MARK: Cross stitch

    /// One stitch: two jittered diagonals, plus a light catch on exactly one
    /// leg. `lightFromTop` false is the pressed state - the catch moves to the
    /// lower-right leg, which is what a real surface does going from proud to
    /// sunk, and it is what stops the button feeling like a rectangle that
    /// changed colour.
    static func cross(_ ctx: inout GraphicsContext,
                      at origin: CGPoint,
                      side: CGFloat,
                      color: Color,
                      lit: Bool,
                      lightFromTop: Bool,
                      seed: Int) {

        let j = side * 0.14
        func off(_ k: Int) -> CGFloat { CGFloat(threadHash(seed &+ k) - 0.5) * j }

        let tl = CGPoint(x: origin.x + off(1),        y: origin.y + off(2))
        let br = CGPoint(x: origin.x + side + off(3), y: origin.y + side + off(4))
        let tr = CGPoint(x: origin.x + side + off(5), y: origin.y + off(6))
        let bl = CGPoint(x: origin.x + off(7),        y: origin.y + side + off(8))

        var a = Path(); a.move(to: tl); a.addLine(to: br)
        var b = Path(); b.move(to: tr); b.addLine(to: bl)

        let w = max(0.8, side * 0.30)
        let style = StrokeStyle(lineWidth: w, lineCap: .round)
        ctx.stroke(a, with: .color(color), style: style)
        ctx.stroke(b, with: .color(color), style: style)

        guard lit else { return }
        var catchPath = Path()
        if lightFromTop {
            catchPath.move(to: tl)
            catchPath.addLine(to: CGPoint(x: origin.x + side * 0.55, y: origin.y + side * 0.55))
        } else {
            catchPath.move(to: CGPoint(x: origin.x + side * 0.45, y: origin.y + side * 0.45))
            catchPath.addLine(to: br)
        }
        ctx.stroke(catchPath,
                   with: .color(linenHighlight.opacity(0.30)),
                   style: StrokeStyle(lineWidth: max(0.4, side * 0.13), lineCap: .round))
    }

    /// Works a counted grid. Only '#' cells carry thread.
    static func counted(_ ctx: inout GraphicsContext,
                        _ grid: [String],
                        origin: CGPoint,
                        cell: CGFloat,
                        color: Color,
                        lit: Bool,
                        lightFromTop: Bool,
                        seed: Int) {

        for (r, row) in grid.enumerated() {
            for (c, ch) in row.enumerated() where ch == "#" {
                cross(&ctx,
                      at: CGPoint(x: origin.x + CGFloat(c) * cell,
                                  y: origin.y + CGFloat(r) * cell),
                      side: cell,
                      color: color,
                      lit: lit,
                      lightFromTop: lightFromTop,
                      seed: seed &+ r &* 31 &+ c &* 7)
            }
        }
    }

    // MARK: Running stitch

    /// The selection line. Dashes plus a needle hole at each end - the holes are
    /// what sell it as hand work rather than as a dashed border.
    static func running(_ ctx: inout GraphicsContext,
                        from x0: CGFloat, to x1: CGFloat, y: CGFloat,
                        color: Color, weight: CGFloat = 2) {

        var line = Path()
        line.move(to: CGPoint(x: x0, y: y))
        line.addLine(to: CGPoint(x: x1, y: y))
        ctx.stroke(line, with: .color(color),
                   style: StrokeStyle(lineWidth: weight, lineCap: .butt, dash: [4, 3]))

        for hx in [x0, x1] {
            let r: CGFloat = 1.4
            ctx.fill(Path(ellipseIn: CGRect(x: hx - r, y: y - r, width: r * 2, height: r * 2)),
                     with: .color(LL.Palette.void.opacity(0.55)))
        }
    }

    // MARK: Satin stitch

    /// Parallel runs clipped to an ellipse, each overshooting the edge, which is
    /// what real satin stitch does. Used only for the ghost motif behind the
    /// bar, where a lobed form is large enough to actually read.
    static func satin(_ ctx: inout GraphicsContext,
                      center: CGPoint, rx: CGFloat, ry: CGFloat,
                      color: Color, spacing: CGFloat, seed: Int) {

        ctx.drawLayer { layer in
            let box = CGRect(x: center.x - rx, y: center.y - ry, width: rx * 2, height: ry * 2)
            layer.clip(to: Path(ellipseIn: box))

            var y = center.y - ry - 2
            while y < center.y + ry + 2 {
                let over = CGFloat(threadHash(seed &+ Int(y) &* 3) - 0.5) * 3
                var run = Path()
                run.move(to: CGPoint(x: center.x - rx - 2 + over, y: y))
                run.addLine(to: CGPoint(x: center.x + rx + 2 + over, y: y))
                layer.stroke(run, with: .color(color),
                             style: StrokeStyle(lineWidth: 1.1, lineCap: .round))
                y += spacing
            }
        }
    }
}

// MARK: - The bar

/// The bottom navigation, worked as cloth.
struct InstrumentTabBar: View {

    /// Content height, excluding the home-indicator safe area. `RootTabView`
    /// reserves exactly this much so nothing is covered.
    static let height: CGFloat = 58

    /// Geometry from the spec. Named so the doc and the code cannot drift.
    private enum Metric {
        static let iconBox: CGFloat = 28          // up from 16: counted work needs room
        static let cell: CGFloat = iconBox / CGFloat(TabMotif.side)
        static let labelBaseline: CGFloat = 0.865 // fraction of bar height
        static let selectionY: CGFloat = 0.945
    }

    @Binding var selection: RootTabView.Tab

    @Environment(\.accessibilityReduceMotion) private var reduceMotion
    @Environment(\.accessibilityReduceTransparency) private var reduceTransparency

    /// Which cell the finger is currently on, if any.
    @State private var pressed: RootTabView.Tab?

    private struct Item {
        let tab: RootTabView.Tab
        let grid: [String]
        let label: String
        let seed: Int
    }

    private let items: [Item] = [
        .init(tab: .home,       grid: TabMotif.home,       label: "HOME",       seed: 11),
        .init(tab: .stats,      grid: TabMotif.stats,      label: "STATS",      seed: 211),
        .init(tab: .challenges, grid: TabMotif.challenges, label: "CHALLENGES", seed: 409),
        .init(tab: .settings,   grid: TabMotif.settings,   label: "SETTINGS",   seed: 607)
    ]

    var body: some View {
        ZStack(alignment: .top) {
            cloth
            controls
        }
        .frame(height: Self.height)
        .background(LL.Palette.background.ignoresSafeArea(edges: .bottom))
        .overlay(alignment: .top) {
            Rectangle().fill(LL.Palette.rule).frame(height: 1)
        }
    }

    // MARK: The cloth

    /// One Canvas for the whole ground, flattened once. It redraws only when
    /// selection or press changes, never per frame.
    private var cloth: some View {
        Canvas { ctx, size in
            Stitch.weave(&ctx, size: size, flatten: reduceTransparency)

            // The ghost: a satin-stitched lobed form bleeding behind the strip.
            // This is where the probability-density reference lives, at the one
            // scale where a lobe is big enough to read.
            let ghost = LL.Palette.circuit.opacity(reduceTransparency ? 0.09 : 0.055)
            Stitch.satin(&ctx,
                         center: CGPoint(x: size.width * 0.5, y: size.height * 0.52),
                         rx: size.width * 0.30, ry: size.height * 0.34,
                         color: ghost, spacing: 3.4, seed: 7)
            Stitch.satin(&ctx,
                         center: CGPoint(x: size.width * 0.5, y: size.height * 0.52),
                         rx: size.width * 0.11, ry: size.height * 0.30,
                         color: ghost, spacing: 3.0, seed: 19)

            // Seams between cells.
            let cw = size.width / CGFloat(items.count)
            for i in 1..<items.count {
                ctx.fill(Path(CGRect(x: (CGFloat(i) * cw).rounded(), y: 9,
                                     width: 1, height: size.height - 18)),
                         with: .color(LL.Palette.rule.opacity(0.5)))
            }
        }
        .drawingGroup()
        .allowsHitTesting(false)
        .accessibilityHidden(true)
    }

    // MARK: The controls

    private var controls: some View {
        HStack(spacing: 0) {
            ForEach(Array(items.enumerated()), id: \.offset) { _, item in
                cell(item)
            }
        }
        .frame(height: Self.height)
        .animation(reduceMotion ? nil : LL.Motion.panelIn, value: selection)
    }

    private func cell(_ item: Item) -> some View {
        let isOn = selection == item.tab
        let isDown = pressed == item.tab

        return ZStack {
            // The motif, worked in thread.
            Canvas { ctx, size in
                // Selected cells sit on denser cloth, so the patch reads as
                // worked rather than merely tinted.
                if isOn {
                    Stitch.weave(&ctx, size: size,
                                 density: 0.15, flatten: reduceTransparency)
                }

                let icon = Metric.cell * CGFloat(TabMotif.side)
                let origin = CGPoint(x: (size.width - icon) / 2,
                                     y: size.height * 0.20 + (isDown ? 1 : 0))

                Stitch.counted(&ctx, item.grid,
                               origin: origin,
                               cell: Metric.cell,
                               color: isOn ? LL.Palette.text.opacity(0.92)
                                           : LL.Palette.textDim.opacity(0.72),
                               lit: isOn,
                               lightFromTop: !isDown,
                               seed: item.seed)

                // Selection line, worked as a running stitch.
                if isOn {
                    Stitch.running(&ctx,
                                   from: size.width * 0.30,
                                   to: size.width * 0.70,
                                   y: size.height * Metric.selectionY,
                                   color: LL.Palette.edge)
                }
            }
            .allowsHitTesting(false)

            // Label sits above the Canvas so it stays real text for Dynamic Type.
            VStack {
                Spacer()
                Text(item.label)
                    .font(.system(size: 8, weight: .semibold))
                    .kerning(1.1)
                    .lineLimit(1)
                    .minimumScaleFactor(0.7)
                    .foregroundStyle(isOn ? LL.Palette.text : LL.Palette.textDim)
                    .padding(.bottom, Self.height * (1 - Metric.labelBaseline) + 2)
                    .offset(y: isDown ? 1 : 0)
            }
            .allowsHitTesting(false)
        }
        .frame(maxWidth: .infinity)
        .frame(height: Self.height)
        .contentShape(Rectangle())
        // A drag gesture rather than a Button: the press state has to follow the
        // finger, so the cloth can sink while it is held and lift on release.
        .gesture(
            DragGesture(minimumDistance: 0)
                .onChanged { _ in
                    guard pressed != item.tab else { return }
                    pressed = item.tab
                }
                .onEnded { value in
                    pressed = nil
                    // Only commit if the finger is still inside the cell.
                    let inside = abs(value.translation.width) < 40
                        && abs(value.translation.height) < 40
                    guard inside, selection != item.tab else { return }
                    HapticEngine.shared.play(.tick)
                    selection = item.tab
                }
        )
        .scaleEffect(reduceMotion ? 1 : (isDown ? 0.97 : 1))
        .animation(reduceMotion ? nil : LL.Motion.press, value: isDown)
        .accessibilityElement(children: .ignore)
        .accessibilityLabel(item.label.capitalized)
        .accessibilityAddTraits(isOn ? [.isButton, .isSelected] : .isButton)
        .accessibilityAction { 
            guard selection != item.tab else { return }
            HapticEngine.shared.play(.tick)
            selection = item.tab
        }
    }
}

// MARK: - Preview

private struct SamplerPreviewHarness: View {
    @State private var tab: RootTabView.Tab = .home

    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            InstrumentTabBar(selection: $tab)
        }
        .background(LL.Palette.background)
        .preferredColorScheme(.dark)
    }
}

#Preview("The Sampler") {
    SamplerPreviewHarness()
}
