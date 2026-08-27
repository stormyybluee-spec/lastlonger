//
//  Theme.swift
//  LAST LONGER
//
//  Visual foundation: palette, pixel/bitmap typography, CRT overlay,
//  glitch treatment, brutalist button styles.
//
//  Design rules enforced here:
//   - Dark only. Background #000000, cards #1C1C1E.
//   - SF Symbols only. No emoji anywhere in this codebase.
//   - Heavy pixel/bitmap face for display text, small uppercase sans for labels.
//   - Every CRT effect degrades gracefully under Reduce Motion / Reduce Transparency.
//

import SwiftUI

// MARK: - Namespace

enum LL {

    // MARK: Palette

    enum Palette {
        static let background   = Color(hex: 0x000000)   // The Void
        static let card         = Color(hex: 0x1C1C1E)   // Panel fill
        static let primary      = Color(hex: 0xFF3B30)   // Threshold / danger
        static let secondary    = Color(hex: 0x34C759)   // Safe / success
        static let warning      = Color(hex: 0xFFCC00)   // Rising
        static let data         = Color(hex: 0x0A84FF)   // Circuit blue, grids, telemetry

        static let textPrimary  = Color.white
        static let textSecondary = Color(white: 0.58)
        static let textTertiary = Color(white: 0.36)

        static let hairline     = Color.white.opacity(0.10)
        static let hairlineData = Color(hex: 0x0A84FF, opacity: 0.28)

        // MARK: Restored aliases
        //
        // A second Theme.swift shipped in another Part declared `LL.Palette`
        // with this set of names. Consolidation dropped that file, but the
        // screens written against it survived — Effects.swift asks for
        // `.circuit`, the stats and regimen screens for `.edge` / `.safe` /
        // `.rising`, the onboarding copy for `.void` / `.text` / `.textDim`.
        // Same hex values as the names above, exposed under both spellings so
        // neither set of call sites has to be rewritten.
        static let void         = Color(hex: 0x000000)
        static let rule         = Color(hex: 0x2C2C2E)
        static let text         = Color(hex: 0xFFFFFF)
        static let textDim      = Color(hex: 0x8E8E93)
        static let circuit      = Color(hex: 0x0A84FF)
        static let edge         = Color(hex: 0xFF3B30)
        static let safe         = Color(hex: 0x34C759)
        static let rising       = Color(hex: 0xFFCC00)

        // Glow accents from the same dropped file.
        static let glowSafe      = Color(hex: 0xE5F6FF)
        static let glowRising    = Color(hex: 0xFFD60A)
        static let glowEdge      = Color(hex: 0xFF453A)
        static let glowEmergency = Color(hex: 0xFF0000)
        static let glowCooldown  = Color(hex: 0x32D74B)
    }

    // MARK: Palette (LLDesignSystem spelling)

    /// The `LL.C` palette merged in from LLDesignSystem.swift, which declared a
    /// second `enum LL`. Two enums of the same name in one module is an invalid
    /// redeclaration, and the members were disjoint, so they are nested here
    /// instead — every `LL.C.*` and `LL.Metric.*` call site is unchanged.
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

        // Restored from the files(7) LL.Metric that HomeView/OnboardingFlow were
        // written against; consolidation kept the LLDesignSystem spelling above
        // and dropped these. `tapTarget` is the same 60pt floor as `tap`.
        static let tapTarget: CGFloat = 60
        static let cardPadding: CGFloat = 16
        static let hairline: CGFloat = 1
        static let angelSize: CGFloat = 70
    }

    // MARK: Metrics

    enum Metrics {
        /// Minimum tap target. Non-negotiable — thumb-only, one-handed, in the dark.
        static let minTapTarget: CGFloat = 60
        static let buttonRadius: CGFloat = 12
        /// Panels stay near-square. Brutalist, not friendly.
        static let panelRadius: CGFloat = 4
        static let gutter: CGFloat = 20
        static let stackSpacing: CGFloat = 14
        static let hairlineWidth: CGFloat = 1
    }

    // MARK: Motion

    enum Motion {
        static let stateFade: Animation = .easeInOut(duration: 0.30)
        static let panelIn: Animation = .easeOut(duration: 0.22)
        static let burstDuration: TimeInterval = 0.60
        /// Button-press spring, restored from the files(7) LL.Motion.
        static let press: Animation = .spring(response: 0.24, dampingFraction: 0.7)
    }

    // MARK: Copy

    /// Clinical vocabulary. Referenced everywhere so it can never drift.
    enum Copy {
        static let externalMedia    = "external media"
        static let externalMediaUC  = "EXTERNAL MEDIA"
        static let threshold        = "hold at threshold"
        static let thresholdUC      = "HOLD AT THRESHOLD"
        static let pelvicFloor      = "pelvic floor"
        static let pelvicFloorUC    = "PELVIC FLOOR"
        static let disclaimer       = "Educational purposes. Not medical advice."
        static let privacyLine      = "Your data never leaves this device."
    }
}

// MARK: - Color from hex

