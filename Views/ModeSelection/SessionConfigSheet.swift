//
//  SessionConfigSheet.swift
//  LAST LONGER
//
//  PART 6 — the bottom sheet. Rises the moment a mode is selected.
//
//  The short detent shows the summary and the Start button, so the common
//  case is one tap to select and one tap to start. Everything else lives
//  below the fold for the user who actually wants to tune it.
//

import SwiftUI

@MainActor
struct SessionConfigSheet: View {

    @ObservedObject var model: ModeSelectionModel
    @Environment(\.dismiss) private var dismiss

    let onStart: (SessionPlan) -> Void

    @State private var newPhrase = ""
    @FocusState private var phraseFieldFocused: Bool

    // Save-as-playlist
    @State private var showSavePlaylist = false
    @State private var playlistName = ""
    @State private var savedConfirmation = false

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                summary
                startRow
                savePlaylistButton

                Rule()

                coachSection
                feelSection
                audioSection
                boundsSection
                enhancementSection
                customPhraseSection
                ritualSection

                Color.clear.frame(height: 24)
            }
            .padding(.horizontal, Theme.Metric.pageInset)
            .padding(.top, 18)
        }
        .scrollIndicators(.hidden)
        .scrollDismissesKeyboard(.interactively)
        .background(Theme.bg)
        .preferredColorScheme(.dark)
        .alert("Save as Playlist", isPresented: $showSavePlaylist) {
            TextField("Playlist name", text: $playlistName)
            Button("Save", action: savePlaylist)
                .disabled(playlistName.trimmingCharacters(in: .whitespaces).isEmpty)
            Button("Cancel", role: .cancel) { playlistName = "" }
        } message: {
            Text("Save this mode and every setting above as a reusable playlist on your Home screen.")
        }
        .alert("Playlist saved", isPresented: $savedConfirmation) {
            Button("OK") {}
        } message: {
            Text("Find it on your Home screen under Playlists.")
        }
    }

    // MARK: - Save as playlist

    private var savePlaylistButton: some View {
        Button(action: presentSavePlaylist) {
            HStack(spacing: 8) {
                Image(systemName: "bookmark.fill").font(.system(size: 11, weight: .bold))
                Text("Save as Playlist")
                    .font(Typeface.label(11))
                    .uppercaseLabel(tracking: 1.4)
            }
            .foregroundStyle(Theme.data)
            .frame(maxWidth: .infinity)
            .frame(height: 44)
            .overlay(
                RoundedRectangle(cornerRadius: Theme.Metric.cardRadius)
                    .strokeBorder(Theme.data.opacity(0.5), lineWidth: 1)
            )
        }
        .buttonStyle(.plain)
        .disabled(model.selection.isEmpty)
        .opacity(model.selection.isEmpty ? 0.4 : 1)
        .accessibilityHint("Saves the current mode and settings as a reusable playlist.")
    }

    private func presentSavePlaylist() {
        Haptics.shared.play(.tap)
        // Seed a sensible default name from the selected mode(s).
        playlistName = model.selection.map(\.name).joined(separator: " → ")
        showSavePlaylist = true
    }

    private func savePlaylist() {
        let name = playlistName.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !name.isEmpty, let config = model.makeConfig() else { return }
        Repository.shared.save(Playlist(name: name, config: config))
        playlistName = ""
        Haptics.shared.play(.phaseChange)
        savedConfirmation = true
    }

    // MARK: - Summary

    private var summary: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(model.selection.map(\.name).joined(separator: "  →  "))
                .font(Typeface.pixel(19))
                .foregroundStyle(Theme.ink)
                .fixedSize(horizontal: false, vertical: true)

            HStack(spacing: 10) {
                ForEach(model.selection) { mode in
                    HStack(spacing: 5) {
                        Circle().fill(mode.difficulty.dot).frame(width: 5, height: 5)
                        Text(mode.difficulty.label)
                            .font(Typeface.label(9))
                            .uppercaseLabel(tracking: 0.9)
                            .foregroundStyle(Theme.inkDim)
                    }
                }

                if model.isSplit {
                    Text("Switch: \(model.autoSwitch.label)\(switchUnitSuffix)")
                        .font(Typeface.label(9))
                        .uppercaseLabel(tracking: 0.9)
                        .foregroundStyle(Theme.data)
                }
            }
        }
    }

    private var switchUnitSuffix: String {
        if case .minutes = model.autoSwitch { return " min" }
        return ""
    }

    // MARK: - Start / Cancel

    private var startRow: some View {
        HStack(spacing: 10) {
            Button {
                Haptics.shared.play(.tap)
                model.selection.removeAll()
                dismiss()
            } label: {
                Text("Cancel")
                    .font(Typeface.label(12))
                    .uppercaseLabel()
                    .foregroundStyle(Theme.inkDim)
                    .frame(height: 50)
                    .frame(maxWidth: 110)
                    .background(Theme.card)
                    .clipShape(RoundedRectangle(cornerRadius: Theme.Metric.cardRadius))
            }
            .buttonStyle(.plain)

            Button {
                guard let plan = model.makePlan() else { return }
                Haptics.shared.play(.countdownFire)
                onStart(plan)
            } label: {
                HStack(spacing: 8) {
                    Image(systemName: "play.fill").font(.system(size: 12, weight: .bold))
                    Text("Start")
                        .font(Typeface.label(13))
                        .uppercaseLabel(tracking: 2)
                }
                .foregroundStyle(Theme.bg)
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .background(Theme.edge)
                .clipShape(RoundedRectangle(cornerRadius: Theme.Metric.cardRadius))
            }
            .buttonStyle(.plain)
        }
    }

    // MARK: - Coach

    private var coachSection: some View {
        ConfigSection(title: "Coach", symbol: "waveform") {

            Text("Persona")
                .font(Typeface.label(9)).uppercaseLabel(tracking: 0.9)
                .foregroundStyle(Theme.inkFaint)

            VStack(spacing: 6) {
                ForEach(VoicePersona.allCases) { persona in
                    PersonaRow(
                        persona: persona,
                        isOn: model.settings.persona == persona
                    ) {
                        model.settings.persona = persona
                        Haptics.shared.play(.select)
                    }
                }
            }

            SliderRow(
                title: "Voice volume",
                value: $model.settings.voiceVolume,
                display: "\(Int(model.settings.voiceVolume * 100))%",
                tint: Theme.data
            )
            .disabled(model.settings.silentMode)
            .opacity(model.settings.silentMode ? 0.4 : 1)

            SegmentRow(title: "Talk frequency") {
                ForEach(CoachFrequency.allCases) { option in
                    SegmentChip(title: option.label,
                                isOn: model.settings.coachFrequency == option,
                                tint: Theme.data) {
                        model.settings.coachFrequency = option
                        Haptics.shared.play(.select)
                    }
                }
            }

            ToggleRow(title: "Coach Interrupt",
                      subtitle: "Periodic check-in: arousal level, one to ten.",
                      isOn: $model.settings.coachInterrupt)

            ToggleRow(title: "Random distraction questions",
                      subtitle: "Arithmetic prompts to pull focus.",
                      isOn: $model.settings.randomDistractions)
        }
    }

    // MARK: - Feel

    private var feelSection: some View {
        ConfigSection(title: "Feel", symbol: "hand.tap.fill") {
            SegmentRow(title: "Haptic intensity") {
                ForEach(HapticIntensity.allCases) { level in
                    SegmentChip(title: level.label,
                                isOn: model.settings.hapticIntensity == level,
                                tint: Theme.safe) {
                        model.settings.hapticIntensity = level
                        Haptics.shared.intensity = level
                        Haptics.shared.play(.phaseChange)   // preview the new level
                    }
                }
            }

            ToggleRow(title: "Silent Mode",
                      subtitle: "Haptics only. The coach stops speaking entirely.",
                      isOn: $model.settings.silentMode)

            ToggleRow(title: "Tempo Lock",
                      subtitle: "A haptic metronome during active phases.",
                      isOn: $model.settings.tempoLock)

            if model.settings.tempoLock {
                StepperRow(title: "Tempo",
                           value: $model.settings.tempoBPM,
                           range: 30...120,
                           step: 5,
                           unit: "BPM")
            }
        }
    }

    // MARK: - Audio

    private var audioSection: some View {
        ConfigSection(title: "Audio", symbol: "headphones") {
            SegmentRow(title: "Binaural beats") {
                ForEach(BinauralProgram.allCases) { program in
                    SegmentChip(title: program.label,
                                isOn: model.settings.binaural == program,
                                tint: Theme.rising) {
                        model.settings.binaural = program
                        Haptics.shared.play(.select)
                    }
                }
            }

            if model.settings.binaural != .off {
                Text("Binaural beating needs headphones. On speakers the two tones mix in the air and the effect is lost.")
                    .font(Typeface.body(11))
                    .foregroundStyle(Theme.rising.opacity(0.85))
            }
        }
    }

    // MARK: - Bounds

    private var boundsSection: some View {
        ConfigSection(title: "Bounds", symbol: "timer") {
            durationCapPicker

            ToggleRow(title: "Auto-enable Focus",
                      subtitle: "Prompts you to turn on a Focus before the countdown. iOS does not let an app switch Focus on your behalf.",
                      isOn: $model.settings.focusModeAutoEnable)
        }
    }

    /// iOS timer-wheel for the hard stop. Drag from None (0) upward in
    /// 5-minute steps; the wheel supplies its own selection haptics.
    private var durationCapPicker: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack {
                Text("Duration cap")
                    .font(Typeface.label(9)).uppercaseLabel(tracking: 0.9)
                    .foregroundStyle(Theme.inkFaint)
                Spacer()
                Text(model.settings.durationCap == 0
                     ? "No cap"
                     : "\(model.settings.durationCap) min")
                    .font(Typeface.numeric(12))
                    .foregroundStyle(Theme.edge)
            }

            Picker("Duration cap", selection: $model.settings.durationCap) {
                ForEach(SessionSettings.durationCapOptions, id: \.self) { minutes in
                    Text(minutes == 0 ? "None" : "\(minutes) min")
                        .font(Typeface.numeric(17))
                        .foregroundStyle(Theme.ink)
                        .tag(minutes)
                }
            }
            .pickerStyle(.wheel)
            .frame(height: 118)
            .clipped()
            .accessibilityLabel("Duration cap in minutes")
        }
    }

    // MARK: - Enhancement stack

    private var enhancementSection: some View {
        ConfigSection(title: "Enhancement Stack", symbol: "tag.fill") {
            Text("Logged with the session for your own records. It does not change coaching.")
                .font(Typeface.body(11))
                .foregroundStyle(Theme.inkFaint)

            FlowLayout(spacing: 6) {
                ForEach(EnhancementTag.allCases) { tag in
                    TagChip(tag: tag,
                            isOn: model.settings.enhancementStack.contains(tag)) {
                        model.settings.toggleEnhancement(tag)
                        Haptics.shared.play(.select)
                    }
                }
            }
        }
    }

    // MARK: - Custom phrases

    private var customPhraseSection: some View {
        ConfigSection(title: "Custom Phrases", symbol: "text.quote") {
            Text("\(model.settings.customPhrases.count) of \(SessionSettings.maxCustomPhrases) used. Injected into the coach's rotation.")
                .font(Typeface.body(11))
                .foregroundStyle(Theme.inkFaint)

            ForEach(Array(model.settings.customPhrases.enumerated()), id: \.offset) { index, phrase in
                HStack(spacing: 8) {
                    Text(phrase)
                        .font(Typeface.body(12))
                        .foregroundStyle(Theme.ink)
                        .frame(maxWidth: .infinity, alignment: .leading)

                    Button {
                        model.settings.customPhrases.remove(at: index)
                        Haptics.shared.play(.deselect)
                    } label: {
                        Image(systemName: "minus.circle")
                            .font(.system(size: 13))
                            .foregroundStyle(Theme.edge)
                    }
                    .buttonStyle(.plain)
                    .accessibilityLabel("Remove phrase")
                }
                .padding(.vertical, 8)
                .padding(.horizontal, 10)
                .background(Theme.card)
                .clipShape(RoundedRectangle(cornerRadius: Theme.Metric.chipRadius))
            }

            if model.settings.customPhrases.count < SessionSettings.maxCustomPhrases {
                HStack(spacing: 8) {
                    TextField("Add a line", text: $newPhrase)
                        .font(Typeface.body(12))
                        .foregroundStyle(Theme.ink)
                        .focused($phraseFieldFocused)
                        .submitLabel(.done)
                        .onSubmit(commitPhrase)
                        .padding(.vertical, 9)
                        .padding(.horizontal, 10)
                        .background(Theme.card)
                        .clipShape(RoundedRectangle(cornerRadius: Theme.Metric.chipRadius))

                    Button(action: commitPhrase) {
                        Image(systemName: "plus")
                            .font(.system(size: 13, weight: .bold))
                            .foregroundStyle(Theme.bg)
                            .frame(width: 38, height: 38)
                            .background(Theme.safe)
                            .clipShape(RoundedRectangle(cornerRadius: Theme.Metric.chipRadius))
                    }
                    .buttonStyle(.plain)
                    .disabled(newPhrase.trimmingCharacters(in: .whitespaces).isEmpty)
                    .accessibilityLabel("Add phrase")
                }
            }
        }
    }

    private func commitPhrase() {
        model.settings.addCustomPhrase(newPhrase)
        newPhrase = ""
        phraseFieldFocused = false
        Haptics.shared.play(.select)
    }

    // MARK: - Ritual

    private var ritualSection: some View {
        ConfigSection(title: "Pre-Session Ritual", symbol: "checklist") {
            ToggleRow(title: "Run saved ritual",
                      subtitle: "Plays your saved setup checklist before the countdown.",
                      isOn: $model.settings.usePreSessionRitual)
        }
    }
}

