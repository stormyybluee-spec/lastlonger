//
//  AngelWidget.swift
//  LAST LONGER
//
//  The Angel is the single object the whole live session revolves around:
//  tempo taps land on it, the triple-tap emergency comes from it, the breath
//  pacer animates its wings, and the emergency freezes them open.
//
//  TODO: Replace the Canvas sprite below with the custom AngelFigure asset
//  from Assets.xcassets once it is ready. The sprite is NOT an SF Symbol -
//  swapping it means replacing `sprite(spread:)` and the Canvas with an
//  Image("AngelFigure"), keeping the same state/spread/pulse inputs and the
//  glow modifiers so every caller keeps working unchanged.
//
//  It is drawn as genuine pixel art — a 25×21 cell grid rasterised into a
//  Canvas — rather than as a smooth vector shape with a pixel filter over
//  it. That matters for the "Neural Kaleidoscope" direction: real pixel art
//  has hard cell boundaries that stay hard at every size, and wing spread
//  moves in whole-cell steps, which reads as sprite animation instead of
//  as a scaling vector.
//

import SwiftUI

// MARK: - State

// RENAMED from `AngelState` during consolidation. DomainModels.swift declares a
// different `AngelState` — a String-backed, Codable domain enum
// (safe/rising/edge/emergency/cooldown/ended) that HomeView stores. This one is
// the widget's animation state and carries an associated colour, so the two
// could not be merged; the domain one kept the shorter name.
enum AngelVisualState: Equatable {
    case idle
    case active(tint: Color)
    case threshold
    case cooldown
    case emergency

    var tint: Color {
        switch self {
        case .idle:              return Theme.inert
        case .active(let tint):  return tint
        case .threshold:         return Theme.edge
        case .cooldown:          return Theme.safe
        case .emergency:         return Theme.edge
        }
    }

    /// Emergency freezes the wings fully open and shakes the whole sprite.
    var isFrozen: Bool { self == .emergency }

    // MARK: Glow
    //
    // The bloom around the sprite is the fastest read on the screen - the user
    // is not always looking directly at the phone, and colour plus pulse rate
    // carries the state from the corner of the eye. Colour follows the sprite
    // tint except during cooldown, which glows blue to read as "rest" rather
    // than as the green "safe" of an active phase.

    var glowColor: Color {
        switch self {
        case .idle:              return Theme.inert
        case .active(let tint):  return tint
        case .threshold:         return Theme.edge
        case .cooldown:          return Theme.data
        case .emergency:         return Theme.edge
        }
    }

    /// Blur radius before the pulse multiplier.
    var glowRadius: CGFloat {
        switch self {
        case .idle:      return 4
        case .active:    return 14
        case .threshold: return 22
        case .cooldown:  return 12
        case .emergency: return 30
        }
    }

    var glowOpacity: Double {
        switch self {
        case .idle:      return 0.22
        case .active:    return 0.70
        case .threshold: return 0.85
        case .cooldown:  return 0.50
        case .emergency: return 1.00
        }
    }

    /// Seconds for one breath of the pulse. 0 holds the glow steady.
    var glowPeriod: Double {
        switch self {
        case .idle:      return 0
        case .active:    return 2.2
        case .threshold: return 0.8
        case .cooldown:  return 3.0
        case .emergency: return 0.45
        }
    }

    /// How far the radius swings, as a fraction of `glowRadius`.
    var glowDepth: Double {
        switch self {
        case .emergency: return 0.80
        case .threshold: return 0.55
        default:         return 0.30
        }
    }
}

// MARK: - Widget

@MainActor
struct AngelWidget: View {

    var state: AngelVisualState = .idle

    /// Wing spread, 0 (folded) … 1 (fully open). Driven by the breath pacer,
    /// the tempo beat, or held at 1 during an emergency.
    var spread: Double = 0.5

    /// Extra brightness pulse, 0…1. Used for the tempo beat flash.
    var pulse: Double = 0

    var cellSize: CGFloat = 7

    @Environment(\.accessibilityReduceMotion) private var reduceMotion
    @State private var shakeOffset: CGSize = .zero
    @State private var shakeTimer: Timer?