extension Color {
    init(hex: UInt32, opacity: Double = 1) {
        self.init(
            .sRGB,
            red:   Double((hex >> 16) & 0xFF) / 255,
            green: Double((hex >> 8)  & 0xFF) / 255,
            blue:  Double(hex & 0xFF) / 255,
            opacity: opacity
        )
    }
}

// MARK: - Typography

enum PixelFont {

    /// Bundle any OFL-licensed bitmap face and set this to its PostScript name.
    /// Verified good fits: "Silkscreen-Bold", "DepartureMono-Regular", "PressStart2P-Regular".
    /// Add the .ttf to the target AND to `UIAppFonts` in Info.plist.
    static let postScriptName = "Silkscreen-Bold"

    private static let isAvailable: Bool = {
        #if canImport(UIKit)
        return UIFont(name: postScriptName, size: 12) != nil
        #else
        return false
        #endif
    }()

    /// Display face. Falls back to heavy monospaced system if the font isn't bundled,
    /// so the build never ships a silently-broken headline.
    static func display(_ size: CGFloat, relativeTo style: Font.TextStyle = .largeTitle) -> Font {
        isAvailable
            ? .custom(postScriptName, size: size, relativeTo: style)
            : .system(size: size, weight: .black, design: .monospaced)
    }

    /// Small uppercase sans utility label.
    static func label(_ size: CGFloat = 11, weight: Font.Weight = .semibold) -> Font {
        .system(size: size, weight: weight, design: .default)
    }

    /// Telemetry numerals — tabular so live counters don't jitter.
    static func telemetry(_ size: CGFloat, weight: Font.Weight = .bold) -> Font {
        .system(size: size, weight: weight, design: .monospaced)
    }
}

/// Display text that automatically abandons the pixel face at accessibility type sizes.
/// Bitmap faces are unreadable when scaled for low vision; legibility wins over style.
struct DisplayText: View {
    let text: String
    var size: CGFloat = 34
    var color: Color = LL.Palette.textPrimary
    var tracking: CGFloat = 2

    @Environment(\.dynamicTypeSize) private var typeSize

    var body: some View {
        Text(text)
            .font(typeSize.isAccessibilitySize
                  ? .system(size: size, weight: .black, design: .monospaced)
                  : PixelFont.display(size))
            .tracking(typeSize.isAccessibilitySize ? 0 : tracking)
            .foregroundStyle(color)
    }
}

/// Small uppercase caption used for every field label in the app.
struct FieldLabel: View {
    let text: String
    var color: Color = LL.Palette.textSecondary

    var body: some View {
        Text(text)
            .font(PixelFont.label(11))
            .textCase(.uppercase)
            .tracking(1.4)
            .foregroundStyle(color)
    }
}

// MARK: - CRT: scanlines

/// Horizontal scanlines. Purely decorative, never hit-testable, disabled when the
/// user has asked for reduced transparency.
struct Scanlines: View {
    var spacing: CGFloat = 3
    var opacity: Double = 0.07

    @Environment(\.accessibilityReduceTransparency) private var reduceTransparency

    var body: some View {
        if reduceTransparency {
            Color.clear
        } else {
            Canvas { context, size in
                var y: CGFloat = 0
                while y < size.height {
                    context.fill(
                        Path(CGRect(x: 0, y: y, width: size.width, height: 1)),
                        with: .color(.white.opacity(opacity))
                    )
                    y += spacing
                }
            }
            .blendMode(.overlay)
            .allowsHitTesting(false)
            .accessibilityHidden(true)
        }
    }
}

// `CircuitGrid` removed during consolidation — Effects.swift declared one of the
// same name. That version is kept because it is `public` and its
// `init(spacing:color:lineWidth:)` accepts OnboardingFlow's `CircuitGrid(spacing: 34)`;
// this one took `cell:` and would have rejected that call.

// MARK: - CRT panel

/// Translucent command-terminal panel. Card fill, hairline border, scanlines on top.
struct CRTPanel<Content: View>: View {
    var tint: Color = LL.Palette.hairline
    var showsGrid: Bool = false
    @ViewBuilder var content: Content

    var body: some View {
        content
            .padding(LL.Metrics.gutter)
            .background {
                ZStack {
                    LL.Palette.card
                    if showsGrid { CircuitGrid() }
                    Scanlines()
                }
            }
            .clipShape(RoundedRectangle(cornerRadius: LL.Metrics.panelRadius, style: .continuous))
            .overlay {
                RoundedRectangle(cornerRadius: LL.Metrics.panelRadius, style: .continuous)
                    .strokeBorder(tint, lineWidth: LL.Metrics.hairlineWidth)
            }
    }
}

extension View {
    // A `crtPanel(tint:showsGrid:)` modifier lived here. It is removed rather
    // than renamed: LLDesignSystem.swift vends `crtPanel(tint:corner:)`, and
    // because every parameter of both had a default value, the twenty bare
    // `.crtPanel()` call sites in the stats, regimen and partner screens would
    // have been ambiguous between them. No call site passed `showsGrid:` as a
    // modifier — the three that want a grid use the `CRTPanel { … }` container
    // above directly — so nothing needed rewriting.