// MARK: - Section chrome

struct ConfigSection<Content: View>: View {
    let title: String
    let symbol: String
    @ViewBuilder var content: Content

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack(spacing: 6) {
                Image(systemName: symbol).font(.system(size: 9, weight: .bold))
                Text(title).font(Typeface.label(10)).uppercaseLabel()
                Rule().frame(maxWidth: .infinity)
            }
            .foregroundStyle(Theme.inkFaint)

            content
        }
    }
}

// MARK: - Rows

@MainActor
struct ToggleRow: View {
    let title: String
    var subtitle: String?
    @Binding var isOn: Bool

    var body: some View {
        HStack(alignment: .top, spacing: 12) {
            VStack(alignment: .leading, spacing: 3) {
                Text(title)
                    .font(Typeface.body(13))
                    .foregroundStyle(Theme.ink)
                if let subtitle {
                    Text(subtitle)
                        .font(Typeface.body(11))
                        .foregroundStyle(Theme.inkFaint)
                        .fixedSize(horizontal: false, vertical: true)
                }
            }
            Spacer(minLength: 8)
            Toggle("", isOn: $isOn)
                .labelsHidden()
                .tint(Theme.safe)
                .onChange(of: isOn) { _, _ in Haptics.shared.play(.select) }
        }
        .accessibilityElement(children: .combine)
    }
}

