//
//  LLDesignSystem.swift
//  LAST LONGER
//
//  Visual foundation: palette, pixel/bitmap typography, CRT panel chrome.
//  No external dependencies. iOS 16+.
//

import SwiftUI
import UIKit

// MARK: - Consolidation note
//
// This file originally opened with its own `extension Color { init(hex:opacity:) }`
// and its own `enum LL`. Both now live in Theme.swift:
//
//   • The hex initialiser was character-for-character identical to Theme.swift's.
//   • The `enum LL` here held `C` and `Metric`; Theme.swift's held `Palette`,
//     `Metrics`, `Motion` and `Copy`. The members were disjoint, so they were
//     merged into the single `enum LL` in Theme.swift rather than one winning.
//
// Every `LL.C.*` and `LL.Metric.*` reference in the app is unchanged.
// `Scanlines` was also dropped from this file in favour of Theme.swift's
// version, which honours Reduce Transparency; all call sites pass
// `(spacing:opacity:)`, which both versions accepted.

// MARK: - Typography

/// Bitmap display face for section headers.
///
/// Drop an OFL-licensed bitmap face (Silkscreen, Press Start 2P, or VT323) into
/// the bundle and add it to `UIAppFonts`. If it is absent the system falls back
/// to a black monospaced face with wide tracking, which reads close enough that
/// nothing breaks in CI or on a fresh checkout.
///
/// Merged with the `LLFont` that DesignSystem.swift declared: `pixel` keeps the
/// `relativeTo:` parameter from that version (defaulted, so bare `LLFont.pixel(11)`
/// still compiles) and `mono` is carried over for the ten call sites that use it.
enum LLFont {

    static let pixelFamily = "Silkscreen"
    static let pixelFallbackFamily = "PressStart2P-Regular"

    /// Whichever bitmap face is actually present in the bundle, if either.
    private static let resolvedPixelFamily: String? = {
        if UIFont(name: pixelFamily, size: 12) != nil { return pixelFamily }
        if UIFont(name: pixelFallbackFamily, size: 12) != nil { return pixelFallbackFamily }
        return nil
    }()

    /// Heavy pixel/bitmap — section headers only. Never body copy.
    static func pixel(_ size: CGFloat, relativeTo style: Font.TextStyle = .headline) -> Font {
        guard let family = resolvedPixelFamily else {
            return .system(size: size, weight: .black, design: .monospaced)
        }
        return .custom(family, size: size, relativeTo: style)
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

    /// Terminal face. Numbers, commission rates, file sizes, timestamps.
    static func mono(_ size: CGFloat = 12, weight: Font.Weight = .medium) -> Font {
        .system(size: size, weight: weight, design: .monospaced)
    }
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

// MARK: - CRT panel

/// Renamed from `CRTPanel` during consolidation: Theme.swift declares a
/// `CRTPanel` container view (`CRTPanel { … }`), and a ViewModifier of the same
/// name in the same module is an invalid redeclaration. Only the type name
/// changed — the `.crtPanel(tint:corner:)` call sites are untouched.
struct LLCRTPanelModifier: ViewModifier {
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
        modifier(LLCRTPanelModifier(tint: tint, corner: corner))
    }
}

// MARK: - Glitch text
//
// The `GlitchText` that lived here was merged into CRTEffects.swift, which
// declared one of the same name. That version keeps its Reduce Motion handling
// and gained a convenience initialiser matching this file's `(text:size:tint:)`
// shape, so both sets of call sites compile unchanged.

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
