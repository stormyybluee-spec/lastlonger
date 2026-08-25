//
//  LLDesignSystem.swift
//  LAST LONGER
//
//  Visual foundation: palette, pixel/bitmap typography, CRT panel chrome.
//  No external dependencies. iOS 16+.
//

import SwiftUI
import UIKit

// MARK: - Hex

extension Color {
    init(hex: UInt32, opacity: Double = 1) {
        self.init(.sRGB,
                  red:   Double((hex >> 16) & 0xFF) / 255,
                  green: Double((hex >>  8) & 0xFF) / 255,
                  blue:  Double( hex        & 0xFF) / 255,
                  opacity: opacity)
    }
}

// MARK: - Palette

enum LL {

    enum C {
        // Core
        static let bg          = Color(hex: 0x000000)
        static let card        = Color(hex: 0x1C1C1E)
        static let red         = Color(hex: 0xFF3B30)   // threshold / danger
        static let green       = Color(hex: 0x34C759)   // safe / trained
        static let yellow      = Color(hex: 0xFFCC00)   // rising / warning
        static let blue        = Color(hex: 0x0A84FF)   // data

        // Neutrals
        static let text        = Color.white
        static let label       = Color(hex: 0x8E8E93)
        static let dim         = Color(hex: 0x5A5A5F)
        static let grid        = Color(hex: 0x232326)
        static let graphite    = Color(hex: 0x0E0E10)
        static let hairline    = Color(hex: 0x2C2C2E)

        // Printed circuit board (heat map only)
        static let pcbDeep     = Color(hex: 0x030B16)
        static let pcbSub      = Color(hex: 0x07182B)
        static let pcbTrace    = Color(hex: 0xC9A227)   // gold
        static let pcbTraceHot = Color(hex: 0xF2D673)
        static let silkscreen  = Color(hex: 0xE6EDF5)
    }

    enum Metric {
        static let corner: CGFloat = 12
        static let tap: CGFloat    = 60
        static let gutter: CGFloat = 14
    }
}

// MARK: - Typography

/// Bitmap display face for section headers.
///
/// Drop an OFL-licensed bitmap face (Silkscreen, Press Start 2P, or VT323) into
/// the bundle and add it to `UIAppFonts`. If it is absent the system falls back
/// to a black monospaced face with wide tracking, which reads close enough that
/// nothing breaks in CI or on a fresh checkout.
enum LLFont {

    static let pixelFamily = "Silkscreen"

    private static let hasPixelFace: Bool = UIFont(name: pixelFamily, size: 12) != nil

    /// Heavy pixel/bitmap — section headers only. Never body copy.
    static func pixel(_ size: CGFloat) -> Font {
        hasPixelFace
            ? .custom(pixelFamily, fixedSize: size)
            : .system(size: size, weight: .black, design: .monospaced)
    }

    /// Small uppercase sans — every label in the app.
    static func label(_ size: CGFloat = 11, weight: Font.Weight = .semibold) -> Font {
        .system(size: size, weight: weight)
    }

    /// Large readouts. Monospaced digits so numbers don't jitter as they tick.
    static func readout(_ size: CGFloat, weight: Font.Weight = .bold) -> Font {
        .system(size: size, weight: weight, design: .rounded).monospacedDigit()
    }

    /// Dense instrument text inside CRT panels.
    static func terminal(_ size: CGFloat = 10) -> Font {
        .system(size: size, weight: .medium, design: .monospaced)
    }
}

// MARK: - Label primitive

struct LLLabel: View {
    let text: String
    var color: Color = LL.C.label
    var size: CGFloat = 11

    init(_ text: String, color: Color = LL.C.label, size: CGFloat = 11) {
        self.text = text
        self.color = color
        self.size = size
    }

    var body: some View {
        Text(text.uppercased())
            .font(LLFont.label(size))
            .tracking(1.1)
            .foregroundStyle(color)
    }
}

// MARK: - Scanlines

struct Scanlines: View {
    var spacing: CGFloat = 3
    var opacity: Double = 0.22

    var body: some View {
        Canvas { ctx, size in
            var path = Path()
            var y: CGFloat = 0
            while y < size.height {
                path.move(to: CGPoint(x: 0, y: y))
                path.addLine(to: CGPoint(x: size.width, y: y))
                y += spacing
            }
            ctx.stroke(path, with: .color(.black.opacity(opacity)), lineWidth: 1)
        }
        .allowsHitTesting(false)
    }
}

