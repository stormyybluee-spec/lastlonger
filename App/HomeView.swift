//
//  HomeView.swift
//  LAST LONGER
//
//  The command centre. Everything above the fold answers one question —
//  "can I start right now" — and everything below it is evidence that the
//  last few sessions happened.
//
//  Sections collapse when they are empty rather than showing zero-state
//  cards. A user on day one should see the score, two buttons and today's
//  tiles, not five placeholders explaining what will eventually be there.
//

import SwiftUI

// MARK: - Root

public struct RootTabView: View {
    @StateObject private var repository = Repository.shared
    @State private var tab: Tab = .home

    enum Tab: Hashable { case home, stats, challenges, settings }

    public init() {}

    public var body: some View {
        TabView(selection: $tab) {
            HomeView()
                .tabItem { Label("Home", systemImage: "house.fill") }
                .tag(Tab.home)

            PlaceholderTab(title: "STATS", symbol: "chart.bar.fill")
                .tabItem { Label("Stats", systemImage: "chart.bar.fill") }
                .tag(Tab.stats)

            PlaceholderTab(title: "CHALLENGES", symbol: "trophy.fill")
                .tabItem { Label("Challenges", systemImage: "trophy.fill") }
                .tag(Tab.challenges)

            PlaceholderTab(title: "SETTINGS", symbol: "gearshape.fill")
                .tabItem { Label("Settings", systemImage: "gearshape.fill") }
                .tag(Tab.settings)
        }
        .environmentObject(repository)
        .tint(LL.Palette.text)
        .preferredColorScheme(.dark)
        .onChange(of: tab) { _, _ in HapticEngine.shared.play(.tick) }
    }
}

/// Sections 2 and 3 land here.
struct PlaceholderTab: View {
    let title: String
    let symbol: String

    var body: some View {
        VStack(spacing: 14) {
            Image(systemName: symbol)
                .font(.system(size: 34, weight: .bold))
                .foregroundStyle(LL.Palette.rule)
            PixelText(title, pixel: 3, color: LL.Palette.rule)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .llBackground(gridAnchor: .center)
    }
}

// MARK: - Home

public struct HomeView: View {

    @EnvironmentObject private var repository: Repository
    @State private var showingBreakdown = false
    @State private var route: Route?

    enum Route: Hashable, Identifiable {
        case modeSelection
        case quickStart
        case playlist(UUID)
        case programSession
        var id: String { String(describing: self) }
    }

    public init() {}