    /// 0...1, driven by a repeating animation whose period comes from the
    /// state. Reduce Motion pins it at 0 and the glow sits steady.
    @State private var glowPulse: Double = 0

    // Sprite grid: 25 wide, 21 tall.
    private let gridWidth = 25
    private let gridHeight = 21

    var body: some View {
        Canvas { context, size in
            let cell = min(size.width / CGFloat(gridWidth),
                           size.height / CGFloat(gridHeight))
            let originX = (size.width - cell * CGFloat(gridWidth)) / 2
            let originY = (size.height - cell * CGFloat(gridHeight)) / 2

            let effectiveSpread = state.isFrozen ? 1.0 : spread
            let cells = sprite(spread: effectiveSpread)

            for cellPoint in cells {
                let rect = CGRect(
                    x: originX + CGFloat(cellPoint.x) * cell,
                    y: originY + CGFloat(cellPoint.y) * cell,
                    // 0.5 pt inset draws the grid gap that makes it read as pixels.
                    width: cell - 0.5,
                    height: cell - 0.5
                )
                context.fill(Path(rect), with: .color(color(for: cellPoint.kind)))
            }
        }
        .aspectRatio(CGFloat(gridWidth) / CGFloat(gridHeight), contentMode: .fit)
        // Two stacked shadows: a tight core and a wide bloom. Both are driven
        // by the same pulse, so the whole halo breathes together. When the
        // session ends the state falls back to `.idle`, whose radius and
        // opacity are near zero - that is the "fades out" case.
        .shadow(color: state.glowColor.opacity(state.glowOpacity),
                radius: currentGlowRadius)
        .shadow(color: state.glowColor.opacity(state.glowOpacity * 0.55),
                radius: currentGlowRadius * 1.9)
        .animation(.easeInOut(duration: 0.6), value: state)
        .offset(shakeOffset)
        .animation(.easeInOut(duration: 0.28), value: spread)
        .onAppear(perform: restartGlow)
        .onChange(of: state) { _, newValue in
            newValue == .emergency ? startShake() : stopShake()
            restartGlow()
        }
        .onDisappear(perform: stopShake)
        .accessibilityElement()
        .accessibilityLabel("Angel")
        .accessibilityValue(accessibilityState)
    }

    private var accessibilityState: String {
        switch state {
        case .idle:      return "Idle"
        case .active:    return "Session running"
        case .threshold: return "At threshold"
        case .cooldown:  return "Cooling down"
        case .emergency: return "Emergency protocol active"
        }
    }

    // MARK: - Palette

    private func color(for kind: CellKind) -> Color {
        let base = state.tint
        switch kind {
        case .halo:
            return base.opacity(state.isFrozen ? 1.0 : 0.55 + pulse * 0.45)
        case .body:
            return base.opacity(0.95)
        case .wing:
            return base.opacity(state.isFrozen ? 0.9 : 0.4 + spread * 0.35 + pulse * 0.2)
        case .core:
            // The core is the one element that stays bright at all times —
            // it's the fixation point during Zen and the breath pacer.
            return Color.white.opacity(0.9)
        }
    }

    // MARK: - Sprite

    private enum CellKind { case halo, body, wing, core }
    private struct Cell { let x: Int; let y: Int; let kind: CellKind }

