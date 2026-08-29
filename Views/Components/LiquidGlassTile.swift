//
//  LiquidGlassTile.swift
//  LAST LONGER
//
//  One TODAY tile, in liquid glass. Home screen only.
//
//  Deliberately a thin wrapper over `LiquidGlassSurface` rather than its own
//  stack of layers: the tile and the RECENT box have to look like the same
//  material, and the only way to guarantee that is for them to be the same
//  code. Everything the tile adds is content and a phase offset.
//
//  The replacement for `StatTile`. Same call shape (label, value, tint) so the
//  swap in HomeView is one word per site.
//

import SwiftUI

struct LiquidGlassTile: View {

    let label: String
    let value: String
    /// Tints the readout only. The glass itself stays neutral - four tiles
    /// each tinting their own panel would turn the row into a paint chart.
    let tint: Color

    /// Offsets this tile's wave so the four in the grid are not in lockstep.
    /// Pass the tile's index.
    var index: Int = 0

    var body: some View {
        LiquidGlassSurface(cornerRadius: LL.Metric.corner,
                           phaseOffset: Double(index) * 1.7,
                           amplitude: 2.6) {
            VStack(alignment: .leading, spacing: 6) {
                Text(label)
                    .llLabelStyle(10)

                // Bitmap digits, matching the wordmark's pixel face. The tint
                // fills the lit cells - clean, with no glow or bloom behind
                // them, so the interior stays flat text on dark glass. Every
                // string elapsed() can produce - digits, "H", "D", "NEVER",
                // "<1H" - has a glyph, so nothing falls back to a solid block.
                PixelText(value, pixel: 3, tracking: 1, color: tint)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(14)
        }
        .accessibilityElement(children: .ignore)
        .accessibilityLabel(label.capitalized)
        .accessibilityValue(value)
    }
}

// MARK: - Preview

#Preview("Today tiles") {
    ZStack {
        LL.Palette.background.ignoresSafeArea()
        RadialGridBackdrop(anchor: .init(x: 0.78, y: 0.10)).ignoresSafeArea()

        LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 10), count: 2),
                  spacing: 10) {
            LiquidGlassTile(label: "THRESHOLDS", value: "12", tint: LL.Palette.edge, index: 0)
            LiquidGlassTile(label: "SESSIONS", value: "3", tint: LL.Palette.circuit, index: 1)
            LiquidGlassTile(label: "DAY STREAK", value: "8", tint: LL.Palette.safe, index: 2)
            LiquidGlassTile(label: "LAST FINISHED", value: "4H", tint: LL.Palette.textDim, index: 3)
        }
        .padding(20)
    }
    .preferredColorScheme(.dark)
}
