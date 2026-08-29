//
//  GenerativeBackground.swift
//  LAST LONGER
//
//  A generative motion field, translated from a p5.js creative-coding sketch
//  and used as an atmospheric layer behind the Home screen.
//
//  The original, golfed:
//
//      a=(x,y,k=x/8-12.5,d=cos(k/2)+sin(y/3)-.5)=>point(
//        (q=x/4+60+d*k*(1+cos(d*4-t*2+y/14)))*.7*cos(c=y*d/169-t/8+d/9)
//          +200+60*sin(t*3/32+c/4),
//        (q+59)*.7*sin(c)+200)
//      t=0,draw=$=>{t||createCanvas(w=400,w);background(0).stroke(w,36);
//        for(t+=PI/30,i=4e4;i--;)a(i%200,i/400)}
//
//  Unpacked below into named terms. Nothing about the maths is changed; only
//  the point budget, the timebase and the output surface differ:
//
//    - 40,000 points becomes 4,000. The figure is the same, sampled coarser,
//      so it reads as a stippled field rather than a solid line. That suits
//      the app's Precision Lo-Fi language better than the dense original did.
//    - Time comes from the TimelineView clock rather than a frame counter, so
//      the drift runs at the same speed whether the device is rendering at
//      60fps, 30fps or dropping frames.
//    - The sketch's 400x400 space is mapped onto the real view, centred and
//      scaled to fill.
//

import SwiftUI
import Foundation

struct GenerativeBackground: View {

    /// Points evaluated per frame. The sketch used 40,000; 4,000 keeps the
    /// figure legible and costs almost nothing. Drop toward 2,000 on older
    /// hardware before touching anything else here.
    var pointCount: Int = 4_000

    /// Data blue. The field is telemetry, not decoration.
    var tint: Color = LL.Palette.circuit

    /// Atmospheric, never dominant. Above about 0.12 it starts competing with
    /// the Home cards for attention.
    var fieldOpacity: Double = 0.08

    /// How fast `t` advances, per second. The sketch ran at PI/30 per frame,
    /// which is roughly 6.3 per second and far too busy to sit behind content.
    var timeScale: Double = 1.2

    /// The sketch's own coordinate space. Every constant in `sample` is tuned
    /// to it, so the mapping happens at draw time rather than in the maths.
    private static let designSize: Double = 400

    @Environment(\.accessibilityReduceMotion) private var reduceMotion
    @Environment(\.scenePhase) private var scenePhase

    var body: some View {
        // 30fps, not 60. The drift is slow enough that the halved frame rate
        // is invisible, and this is a full-screen canvas on a screen people
        // leave open at night, so the battery saving is the real feature.
        TimelineView(.animation(minimumInterval: 1.0 / 30.0, paused: isPaused)) { context in
            Canvas { ctx, size in
                let t = reduceMotion
                    ? 3.0   // one arbitrary, pleasant frame, held still
                    : context.date.timeIntervalSinceReferenceDate * timeScale

                // Every point lands in ONE Path, filled in a single pass.
                // Filling 4,000 separate rects would be 4,000 draw calls.
                var field = Path()

                let scale = max(size.width, size.height) / Self.designSize
                let dx = size.width / 2
                let dy = size.height / 2
                let half = Self.designSize / 2

                // The sketch walks i down from 40,000 with x = i % 200 and
                // y = i / 400, so x sweeps 0..<200 while y creeps 0..<100.
                // Scaling the y divisor by the budget keeps that same walk at
                // any point count.
                let yStep = 100.0 / Double(pointCount)

                for i in 0..<pointCount {
                    let p = Self.sample(x: Double(i % 200),
                                        y: Double(i) * yStep,
                                        t: t)
                    let px = (p.x - half) * scale + dx
                    let py = (p.y - half) * scale + dy
                    field.addRect(CGRect(x: px, y: py, width: 1, height: 1))
                }

                ctx.fill(field, with: .color(tint.opacity(fieldOpacity)))
            }
        }
        .ignoresSafeArea()
        .allowsHitTesting(false)
        .accessibilityHidden(true)
        // No .drawingGroup() here on purpose. Canvas already renders through
        // Metal, and drawingGroup caches nothing when the content changes every
        // frame - it just adds an offscreen pass per frame. It helps a static
        // Canvas (see InstrumentTabBar's cloth); it hurts an animated one.
    }

    private var isPaused: Bool {
        reduceMotion || scenePhase != .active
    }

    // MARK: - The sketch

    /// One point of the field, in the sketch's own 400x400 space.
    ///
    /// Faithful to the original. `k` and `d` were default arguments in the
    /// p5 version and `q` and `c` were assignments inside the call, which is
    /// why they read as a chain rather than as independent terms.
    private static func sample(x: Double, y: Double, t: Double) -> CGPoint {
        let k = x / 8 - 12.5
        let d = cos(k / 2) + sin(y / 3) - 0.5
        let q = x / 4 + 60 + d * k * (1 + cos(d * 4 - t * 2 + y / 14))
        let c = y * d / 169 - t / 8 + d / 9

        return CGPoint(
            x: q * 0.7 * cos(c) + 200 + 60 * sin(t * 3 / 32 + c / 4),
            y: (q + 59) * 0.7 * sin(c) + 200
        )
    }
}

// MARK: - Preview

#Preview("Field") {
    ZStack {
        LL.Palette.background.ignoresSafeArea()
        GenerativeBackground()
    }
    .preferredColorScheme(.dark)
}

#Preview("Field, turned up") {
    ZStack {
        LL.Palette.background.ignoresSafeArea()
        // Not a shipping value. Useful for judging the figure itself.
        GenerativeBackground(fieldOpacity: 0.55)
    }
    .preferredColorScheme(.dark)
}
