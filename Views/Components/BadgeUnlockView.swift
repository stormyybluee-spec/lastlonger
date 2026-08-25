//
//  BadgeUnlockView.swift
//  LAST LONGER
//
//  Badge unlock celebration. CAEmitterLayer burst of square pixel particles plus
//  an expanding square shockwave — no confetti, no emoji, no third-party library.
//
//  Under Reduce Motion the burst is replaced by a single opacity pulse.
//

import SwiftUI
import UIKit

// MARK: - Badge model

// RENAMED from `Badge` during consolidation. LLBadges.swift declares the badge
// catalogue as `Badge` (with a `tier`), and ChallengesView reads it. This is the
// unlock screen's presentation model, which carries a `tint` the catalogue type
// does not, so it was renamed rather than merged.
struct UnlockedBadge: Identifiable, Equatable {
    let id: String
    let title: String
    let requirement: String
    /// SF Symbol name. Never an emoji.
    let symbol: String
    var tint: Color = LL.Palette.warning
}

// MARK: - Core Animation burst

final class PixelBurstUIView: UIView {

    private static let particle: CGImage = {
        let side: CGFloat = 6
        let renderer = UIGraphicsImageRenderer(size: CGSize(width: side, height: side))
        let image = renderer.image { context in
            UIColor.white.setFill()
            context.fill(CGRect(x: 0, y: 0, width: side, height: side))
        }
        return image.cgImage!
    }()

    /// Fires the burst. `colors` tint the additive particles.
    func fire(colors: [UIColor], reduceMotion: Bool) {
        guard !reduceMotion else {
            pulse(color: colors.first ?? .white)
            return
        }
        emitParticles(colors: colors)
        emitShockwave(color: colors.first ?? .white)
    }

    // MARK: Particles

    private func emitParticles(colors: [UIColor]) {
        let emitter = CAEmitterLayer()
        emitter.emitterPosition = CGPoint(x: bounds.midX, y: bounds.midY)
        emitter.emitterShape = .circle
        emitter.emitterMode = .outline
        emitter.emitterSize = CGSize(width: 10, height: 10)
        emitter.renderMode = .additive
        emitter.beginTime = CACurrentMediaTime()
        emitter.emitterCells = colors.map(cell(color:))
        layer.addSublayer(emitter)

        // A burst, not a fountain: birth for 120 ms, then shut the emitter off and
        // let the existing particles live out their lifetime before teardown.
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.12) {
            emitter.birthRate = 0
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.6) {
            emitter.removeFromSuperlayer()
        }
    }

    private func cell(color: UIColor) -> CAEmitterCell {
        let cell = CAEmitterCell()
        cell.contents = Self.particle
        cell.color = color.cgColor
        cell.birthRate = 220
        cell.lifetime = 1.1
        cell.lifetimeRange = 0.35
        cell.velocity = 220
        cell.velocityRange = 90
        cell.emissionRange = .pi * 2
        cell.yAcceleration = 180          // particles fall — weight, not sparkle
        cell.scale = 1.0
        cell.scaleRange = 0.6
        cell.scaleSpeed = -0.55           // shrink to nothing, keeps edges crisp
        cell.spin = 0                     // no rotation: pixels stay axis-aligned
        cell.alphaSpeed = -0.9
        cell.magnificationFilter = .nearest   // hard pixel edges, no interpolation
        cell.minificationFilter = .nearest
        return cell
    }

    // MARK: Shockwave

    private func emitShockwave(color: UIColor) {
        let side: CGFloat = 44
        let ring = CAShapeLayer()
        ring.path = UIBezierPath(
            rect: CGRect(x: -side / 2, y: -side / 2, width: side, height: side)
        ).cgPath
        ring.position = CGPoint(x: bounds.midX, y: bounds.midY)
        ring.fillColor = nil
        ring.strokeColor = color.cgColor
        ring.lineWidth = 3
        ring.lineJoin = .miter          // square corners; no rounded softness
        ring.opacity = 0
        layer.addSublayer(ring)

        let scale = CABasicAnimation(keyPath: "transform.scale")
        scale.fromValue = 0.4
        scale.toValue = 7.0

        let fade = CAKeyframeAnimation(keyPath: "opacity")
        fade.values = [0.0, 0.9, 0.0]
        fade.keyTimes = [0.0, 0.12, 1.0]

        let group = CAAnimationGroup()
        group.animations = [scale, fade]
        group.duration = LL.Motion.burstDuration
        group.timingFunction = CAMediaTimingFunction(name: .easeOut)
        group.isRemovedOnCompletion = true

        ring.add(group, forKey: "shockwave")
        DispatchQueue.main.asyncAfter(deadline: .now() + LL.Motion.burstDuration + 0.1) {
            ring.removeFromSuperlayer()
        }
    }

    // MARK: Reduce Motion path

    private func pulse(color: UIColor) {
        let flash = CALayer()
        flash.frame = bounds
        flash.backgroundColor = color.withAlphaComponent(0.22).cgColor
        flash.opacity = 0
        layer.addSublayer(flash)

        let fade = CAKeyframeAnimation(keyPath: "opacity")
        fade.values = [0.0, 1.0, 0.0]
        fade.keyTimes = [0.0, 0.35, 1.0]
        fade.duration = 0.5
        flash.add(fade, forKey: "pulse")

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.6) {
            flash.removeFromSuperlayer()
        }
    }
}

