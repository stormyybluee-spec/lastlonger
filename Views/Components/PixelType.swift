//
//  PixelType.swift
//  LAST LONGER
//
//  A 5x7 bitmap typeface drawn as literal rectangles in a Canvas.
//
//  Why not ship a pixel font file: every bitmap face worth using is
//  either licensed per-app or is a hobby TTF with unclear provenance,
//  and a .ttf in the bundle is one more thing to audit for a product
//  whose entire pitch is "nothing about this leaves your phone."
//  Seven rows of Bool costs nothing and can never be wrong about its licence.
//
//  Covers A–Z, 0–9, space, period, dash, colon, slash. Unknown glyphs
//  render as a filled block so missing characters are loud in review
//  rather than silently invisible.
//

import SwiftUI

public enum PixelType {

    public static let glyphWidth = 5
    public static let glyphHeight = 7

    /// One row per string, '1' = lit pixel.
    static let glyphs: [Character: [String]] = [
        "A": ["01110", "10001", "10001", "11111", "10001", "10001", "10001"],
        "B": ["11110", "10001", "10001", "11110", "10001", "10001", "11110"],
        "C": ["01110", "10001", "10000", "10000", "10000", "10001", "01110"],
        "D": ["11110", "10001", "10001", "10001", "10001", "10001", "11110"],
        "E": ["11111", "10000", "10000", "11110", "10000", "10000", "11111"],
        "F": ["11111", "10000", "10000", "11110", "10000", "10000", "10000"],
        "G": ["01110", "10001", "10000", "10111", "10001", "10001", "01111"],
        "H": ["10001", "10001", "10001", "11111", "10001", "10001", "10001"],
        "I": ["11111", "00100", "00100", "00100", "00100", "00100", "11111"],
        "J": ["00111", "00010", "00010", "00010", "00010", "10010", "01100"],
        "K": ["10001", "10010", "10100", "11000", "10100", "10010", "10001"],
        "L": ["10000", "10000", "10000", "10000", "10000", "10000", "11111"],
        "M": ["10001", "11011", "10101", "10101", "10001", "10001", "10001"],
        "N": ["10001", "11001", "10101", "10011", "10001", "10001", "10001"],
        "O": ["01110", "10001", "10001", "10001", "10001", "10001", "01110"],
        "P": ["11110", "10001", "10001", "11110", "10000", "10000", "10000"],
        "Q": ["01110", "10001", "10001", "10001", "10101", "10010", "01101"],
        "R": ["11110", "10001", "10001", "11110", "10100", "10010", "10001"],
        "S": ["01111", "10000", "10000", "01110", "00001", "00001", "11110"],
        "T": ["11111", "00100", "00100", "00100", "00100", "00100", "00100"],
        "U": ["10001", "10001", "10001", "10001", "10001", "10001", "01110"],
        "V": ["10001", "10001", "10001", "10001", "10001", "01010", "00100"],
        "W": ["10001", "10001", "10001", "10101", "10101", "11011", "10001"],
        "X": ["10001", "10001", "01010", "00100", "01010", "10001", "10001"],
        "Y": ["10001", "10001", "01010", "00100", "00100", "00100", "00100"],
        "Z": ["11111", "00001", "00010", "00100", "01000", "10000", "11111"],

        "0": ["01110", "10011", "10101", "10101", "11001", "10001", "01110"],
        "1": ["00100", "01100", "00100", "00100", "00100", "00100", "01110"],
        "2": ["01110", "10001", "00001", "00110", "01000", "10000", "11111"],
        "3": ["11111", "00010", "00100", "00010", "00001", "10001", "01110"],
        "4": ["00010", "00110", "01010", "10010", "11111", "00010", "00010"],
        "5": ["11111", "10000", "11110", "00001", "00001", "10001", "01110"],
        "6": ["00110", "01000", "10000", "11110", "10001", "10001", "01110"],
        "7": ["11111", "00001", "00010", "00100", "01000", "01000", "01000"],
        "8": ["01110", "10001", "10001", "01110", "10001", "10001", "01110"],
        "9": ["01110", "10001", "10001", "01111", "00001", "00010", "01100"],

        " ": ["00000", "00000", "00000", "00000", "00000", "00000", "00000"],
        ".": ["00000", "00000", "00000", "00000", "00000", "00000", "00100"],
        "-": ["00000", "00000", "00000", "11111", "00000", "00000", "00000"],
        ":": ["00000", "00100", "00100", "00000", "00100", "00100", "00000"],
        "/": ["00001", "00001", "00010", "00100", "01000", "10000", "10000"],
    ]

    static func rows(for character: Character) -> [String] {
        glyphs[Character(character.uppercased())] ?? Array(repeating: "11111", count: glyphHeight)
    }
}

// MARK: - View

/// Renders text as a pixel grid. `pixel` is the size of one bitmap cell,
/// so a 4pt pixel yields a 20x28pt glyph.
public struct PixelText: View {
    private let text: String
    private let pixel: CGFloat
    private let tracking: CGFloat
    private let color: Color

    public init(_ text: String, pixel: CGFloat = 4, tracking: CGFloat = 1, color: Color = LL.Palette.text) {
        self.text = text
        self.pixel = pixel
        self.tracking = tracking
        self.color = color
    }

    private var characters: [Character] { Array(text) }

    private var totalWidth: CGFloat {
        guard !characters.isEmpty else { return 0 }
        let glyphs = CGFloat(characters.count) * CGFloat(PixelType.glyphWidth) * pixel
        let gaps = CGFloat(characters.count - 1) * tracking * pixel
        return glyphs + gaps
    }

    private var totalHeight: CGFloat {
        CGFloat(PixelType.glyphHeight) * pixel
    }

    public var body: some View {
        Canvas(rendersAsynchronously: false) { context, _ in
            var originX: CGFloat = 0
            for character in characters {
                let rows = PixelType.rows(for: character)
                for (y, row) in rows.enumerated() {
                    for (x, bit) in row.enumerated() where bit == "1" {
                        let rect = CGRect(
                            x: originX + CGFloat(x) * pixel,
                            y: CGFloat(y) * pixel,
                            width: pixel,
                            height: pixel
                        )
                        context.fill(Path(rect), with: .color(color))
                    }
                }
                originX += CGFloat(PixelType.glyphWidth) * pixel + tracking * pixel
            }
        }
        .frame(width: totalWidth, height: totalHeight)
        .accessibilityLabel(Text(text))
    }
}

/// The wordmark. Two lines so it holds its weight at the top of Home
/// without eating the width the score ring needs.
public struct Wordmark: View {
    private let pixel: CGFloat
    private let color: Color

    public init(pixel: CGFloat = 4, color: Color = LL.Palette.text) {
        self.pixel = pixel
        self.color = color
    }

    public var body: some View {
        VStack(alignment: .leading, spacing: pixel * 2) {
            PixelText("LAST", pixel: pixel, color: color)
            PixelText("LONGER", pixel: pixel, color: color)
        }
        .accessibilityElement(children: .ignore)
        .accessibilityLabel("Last Longer")
    }
}

#Preview {
    VStack(alignment: .leading, spacing: 24) {
        Wordmark(pixel: 5)
        PixelText("THRESHOLD 07", pixel: 3, color: LL.Palette.edge)
        PixelText("DAY 12 OF 30", pixel: 3, color: LL.Palette.circuit)
    }
    .padding(40)
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(LL.Palette.void)
}