    public var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 18) {
                header
                startButton
                quickStartButton

                if let enrollment = repository.enrollment {
                    ProgramCard(enrollment: enrollment) { route = .programSession }
                }

                if !repository.playlists.isEmpty {
                    playlists
                }

                todayTiles

                if let challenge = repository.currentChallenge {
                    ChallengeCard(challenge: challenge)
                }

                recentSessions

                Color.clear.frame(height: 12)
            }
            .padding(.horizontal, LL.Metric.gutter)
            .padding(.bottom, 24)
        }
        .scrollIndicators(.hidden)
        .llBackground(gridAnchor: .init(x: 0.78, y: 0.10))
        .sheet(isPresented: $showingBreakdown) {
            ScoreBreakdownSheet(score: repository.score)
                .presentationDetents([.medium])
                .presentationBackground(LL.Palette.void)
        }
        // Mode selection, the countdown and the session engine are Section 2.
        // Every path that starts a session lands here so the routing is
        // already exercised when the real screens arrive.
        .fullScreenCover(item: $route) { destination in
            SessionEntryStub(route: destination) { route = nil }
        }
    }

    // MARK: - Header

    private var header: some View {
        HStack(alignment: .top) {
            VStack(alignment: .leading, spacing: 10) {
                Wordmark(pixel: 3.5)
                Text(repository.score.band)
                    .llLabelStyle(11, color: LL.Palette.circuit)
            }

            Spacer()

            Button {
                HapticEngine.shared.play(.tick)
                showingBreakdown = true
            } label: {
                StaminaRing(score: repository.score.total)
                    .frame(width: 116, height: 116)
            }
            .buttonStyle(.plain)
            .accessibilityLabel("Stamina score \(repository.score.total) out of 100, \(repository.score.band)")
            .accessibilityHint("Shows how the score is calculated.")
        }
        .padding(.top, 8)
    }

    // MARK: - Primary actions

    private var startButton: some View {
        Button {
            HapticEngine.shared.play(.threshold)
            route = .modeSelection
        } label: {
            VStack(spacing: 6) {
                PixelText("START", pixel: 7)
                Text("8 modes · Voice coach · 100% private")
                    .font(.system(size: 12, weight: .medium))
                    .foregroundStyle(LL.Palette.text.opacity(0.7))
            }
            .frame(maxWidth: .infinity)
            .frame(height: 112)
            .background(
                LinearGradient(colors: [LL.Palette.edge, LL.Palette.void],
                               startPoint: .top, endPoint: .bottom),
                in: RoundedRectangle(cornerRadius: LL.Metric.corner, style: .continuous)
            )
            .overlay(
                RoundedRectangle(cornerRadius: LL.Metric.corner, style: .continuous)
                    .strokeBorder(LL.Palette.edge.opacity(0.7), lineWidth: 1)
            )
        }
        .buttonStyle(PressScale())
    }

    private var quickStartButton: some View {
        Button {
            HapticEngine.shared.play(.tick)
            route = .quickStart
        } label: {
            HStack(spacing: 12) {
                Image(systemName: "bolt.fill")
                    .font(.system(size: 15, weight: .bold))
                    .foregroundStyle(LL.Palette.rising)

                VStack(alignment: .leading, spacing: 2) {
                    Text("QUICK START")
                        .font(.llLabel(13))
                        .kerning(1.8)
                        .foregroundStyle(LL.Palette.text)
                    Text("Free Edge · Last-used settings")
                        .font(.system(size: 12, weight: .regular))
                        .foregroundStyle(LL.Palette.textDim)
                }

                Spacer()

                Image(systemName: "chevron.right")
                    .font(.system(size: 12, weight: .bold))
                    .foregroundStyle(LL.Palette.rule)
            }
            .padding(.horizontal, 16)
            .frame(height: LL.Metric.tapTarget)
            .overlay(
                RoundedRectangle(cornerRadius: LL.Metric.corner, style: .continuous)
                    .strokeBorder(LL.Palette.rule, lineWidth: 1)
            )
        }
        .buttonStyle(PressScale())
    }

    // MARK: - Playlists

    private var playlists: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("SAVED").llLabelStyle()

            ScrollView(.horizontal) {
                HStack(spacing: 10) {
                    ForEach(repository.playlists) { playlist in
                        Button {
                            HapticEngine.shared.play(.tick)
                            route = .playlist(playlist.id)
                        } label: {
                            VStack(alignment: .leading, spacing: 6) {
                                Text(playlist.name.uppercased())
                                    .font(.llLabel(12))
                                    .kerning(1.2)
                                    .foregroundStyle(LL.Palette.text)
                                    .lineLimit(1)

                                Text(playlist.config.secondaryMode == nil
                                     ? playlist.config.primaryMode.title
                                     : "\(playlist.config.primaryMode.title) + \(playlist.config.secondaryMode!.title)")
                                    .font(.llData(10))
                                    .foregroundStyle(LL.Palette.textDim)
                                    .lineLimit(1)
                            }
                            .padding(12)
                            .frame(width: 160, height: LL.Metric.tapTarget, alignment: .leading)
                            .background(LL.Palette.card, in: RoundedRectangle(cornerRadius: LL.Metric.corner, style: .continuous))
                            .overlay(
                                RoundedRectangle(cornerRadius: LL.Metric.corner, style: .continuous)
                                    .strokeBorder(LL.Palette.rule, lineWidth: 1)
                            )
                        }
                        .buttonStyle(PressScale())
                    }
                }
            }
            .scrollIndicators(.hidden)
        }
    }

    // MARK: - Today

    private var todayTiles: some View {
        let stats = repository.today
        return VStack(alignment: .leading, spacing: 10) {
            Text("TODAY").llLabelStyle()

            LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 10), count: 2), spacing: 10) {
                StatTile(label: "THRESHOLDS", value: "\(stats.thresholds)", tint: LL.Palette.edge)
                StatTile(label: "SESSIONS", value: "\(stats.sessions)", tint: LL.Palette.circuit)
                StatTile(label: "DAY STREAK", value: "\(stats.dayStreak)", tint: LL.Palette.safe)
                StatTile(
                    label: "LAST FINISHED",
                    value: stats.lastFinished.map(Self.elapsed(since:)) ?? "NEVER",
                    tint: LL.Palette.textDim
                )
            }
        }
    }

    static func elapsed(since date: Date) -> String {
        let hours = Int(Date.now.timeIntervalSince(date) / 3600)
        if hours < 1 { return "<1H" }
        if hours < 48 { return "\(hours)H" }
        return "\(hours / 24)D"
    }

    // MARK: - Recent

    private var recentSessions: some View {
        let recent = Array(repository.recentSessions.prefix(3))
        return Group {
            if !recent.isEmpty {
                VStack(alignment: .leading, spacing: 10) {
                    Text("RECENT").llLabelStyle()
                    recentSessionsList(recent)
                }
            }
        }
    }

    // Extracted from `recentSessions` so the type-checker does not have to solve
    // the whole nested VStack/ForEach/background/overlay expression at once —
    // that combination tripped "unable to type-check in reasonable time".
    private func recentSessionsList(_ recent: [SessionRecord]) -> some View {
        VStack(spacing: 0) {
            ForEach(Array(recent.enumerated()), id: \.element.id) { index, session in
                SessionRow(session: session)
                if index < recent.count - 1 {
                    Rectangle()
                        .fill(LL.Palette.rule)
                        .frame(height: LL.Metric.hairline)
                }
            }
        }
        .background(LL.Palette.card, in: RoundedRectangle(cornerRadius: LL.Metric.corner, style: .continuous))
        .overlay(
            RoundedRectangle(cornerRadius: LL.Metric.corner, style: .continuous)
                .strokeBorder(LL.Palette.rule, lineWidth: 1)
        )
    }
}

