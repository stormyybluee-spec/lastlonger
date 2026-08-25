//
//  RosslerAttractor.swift
//  LAST LONGER
//
//  The stamina score is not plotted as a line. It is fed into a Rössler system
//  as the chaos parameter and the resulting orbit is what gets drawn.
//
//      dx/dt = -y - z
//      dy/dt =  x + a·y
//      dz/dt =  b + z·(x - c)
//
//  `c` controls the bifurcation. Low c settles into a single clean loop; high c
//  breaks into a chaotic band. Mapping stamina score inversely onto `c` means
//  the orbit visibly tightens as control improves — the plot IS the metric,
//  not a decoration wrapped around it.
//
//      score   0  ->  c = 6.60   chaotic band, wide scatter
//      score  50  ->  c = 4.55   period-4, visible doubling
//      score 100  ->  c = 2.50   period-1, single closed loop
//

import Foundation
import CoreGraphics

struct RosslerAttractor {

    var a: Double = 0.2
    var b: Double = 0.2
    var c: Double = 5.7

    static let cOrdered: Double = 2.50
    static let cChaotic: Double = 6.60

    /// Maps a 0...100 stamina score onto the bifurcation parameter.
    static func c(forScore score: Double) -> Double {
        let t = min(1, max(0, score / 100))
        return cChaotic - (cChaotic - cOrdered) * t
    }

    /// Human-readable regime label for the instrument readout.
    static func regime(forC c: Double) -> String {
        switch c {
        case ..<3.0:  return "period-1 / locked"
        case ..<4.0:  return "period-2"
        case ..<5.0:  return "period-4"
        case ..<5.9:  return "band merge"
        default:      return "chaotic"
        }
    }

    @inline(__always)
    private func derivative(_ p: SIMD3<Double>) -> SIMD3<Double> {
        SIMD3(-p.y - p.z,
               p.x + a * p.y,
               b + p.z * (p.x - c))
    }

    /// Classical RK4. Fixed step — the trajectory is deterministic for a given
    /// score series, so the same history always renders the same figure.
    @inline(__always)
    func step(_ p: SIMD3<Double>, dt: Double) -> SIMD3<Double> {
        let k1 = derivative(p)
        let k2 = derivative(p + k1 * (dt / 2))
        let k3 = derivative(p + k2 * (dt / 2))
        let k4 = derivative(p + k3 * dt)
        return p + (k1 + 2 * k2 + 2 * k3 + k4) * (dt / 6)
    }
}

// MARK: - Trajectory

struct AttractorTrajectory: Sendable {
    /// Normalised to 0...1 with y already flipped for screen space.
    let points: [CGPoint]
    /// Index at which the most recent ~12% of the path begins.
    let recentIndex: Int
    /// Bifurcation parameter at the newest sample.
    let currentC: Double
    let regime: String

    var head: CGPoint { points.last ?? CGPoint(x: 0.5, y: 0.5) }

    static let empty = AttractorTrajectory(points: [], recentIndex: 0,
                                           currentC: RosslerAttractor.cChaotic,
                                           regime: "no signal")
}

enum AttractorBuilder {

    /// Integrates one segment per stamina sample, carrying state forward so the
    /// orbit morphs across the window instead of restarting each time.
    ///
    /// - Parameter scores: oldest -> newest, 0...100.
    static func build(scores: [Double],
                      budget: Int = 7_000,
                      dt: Double = 0.028) -> AttractorTrajectory {

        guard scores.count >= 2 else { return .empty }

        let stepsPerSample = max(60, min(260, budget / scores.count))
        var state = SIMD3<Double>(0.1, 0.0, 0.0)
        var raw: [SIMD3<Double>] = []
        raw.reserveCapacity(scores.count * stepsPerSample)

        // Discard transient so we start on the attractor, not on the way to it.
        let warm = RosslerAttractor(c: RosslerAttractor.c(forScore: scores[0]))
        for _ in 0..<500 { state = warm.step(state, dt: dt) }

        for score in scores {
            let system = RosslerAttractor(c: RosslerAttractor.c(forScore: score))
            for _ in 0..<stepsPerSample {
                state = system.step(state, dt: dt)
                raw.append(state)
            }
        }

        // Project onto x-y and normalise.
        var minX = Double.greatestFiniteMagnitude, maxX = -Double.greatestFiniteMagnitude
        var minY = Double.greatestFiniteMagnitude, maxY = -Double.greatestFiniteMagnitude
        for p in raw {
            minX = min(minX, p.x); maxX = max(maxX, p.x)
            minY = min(minY, p.y); maxY = max(maxY, p.y)
        }
        let spanX = max(0.0001, maxX - minX)
        let spanY = max(0.0001, maxY - minY)
        let inset = 0.08

        let points: [CGPoint] = raw.map { p in
            let nx = (p.x - minX) / spanX
            let ny = (p.y - minY) / spanY
            return CGPoint(x: inset + nx * (1 - 2 * inset),
                           y: inset + (1 - ny) * (1 - 2 * inset))   // flip for screen space
        }

        let currentC = RosslerAttractor.c(forScore: scores.last ?? 0)
        return AttractorTrajectory(
            points: points,
            recentIndex: Int(Double(points.count) * 0.88),
            currentC: currentC,
            regime: RosslerAttractor.regime(forC: currentC)
        )
    }
}
