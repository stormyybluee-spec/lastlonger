//
//  ModeSelectionView.swift
//  LAST LONGER
//
//  PART 6 — The Precision Atlas.
//
//  Full-screen modal. Eight cards, ordered multi-select capped at two, an
//  auto-switch control that only exists once a second mode is chosen, and a
//  configuration sheet that rises as soon as anything is selected.
//

import SwiftUI

@MainActor
final class ModeSelectionModel: ObservableObject {

    @Published var selection: [SessionMode] = []
    @Published var autoSwitch: AutoSwitchPolicy = .minutes(15)
    @Published var settings: SessionSettings = SettingsStore.load()
    @Published var isConfigPresented = false

    var primary: SessionMode? { selection.first }
    var secondary: SessionMode? { selection.count > 1 ? selection[1] : nil }
    var isSplit: Bool { selection.count == 2 }

    func index(of mode: SessionMode) -> Int? {
        selection.firstIndex(of: mode).map { $0 + 1 }
    }

    func isBlocked(_ mode: SessionMode) -> Bool {
        guard !selection.contains(mode) else { return false }
        if selection.count >= 2 { return true }
        // Release Mode is a reset; it never pairs.
        if selection.count == 1 && (!mode.allowsPairing || !selection[0].allowsPairing) {
            return true
        }
        return false
    }

    func toggle(_ mode: SessionMode) {
        if let existing = selection.firstIndex(of: mode) {
            selection.remove(at: existing)
            Haptics.shared.play(.deselect)
        } else {
            guard selection.count < 2, !isBlocked(mode) else {
                Haptics.shared.play(.warning)
                return
            }
            selection.append(mode)
            Haptics.shared.play(.select)
        }

        withAnimation(.snappy(duration: 0.22)) {
            isConfigPresented = !selection.isEmpty
        }
    }

    func makePlan() -> SessionPlan? {
        guard let primary else { return nil }
        return SessionPlan(
            primary: primary,
            secondary: secondary,
            autoSwitch: isSplit ? autoSwitch : .manual,
            settings: settings
        )
    }

    /// The persisted, Codable shape for saving the current selection + tuning as
    /// a Playlist. Mirrors `makePlan()` but flattens into `SessionConfig`.
    func makeConfig() -> SessionConfig? {
        guard let primary else { return nil }
        let switchMinutes: Int? = {
            guard isSplit, let seconds = autoSwitch.resolvedSwitchTime() else { return nil }
            return Int((seconds / 60).rounded())
        }()
        return SessionConfig(
            primaryMode: primary,
            secondaryMode: secondary,
            switchAfterMinutes: switchMinutes,
            persona: settings.persona.coachPersona,
            voiceVolume: settings.voiceVolume,
            hapticIntensity: settings.hapticIntensity,
            binaural: settings.binaural.preset,
            distractionQuestions: settings.randomDistractions,
            coachInterrupt: settings.coachInterrupt,
            silentMode: settings.silentMode,
            tempoLock: settings.tempoLock,
            focusModeOnStart: settings.focusModeAutoEnable,
            durationCap: settings.durationCap.interval,
            talkFrequency: settings.coachFrequency.talkFrequency,
            tagIDs: settings.enhancementStack.map(\.rawValue).sorted(),
            runRitual: settings.usePreSessionRitual
        )
    }
}

// MARK: - View

@MainActor
struct ModeSelectionView: View {

    @StateObject private var model = ModeSelectionModel()
    @Environment(\.dismiss) private var dismiss

    /// Handed the finished plan; the caller pushes the countdown.
    let onStart: (SessionPlan) -> Void