// MARK: - Stamina ring

/// Instrument-cluster ring: 60 tick marks, a filled arc and the number.
/// Ticks rather than a plain stroke because the score is a reading, and a
/// reading needs a scale to be read against.
struct StaminaRing: View {
    let score: Int

    private var fraction: Double { Double(min(100, max(0, score))) / 100 }

    private var tint: Color {
        switch score {
        case ..<21:  return LL.Palette.textDim
        case ..<41:  return LL.Palette.edge
        case ..<61:  return LL.Palette.rising
        case ..<81:  return LL.Palette.circuit
        default:     return LL.Palette.safe
        }
    }

    var body: some View {
        ZStack {
            Canvas { context, size in
                let center = CGPoint(x: size.width / 2, y: size.height / 2)
                let outer = min(size.width, size.height) / 2
                let ticks = 60

                for index in 0..<ticks {
                    let progress = Double(index) / Double(ticks)
                    // Start at the top, sweep clockwise.
                    let angle = -Double.pi / 2 + progress * 2 * .pi
                    let lit = progress <= fraction
                    let major = index % 5 == 0
                    let length: CGFloat = major ? 10 : 6

                    let start = CGPoint(
                        x: center.x + cos(angle) * (outer - length),
                        y: center.y + sin(angle) * (outer - length)
                    )
                    let end = CGPoint(
                        x: center.x + cos(angle) * outer,
                        y: center.y + sin(angle) * outer
                    )

                    var path = Path()
                    path.move(to: start)
                    path.addLine(to: end)
                    context.stroke(
                        path,
                        with: .color(lit ? tint : LL.Palette.rule),
                        lineWidth: major ? 2 : 1
                    )
                }
            }
            .shadow(color: tint.opacity(0.5), radius: 12)

            VStack(spacing: 2) {
                Text("\(score)")
                    .font(.llReadout(40))
                    .foregroundStyle(LL.Palette.text)
                    .monospacedDigit()
                Text("/100")
                    .font(.llData(10))
                    .foregroundStyle(LL.Palette.rule)
            }
        }
        .animation(LL.Motion.stateFade, value: score)
    }
}

// MARK: - Breakdown

struct ScoreBreakdownSheet: View {
    let score: StaminaScore