    /// Builds the sprite for a given wing spread. Spread quantises to whole
    /// cells, so the wings step open rather than sliding.
    private func sprite(spread: Double) -> [Cell] {
        var cells: [Cell] = []
        let centerX = gridWidth / 2       // 12

        // ── Halo: a 5-wide broken ring at the top
        for x in (centerX - 2)...(centerX + 2) where x != centerX {
            cells.append(Cell(x: x, y: 0, kind: .halo))
        }
        cells.append(Cell(x: centerX - 3, y: 1, kind: .halo))
        cells.append(Cell(x: centerX + 3, y: 1, kind: .halo))

        // ── Head
        for y in 3...4 {
            for x in (centerX - 1)...(centerX + 1) {
                cells.append(Cell(x: x, y: y, kind: .body))
            }
        }

        // ── Body: a tapering column
        let bodyRows = 6...15
        for y in bodyRows {
            let taper = (y - 6) / 4                     // widens every 4 rows
            let halfWidth = min(1 + taper, 3)
            for x in (centerX - halfWidth)...(centerX + halfWidth) {
                let kind: CellKind = (y == 9 && x == centerX) ? .core : .body
                cells.append(Cell(x: x, y: y, kind: kind))
            }
        }

        // ── Base
        for x in (centerX - 4)...(centerX + 4) {
            cells.append(Cell(x: x, y: 16, kind: .body))
        }
        for x in (centerX - 2)...(centerX + 2) {
            cells.append(Cell(x: x, y: 17, kind: .body))
        }

        // ── Wings: mirrored chevrons. Reach and rise both scale with spread.
        let maxReach = 8
        let reach = max(1, Int((Double(maxReach) * spread).rounded()))

        for step in 1...reach {
            // Chevron: each step out from the body also rises one row, with
            // the rise flattening as the wing extends.
            let rise = Int(Double(step) * 0.85)
            let topY = max(0, 9 - rise)
            let bottomY = min(gridHeight - 1, 12 - rise / 2)

            for y in topY...bottomY {
                // Hollow the inside of the wing above a certain spread so the
                // shape stays legible instead of becoming a solid block.
                let isEdge = (y == topY || y == bottomY || step == reach)
                guard isEdge || spread < 0.45 else { continue }

                cells.append(Cell(x: centerX - 4 - step, y: y, kind: .wing))
                cells.append(Cell(x: centerX + 4 + step, y: y, kind: .wing))
            }
        }

        return cells.filter { $0.x >= 0 && $0.x < gridWidth && $0.y >= 0 && $0.y < gridHeight }
    }

    // MARK: - Glow

    private var currentGlowRadius: CGFloat {
        state.glowRadius * CGFloat(1 + glowPulse * state.glowDepth)
    }

    /// Restart the breathing animation at the new state's tempo. Called on
    /// appear and on every state change so the pulse rate always matches what
    /// the Angel is currently doing.
    private func restartGlow() {
        withAnimation(.linear(duration: 0)) { glowPulse = 0 }
        guard !reduceMotion, state.glowPeriod > 0 else { return }
        withAnimation(.easeInOut(duration: state.glowPeriod).repeatForever(autoreverses: true)) {
            glowPulse = 1
        }
    }

    // MARK: - Shake

    private func startShake() {
        guard !reduceMotion else { return }
        stopShake()
        shakeTimer = Timer.scheduledTimer(withTimeInterval: 0.05, repeats: true) { _ in
            MainActor.assumeIsolated {
                shakeOffset = CGSize(
                    width: .random(in: -3...3),
                    height: .random(in: -2...2)
                )
            }
        }
    }

    private func stopShake() {
        shakeTimer?.invalidate()
        shakeTimer = nil
        withAnimation(.easeOut(duration: 0.15)) { shakeOffset = .zero }
    }
}

// MARK: - Tappable container

/// Wraps the Angel with the gesture surface. Every tap is forwarded
/// immediately with its timestamp; `TapRouter` decides afterwards whether
/// the last three taps were the emergency gesture.
@MainActor
struct TappableAngel: View {

    var state: AngelVisualState
    var spread: Double
    var pulse: Double
    let onTap: (Date) -> Void
    /// Held for 2 seconds → open the End Session sheet. Optional so display-only
    /// callers can omit it; the live HUD wires it to `model.showEndGoalSheet`.
    var onHold: (() -> Void)? = nil

    var body: some View {
        AngelWidget(state: state, spread: spread, pulse: pulse)
            .contentShape(Rectangle())
            .simultaneousGesture(
                DragGesture(minimumDistance: 0)
                    .onEnded { _ in onTap(Date()) }
            )
            // A 2-second press ends the session. Kept separate from the tap
            // gesture above so a quick tempo tap never trips it, and only
            // attached when a handler is provided.
            .simultaneousGesture(
                LongPressGesture(minimumDuration: 2)
                    .onEnded { _ in onHold?() },
                including: onHold == nil ? .subviews : .all
            )
            .accessibilityAddTraits(.isButton)
            .accessibilityHint("Tap to set tempo. Hold for two seconds to end. Triple tap for the emergency protocol.")
    }
}