struct SegmentRow<Content: View>: View {
    let title: String
    @ViewBuilder var content: Content

    var body: some View {
        VStack(alignment: .leading, spacing: 7) {
            Text(title)
                .font(Typeface.label(9)).uppercaseLabel(tracking: 0.9)
                .foregroundStyle(Theme.inkFaint)
            HStack(spacing: 5) { content }
        }
    }
}

struct SliderRow: View {
    let title: String
    @Binding var value: Double
    let display: String
    var tint: Color = Theme.data

    var body: some View {
        VStack(alignment: .leading, spacing: 7) {
            HStack {
                Text(title)
                    .font(Typeface.label(9)).uppercaseLabel(tracking: 0.9)
                    .foregroundStyle(Theme.inkFaint)
                Spacer()
                Text(display)
                    .font(Typeface.numeric(12))
                    .foregroundStyle(tint)
            }
            Slider(value: $value, in: 0...1)
                .tint(tint)
        }
    }
}

@MainActor
struct StepperRow: View {
    let title: String
    @Binding var value: Int
    let range: ClosedRange<Int>
    let step: Int
    let unit: String

    var body: some View {
        HStack {
            Text(title)
                .font(Typeface.label(9)).uppercaseLabel(tracking: 0.9)
                .foregroundStyle(Theme.inkFaint)
            Spacer()
            Text("\(value)")
                .font(Typeface.numeric(15))
                .foregroundStyle(Theme.ink)
            Text(unit)
                .font(Typeface.label(9)).uppercaseLabel()
                .foregroundStyle(Theme.inkFaint)
            Stepper("", value: $value, in: range, step: step)
                .labelsHidden()
                .onChange(of: value) { _, _ in Haptics.shared.play(.tempoTick) }
        }
    }
}