    var body: some View {
        VStack(alignment: .leading, spacing: 18) {
            HStack(alignment: .firstTextBaseline, spacing: 10) {
                PixelText("SCORE", pixel: 4)
                Spacer()
                Text("\(score.total)")
                    .font(.llReadout(34))
                    .foregroundStyle(LL.Palette.text)
                    .monospacedDigit()
            }

            VStack(spacing: 0) {
                ForEach(score.components) { component in
                    HStack {
                        VStack(alignment: .leading, spacing: 3) {
                            Text(component.label)
                                .font(.llLabel(11))
                                .kerning(1.2)
                                .foregroundStyle(LL.Palette.text)
                            Text("\(component.reading) · weight \(Int(component.weight * 100))%")
                                .font(.llData(11))
                                .foregroundStyle(LL.Palette.textDim)
                        }
                        Spacer()
                        Text("+\(component.points)")
                            .font(.llReadout(20))
                            .foregroundStyle(LL.Palette.circuit)
                            .monospacedDigit()
                    }
                    .padding(.vertical, 12)

                    if component.id != score.components.last?.id {
                        Rectangle().fill(LL.Palette.rule).frame(height: LL.Metric.hairline)
                    }
                }
            }

            Text("Calculated on this device from your session history. Nothing is sent anywhere.")
                .font(.system(size: 12))
                .foregroundStyle(LL.Palette.rule)

            Spacer()
        }
        .padding(LL.Metric.gutter)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

// MARK: - Cards

struct ProgramCard: View {
    let enrollment: RegimenEnrollment
    let onStart: () -> Void

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Text(enrollment.program.title)
                    .font(.llLabel(13))
                    .kerning(1.6)
                    .foregroundStyle(LL.Palette.text)
                Spacer()
                Text(enrollment.dayLabel)
                    .font(.llData(11))
                    .foregroundStyle(LL.Palette.circuit)
            }

            SegmentedProgress(fraction: enrollment.progress, tint: LL.Palette.circuit)

            Text(enrollment.todaysTask.label)
                .font(.llReadout(17))
                .foregroundStyle(LL.Palette.text)

            Button(action: onStart) {
                Text("START TODAY'S SESSION")
                    .font(.llLabel(12))
                    .kerning(1.6)
                    .foregroundStyle(LL.Palette.void)
                    .frame(maxWidth: .infinity)
                    .frame(height: 46)
                    .background(LL.Palette.text, in: RoundedRectangle(cornerRadius: 8, style: .continuous))
            }
            .buttonStyle(PressScale())
        }
        .llCard()
    }
}

struct ChallengeCard: View {
    let challenge: Challenge

    private var daysLeft: Int {
        max(0, Calendar.current.dateComponents([.day], from: .now, to: challenge.endsAt).day ?? 0)
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Image(systemName: challenge.badge.symbol)
                    .font(.system(size: 14, weight: .bold))
                    .foregroundStyle(LL.Palette.rising)
                Text(challenge.title)
                    .font(.llLabel(13))
                    .kerning(1.6)
                    .foregroundStyle(LL.Palette.text)
                Spacer()
                Text(daysLeft == 0 ? "LAST DAY" : "\(daysLeft)D LEFT")
                    .font(.llData(11))
                    .foregroundStyle(LL.Palette.textDim)
            }

            SegmentedProgress(fraction: challenge.fraction, tint: LL.Palette.rising)

            Text("\(challenge.progress) / \(challenge.target) · \(challenge.detail)")
                .font(.llData(11))
                .foregroundStyle(LL.Palette.textDim)
        }
        .llCard()
    }
}

struct StatTile: View {
    let label: String
    let value: String
    let tint: Color

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(label).llLabelStyle(10)
            Text(value)
                .font(.llReadout(30))
                .foregroundStyle(tint)
                .monospacedDigit()
                .minimumScaleFactor(0.6)
                .lineLimit(1)
        }
        .llCard(padding: 14)
    }
}

struct SessionRow: View {
    let session: SessionRecord

