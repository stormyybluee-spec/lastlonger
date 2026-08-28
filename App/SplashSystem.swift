//
//  SplashSystem.swift
//  LAST LONGER
//
//  Tab-transition splash system. Edition II, "The Slow Room", plus the
//  original launch mark carried in as the most common card.
//
//  Nine cards. Eight in the deck, one rare.
//
//  The design rule this file is built to hold: these draw RATES, not events.
//  Nothing here finishes on screen. The fade cuts every process off part way
//  through, which is why each splash maps `t` across the whole 0.5s envelope
//  rather than completing inside the hold. A process that visibly completes is
//  an event, and the set stops meaning anything.
//
//  One file, no new dependencies. Uses only `Color(hex:)`, `Haptics.shared`,
//  `LL.Palette` and `DisplayText`, all of which already exist in the target.
//
//  Integration notes are at the bottom of this file.
//

import SwiftUI
import Foundation

// MARK: - Palette

/// The thermal ramp. Two colours here are new (the violet crossover and the
/// white-hot core) and exist only so a gradient can resolve. Neither is ever
/// allowed to become an interface colour.
private enum SplashInk {
    static let void      = Color(hex: 0x1A1A1E)   // app ground, never changes
    static let black     = Color(hex: 0x000000)   // Soluble's slab
    static let floor     = Color(hex: 0x071A2E)   // cold floor
    static let cold      = Color(hex: 0x0A84FF)   // app Data blue
    static let mid       = Color(hex: 0x6B4BA8)   // new: the crossover
    static let warm      = Color(hex: 0xFFCC00)   // app Rising
    static let hot       = Color(hex: 0xFF3B30)   // app Edge
    static let whiteHot  = Color(hex: 0xFFF1E8)   // new: core only, never a field
    static let wet       = Color(hex: 0xB8ECFF)   // specular on any liquid

    /// Banded false colour for Thermal. Index, never interpolate - the hard
    /// isochromes are the aesthetic.
    static let ramp: [Color] = [floor, Color(hex: 0x0E3A6B), cold, mid, warm, hot, whiteHot]
}

// MARK: - Deterministic noise

/// A pure hash so every procedural composition is a function of (seed, index).
/// Authored compositions must not change between appearances; only Half-Life
/// reseeds, because its subject genuinely is randomness.
private func splashHash(_ seed: UInt64, _ i: Int) -> Double {
    var x = seed &+ (UInt64(bitPattern: Int64(i)) &* 0x9E37_79B9_7F4A_7C15)
    x = (x ^ (x >> 30)) &* 0xBF58_476D_1CE4_E5B9
    x = (x ^ (x >> 27)) &* 0x94D0_49BB_1331_11EB
    x = x ^ (x >> 31)
    return Double(x % 100_000) / 100_000.0
}

// MARK: - SplashType

/// The nine cards. Eight in the deck plus the rare one.
enum SplashType: String, CaseIterable, Identifiable {
    case original      // the launch mark, carried in - weight 3
    case tidemark      // a level dropping in a tank
    case soluble       // something solid discovering it is not
    case afterimage    // the picture you already saw
    case halfLife      // order thinning out
    case grain         // an image coming loose from itself
    case dilate        // an aperture opening one stop
    case thermal       // an empty room warming faster than it should
    case dry           // RARE - not in the deck

    var id: String { rawValue }

    var title: String {
        switch self {
        case .original:   return "Original"
        case .tidemark:   return "Tidemark"
        case .soluble:    return "Soluble"
        case .afterimage: return "Afterimage"
        case .halfLife:   return "Half-Life"
        case .grain:      return "Grain"
        case .dilate:     return "Dilate"
        case .thermal:    return "Thermal"
        case .dry:        return "Dry"
        }
    }

    /// How many slots this card takes in the deck. `dry` is not in the deck at
    /// all - it is rolled separately.
    ///
    /// `originalWeight` is the one dial worth knowing about, because "3x" is
    /// ambiguous and the two readings give different numbers:
    ///
    ///   weight 3 -> original 29.5%, others 9.8% each
    ///               = 3.0x each other card, but only 2.4x the AVERAGE of the
    ///                 eight (the average includes original, which drags it up)
    ///   weight 4 -> original 36.4%, others 9.1% each
    ///               = 4.0x each other card, and 2.9x the average
    ///
    /// Set to 4, which is the literal reading of "3x average appearance".
    /// Change this single integer to 3 if the intent was "3x each other card".
    static let originalWeight = 4