    /// Full-bleed black backdrop with scanlines. Root of every screen.
    func voidBackground(scanlines: Bool = true) -> some View {
        self.background {
            ZStack {
                LL.Palette.background
                if scanlines { Scanlines(spacing: 4, opacity: 0.05) }
            }
            .ignoresSafeArea()
        }
    }
}

// MARK: - Glitch

/// Chromatic split. Used sparingly: emergency protocol, badge unlock, splash impact frame.
/// Fully suppressed under Reduce Motion — the effect is a strobe hazard otherwise.
struct GlitchModifier: ViewModifier {
    var active: Bool
    var amount: CGFloat = 2.0

    @Environment(\.accessibilityReduceMotion) private var reduceMotion

    func body(content: Content) -> some View {
        if reduceMotion || !active {
            content
        } else {
            ZStack {
                content
                    .foregroundStyle(LL.Palette.primary)
                    .offset(x: -amount)
                    .blendMode(.screen)
                content
                    .foregroundStyle(LL.Palette.data)
                    .offset(x: amount)
                    .blendMode(.screen)
                content
            }
            .compositingGroup()
        }
    }
}

extension View {
    func glitch(_ active: Bool, amount: CGFloat = 2.0) -> some View {
        modifier(GlitchModifier(active: active, amount: amount))
    }
}

// MARK: - Buttons

/// Primary action. Red-to-black gradient, 60pt floor, hairline edge.
struct PrimaryActionStyle: ButtonStyle {
    var tint: Color = LL.Palette.primary
    @Environment(\.accessibilityReduceMotion) private var reduceMotion

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(PixelFont.display(20, relativeTo: .title3))
            .tracking(2)
            .foregroundStyle(LL.Palette.textPrimary)
            .frame(maxWidth: .infinity, minHeight: LL.Metrics.minTapTarget)
            .background {
                LinearGradient(colors: [tint, .black],
                               startPoint: .top, endPoint: .bottom)
                .overlay(Scanlines(spacing: 3, opacity: 0.10))
            }
            .clipShape(RoundedRectangle(cornerRadius: LL.Metrics.buttonRadius, style: .continuous))
            .overlay {
                RoundedRectangle(cornerRadius: LL.Metrics.buttonRadius, style: .continuous)
                    .strokeBorder(tint.opacity(0.65), lineWidth: LL.Metrics.hairlineWidth)
            }
            .opacity(configuration.isPressed ? 0.82 : 1)
            .scaleEffect(reduceMotion ? 1 : (configuration.isPressed ? 0.985 : 1))
            .animation(LL.Motion.panelIn, value: configuration.isPressed)
    }
}

/// Secondary action. Outline only.
struct OutlineActionStyle: ButtonStyle {
    var tint: Color = LL.Palette.textSecondary

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(PixelFont.label(13, weight: .semibold))
            .textCase(.uppercase)
            .tracking(1.6)
            .foregroundStyle(tint)
            .frame(maxWidth: .infinity, minHeight: LL.Metrics.minTapTarget)
            .background(LL.Palette.card.opacity(configuration.isPressed ? 0.9 : 0.5))
            .clipShape(RoundedRectangle(cornerRadius: LL.Metrics.buttonRadius, style: .continuous))
            .overlay {
                RoundedRectangle(cornerRadius: LL.Metrics.buttonRadius, style: .continuous)
                    .strokeBorder(tint.opacity(0.35), lineWidth: LL.Metrics.hairlineWidth)
            }
    }
}

// MARK: - Restored view vocabulary (files(7))
//
// HomeView and OnboardingFlow came from the "files (7)" part and use this type
// and card vocabulary. Consolidation kept a different Theme.swift and dropped
// these; they are restored verbatim here. `llLabelStyle` is NOT re-declared —
// DesignSystem.swift already vends it.

// `internal`, not `public`: `llCard`'s default argument references
// `LL.Metric.cardPadding`, and `enum LL` is internal — a public function cannot
// expose an internal type in a default value. Internal is correct for a single
// app module anyway.
extension Font {
    /// Small uppercase label. Tight, wide-tracked, deliberately quiet.
    static func llLabel(_ size: CGFloat = 11) -> Font {
        .system(size: size, weight: .semibold, design: .default)
    }

    /// Large numeric readout. Rounded is wrong here — this is an instrument.
    static func llReadout(_ size: CGFloat) -> Font {
        .system(size: size, weight: .heavy, design: .default)
    }

    /// Dense monospaced data. Session logs, breakdown rows, export previews.
    static func llData(_ size: CGFloat = 12) -> Font {
        .system(size: size, weight: .medium, design: .monospaced)
    }
}

extension View {
    /// The standard card surface.
    func llCard(padding: CGFloat = LL.Metric.cardPadding) -> some View {
        self.padding(padding)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(LL.Palette.card, in: RoundedRectangle(cornerRadius: LL.Metric.corner, style: .continuous))
            .overlay(
                RoundedRectangle(cornerRadius: LL.Metric.corner, style: .continuous)
                    .strokeBorder(LL.Palette.rule, lineWidth: LL.Metric.hairline)
            )
    }
}