// MARK: - SwiftUI bridge

struct PixelBurst: UIViewRepresentable {
    /// Increment to fire. Any change triggers one burst.
    var trigger: Int
    var colors: [UIColor]
    var reduceMotion: Bool

    func makeUIView(context: Context) -> PixelBurstUIView {
        let view = PixelBurstUIView()
        view.backgroundColor = .clear
        view.isUserInteractionEnabled = false
        return view
    }

    func updateUIView(_ uiView: PixelBurstUIView, context: Context) {
        guard context.coordinator.lastTrigger != trigger else { return }
        context.coordinator.lastTrigger = trigger
        // Wait for layout so emitterPosition lands on the real centre.
        DispatchQueue.main.async {
            uiView.fire(colors: colors, reduceMotion: reduceMotion)
        }
    }

    func makeCoordinator() -> Coordinator { Coordinator() }

    final class Coordinator {
        var lastTrigger: Int = -1
    }
}

// MARK: - Unlock overlay

struct BadgeUnlockOverlay: View {

    let badge: UnlockedBadge
    let onDismiss: () -> Void

    @EnvironmentObject private var haptics: HapticEngine
    @Environment(\.accessibilityReduceMotion) private var reduceMotion

    @State private var burstTrigger = 0
    @State private var symbolScale: CGFloat = 0.6
    @State private var glitchActive = false

    @ScaledMetric(relativeTo: .largeTitle) private var symbolSize: CGFloat = 54

    var body: some View {
        ZStack {
            Color.black.opacity(0.86).ignoresSafeArea()

            VStack(spacing: 22) {
                ZStack {
                    PixelBurst(
                        trigger: burstTrigger,
                        colors: [
                            UIColor(LL.Palette.warning),
                            UIColor(LL.Palette.primary),
                            UIColor(LL.Palette.data)
                        ],
                        reduceMotion: reduceMotion
                    )
                    .frame(width: 220, height: 220)

                    Image(systemName: badge.symbol)
                        .font(.system(size: symbolSize, weight: .black))
                        .foregroundStyle(badge.tint)
                        .shadow(color: badge.tint.opacity(0.6), radius: 20)
                        .scaleEffect(symbolScale)
                        .glitch(glitchActive, amount: 2)
                }
                .frame(width: 220, height: 220)
                .accessibilityHidden(true)

                VStack(spacing: 8) {
                    FieldLabel(text: "Badge unlocked", color: LL.Palette.warning)
                    DisplayText(text: badge.title.uppercased(), size: 24, tracking: 2)
                    Text(badge.requirement)
                        .font(PixelFont.label(12, weight: .regular))
                        .foregroundStyle(LL.Palette.textSecondary)
                        .multilineTextAlignment(.center)
                }

                Button("Continue", action: onDismiss)
                    .buttonStyle(PrimaryActionStyle(tint: badge.tint))
                    .padding(.horizontal, 40)
                    .padding(.top, 6)
            }
            .padding(LL.Metrics.gutter)
        }
        // One VoiceOver element: the badge is an announcement, not a form.
        .accessibilityElement(children: .contain)
        .accessibilityLabel("Badge unlocked. \(badge.title). \(badge.requirement)")
        .task { await runUnlock() }
    }

    private func runUnlock() async {
        Accessibility.announce("Badge unlocked. \(badge.title).")
        haptics.play(.success(streak: 6))

        if reduceMotion {
            symbolScale = 1
            burstTrigger += 1
            return
        }

        withAnimation(.spring(response: 0.34, dampingFraction: 0.55)) {
            symbolScale = 1
        }
        burstTrigger += 1

        try? await Task.sleep(for: .milliseconds(90))
        glitchActive = true
        try? await Task.sleep(for: .milliseconds(70))
        glitchActive = false
    }
}

#Preview {
    BadgeUnlockOverlay(
        badge: UnlockedBadge(
            id: "threshold_master",
            title: "Threshold Master",
            requirement: "Ten consecutive holds in one session",
            symbol: "bolt.horizontal.circle.fill"
        ),
        onDismiss: {}
    )
    .environmentObject(HapticEngine())
}
