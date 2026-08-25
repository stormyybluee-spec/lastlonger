//
//  Effects.swift
//  LAST LONGER
//
//  The atmosphere layer: circuit grid, scanlines, pixel-noise flash,
//  channel-split shake.
//
//  Every effect here checks Reduce Motion and degrades to a plain
//  cross-fade. A strobing black-and-white flash is exactly the kind of
//  thing that is unpleasant or unsafe for some people, and the app is
//  used in the dark with the screen close to the face.
//

import SwiftUI

// MARK: - Circuit grid

/// The "Precision Lo-Fi" substrate. Sits under content at low opacity.
public struct CircuitGrid: View {
    private let spacing: CGFloat
    private let color: Color
    private let lineWidth: CGFloat

    public init(spacing: CGFloat = 28, color: Color = LL.Palette.circuit, lineWidth: CGFloat = 0.5) {
        self.spacing = spacing
        self.color = color
        self.lineWidth = lineWidth
    }

    public var body: some View {
        Canvas { context, size in
            var path = Path()
            var x: CGFloat = 0
            while x <= size.width {
                path.move(to: CGPoint(x: x, y: 0))
                path.addLine(to: CGPoint(x: x, y: size.height))
                x += spacing
            }
            var y: CGFloat = 0
            while y <= size.height {
                path.move(to: CGPoint(x: 0, y: y))
                path.addLine(to: CGPoint(x: size.width, y: y))
                y += spacing
            }
            context.stroke(path, with: .color(color), lineWidth: lineWidth)
        }
        .allowsHitTesting(false)
    }
}

/// Grid that fades out from an anchor point, so the structure reads as
/// radiating from the score ring rather than tiling the whole screen.
public struct RadialGridBackdrop: View {
    private let anchor: UnitPoint

    public init(anchor: UnitPoint = .top) {
        self.anchor = anchor
    }

    public var body: some View {
        CircuitGrid()
            .opacity(0.16)
            .mask(
                RadialGradient(
                    colors: [.white, .white.opacity(0.25), .clear],
                    center: anchor,
                    startRadius: 20,
                    endRadius: 420
                )
            )
    }
}

// MARK: - Scanlines

public struct ScanlineOverlay: View {
    private let spacing: CGFloat
    private let opacity: Double

    public init(spacing: CGFloat = 3, opacity: Double = 0.12) {
        self.spacing = spacing
        self.opacity = opacity
    }

    public var body: some View {
        Canvas { context, size in
            var y: CGFloat = 0
            while y < size.height {
                context.fill(
                    Path(CGRect(x: 0, y: y, width: size.width, height: 1)),
                    with: .color(.black)
                )
                y += spacing
            }
        }
        .opacity(opacity)
        .blendMode(.multiply)
        .allowsHitTesting(false)
    }
}

// MARK: - Pixel noise flash

/// Full-bleed black-and-white block noise. `intensity` 0…1 drives both
/// coverage and how much of the screen it covers.
public struct PixelNoise: View {
    private let seed: UInt64
    private let intensity: Double
    private let cell: CGFloat

    public init(seed: UInt64, intensity: Double, cell: CGFloat = 8) {
        self.seed = seed
        self.intensity = intensity
        self.cell = cell
    }

    public var body: some View {
        Canvas { context, size in
            guard intensity > 0.01 else { return }
            var rng = SplitMix64(seed: seed)
            let columns = Int(ceil(size.width / cell))
            let rows = Int(ceil(size.height / cell))

            for row in 0..<rows {
                // Bias noise into horizontal bands — the reference material
                // tears in rows, not evenly across the field.
                let bandLuck = rng.nextUnit()
                guard bandLuck < intensity else { continue }
                for column in 0..<columns where rng.nextUnit() < intensity {
                    let white = rng.nextUnit() > 0.4
                    let rect = CGRect(
                        x: CGFloat(column) * cell,
                        y: CGFloat(row) * cell,
                        width: cell,
                        height: cell
                    )
                    context.fill(Path(rect), with: .color(white ? .white : .black))
                }
            }
        }
        .allowsHitTesting(false)
    }
}

/// Small, fast, deterministic. Foundation's RNG would be non-reproducible
/// across frames, which makes the noise shimmer rather than tear.
struct SplitMix64: RandomNumberGenerator {
    private var state: UInt64
    init(seed: UInt64) { state = seed &+ 0x9E3779B97F4A7C15 }

