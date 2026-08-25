//
//  Theme.swift
//  LAST LONGER
//
//  Single source of truth for surface + signal color. Nothing in the app
//  should ever construct a Color literal directly.
//

import SwiftUI

enum Theme {

    // MARK: - Surface
    static let bg          = Color(hex: 0x000000)   // absolute black, OLED
    static let card        = Color(hex: 0x1C1C1E)
    static let cardRaised  = Color(hex: 0x2C2C2E)
    static let cardPressed = Color(hex: 0x0E0E10)
    static let hairline    = Color.white.opacity(0.09)
    static let gridLine    = Color.white.opacity(0.045)

    // MARK: - Signal
    static let edge    = Color(hex: 0xFF3B30)   // red    — at the edge
    static let safe    = Color(hex: 0x34C759)   // green  — safe / recovered
    static let rising  = Color(hex: 0xFFCC00)   // yellow — rising
    static let data    = Color(hex: 0x0A84FF)   // blue   — telemetry
    static let inert   = Color(hex: 0x8E8E93)   // gray   — no difficulty / disabled

    // MARK: - Ink
    static let ink      = Color.white
    static let inkDim   = Color.white.opacity(0.56)
    static let inkFaint = Color.white.opacity(0.28)

    // MARK: - Metrics
    enum Metric {
        static let cardRadius: CGFloat  = 4      // near-square: "Precision Lo-Fi"
        static let chipRadius: CGFloat  = 2
        static let gridPitch: CGFloat   = 16     // circuit-board grid spacing
        static let gutter: CGFloat      = 12
        static let pageInset: CGFloat   = 16
        static let hairlineWidth: CGFloat = 1
    }
}

// MARK: - Hex init

extension Color {
    init(hex: UInt32, alpha: Double = 1.0) {
        self.init(
            .sRGB,
            red:   Double((hex >> 16) & 0xFF) / 255.0,
            green: Double((hex >> 8)  & 0xFF) / 255.0,
            blue:  Double( hex        & 0xFF) / 255.0,
            opacity: alpha
        )
    }
}