    private let columns = [
        GridItem(.flexible(), spacing: Theme.Metric.gutter),
        GridItem(.flexible(), spacing: Theme.Metric.gutter)
    ]

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 0) {
                    header
                    grid
                    if model.isSplit { autoSwitchControl }
                    Color.clear.frame(height: model.isConfigPresented ? 140 : 40)
                }
                .padding(.horizontal, Theme.Metric.pageInset)
            }
            .scrollIndicators(.hidden)
            .crtScreen()
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        Haptics.shared.play(.tap)
                        dismiss()
                    } label: {
                        Image(systemName: "xmark")
                            .font(.system(size: 13, weight: .bold))
                            .foregroundStyle(Theme.inkDim)
                    }
                    .accessibilityLabel("Close mode selection")
                }
                ToolbarItem(placement: .principal) {
                    Text("Select Mode")
                        .font(Typeface.label(10))
                        .uppercaseLabel()
                        .foregroundStyle(Theme.inkFaint)
                }
            }
            .toolbarBackground(Theme.bg, for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
        }
        .preferredColorScheme(.dark)
        .sheet(isPresented: $model.isConfigPresented) {
            SessionConfigSheet(model: model) { plan in
                SettingsStore.save(plan.settings)
                onStart(plan)
            }
            .presentationDetents([.height(320), .large])
            .presentationDragIndicator(.visible)
            .presentationBackground(Theme.bg)
            .interactiveDismissDisabled(false)
        }
    }

    // MARK: - Header

    private var header: some View {
        VStack(alignment: .leading, spacing: 8) {
            GlitchText(text: "PRECISION ATLAS", font: Typeface.pixel(26))

            HStack(spacing: 6) {
                Image(systemName: "square.grid.2x2")
                    .font(.system(size: 9, weight: .bold))
                Text("Choose one. Add a second to run a split session.")
                    .font(Typeface.label(10))
                    .uppercaseLabel(tracking: 0.8)
            }
            .foregroundStyle(Theme.inkFaint)

            Rule(color: Theme.data.opacity(0.35))
        }
        .padding(.top, 8)
        .padding(.bottom, 20)
    }

    // MARK: - Grid

    private var grid: some View {
        LazyVGrid(columns: columns, spacing: Theme.Metric.gutter) {
            ForEach(SessionMode.atlasOrder) { mode in
                ModeCardView(
                    mode: mode,
                    selectionIndex: model.index(of: mode),
                    isBlocked: model.isBlocked(mode)
                ) {
                    model.toggle(mode)
                }
            }
        }
    }

    // MARK: - Auto-switch

    private var autoSwitchControl: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack(spacing: 6) {
                Image(systemName: "arrow.left.arrow.right")
                    .font(.system(size: 9, weight: .bold))
                Text("Auto-switch at")
                    .font(Typeface.label(10))
                    .uppercaseLabel()
            }
            .foregroundStyle(Theme.inkDim)

            HStack(spacing: 6) {
                ForEach(AutoSwitchPolicy.allCases) { policy in
                    SegmentChip(
                        title: policy.label,
                        isOn: model.autoSwitch == policy,
                        tint: Theme.data
                    ) {
                        model.autoSwitch = policy
                        Haptics.shared.play(.select)
                    }
                }
            }

            Text(switchFootnote)
                .font(Typeface.body(11))
                .foregroundStyle(Theme.inkFaint)
        }
        .padding(14)
        .background(Theme.card)
        .overlay(
            RoundedRectangle(cornerRadius: Theme.Metric.cardRadius)
                .strokeBorder(Theme.data.opacity(0.4), lineWidth: 1)
        )
        .clipShape(RoundedRectangle(cornerRadius: Theme.Metric.cardRadius))
        .padding(.top, Theme.Metric.gutter)
        .transition(.move(edge: .bottom).combined(with: .opacity))
    }

    private var switchFootnote: String {
        guard let primary = model.primary, let secondary = model.secondary else { return "" }
        switch model.autoSwitch {
        case .minutes(let m):
            return "\(primary.name) for \(m) minutes, then \(secondary.name)."
        case .random:
            return "\(primary.name) first. The switch lands somewhere between 8 and 22 minutes."
        case .manual:
            return "\(primary.name) runs until you tap Switch on the session screen."
        }
    }
}

// MARK: - Segment chip

@MainActor
struct SegmentChip: View {
    let title: String
    let isOn: Bool
    var tint: Color = Theme.data
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(title)
                .font(Typeface.label(10))
                .uppercaseLabel(tracking: 0.9)
                .foregroundStyle(isOn ? Theme.bg : Theme.inkDim)
                .lineLimit(1)
                .minimumScaleFactor(0.75)
                .frame(maxWidth: .infinity)
                .frame(height: 30)
                .background(isOn ? tint : Theme.cardRaised)
                .clipShape(RoundedRectangle(cornerRadius: Theme.Metric.chipRadius))
        }
        .buttonStyle(.plain)
        .accessibilityAddTraits(isOn ? [.isSelected, .isButton] : .isButton)
    }
}