@MainActor
struct TagChip: View {
    let tag: EnhancementTag
    let isOn: Bool
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            HStack(spacing: 5) {
                Image(systemName: tag.symbol).font(.system(size: 9, weight: .semibold))
                Text(tag.label).font(Typeface.label(10)).uppercaseLabel(tracking: 0.8)
            }
            .foregroundStyle(isOn ? Theme.bg : Theme.inkDim)
            .padding(.horizontal, 10)
            .padding(.vertical, 8)
            .background(isOn ? Theme.rising : Theme.card)
            .clipShape(RoundedRectangle(cornerRadius: Theme.Metric.chipRadius))
        }
        .buttonStyle(.plain)
        .accessibilityAddTraits(isOn ? [.isSelected, .isButton] : .isButton)
    }
}

@MainActor
struct PersonaRow: View {
    let persona: VoicePersona
    let isOn: Bool
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            HStack(spacing: 10) {
                Image(systemName: persona.symbol)
                    .font(.system(size: 13, weight: .semibold))
                    .foregroundStyle(isOn ? persona.accent : Theme.inkFaint)
                    .frame(width: 20)

                VStack(alignment: .leading, spacing: 1) {
                    Text(persona.name)
                        .font(Typeface.body(13))
                        .foregroundStyle(Theme.ink)
                    Text(persona.descriptor)
                        .font(Typeface.label(9)).uppercaseLabel(tracking: 0.8)
                        .foregroundStyle(Theme.inkFaint)
                }

                Spacer(minLength: 0)

                if isOn {
                    Image(systemName: "checkmark")
                        .font(.system(size: 11, weight: .bold))
                        .foregroundStyle(persona.accent)
                }
            }
            .padding(10)
            .background(Theme.card)
            .overlay(
                RoundedRectangle(cornerRadius: Theme.Metric.chipRadius)
                    .strokeBorder(isOn ? persona.accent : .clear, lineWidth: 1)
            )
            .clipShape(RoundedRectangle(cornerRadius: Theme.Metric.chipRadius))
        }
        .buttonStyle(.plain)
        .accessibilityAddTraits(isOn ? [.isSelected, .isButton] : .isButton)
    }
}