    mutating func next() -> UInt64 {
        state &+= 0x9E3779B97F4A7C15
        var z = state
        z = (z ^ (z >> 30)) &* 0xBF58476D1CE4E5B9
        z = (z ^ (z >> 27)) &* 0x94D049BB133111EB
        return z ^ (z >> 31)
    }

    mutating func nextUnit() -> Double {
        Double(next() >> 11) * (1.0 / 9007199254740992.0)
    }
}

// MARK: - Glitch transition

/// Drives a short burst of noise. Call `fire()` at the moment of the
/// screen change; the receiving view swaps its content at the peak.
@MainActor
public final class GlitchDriver: ObservableObject {
    @Published public private(set) var intensity: Double = 0
    @Published public private(set) var seed: UInt64 = 0

    private var task: Task<Void, Never>?

    public init() {}

    /// - Parameter reduceMotion: when true the burst is skipped entirely.
    public func fire(duration: Double = 0.28, peak: Double = 0.85, reduceMotion: Bool = false) {
        guard !reduceMotion else { return }
        task?.cancel()
        task = Task { [weak self] in
            guard let self else { return }
            let frames = 12
            let step = duration / Double(frames)
            for frame in 0..<frames {
                if Task.isCancelled { return }
                let progress = Double(frame) / Double(frames - 1)
                // Fast attack, slower decay.
                let envelope = progress < 0.3
                    ? progress / 0.3
                    : 1 - ((progress - 0.3) / 0.7)
                self.seed = UInt64(frame) &* 0x2545F491 &+ UInt64(Date.now.timeIntervalSince1970 * 1000)
                self.intensity = envelope * peak
                try? await Task.sleep(for: .seconds(step))
            }
            self.intensity = 0
        }
    }

    /// Called from `.onDisappear`. A `deinit` cannot touch actor-isolated
    /// state, so cancellation is explicit.
    public func cancel() {
        task?.cancel()
        task = nil
        intensity = 0
    }
}

// MARK: - Channel split shake

/// Layers the content three times with per-channel offsets. Used for the
/// emergency protocol, never for ambient decoration — when the user sees
/// this, something is actually happening.
public struct ChannelSplit: ViewModifier {
    let active: Bool
    let amount: CGFloat
    @Environment(\.accessibilityReduceMotion) private var reduceMotion

    public func body(content: Content) -> some View {
        if active && !reduceMotion {
            ZStack {
                content
                    .foregroundStyle(LL.Palette.edge)
                    .offset(x: -amount)
                    .blendMode(.screen)
                content
                    .foregroundStyle(LL.Palette.circuit)
                    .offset(x: amount)
                    .blendMode(.screen)
                content
            }
        } else {
            content
        }
    }
}

public struct Jitter: ViewModifier {
    let active: Bool
    let amount: CGFloat
    @Environment(\.accessibilityReduceMotion) private var reduceMotion
    @State private var offset: CGSize = .zero

    public func body(content: Content) -> some View {
        Group {
            if active && !reduceMotion {
                TimelineView(.animation(minimumInterval: 1.0 / 20.0, paused: false)) { timeline in
                    let tick = UInt64(timeline.date.timeIntervalSinceReferenceDate * 20)
                    var rng = SplitMix64(seed: tick)
                    let dx = (rng.nextUnit() - 0.5) * 2 * amount
                    let dy = (rng.nextUnit() - 0.5) * 2 * amount
                    content.offset(x: dx, y: dy)
                }
            } else {
                content
            }
        }
    }
}

public extension View {
    func channelSplit(active: Bool, amount: CGFloat = 2) -> some View {
        modifier(ChannelSplit(active: active, amount: amount))
    }

    func jitter(active: Bool, amount: CGFloat = 2) -> some View {
        modifier(Jitter(active: active, amount: amount))
    }

    /// Standard app background: void, grid, scanlines.
    func llBackground(gridAnchor: UnitPoint = .top, scanlines: Bool = true) -> some View {
        self.background(
            ZStack {
                LL.Palette.void
                RadialGridBackdrop(anchor: gridAnchor)
                if scanlines { ScanlineOverlay() }
            }
            .ignoresSafeArea()
        )
    }
}
