//
//  DesignSystem.swift
//  LAST LONGER
//
//  PART E — Shared visual primitives.
//
//  NOTE FOR THE DEVELOPER
//  If Part A already shipped a DesignSystem.swift, DELETE THIS FILE and keep the
//  Part A version. This file is written to be self-contained so Part E compiles
//  standalone. Every token below matches the locked V4 spec palette.
//
//  Deployment target: iOS 16.0+
//

import SwiftUI
import UIKit

// MARK: - Color tokens

// An `init(hex:alpha:)` on Color lived here. Theme.swift declares
// `init(hex:opacity:)`, and because the second parameter of each has a default
// value, every one of the ~56 bare `Color(hex: 0x1C1C1E)` calls in the app would
// have been ambiguous between the two. No call site passed `alpha:`, so this one
// is removed outright and `init(hex:opacity:)` is the single hex initialiser.

enum LLColor {
    /// The void. Pure black, unreflective. OLED burn-friendly.
    static let background = Color(hex: 0x000000)
    /// Panel fill. Meant to be ignored so numbers and the Angel carry the screen.
    static let card = Color(hex: 0x2C2C2E)

    static let primary = Color(hex: 0xFF3B30)   // Red    — threshold / destructive
    static let secondary = Color(hex: 0x34C759) // Green  — safe / confirmed
    static let warning = Color(hex: 0xFFCC00)   // Yellow — rising / caution
    static let dataBlue = Color(hex: 0x0A84FF)  // Blue   — circuitry, data, links

    static let text = Color.white
    static let textDim = Color.white.opacity(0.55)
    static let textFaint = Color.white.opacity(0.32)
    static let hairline = Color.white.opacity(0.14)
}

enum LLMetrics {
    /// Panels are hard-edged. Brutalist: no softening.
    static let panelRadius: CGFloat = 0
    /// Buttons keep the 12pt radius from the V4 spec.
    static let buttonRadius: CGFloat = 12
    static let minTapTarget: CGFloat = 60
    static let gutter: CGFloat = 16
    static let rowVerticalPadding: CGFloat = 14
}

// MARK: - Typography
//
// The header face is a bitmap font. It is NOT bundled by default.
//
// RECOMMENDED (free, SIL Open Font License 1.1, commercial use permitted, $0):
//   • "Press Start 2P"  — https://fonts.google.com/specimen/Press+Start+2P
//   • "Silkscreen"      — https://fonts.google.com/specimen/Silkscreen
//
// To install:
//   1. Drag the .ttf into the Xcode project (Target Membership checked).
//   2. Add the filename to Info.plist under `UIAppFonts` (Fonts provided by application).
//   3. Confirm the PostScript name with:
//        UIFont.familyNames.forEach { print($0, UIFont.fontNames(forFamilyName: $0)) }
//   4. Ship the LICENSE.txt in the bundle — OFL requires the license to travel with the font.
//
// If the font is missing, `LLFont.pixel` degrades to a heavy monospaced system
// face rather than crashing. Ugly, but it builds.

// `LLFont` was declared both here and in LLDesignSystem.swift with overlapping
// but not identical members — this version had `mono`, that one had `readout`
// and `terminal`, and both had a `pixel` whose two signatures would have been
// ambiguous at every bare `LLFont.pixel(11)` call site. The two are merged into
// the single `LLFont` in LLDesignSystem.swift, which keeps `relativeTo:` from
// this version and tries both bitmap faces before falling back.

extension View {
    /// Small uppercase sans-serif label with the wide tracking the spec calls for.
    func llLabelStyle(_ size: CGFloat = 12, color: Color = LLColor.text, weight: Font.Weight = .semibold) -> some View {
        self.font(LLFont.label(size, weight: weight))
            .foregroundStyle(color)
            .textCase(.uppercase)
            .kerning(0.9)
    }
}

// MARK: - CRT overlay

/// Horizontal scanlines drawn across the whole screen. Applied once at the root
/// of a screen, never per-row — per-row Canvas layers tank scroll performance.
// `ScanlineOverlay` removed during consolidation — Effects.swift vends the
// single surviving version. See the note in CRTEffects.swift.

// `CRTVignette` removed during consolidation — CRTEffects.swift declared one of
// the same name. That version is kept: it uses a radial falloff, which is what
// the callers in PreSessionCountdownView and `crtScreen()` were written against.

extension View {
    /// Wraps a screen in the void + CRT treatment. Apply at the top of each screen.
    func llScreen() -> some View {
        self
            .background(LLColor.background.ignoresSafeArea())
            .overlay(ScanlineOverlay().ignoresSafeArea())
            .overlay(CRTVignette().ignoresSafeArea())
            .preferredColorScheme(.dark)
            .tint(LLColor.primary)
    }
}

// MARK: - Glitch header

/// Chromatic-aberration header. Red and blue channels drift a fraction of a point
/// apart on a slow, irregular cycle. Static when Reduce Motion is on.
struct GlitchHeader: View {
    let text: String
    var size: CGFloat = 15
    var accent: Color = LLColor.primary

    @Environment(\.accessibilityReduceMotion) private var reduceMotion
    @State private var drift: CGFloat = 0

    private let ticker = Timer.publish(every: 1.9, on: .main, in: .common).autoconnect()

