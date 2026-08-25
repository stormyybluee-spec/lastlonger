//
//  ThemeTokens.swift
//  LAST LONGER
//
//  The `Theme` token namespace.
//
//  RESTORED DURING CONSOLIDATION — read before editing.
//  The project previously carried three different files all named Theme.swift,
//  one per delivered Part. They were not copies of each other: two declared a
//  namespace called `LL` with different members, and this one declared `Theme`.
//  Consolidation kept a single Theme.swift and dropped the other two, which
//  removed `enum Theme` from the build while ~250 references to it survived
//  across the session, mode-selection and watch screens.
//
//  The tokens below are restored verbatim from that file so those call sites
//  resolve to exactly the values they were written against. `LL` lives in
//  Theme.swift; the two namespaces are independent and both are in use.
//
//  The `Color(hex:)` initialiser that shipped alongside this enum is NOT
//  repeated here — DesignSystem.swift already vends `init(hex:alpha:)` and
//  Theme.swift vends `init(hex:opacity:)`.
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