// MARK: - Flow layout

/// Wrapping row layout for the enhancement tags.
struct FlowLayout: Layout {
    var spacing: CGFloat = 6

    func sizeThatFits(proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) -> CGSize {
        let maxWidth = proposal.width ?? .infinity
        var x: CGFloat = 0, y: CGFloat = 0, rowHeight: CGFloat = 0

        for subview in subviews {
            let size = subview.sizeThatFits(.unspecified)
            if x + size.width > maxWidth, x > 0 {
                x = 0
                y += rowHeight + spacing
                rowHeight = 0
            }
            x += size.width + spacing
            rowHeight = max(rowHeight, size.height)
        }
        return CGSize(width: maxWidth, height: y + rowHeight)
    }

    func placeSubviews(in bounds: CGRect, proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) {
        var x = bounds.minX, y = bounds.minY, rowHeight: CGFloat = 0

        for subview in subviews {
            let size = subview.sizeThatFits(.unspecified)
            if x + size.width > bounds.maxX, x > bounds.minX {
                x = bounds.minX
                y += rowHeight + spacing
                rowHeight = 0
            }
            subview.place(at: CGPoint(x: x, y: y), proposal: ProposedViewSize(size))
            x += size.width + spacing
            rowHeight = max(rowHeight, size.height)
        }
    }
}
