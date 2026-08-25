//
//  AngelWidget.swift
//  LAST LONGER
//
//  The hero. A 15x16 pixel sprite: hand-authored body, procedural wings.
//
//  Wings are generated from a spread value rather than stored as six
//  separate bitmaps, because the states have to interpolate — a wing that
//  snaps between "folded" and "spread" reads as a broken sprite, and the
//  0.3s state fade is the whole visual language of the app.
//

import SwiftUI
import UIKit

// MARK: - Sprite

enum AngelSprite {
    static let columns = 15
    static let rows = 16

    /// Body only. Wings are added at draw time.
    static let body: [String] = [
        "...............",  //  0
        ".....#####.....",  //  1  halo
        "...............",  //  2
        ".....#####.....",  //  3  crown of head
        ".....#.#.#.....",  //  4  eyes
        ".....#####.....",  //  5  jaw
        "......###......",  //  6  neck
        ".....#####.....",  //  7  shoulders
        "......###......",  //  8
        "......###......",  //  9
        "......###......",  // 10
        "......###......",  // 11
        ".....#####.....",  // 12  robe
        ".....#####.....",  // 13
        "....#######....",  // 14  hem
        "...............",  // 15
    ]

    static let eyeRow = 4
    static let eyesClosedRow = ".....#####....."

    /// - Parameters:
    ///   - spread: 0 = wrapped inward, 1 = fully extended.
    ///   - eyesClosed: swaps the eye row for a solid lid.
    /// - Returns: lit pixel coordinates.
    static func pixels(spread: Double, eyesClosed: Bool) -> [(x: Int, y: Int)] {
        var result: [(x: Int, y: Int)] = []

        for (y, row) in body.enumerated() {
            let source = (y == eyeRow && eyesClosed) ? eyesClosedRow : row
            for (x, bit) in source.enumerated() where bit == "#" {
                result.append((x, y))
            }
        }

        let e = max(0, min(1, spread))
        let reach = 1 + Int((e * 4).rounded())
        let baseRow = 9 - Int((e * 3).rounded())

        for step in 0..<reach {
            let lift = Int((e * Double(step) * 1.1).rounded())
            let top = baseRow - lift
            let run = max(1, 4 - step)

            for offset in 0..<run {
                let y = top + offset
                guard y >= 0, y < rows else { continue }
                let left = 4 - step
                let right = 10 + step
                if left >= 0 { result.append((left, y)) }
                if right < columns { result.append((right, y)) }
            }
        }

        return result
    }
}

// MARK: - Widget

public struct AngelWidget: View {

    // Inputs
    public var state: AngelState
    public var skin: AngelSkin
    public var streak: Int
    public var size: CGFloat
    public var showsStreak: Bool

    // Actions
    public var onThreshold: () -> Void
    public var onPullback: () -> Void
    public var onEmergency: () -> Void
    public var onEnd: () -> Void

    @Environment(\.accessibilityReduceMotion) private var reduceMotion
    @StateObject private var taps = TapArbiter()

    public init(
        state: AngelState,
        skin: AngelSkin = .white,
        streak: Int = 0,
        size: CGFloat = LL.Metric.angelSize,
        showsStreak: Bool = true,
        onThreshold: @escaping () -> Void = {},
        onPullback: @escaping () -> Void = {},
        onEmergency: @escaping () -> Void = {},
        onEnd: @escaping () -> Void = {}
    ) {
        self.state = state
        self.skin = skin
        self.streak = streak
        self.size = size
        self.showsStreak = showsStreak
        self.onThreshold = onThreshold
        self.onPullback = onPullback
        self.onEmergency = onEmergency
        self.onEnd = onEnd
    }

    public var body: some View {
        VStack(spacing: size * 0.08) {
            sprite
                .frame(width: size, height: size)
                .contentShape(Rectangle())

            if showsStreak {
                PixelText(
                    streak > 0 ? String(streak) : "-",
                    pixel: max(1.5, size / 34),
                    color: streak > 0 ? state.glow : LL.Palette.textDim
                )
                .animation(LL.Motion.stateFade, value: streak)
                .accessibilityHidden(true)
            }
        }
        .jitter(active: state == .emergency, amount: size * 0.035)
        .gesture(pressGesture)
        .overlay(TwoFingerTapCatcher(action: onEmergency))
        .onChange(of: state) { _, _ in taps.reset() }
        .accessibilityElement(children: .ignore)
        .accessibilityLabel(accessibilityLabel)
        .accessibilityValue(streak > 0 ? "Streak \(streak)" : "No streak")
        .accessibilityHint("Double tap to log a threshold.")
        .accessibilityAddTraits(.allowsDirectInteraction)
        .accessibilityAction(named: "Log threshold", onThreshold)
        .accessibilityAction(named: "Back off", onPullback)
        .accessibilityAction(named: "Emergency pullback", onEmergency)
        .accessibilityAction(named: "End session", onEnd)
    }

