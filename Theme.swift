//
//  Theme.swift
//  LAST LONGER
//
//  Every colour and metric in the app resolves through here.
//  Nothing anywhere else should construct a Color from a literal.
//

import SwiftUI

public enum LL {

    // MARK: - Colour

    public enum Palette {
        /// The void. Pure black, not systemBackground — this is an OLED app
        /// used in the dark and #000 costs zero pixels of backlight.
        public static let void        = Color(hex: 0x000000)
        public static let card        = Color(hex: 0x1C1C1E)
        /// Hairline rules, inactive grid, disabled labels.
        public static let rule        = Color(hex: 0x2C2C2E)
        public static let text        = Color(hex: 0xFFFFFF)
        public static let textDim     = Color(hex: 0x8E8E93)

        /// Structural / data linework. The "circuit" layer.
        public static let circuit     = Color(hex: 0x0A84FF)

        public static let edge        = Color(hex: 0xFF3B30)
        public static let safe        = Color(hex: 0x34C759)
        public static let rising      = Color(hex: 0xFFCC00)

        /// Angel glow ramp — slightly hotter than the flat UI colours
        /// so the sprite reads as emissive against the card layer.
        public static let glowSafe      = Color(hex: 0xE5F6FF)
        public static let glowRising    = Color(hex: 0xFFD60A)
        public static let glowEdge      = Color(hex: 0xFF453A)
        public static let glowEmergency = Color(hex: 0xFF0000)
        public static let glowCooldown  = Color(hex: 0x32D74B)
    }

    // MARK: - Metrics

    public enum Metric {
        public static let corner: CGFloat = 12
        /// Hard floor for anything tappable. Non-negotiable — this app is
        /// operated one-handed, in the dark, under time pressure.
        public static let tapTarget: CGFloat = 60
        public static let gutter: CGFloat = 20
        public static let cardPadding: CGFloat = 16
        public static let hairline: CGFloat = 1
        public static let angelSize: CGFloat = 70
    }

    // MARK: - Motion

    public enum Motion {
        /// The spec's colour-transition constant. Used for every state fade.
        public static let stateFade: Animation = .easeInOut(duration: 0.3)
        public static let press: Animation = .spring(response: 0.24, dampingFraction: 0.7)
    }
}

// MARK: - Angel state colours

public extension AngelState {
    var glow: Color {
        switch self {
        case .safe:      return LL.Palette.glowSafe
        case .rising:    return LL.Palette.glowRising
        case .edge:      return LL.Palette.glowEdge
        case .emergency: return LL.Palette.glowEmergency
        case .cooldown:  return LL.Palette.glowCooldown
        case .ended:     return LL.Palette.textDim
        }
    }

    var glowRadius: CGFloat {
        switch self {
        case .safe:      return 10
        case .rising:    return 16
        case .edge:      return 26
        case .emergency: return 34
        case .cooldown:  return 8
        case .ended:     return 4
        }
    }
}

public extension AngelSkin {
    /// Tint applied to the sprite body. The glow colour still comes
    /// from the state, so a skin can never hide a warning.
    var bodyTint: Color {
        switch self {
        case .white:   return Color(hex: 0xFFFFFF)
        case .bronze:  return Color(hex: 0xCD7F32)
        case .silver:  return Color(hex: 0xC0C4CC)
        case .gold:    return Color(hex: 0xFFD166)
        case .shadow:  return Color(hex: 0x4A4A52)
        case .crimson: return Color(hex: 0xB3202A)
        }
    }
}

public extension SessionMode.Difficulty {
    var dot: Color {
        switch self {
        case .none:   return LL.Palette.textDim
        case .low:    return LL.Palette.safe
        case .medium: return LL.Palette.rising
        case .high:   return LL.Palette.edge
        }
    }

    var label: String {
        switch self {
        case .none:   return "NONE"
        case .low:    return "LOW"
        case .medium: return "MED"
        case .high:   return "HIGH"
        }
    }
}

// MARK: - Type

public extension Font {
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

public extension View {
    /// Small uppercase sans label, per the type rules.
    func llLabelStyle(_ size: CGFloat = 11, color: Color = LL.Palette.textDim) -> some View {
        self.font(.llLabel(size))
            .textCase(.uppercase)
            .kerning(1.4)
            .foregroundStyle(color)
    }

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

// MARK: - Hex

public extension Color {
    init(hex: UInt32, opacity: Double = 1) {
        self.init(
            .sRGB,
            red:   Double((hex >> 16) & 0xFF) / 255,
            green: Double((hex >> 8)  & 0xFF) / 255,
            blue:  Double( hex        & 0xFF) / 255,
            opacity: opacity
        )
    }
}