// MARK: - CRT panel

struct CRTPanel: ViewModifier {
    var tint: Color = LL.C.blue
    var corner: CGFloat = LL.Metric.corner

    func body(content: Content) -> some View {
        content
            .background(
                ZStack {
                    LL.C.card
                    LinearGradient(colors: [tint.opacity(0.10), .clear],
                                   startPoint: .top, endPoint: .bottom)
                }
            )
            .overlay(Scanlines())
            .overlay(
                RoundedRectangle(cornerRadius: corner, style: .continuous)
                    .strokeBorder(tint.opacity(0.30), lineWidth: 1)
            )
            .clipShape(RoundedRectangle(cornerRadius: corner, style: .continuous))
    }
}

extension View {
    func crtPanel(tint: Color = LL.C.blue, corner: CGFloat = LL.Metric.corner) -> some View {
        modifier(CRTPanel(tint: tint, corner: corner))
    }
}

// MARK: - Glitch text

/// Chromatic-aberration display text. Jitters on an irregular cadence, holds
/// still when Reduce Motion is on.
struct GlitchText: View {
    let text: String
    var size: CGFloat = 14
    var tint: Color = LL.C.text

    @State private var split: CGFloat = 0
    @State private var slice: CGFloat = 0
    @Environment(\.accessibilityReduceMotion) private var reduceMotion

    var body: some View {
        ZStack {
            Text(text)
                .foregroundStyle(LL.C.red)
                .offset(x: -split, y: slice)
                .blendMode(.plusLighter)
            Text(text)
                .foregroundStyle(LL.C.blue)
                .offset(x: split, y: -slice)
                .blendMode(.plusLighter)
            Text(text)
                .foregroundStyle(tint)
        }
        .font(LLFont.pixel(size))
        .fixedSize()
        .accessibilityElement()
        .accessibilityLabel(text)
        .task(id: reduceMotion) {
            guard !reduceMotion else { split = 0; slice = 0; return }
            while !Task.isCancelled {
                try? await Task.sleep(nanoseconds: UInt64.random(in: 1_800_000_000...5_400_000_000))
                guard !Task.isCancelled else { return }
                withAnimation(.linear(duration: 0.06)) {
                    split = CGFloat.random(in: 0.8...1.8)
                    slice = CGFloat.random(in: -0.6...0.6)
                }
                try? await Task.sleep(nanoseconds: 90_000_000)
                withAnimation(.linear(duration: 0.10)) { split = 0; slice = 0 }
            }
        }
    }
}

// MARK: - Section header

struct LLSectionHeader: View {
    let title: String
    var readout: String? = nil
    var rule: Color = LL.C.blue

    var body: some View {
        HStack(alignment: .firstTextBaseline, spacing: 10) {
            GlitchText(text: title.uppercased(), size: 13)

            Rectangle()
                .fill(
                    LinearGradient(colors: [rule.opacity(0.55), .clear],
                                   startPoint: .leading, endPoint: .trailing)
                )
                .frame(height: 1)
                .offset(y: -3)

            if let readout {
                Text(readout.uppercased())
                    .font(LLFont.terminal(9))
                    .tracking(1)
                    .foregroundStyle(LL.C.dim)
            }
        }
        .accessibilityAddTraits(.isHeader)
    }
}

// MARK: - Instrument grid backdrop

/// Graphite crosshatch used behind every plot so the charts read as instruments
/// rather than dashboard widgets.
struct InstrumentGrid: View {
    var divisions: Int = 8
    var color: Color = LL.C.grid

    var body: some View {
        Canvas { ctx, size in
            var path = Path()
            for i in 0...divisions {
                let x = size.width  * CGFloat(i) / CGFloat(divisions)
                let y = size.height * CGFloat(i) / CGFloat(divisions)
                path.move(to: CGPoint(x: x, y: 0));  path.addLine(to: CGPoint(x: x, y: size.height))
                path.move(to: CGPoint(x: 0, y: y));  path.addLine(to: CGPoint(x: size.width, y: y))
            }
            ctx.stroke(path, with: .color(color), lineWidth: 0.5)
        }
        .allowsHitTesting(false)
    }
}