    private var accessibilityLabel: String {
        switch state {
        case .safe:      return "Angel, safe"
        case .rising:    return "Angel, rising"
        case .edge:      return "Angel, at the threshold"
        case .emergency: return "Angel, emergency pullback running"
        case .cooldown:  return "Angel, cooling down"
        case .ended:     return "Angel, session ended"
        }
    }

    // MARK: - Rendering

    private var sprite: some View {
        TimelineView(.animation(minimumInterval: frameInterval, paused: reduceMotion)) { timeline in
            let elapsed = timeline.date.timeIntervalSinceReferenceDate
            let phase = flapPhase(at: elapsed)
            let spread = state.wingSpread * (0.84 + 0.16 * phase)
            let bob = reduceMotion ? 0 : sin(elapsed * 1.5) * state.bobAmplitude * (size / LL.Metric.angelSize)

            ZStack {
                // Emissive halo. Drawn first, heavily blurred, tinted by state
                // so the state colour is legible even on the Shadow skin.
                canvas(spread: spread, color: state.glow)
                    .blur(radius: state.glowRadius * (size / LL.Metric.angelSize) * 0.5)
                    .opacity(state == .ended ? 0.2 : 0.85)

                // Crisp body in the skin tint.
                canvas(spread: spread, color: skin.bodyTint)

                // State wash keeps hue on the sprite itself without
                // destroying the pixel edges.
                canvas(spread: spread, color: state.glow)
                    .opacity(0.45)
                    .blendMode(.plusLighter)
            }
            .offset(y: bob)
            .scaleEffect(state == .edge ? pulseScale(at: elapsed) : 1)
        }
        .animation(LL.Motion.stateFade, value: state)
        .opacity(state == .ended ? 0 : 1)
    }

    private func canvas(spread: Double, color: Color) -> some View {
        Canvas(rendersAsynchronously: false) { context, canvasSize in
            let pixel = canvasSize.height / CGFloat(AngelSprite.rows)
            let inset = (canvasSize.width - pixel * CGFloat(AngelSprite.columns)) / 2

            for point in AngelSprite.pixels(spread: spread, eyesClosed: state.eyesClosed) {
                let rect = CGRect(
                    x: inset + CGFloat(point.x) * pixel,
                    y: CGFloat(point.y) * pixel,
                    width: pixel,
                    height: pixel
                )
                context.fill(Path(rect), with: .color(color))
            }
        }
    }

    /// Repaint rate follows the flap speed. A cooldown angel does not need
    /// 30fps and this widget is on screen for the whole session.
    private var frameInterval: Double {
        guard let period = state.flapPeriod else { return 1.0 / 10.0 }
        return period < 1 ? 1.0 / 30.0 : 1.0 / 15.0
    }

    /// -1…1.
    private func flapPhase(at elapsed: Double) -> Double {
        guard !reduceMotion, let period = state.flapPeriod else { return 0 }
        return sin(elapsed * 2 * .pi / period)
    }

    private func pulseScale(at elapsed: Double) -> Double {
        guard !reduceMotion else { return 1 }
        return 1 + 0.06 * (0.5 + 0.5 * sin(elapsed * 2 * .pi / 0.6))
    }

    // MARK: - Gestures

    /// One gesture handles drag, tap-count discrimination and long press so
    /// there is no ambiguity for SwiftUI to resolve at runtime. Composed
    /// gestures were tried first and produced dropped taps when the finger
    /// moved two or three points, which happens constantly one-handed.
    private var pressGesture: some Gesture {
        DragGesture(minimumDistance: 0)
            .onChanged { value in
                let distance = hypot(value.translation.width, value.translation.height)
                taps.began(onEnd: onEnd)
                if distance > 10 { taps.cancelPress() }
            }
            .onEnded { value in
                let distance = hypot(value.translation.width, value.translation.height)
                taps.ended(
                    moved: distance > 10,
                    onThreshold: onThreshold,
                    onPullback: onPullback,
                    onEmergency: onEmergency
                )
            }
    }
}

// MARK: - Tap arbitration

/// Discriminates single / double / triple within a 260 ms window.
///
/// 260 ms is the cost of supporting three tap counts on one target: the
/// single tap cannot fire until the window proves no second tap is coming.
/// It is under the ~300 ms mark where a confirmation starts to feel laggy,
/// but it is a real cost, and it is the reason `TwoFingerTapCatcher` exists
/// as a zero-latency path to the emergency protocol.
@MainActor
final class TapArbiter: ObservableObject {