    private static let formatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd MMM"
        return formatter
    }()

    var body: some View {
        HStack(spacing: 14) {
            Text(Self.formatter.string(from: session.startedAt).uppercased())
                .font(.llData(11))
                .foregroundStyle(LL.Palette.textDim)
                .frame(width: 52, alignment: .leading)

            Text("\(Int(session.duration / 60))M")
                .font(.llReadout(15))
                .foregroundStyle(LL.Palette.text)
                .frame(width: 40, alignment: .leading)
                .monospacedDigit()

            HStack(spacing: 4) {
                Image(systemName: "flame.fill")
                    .font(.system(size: 10, weight: .bold))
                Text("\(session.thresholds)")
                    .font(.llData(12))
                    .monospacedDigit()
            }
            .foregroundStyle(LL.Palette.edge)

            Spacer()

            Text(session.pullbackRate.map { "\(Int($0 * 100))%" } ?? "—")
                .font(.llReadout(15))
                .foregroundStyle(session.finished ? LL.Palette.textDim : LL.Palette.safe)
                .monospacedDigit()
        }
        .padding(.horizontal, 14)
        .frame(height: 52)
    }
}

/// Segmented rather than continuous: the reference material reads as
/// discrete cells, and segments make partial progress countable at a glance.
struct SegmentedProgress: View {
    let fraction: Double
    let tint: Color
    var segments: Int = 20

    var body: some View {
        HStack(spacing: 3) {
            ForEach(0..<segments, id: \.self) { index in
                Rectangle()
                    .fill(Double(index) / Double(segments) < fraction ? tint : LL.Palette.rule)
                    .frame(height: 8)
            }
        }
        .animation(LL.Motion.stateFade, value: fraction)
        .accessibilityElement()
        .accessibilityValue("\(Int(fraction * 100)) percent")
    }
}

// MARK: - Section 2 seam

/// Stands in for mode selection and the session engine. Kept live rather
/// than commented out so the Home routing is testable today.
struct SessionEntryStub: View {
    let route: HomeView.Route
    let onClose: () -> Void

    // Was `AngelState = .safe`. `AngelWidget(state:)` takes the widget's own
    // animation state, which consolidation renamed to `AngelVisualState` to free
    // the name for the domain enum in DomainModels.swift. `.safe` belongs to that
    // domain enum and was never a case of the widget's — this stub only compiled
    // while the two types were in separate Parts. `.idle` is the widget's
    // resting case and is what it was reaching for.
    @State private var angel: AngelVisualState = .idle
    @State private var streak = 0

    var body: some View {
        VStack(spacing: 28) {
            HStack {
                Button("Close", action: onClose)
                    .font(.llLabel(13))
                    .foregroundStyle(LL.Palette.textDim)
                Spacer()
                Text(label)
                    .font(.llData(11))
                    .foregroundStyle(LL.Palette.circuit)
            }

            Spacer()

            // Stub demo. The real AngelWidget is display-only
            // (state/spread/pulse); it has no per-gesture callbacks, `streak`
            // or `size` parameters, and `AngelVisualState` is idle/active/
            // threshold/cooldown/emergency (no `.edge`/`.ended`, which are the
            // domain AngelState). A single tap cycles the states so Home routing
            // and the Angel render can be exercised without the session engine.
            AngelWidget(state: angel, spread: 0.6)
                .frame(maxHeight: 200)
                .contentShape(Rectangle())
                .onTapGesture {
                    HapticEngine.shared.play(.threshold)
                    ToneGenerator.shared.playSuccess(streak: streak)
                    streak += 1
                    angel = (angel == .threshold) ? .cooldown : .threshold
                }

            Text("Tap: threshold · Double: back off\nTriple or two fingers: emergency · Hold 2s: end")
                .font(.llData(11))
                .foregroundStyle(LL.Palette.rule)
                .multilineTextAlignment(.center)

            Spacer()
        }
        .padding(LL.Metric.gutter)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .llBackground(gridAnchor: .center)
    }

    private var label: String {
        switch route {
        case .modeSelection:  return "MODE SELECTION"
        case .quickStart:     return "QUICK START"
        case .playlist:       return "PLAYLIST"
        case .programSession: return "PROGRAM"
        }
    }
}

// MARK: - Button style

struct PressScale: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 0.975 : 1)
            .animation(LL.Motion.press, value: configuration.isPressed)
    }
}

#Preview {
    RootTabView()
}