    var weight: Int {
        switch self {
        case .original: return Self.originalWeight
        case .dry:      return 0
        default:        return 1
        }
    }

    /// The eight, expanded by weight: original x`originalWeight`, seven others x1.
    private static let deck: [SplashType] = allCases.flatMap { type in
        Array(repeating: type, count: type.weight)
    }

    /// One in this many transitions draws the rare card instead of the deck.
    static let rareOdds = 64

    /// A fresh, independent roll. Repeats are allowed and are not a bug - at
    /// these weights a back-to-back repeat is expected roughly 13% of the time,
    /// and suppressing it with a shuffle bag is what would make the set feel
    /// curated rather than random.
    ///
    /// Resulting distribution at `originalWeight` 4:
    ///   dry        1/64           ~1.6%
    ///   original   63/64 * 4/11  ~35.8%
    ///   each other 63/64 * 1/11   ~8.9%
    static func random() -> SplashType {
        if Int.random(in: 0..<rareOdds) == 0 { return .dry }
        return deck.randomElement() ?? .original
    }
}

// MARK: - SplashSystem

/// Hosts one splash for exactly one envelope, then calls `onFinish`.
///
///     SplashSystem(type: .random()) { showing = nil }
///
struct SplashSystem: View {

    let type: SplashType
    var onFinish: () -> Void = {}

    /// 0.10 in, 0.30 process, 0.10 out. Total 0.50s.
    static let fadeIn: TimeInterval  = 0.10
    static let hold: TimeInterval    = 0.30
    static let fadeOut: TimeInterval = 0.10
    static var duration: TimeInterval { fadeIn + hold + fadeOut }

    @Environment(\.accessibilityReduceMotion) private var reduceMotion
    @State private var opacity: Double = 0
    @State private var start = Date()
    /// Reseeded per appearance. Only Half-Life and Grain consume it.
    @State private var seed: UInt64 = UInt64.random(in: 0..<UInt64.max)

    var body: some View {
        ZStack {
            SplashInk.void.ignoresSafeArea()

            TimelineView(.animation(minimumInterval: 1.0 / 60.0, paused: reduceMotion)) { context in
                // Reduce Motion freezes each process ~60% through. A process
                // held part way still reads as a process, so this degrades
                // honestly rather than becoming a blank frame.
                let t = reduceMotion ? 0.6 : progress(at: context.date)
                canvas(for: t)
            }
        }
        .opacity(opacity)
        .allowsHitTesting(false)
        .accessibilityHidden(true)
        .task { await run() }
    }

    private func progress(at date: Date) -> Double {
        let elapsed = date.timeIntervalSince(start)
        return min(1, max(0, elapsed / Self.duration))
    }

    @ViewBuilder
    private func canvas(for t: Double) -> some View {
        switch type {
        case .original:   SplashOriginal(t: t)
        case .tidemark:   SplashTidemark(t: t)
        case .soluble:    SplashSoluble(t: t)
        case .afterimage: SplashAfterimage(t: t)
        case .halfLife:   SplashHalfLife(t: t, seed: seed)
        case .grain:      SplashGrain(t: t, seed: seed)
        case .dilate:     SplashDilate(t: t)
        case .thermal:    SplashThermal(t: t)
        case .dry:        SplashDry(t: t)
        }
    }

    private func run() async {
        start = Date()
        // Every card taps on appearance except the rare one. Dry is the set's
        // only silent card, and the silence is the point.
        if type != .dry { Haptics.shared.play(.tap) }

        withAnimation(.easeOut(duration: Self.fadeIn)) { opacity = 1 }
        try? await Task.sleep(for: .seconds(Self.fadeIn + Self.hold))
        withAnimation(.easeIn(duration: Self.fadeOut)) { opacity = 0 }
        try? await Task.sleep(for: .seconds(Self.fadeOut))
        onFinish()
    }
}

// MARK: - 1. Original