    private static let window: Duration = .milliseconds(260)
    private static let longPress: Duration = .seconds(2)

    private var count = 0
    private var resolveTask: Task<Void, Never>?
    private var pressTask: Task<Void, Never>?
    private var pressFired = false

    func began(onEnd: @escaping () -> Void) {
        guard pressTask == nil else { return }
        pressFired = false
        pressTask = Task { [weak self] in
            try? await Task.sleep(for: Self.longPress)
            guard !Task.isCancelled, let self else { return }
            self.pressFired = true
            self.count = 0
            self.resolveTask?.cancel()
            self.resolveTask = nil
            onEnd()
        }
    }

    func cancelPress() {
        pressTask?.cancel()
        pressTask = nil
    }

    func ended(
        moved: Bool,
        onThreshold: @escaping () -> Void,
        onPullback: @escaping () -> Void,
        onEmergency: @escaping () -> Void
    ) {
        cancelPress()
        guard !moved, !pressFired else {
            pressFired = false
            return
        }

        count += 1

        // Three taps resolves immediately — the emergency path must not
        // wait out a discrimination window.
        if count >= 3 {
            count = 0
            resolveTask?.cancel()
            resolveTask = nil
            onEmergency()
            return
        }

        resolveTask?.cancel()
        resolveTask = Task { [weak self] in
            try? await Task.sleep(for: Self.window)
            guard !Task.isCancelled, let self else { return }
            let resolved = self.count
            self.count = 0
            self.resolveTask = nil
            if resolved == 1 { onThreshold() }
            if resolved == 2 { onPullback() }
        }
    }

    func reset() {
        resolveTask?.cancel(); resolveTask = nil
        pressTask?.cancel(); pressTask = nil
        count = 0
        pressFired = false
    }
}

// MARK: - Two-finger emergency

/// SwiftUI has no multi-touch tap primitive, so this is the one place the
/// widget drops to UIKit. A two-finger tap is easier to land than three
/// accurate single taps when the user is panicking, and it fires instantly.
struct TwoFingerTapCatcher: UIViewRepresentable {
    let action: () -> Void

    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        view.backgroundColor = .clear
        let recognizer = UITapGestureRecognizer(
            target: context.coordinator,
            action: #selector(Coordinator.fire)
        )
        recognizer.numberOfTouchesRequired = 2
        recognizer.numberOfTapsRequired = 1
        view.addGestureRecognizer(recognizer)
        return view
    }

    func updateUIView(_ view: UIView, context: Context) {
        context.coordinator.action = action
    }

    func makeCoordinator() -> Coordinator { Coordinator(action: action) }

    final class Coordinator: NSObject {
        var action: () -> Void
        init(action: @escaping () -> Void) { self.action = action }
        @objc func fire() { action() }
    }
}

// MARK: - Draggable container

/// Wraps the widget in a position the user can move, clamped to the safe
/// area so it can never be parked under the Dynamic Island or off-screen.
public struct DraggableAngel: View {
    @Binding public var position: CGPoint
    public let content: AngelWidget

    @State private var dragOffset: CGSize = .zero

    public init(position: Binding<CGPoint>, content: AngelWidget) {
        self._position = position
        self.content = content
    }

    public var body: some View {
        GeometryReader { proxy in
            let bounds = proxy.size
            let margin = content.size / 2 + 8

            content
                .position(
                    x: min(max(position.x + dragOffset.width, margin), bounds.width - margin),
                    y: min(max(position.y + dragOffset.height, margin), bounds.height - margin)
                )
                .simultaneousGesture(
                    DragGesture(minimumDistance: 12)
                        .onChanged { dragOffset = $0.translation }
                        .onEnded { value in
                            position = CGPoint(
                                x: min(max(position.x + value.translation.width, margin), bounds.width - margin),
                                y: min(max(position.y + value.translation.height, margin), bounds.height - margin)
                            )
                            dragOffset = .zero
                        }
                )
        }
    }
}

// MARK: - Preview

#Preview("States") {
    ScrollView {
        VStack(spacing: 36) {
            ForEach(AngelState.allCases, id: \.self) { state in
                VStack(spacing: 10) {
                    AngelWidget(state: state, streak: 7, size: 96)
                    Text(state.rawValue).llLabelStyle()
                }
            }
        }
        .padding(.vertical, 40)
        .frame(maxWidth: .infinity)
    }
    .llBackground()
}

#Preview("Skins") {
    HStack(spacing: 18) {
        ForEach(AngelSkin.allCases) { skin in
            AngelWidget(state: .edge, skin: skin, streak: 3, size: 60, showsStreak: false)
        }
    }
    .padding()
    .llBackground(scanlines: false)
}