    var body: some View {
        ZStack(alignment: .leading) {
            if !reduceMotion {
                Text(text)
                    .font(LLFont.pixel(size))
                    .foregroundStyle(accent)
                    .offset(x: -drift)
                    .blendMode(.screen)

                Text(text)
                    .font(LLFont.pixel(size))
                    .foregroundStyle(LLColor.dataBlue)
                    .offset(x: drift)
                    .blendMode(.screen)
            }

            Text(text)
                .font(LLFont.pixel(size))
                .foregroundStyle(LLColor.text)
        }
        .textCase(.uppercase)
        .onReceive(ticker) { _ in
            guard !reduceMotion else { return }
            withAnimation(.easeInOut(duration: 0.07)) { drift = CGFloat.random(in: 0.8...1.8) }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.14) {
                withAnimation(.easeOut(duration: 0.18)) { drift = 0 }
            }
        }
        .accessibilityLabel(text)
    }
}

// MARK: - Brutalist section container

/// A titled block of rows. Hard edges, hairline separators, no inset grouping.
struct LLSection<Content: View>: View {
    let title: String
    var subtitle: String? = nil
    @ViewBuilder var content: Content

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack(spacing: 8) {
                Rectangle()
                    .fill(LLColor.dataBlue)
                    .frame(width: 3, height: 12)
                GlitchHeader(text: title, size: 11)
            }
            .padding(.horizontal, LLMetrics.gutter)
            .padding(.bottom, 8)

            if let subtitle {
                Text(subtitle)
                    .font(LLFont.mono(10))
                    .foregroundStyle(LLColor.textFaint)
                    .padding(.horizontal, LLMetrics.gutter)
                    .padding(.bottom, 8)
            }

            VStack(spacing: 0) { content }
                .background(LLColor.card)
                .clipShape(RoundedRectangle(cornerRadius: LLMetrics.panelRadius))
                .overlay(
                    Rectangle().stroke(LLColor.hairline, lineWidth: 1)
                )
        }
        .padding(.bottom, 28)
    }
}

/// Hairline divider used between rows inside an `LLSection`.
struct LLDivider: View {
    var body: some View {
        Rectangle()
            .fill(LLColor.hairline)
            .frame(height: 1)
            .padding(.leading, LLMetrics.gutter)
    }
}

/// Standard settings row: SF Symbol, title, optional trailing value, optional chevron.
struct LLRow<Trailing: View>: View {
    let symbol: String
    let title: String
    var detail: String? = nil
    var tint: Color = LLColor.text
    var showsChevron: Bool = false
    var action: (() -> Void)? = nil
    @ViewBuilder var trailing: Trailing

    var body: some View {
        Group {
            if let action {
                Button(action: action) { rowBody }
                    .buttonStyle(.plain)
            } else {
                rowBody
            }
        }
    }

    private var rowBody: some View {
        HStack(spacing: 12) {
            Image(systemName: symbol)
                .font(.system(size: 15, weight: .semibold))
                .foregroundStyle(tint)
                .frame(width: 22, alignment: .center)

            VStack(alignment: .leading, spacing: 3) {
                Text(title)
                    .llLabelStyle(13, color: tint)
                if let detail {
                    Text(detail)
                        .font(LLFont.mono(10))
                        .foregroundStyle(LLColor.textFaint)
                        .textCase(.none)
                        .multilineTextAlignment(.leading)
                }
            }

            Spacer(minLength: 8)

            trailing

            if showsChevron {
                Image(systemName: "chevron.right")
                    .font(.system(size: 11, weight: .bold))
                    .foregroundStyle(LLColor.textFaint)
            }
        }
        .padding(.horizontal, LLMetrics.gutter)
        .padding(.vertical, LLMetrics.rowVerticalPadding)
        .frame(minHeight: LLMetrics.minTapTarget)
        .contentShape(Rectangle())
    }
}

extension LLRow where Trailing == EmptyView {
    init(
        symbol: String,
        title: String,
        detail: String? = nil,
        tint: Color = LLColor.text,
        showsChevron: Bool = false,
        action: (() -> Void)? = nil
    ) {
        self.init(
            symbol: symbol,
            title: title,
            detail: detail,
            tint: tint,
            showsChevron: showsChevron,
            action: action,
            trailing: { EmptyView() }
        )
    }
}

/// Full-width destructive button. Red hairline outline, fills on press.
struct LLDestructiveButton: View {
    let title: String
    let symbol: String
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            HStack(spacing: 10) {
                Image(systemName: symbol)
                    .font(.system(size: 14, weight: .bold))
                Text(title)
                    .llLabelStyle(13, color: LLColor.primary)
            }
            .frame(maxWidth: .infinity)
            .frame(height: LLMetrics.minTapTarget)
            .foregroundStyle(LLColor.primary)
            .background(LLColor.primary.opacity(0.08))
            .overlay(
                RoundedRectangle(cornerRadius: LLMetrics.buttonRadius)
                    .stroke(LLColor.primary, lineWidth: 1.5)
            )
            .clipShape(RoundedRectangle(cornerRadius: LLMetrics.buttonRadius))
        }
        .buttonStyle(.plain)
    }
}

/// Small pill used for commission rates and category tags.
struct LLTag: View {
    let text: String
    var color: Color = LLColor.dataBlue

    var body: some View {
        Text(text)
            .font(LLFont.mono(9, weight: .bold))
            .foregroundStyle(color)
            .padding(.horizontal, 6)
            .padding(.vertical, 3)
            .overlay(Rectangle().stroke(color.opacity(0.5), lineWidth: 1))
            .fixedSize()
    }
}