/// The launch mark, carried into the deck at weight 3.
///
/// Deliberately NOT the full launch sequence: the CRT power-on sweep is absent,
/// because that gesture means "the app is starting" and it is a lie between
/// tabs. What is left is the mark and the wordmark, breathing once.
///
/// Flip the `showsWordmark` constant below to false for the flame alone - see
/// the note in the integration block about frequency and brand repetition.
struct SplashOriginal: View {
    let t: Double
    static let showsWordmark = true

    var body: some View {
        let rise = min(1, t / 0.45)
        let ease = 1 - pow(1 - rise, 3)

        VStack(spacing: 20) {
            Image(systemName: "flame.fill")
                .font(.system(size: 54, weight: .black))
                .foregroundStyle(
                    LinearGradient(colors: [SplashInk.warm, SplashInk.hot],
                                   startPoint: .top, endPoint: .bottom)
                )
                .shadow(color: SplashInk.hot.opacity(0.45 * ease), radius: 22)
                .scaleEffect(0.94 + 0.06 * ease)

            if Self.showsWordmark {
                DisplayText(text: "LAST LONGER", size: 26, tracking: 4)
                    .opacity(0.35 + 0.65 * ease)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

// MARK: - 2. Tidemark

/// A level dropping in a tank, marking every place it has been.
/// The simplest of the set, and the right place to verify the envelope.
struct SplashTidemark: View {
    let t: Double

    var body: some View {
        Canvas { ctx, size in
            // Decelerating descent that never lands.
            let level = (size.height * 0.26) + (size.height * 0.44) * (1 - pow(1 - t, 2))

            // Territory already crossed sits a shade above the void.
            ctx.fill(Path(CGRect(x: 0, y: 0, width: size.width, height: level)),
                     with: .color(SplashInk.cold.opacity(0.09)))

            // Residue: a mark left every few rows, fading with age.
            let top = size.height * 0.26
            var y = top
            while y < level {
                let age = 1 - (level - y) / max(1, size.height * 0.5)
                ctx.fill(Path(CGRect(x: 0, y: y.rounded(), width: size.width, height: 1)),
                         with: .color(SplashInk.cold.opacity(0.10 + 0.16 * age)))
                y += 14
            }

            // The meniscus.
            ctx.fill(Path(CGRect(x: 0, y: (level - 3).rounded(), width: size.width, height: 3)),
                     with: .color(SplashInk.wet.opacity(0.18)))
            ctx.fill(Path(CGRect(x: 0, y: level.rounded(), width: size.width, height: 2)),
                     with: .color(SplashInk.wet))
        }
    }
}

// MARK: - 3. Soluble

/// Something solid discovering it is not.
///
/// The slab is BLACK, not blue - it is darker than the ground, so the splash
/// reads as a negative: a void-black mass eaten away to reveal the app's own
/// #1A1A1E. The only colour on screen is the dissolving front, which glows one
/// step warmer as if losing material costs energy.
struct SplashSoluble: View {
    let t: Double

    private static let cols = 8
    private static let rows = 14

    /// Per-cell dissolve time, biased so corners go first and the front travels
    /// inward. Deterministic, so the composition reads authored rather than noisy.
    private static let dissolveAt: [Double] = {
        let cols = 8, rows = 14                    // must match the constants above
        var out: [Double] = []
        for r in 0..<rows {
            for c in 0..<cols {
                let nx = abs(Double(c) - Double(cols - 1) / 2) / (Double(cols - 1) / 2)
                let ny = abs(Double(r) - Double(rows - 1) / 2) / (Double(rows - 1) / 2)
                let edge = max(nx, ny)
                out.append(0.14 + (1 - edge) * 0.95 + splashHash(7, r * cols + c) * 0.22)
            }
        }
        return out
    }()

    var body: some View {
        Canvas { ctx, size in
            let w = size.width * 0.62, h = size.height * 0.46
            let x0 = (size.width - w) / 2, y0 = (size.height - h) / 2
            let cw = w / Double(Self.cols), ch = h / Double(Self.rows)

            for r in 0..<Self.rows {
                for c in 0..<Self.cols {
                    let at = Self.dissolveAt[r * Self.cols + c]
                    guard t < at else { continue }          // gone means gone
                    let rect = CGRect(x: (x0 + Double(c) * cw).rounded(),
                                      y: (y0 + Double(r) * ch).rounded(),
                                      width: cw.rounded(.up),
                                      height: ch.rounded(.up))
                    // The active front is the only lit thing.
                    let onFront = abs(t - at) < 0.10
                    ctx.fill(Path(rect), with: .color(onFront ? SplashInk.mid : SplashInk.black))
                }
            }
        }
    }
}

// MARK: - 4. Afterimage

/// The picture you already saw, still deciding whether to leave.
///
/// A hard flash, an instant cut, then the complement hanging where it was.
/// This is the luminance ceiling of the whole set - if it reads as a flinch on
/// a real panel, lower `flashAlpha` before touching anything else.
struct SplashAfterimage: View {
    let t: Double
    private static let flashAlpha: Double = 0.90
    private static let flashUntil: Double = 0.26

    var body: some View {
        Canvas { ctx, size in
            let r = min(size.width, size.height) * 0.17
            let c = CGPoint(x: size.width * 0.58, y: size.height * 0.44)
            let disc = Path(ellipseIn: CGRect(x: c.x - r, y: c.y - r, width: r * 2, height: r * 2))

            if t < Self.flashUntil {
                ctx.fill(disc, with: .color(SplashInk.warm.opacity(Self.flashAlpha)))
            } else {
                // No interpolation across the cut. The ghost decays on its own.
                let k = max(0, 1 - (t - Self.flashUntil) / 0.62)
                ctx.fill(disc, with: .color(SplashInk.mid.opacity(0.35 * k * k)))
            }
        }
    }
}

// MARK: - 5. Half-Life

/// Order thinning out, and a few pixels refusing.
///
/// The one card whose randomness is genuinely per-appearance. Each cell is
/// given an exponential death time from the seed, so the block thins from
/// uniform to sparse without any per-frame mutation.
struct SplashHalfLife: View {
    let t: Double
    let seed: UInt64

    private static let cols = 11
    private static let rows = 19

    var body: some View {
        Canvas { ctx, size in
            let pitch = min(size.width / 26, size.height / 44)
            let dot = max(2, pitch * 0.5)
            let gw = Double(Self.cols) * pitch * 2
            let gh = Double(Self.rows) * pitch * 2
            let x0 = (size.width - gw) / 2, y0 = (size.height - gh) / 2

            for r in 0..<Self.rows {
                for c in 0..<Self.cols {
                    let i = r * Self.cols + c
                    let u = max(0.0001, splashHash(seed, i))
                    // Exponential: dramatic first, nearly still at the end,
                    // with a floor so a dozen survivors always remain.
                    let death = min(1.4, -log(u) / 4.2)
                    guard t < death else { continue }
                    let rect = CGRect(x: (x0 + Double(c) * pitch * 2).rounded(),
                                      y: (y0 + Double(r) * pitch * 2).rounded(),
                                      width: dot, height: dot)
                    ctx.fill(Path(rect), with: .color(SplashInk.mid))
                }
            }
        }
    }
}

// MARK: - 6. Grain

/// An image that has started to come loose from itself.
///
/// The field sheds material. Each departed pixel leaves a hole that never
/// refills, and the falling pixel reads brighter than the field it left.
struct SplashGrain: View {
    let t: Double
    let seed: UInt64
    private static let maxGrains = 70

    var body: some View {
        Canvas { ctx, size in
            let fw = size.width * 0.70, fh = size.height * 0.34
            let x0 = (size.width - fw) / 2, y0 = size.height * 0.22

            ctx.fill(Path(CGRect(x: x0, y: y0, width: fw, height: fh)),
                     with: .color(SplashInk.warm.opacity(0.30)))

            let born = Int(t * Double(Self.maxGrains) * 1.25)
            for i in 0..<min(born, Self.maxGrains) {
                let gx = (x0 + splashHash(seed, i &* 3) * fw).rounded()
                let gy = (y0 + splashHash(seed, i &* 7 &+ 11) * fh).rounded()

                // The hole stays open.
                ctx.fill(Path(CGRect(x: gx, y: gy, width: 2, height: 2)),
                         with: .color(SplashInk.void))

                // The grain falls under constant gravity from its own birth.
                let birth = Double(i) / (Double(Self.maxGrains) * 1.25)
                let dt = max(0, t - birth) * 3.4
                let y = gy + dt * dt * size.height * 0.42
                guard y < size.height else { continue }
                ctx.fill(Path(CGRect(x: gx, y: y.rounded(), width: 2, height: 2)),
                         with: .color(SplashInk.warm.opacity(0.95)))
            }
        }
    }
}

// MARK: - 7. Dilate

/// An aperture opening one stop onto a room warmer than this one.
///
/// The ring is stepped by hand rather than stroked, because an antialiased
/// circle loses the entire aesthetic.
struct SplashDilate: View {
    let t: Double

    var body: some View {
        Canvas { ctx, size in
            let c = CGPoint(x: size.width / 2, y: size.height / 2)
            let unit = min(size.width, size.height)
            let r = unit * 0.09 + unit * 0.28 * (1 - pow(1 - t, 2))

            // Interior bloom: an opening onto something lit, not a shape on a ground.
            var i = r
            while i > 0 {
                let a = 0.030 * (1 - i / r)
                let rect = CGRect(x: c.x - i, y: c.y - i, width: i * 2, height: i * 2)
                ctx.fill(Path(ellipseIn: rect), with: .color(SplashInk.warm.opacity(a)))
                i -= 2
            }

            // Stepped ring. Round every point to the pixel grid.
            func ring(_ radius: Double, _ color: Color, _ px: Double) {
                var angle = 0.0
                while angle < 360 {
                    let rad = angle * .pi / 180
                    let x = (c.x + cos(rad) * radius).rounded()
                    let y = (c.y + sin(rad) * radius).rounded()
                    ctx.fill(Path(CGRect(x: x, y: y, width: px, height: px)), with: .color(color))
                    angle += 1.4
                }
            }
            ring(r + 5, SplashInk.hot.opacity(0.30), 3)
            ring(r + 2, SplashInk.hot.opacity(0.72), 3)
            ring(r,     SplashInk.warm,             3)
            ring(r - 3, SplashInk.warm.opacity(0.55), 2)
        }
    }
}

// MARK: - 8. Thermal

/// An empty room, and something in it warming faster than it should.
///
/// The loudest card - treat it as the set's ceiling. Heat is quantised into
/// bands and looked up, never interpolated: the hard isochromes are the point.
/// This is thermography, not a glow.
struct SplashThermal: View {
    let t: Double
    private static let cols = 32
    private static let rows = 56

    /// Static per-cell offset seeded once. If this were per frame the cold
    /// field would crawl.
    private static let noise: [Double] = (0..<(32 * 56)).map { splashHash(19, $0) * 0.12 }

    var body: some View {
        Canvas { ctx, size in
            let cw = size.width / Double(Self.cols)
            let ch = size.height / Double(Self.rows)
            let sx = Double(Self.cols) * 0.40      // source, low and off centre
            let sy = Double(Self.rows) * 0.64
            let reach = 4 + t * 26
            let gain  = 0.25 + t * 1.15

            for r in 0..<Self.rows {
                for c in 0..<Self.cols {
                    let dx = Double(c) - sx
                    let dy = (Double(r) - sy) * 0.6
                    let d = (dx * dx + dy * dy).squareRoot()
                    let heat = max(0, 1 - d / reach) * gain + Self.noise[r * Self.cols + c]
                    let band = min(SplashInk.ramp.count - 1,
                                   max(0, Int(heat * Double(SplashInk.ramp.count))))
                    let rect = CGRect(x: (Double(c) * cw).rounded(),
                                      y: (Double(r) * ch).rounded(),
                                      width: cw.rounded(.up),
                                      height: ch.rounded(.up))
                    ctx.fill(Path(rect), with: .color(SplashInk.ramp[band]))
                }
            }
        }
    }
}

// MARK: - RARE. Dry

/// The process declining to start.
///
/// Void for 420ms, then one pixel at dead centre for three frames. No haptic.
///
/// On first encounter this reads as a dropped frame. That is exactly why it
/// works the second time, and why the centre pixel is not optional - without it
/// there is no evidence of intent and it is simply a bug.
///
/// Unlike a flash card this is safe under Reduce Motion: nothing strobes, so it
/// is allowed to fire normally.
struct SplashDry: View {
    let t: Double

    var body: some View {
        Canvas { ctx, size in
            // 420ms into a 500ms envelope is t = 0.84.
            guard t > 0.84, t < 0.94 else { return }
            let c = CGPoint(x: (size.width / 2).rounded(), y: (size.height / 2).rounded())
            ctx.fill(Path(CGRect(x: c.x, y: c.y, width: 3, height: 3)),
                     with: .color(SplashInk.whiteHot))
        }
    }
}

// MARK: - Integration

/// Drops a random splash over the content whenever `selection` changes.
///
/// Attach it to the TabView, not to an individual tab - the splash has to
/// outlive the tab swap it is covering.
struct TabSplash<Selection: Equatable>: ViewModifier {

    let selection: Selection
    /// Set false to disable the whole system without unpicking the call site.
    var enabled: Bool = true

    @State private var active: SplashType?

    func body(content: Content) -> some View {
        content
            .overlay {
                if let active {
                    SplashSystem(type: active) { self.active = nil }
                        .id(active)                 // restart cleanly on a repeat
                        .ignoresSafeArea()
                        .transition(.identity)      // the splash owns its own fade
                }
            }
            .onChange(of: selection) { _, _ in
                guard enabled else { return }
                active = SplashType.random()
            }
    }
}

extension View {
    /// Fires a random 0.5s splash on every change of `selection`.
    ///
    ///     TabView(selection: $tab) { ... }
    ///         .tabSplash(on: tab)
    ///
    func tabSplash<S: Equatable>(on selection: S, enabled: Bool = true) -> some View {
        modifier(TabSplash(selection: selection, enabled: enabled))
    }
}

// MARK: - How to wire this up
//
// The splash covers a TAB transition, so it belongs on the TabView in
// `RootTabView` (App/HomeView.swift), not in `RootView` or `LastLongerApp` -
// those only see launch phases and never observe the tab change.
//
// In App/HomeView.swift, `RootTabView` already owns `@State private var tab`.
// One line on the TabView is the whole integration:
//
//     TabView(selection: $tab) {
//         HomeView()
//             .tabItem { Label("Home", systemImage: "house.fill") }
//             .tag(Tab.home)
//         // ... Stats / Challenges / Settings ...
//     }
//     .tabSplash(on: tab)          // <- add this
//
// `Tab` is already an enum and therefore Equatable, which is all
// `tabSplash(on:)` requires.
//
// Notes:
//
//  1. Put `.tabSplash(on:)` on the TabView itself. On a child it would be torn
//     down by the very swap it is meant to cover.
//
//  2. The splash is `allowsHitTesting(false)` and `accessibilityHidden(true)`,
//     so it never eats a tap and never interrupts VoiceOver. A user who
//     double-taps two tabs quickly just gets the second splash.
//
//  3. To preview a single card without waiting on the roll:
//
//         SplashSystem(type: .thermal) { }
//
//  4. To turn the system off at runtime (a Settings toggle, say):
//
//         .tabSplash(on: tab, enabled: settings.tabSplashesEnabled)
//
//  5. Frequency, and the one thing worth reconsidering. `original` is weighted
//     3, so it lands on roughly 3 in 10 transitions. It is the only card that
//     carries the full wordmark, and a wordmark shown that often stops being a
//     brand moment and becomes furniture. If it starts to feel repetitive, the
//     cheap fix is to flip the `showsWordmark` constant in `SplashOriginal` to
//     false, which leaves the flame alone and lets the mark keep its weight.
//     Dropping `original`'s weight from 3 to 2 is the other dial.
//

// MARK: - Previews

#Preview("Deck") {
    VStack(spacing: 1) {
        ForEach([SplashType.original, .tidemark, .soluble, .afterimage], id: \.self) { type in
            SplashSystem(type: type)
                .frame(height: 150)
        }
    }
    .background(SplashInk.void)
    .preferredColorScheme(.dark)
}

#Preview("Deck 2") {
    VStack(spacing: 1) {
        ForEach([SplashType.halfLife, .grain, .dilate, .thermal], id: \.self) { type in
            SplashSystem(type: type)
                .frame(height: 150)
        }
    }
    .background(SplashInk.void)
    .preferredColorScheme(.dark)
}

#Preview("Rare - Dry") {
    SplashSystem(type: .dry)
        .preferredColorScheme(.dark)
}
