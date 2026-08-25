//
//  CRTEffects.swift
//  LAST LONGER
//
//  The "Retro-Command" layer. Everything here is decorative and must be
//  cheap enough to sit under a running session without dropping frames,
//  so: no blurs, no per-frame Canvas redraws, no TimelineView on the
//  scanline field. Motion respects Reduce Motion.
//

import SwiftUI

// MARK: - Circuit grid background

/// Dot-and-rule grid. Draws once into a Canvas; static, so it composites cheaply.
struct PrecisionGrid: View {
    var pitch: CGFloat = Theme.Metric.gridPitch
    var showNodes: Bool = true

    var body: some View {
        Canvas { context, size in
            var path = Path()

            var x: CGFloat = 0
            while x <= size.width {
                path.move(to: CGPoint(x: x, y: 0))
                path.addLine(to: CGPoint(x: x, y: size.height))
                x += pitch
            }
            var y: CGFloat = 0
            while y <= size.height {
                path.move(to: CGPoint(x: 0, y: y))
                path.addLine(to: CGPoint(x: size.width, y: y))
                y += pitch
            }
            context.stroke(path, with: .color(Theme.gridLine), lineWidth: 0.5)

            guard showNodes else { return }

            // Circuit-board solder nodes on every fourth intersection.
            var nodes = Path()
            var ny: CGFloat = 0
            while ny <= size.height {
                var nx: CGFloat = 0
                while nx <= size.width {
                    nodes.addEllipse(in: CGRect(x: nx - 1, y: ny - 1, width: 2, height: 2))
                    nx += pitch * 4
                }
                ny += pitch * 4
            }
            context.fill(nodes, with: .color(Theme.data.opacity(0.22)))
        }
        .allowsHitTesting(false)
        .drawingGroup()
    }
}

// MARK: - Scanlines

struct ScanlineOverlay: View {
    var spacing: CGFloat = 3
    /// Strength of the dark bars. Above ~0.25 the screen reads as dirty
    /// rather than as a CRT.
    var strength: Double = 0.16

    var body: some View {
        Canvas { context, size in
            var path = Path()
            var y: CGFloat = 0
            while y <= size.height {
                path.addRect(CGRect(x: 0, y: y, width: size.width, height: 1))
                y += spacing
            }
            context.fill(path, with: .color(.black))
        }
        .opacity(strength)
        .blendMode(.multiply)
        .allowsHitTesting(false)
        .drawingGroup()
    }
}

// MARK: - Vignette

struct CRTVignette: View {
    var body: some View {
        RadialGradient(
            colors: [.clear, .clear, Color.black.opacity(0.55)],
            center: .center,
            startRadius: 120,
            endRadius: 520
        )
        .allowsHitTesting(false)
    }
}

// MARK: - Composed modifier

private struct CRTScreen: ViewModifier {
    var grid: Bool
    var scanlines: Bool
    var vignette: Bool

    func body(content: Content) -> some View {
        ZStack {
            Theme.bg.ignoresSafeArea()
            if grid { PrecisionGrid().ignoresSafeArea() }
            content
            if scanlines { ScanlineOverlay().ignoresSafeArea() }
            if vignette { CRTVignette().ignoresSafeArea() }
        }
    }
}

extension View {
    /// Wraps a screen in the standard black / grid / scanline / vignette stack.
    func crtScreen(grid: Bool = true, scanlines: Bool = true, vignette: Bool = true) -> some View {
        modifier(CRTScreen(grid: grid, scanlines: scanlines, vignette: vignette))
    }
}

// MARK: - Glitch text

/// Chromatic-aberration text used for headers and phase announcements.
/// `active` drives a one-shot displacement; leave it false for the resting state.
struct GlitchText: View {
    let text: String
    var font: Font
    var color: Color = Theme.ink
    var active: Bool = false

    @Environment(\.accessibilityReduceMotion) private var reduceMotion

    private var offset: CGFloat { (active && !reduceMotion) ? 1.5 : 0.6 }

    var body: some View {
        ZStack {
            Text(text)
                .font(font)
                .foregroundStyle(Theme.edge.opacity(0.8))
                .offset(x: -offset)
                .blendMode(.screen)
            Text(text)
                .font(font)
                .foregroundStyle(Theme.data.opacity(0.8))
                .offset(x: offset)
                .blendMode(.screen)
            Text(text)
                .font(font)
                .foregroundStyle(color)
        }
        .animation(.easeOut(duration: 0.12), value: active)
        .accessibilityElement()
        .accessibilityLabel(text)
    }
}

// MARK: - Hairline rule

struct Rule: View {
    var color: Color = Theme.hairline
    var body: some View {
        Rectangle()
            .fill(color)
            .frame(height: Theme.Metric.hairlineWidth)
    }
}
