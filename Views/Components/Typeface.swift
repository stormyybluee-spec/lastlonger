//
//  Typeface.swift
//  LAST LONGER
//
//  Three roles only:
//    .pixel   — display headers (bitmap face, bundled)
//    .label   — small uppercase monospaced metadata
//    .numeric — large bold readouts
//
//  BUNDLING THE PIXEL FACE
//  ------------------------
//  iOS ships no bitmap font. Drop a licensed .otf/.ttf into the target,
//  add it to Info.plist under `UIAppFonts`, then set `pixelPostScriptName`
//  to its PostScript name (not its filename). Departure Mono (SIL OFL) and
//  Pixel Operator (CC0) both work well at these sizes.
//
//  If the face is missing the app degrades to heavy monospaced system text
//  rather than crashing or silently falling back to San Francisco regular.
//

import SwiftUI
import UIKit

enum Typeface {

    /// PostScript name of the bundled bitmap face.
    static let pixelPostScriptName = "DepartureMono-Regular"

    private static let pixelIsAvailable: Bool = {
        UIFont(name: pixelPostScriptName, size: 12) != nil
    }()

    /// Display headers. Bitmap face when bundled, heavy mono otherwise.
    static func pixel(_ size: CGFloat) -> Font {
        pixelIsAvailable
            ? .custom(pixelPostScriptName, fixedSize: size)
            : .system(size: size, weight: .black, design: .monospaced)
    }

    /// Small uppercase metadata. Pair with `.uppercaseLabel()`.
    static func label(_ size: CGFloat = 11) -> Font {
        .system(size: size, weight: .semibold, design: .monospaced)
    }

    /// Large readouts — timers, counts, ladder rungs.
    static func numeric(_ size: CGFloat) -> Font {
        .system(size: size, weight: .heavy, design: .rounded)
            .monospacedDigit()
    }

    /// Body copy. Deliberately quiet; the pixel face carries the personality.
    static func body(_ size: CGFloat = 13) -> Font {
        .system(size: size, weight: .regular, design: .default)
    }
}

// MARK: - Label treatment

private struct UppercaseLabel: ViewModifier {
    let tracking: CGFloat
    func body(content: Content) -> some View {
        content
            .textCase(.uppercase)
            .tracking(tracking)
    }
}

extension View {
    /// Uppercase + letterspacing. The house style for every label in the app.
    func uppercaseLabel(tracking: CGFloat = 1.4) -> some View {
        modifier(UppercaseLabel(tracking: tracking))
    }
}
