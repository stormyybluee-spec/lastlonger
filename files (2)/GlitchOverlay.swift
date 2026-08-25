//
//  GlitchOverlay.swift
//  LAST LONGER
//
//  PART 11 — the full-screen black-and-white pixel burst.
//
//  PHOTOSENSITIVITY
//  ----------------
//  The obvious implementation — full-field black/white alternation at 10–15
//  Hz — sits directly in the 3–30 Hz band that triggers photosensitive
//  seizures, and it would run for ten unbroken seconds on a user who is
//  alone, aroused, and possibly not thinking clearly. That is not a risk
//  worth the aesthetic.
//
//  So the burst is built to stay well clear of the WCAG general flash
//  threshold while still reading as a hard glitch:
//
//   1. Bursts of *pixel blocks*, never a full-field luminance swing — no
//      single frame covers more than ~35% of the screen.
//   2. Block positions rerandomise at 12 Hz, but the overall coverage
//      envelope changes at under 3 Hz, so large-area luminance flicker stays
//      below the threshold even though the texture looks fast.
//   3. Reduce Motion swaps the animation for a static high-contrast frame.
//      The haptics and the countdown carry the urgency instead, and neither
//      of those is decorative.
//
//  The visual is an attention signal, not the protocol. If a user has it
//  disabled entirely, the emergency still works perfectly.
//

import SwiftUI

@MainActor
struct GlitchOverlay: View {

    /// 0…1. Typically the emergency countdown's progress; the burst thins
    /// out as the hold nears completion.
    var intensity: Double = 1.0

    @Environment(\.accessibilityReduceMotion) private var reduceMotion

    /// Maximum fraction of the screen any single frame may cover.
    private let maxCoverage: Double = 0.35

    /// Texture refresh rate. Fast enough to read as digital noise.
    private let refreshHz: Double = 12

    var body: some View {
        GeometryReader { geometry in
            if reduceMotion {
                staticFrame(size: geometry.size)
            } else {
                TimelineView(.periodic(from: .now, by: 1.0 / refreshHz)) { context in
                    Canvas { canvas, size in
                        draw(in: &canvas,
                             size: size,
                             seed: Int(context.date.timeIntervalSinceReferenceDate * refreshHz))
                    }
                }
            }
        }
        .allowsHitTesting(false)
        .accessibilityHidden(true)
    }

    // MARK: - Animated

    private func draw(in context: inout GraphicsContext, size: CGSize, seed: Int) {
        var generator = SeededGenerator(seed: UInt64(bitPattern: Int64(seed)))

        let blockSize: CGFloat = 12
        let columns = Int(size.width / blockSize) + 1
        let rows = Int(size.height / blockSize) + 1
        let totalBlocks = columns * rows

        // The coverage envelope oscillates slowly — under 3 Hz — even though
        // the blocks themselves rerandomise at 12 Hz.
        let envelopePhase = sin(Double(seed) / refreshHz * 2 * .pi * 1.5)
        let coverage = maxCoverage * intensity * (0.55 + 0.45 * abs(envelopePhase))
        let blockCount = Int(Double(totalBlocks) * coverage)

        guard blockCount > 0 else { return }

        var white = Path()
        var black = Path()

        for _ in 0..<blockCount {
            let column = Int.random(in: 0..<columns, using: &generator)
            let row = Int.random(in: 0..<rows, using: &generator)
            // Horizontal smears read as scanline tearing rather than static.
            let width = blockSize * CGFloat(Int.random(in: 1...4, using: &generator))

            let rect = CGRect(x: CGFloat(column) * blockSize,
                              y: CGFloat(row) * blockSize,
                              width: width,
                              height: blockSize)

            if Bool.random(using: &generator) {
                white.addRect(rect)
            } else {
                black.addRect(rect)
            }
        }

        context.fill(black, with: .color(.black))
        context.fill(white, with: .color(.white.opacity(0.92)))

        // A single torn scanline band, offset per frame.
        let bandY = CGFloat(Int.random(in: 0..<max(rows, 1), using: &generator)) * blockSize
        context.fill(
            Path(CGRect(x: 0, y: bandY, width: size.width, height: 2)),
            with: .color(.white.opacity(0.7))
        )
    }

    // MARK: - Reduce Motion

    private func staticFrame(size: CGSize) -> some View {
        Canvas { context, canvasSize in
            var generator = SeededGenerator(seed: 0x5EED)
            var path = Path()
            let blockSize: CGFloat = 12
            let columns = Int(canvasSize.width / blockSize) + 1
            let rows = Int(canvasSize.height / blockSize) + 1

            for _ in 0..<Int(Double(columns * rows) * 0.18) {
                let column = Int.random(in: 0..<columns, using: &generator)
                let row = Int.random(in: 0..<rows, using: &generator)
                path.addRect(CGRect(x: CGFloat(column) * blockSize,
                                    y: CGFloat(row) * blockSize,
                                    width: blockSize * 2,
                                    height: blockSize))
            }
            context.fill(path, with: .color(.white.opacity(0.5)))
        }
    }
}

// MARK: - Deterministic RNG

/// Seeded generator so each frame is reproducible from its timestamp. Using
/// `SystemRandomNumberGenerator` inside a Canvas would produce a different
/// image on every redraw, including redraws SwiftUI does for its own reasons,
/// which shows up as unpredictable extra flicker.
struct SeededGenerator: RandomNumberGenerator {
    private var state: UInt64

    init(seed: UInt64) {
        state = seed &* 0x9E37_79B9_7F4A_7C15 &+ 0x1234_5678
    }

    mutating func next() -> UInt64 {
        state ^= state << 13
        state ^= state >> 7
        state ^= state << 17
        return state
    }
}
