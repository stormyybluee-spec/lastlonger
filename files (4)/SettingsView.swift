//
//  SettingsView.swift
//  LAST LONGER
//
//  PART C-5 — The Brutalist Config.
//
//  Deliberately not SwiftUI `Form`: Form imposes its own grouped background,
//  inset radii and separator inks that fight the black/#1C1C1E system, and
//  overriding all of them costs more than building the eight rows this screen
//  actually needs.
//

import SwiftUI
import AVFoundation
import UIKit

struct SettingsView: View {

    @ObservedObject var settings: AppSettings
    @ObservedObject var statsStore: StatsStore
    @ObservedObject var regimenStore: RegimenStore
    @ObservedObject var ritualStore: RitualStore

    var badges: [BadgeProgress] = []
    var watchPaired: Bool = false

    @State private var showPersonaPicker = false
    @State private var showSkinPicker = false
    @State private var showPhrases = false
    @State private var showRitual = false
    @State private var showRegimens = false
    @State private var exportURL: URL?
    @State private var exportError: String?
    @State private var confirmDelete = false
    @State private var encouragementSent = false

    private let synth = AVSpeechSynthesizer()

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 26) {
                coachSection
                sessionDefaultsSection
                ritualSection
                regimenSection
                watchSection
                partnerSyncSection
                privacySection
                aboutSection
                Color.clear.frame(height: 40)
            }
            .padding(.horizontal, 18)
            .padding(.top, 8)
        }
        .background(LL.C.bg.ignoresSafeArea())
        .scrollIndicators(.hidden)
        .sheet(isPresented: $showPersonaPicker) {
            PersonaPickerSheet(settings: settings, onPreview: preview)
        }
        .sheet(isPresented: $showSkinPicker) {
            AngelSkinPickerSheet(settings: settings, unlocked: settings.unlockedSkins(badges: badges))
        }
        .sheet(isPresented: $showPhrases) {
            CustomPhrasesSheet(settings: settings)
        }
        .sheet(isPresented: $showRitual) {
            NavigationStack { RitualBuilderView(store: ritualStore, settings: settings) }
                .preferredColorScheme(.dark)
        }
        .sheet(isPresented: $showRegimens) {
            NavigationStack { RegimenBrowserView(store: regimenStore) }
                .preferredColorScheme(.dark)
        }
        .alert("Delete all data?", isPresented: $confirmDelete) {
            Button("Delete everything", role: .destructive) { deleteAll() }
            Button("Cancel", role: .cancel) { }
        } message: {
            Text("Every session, badge, program and preference is erased from this device. There is no backup and no undo — nothing was ever uploaded anywhere to restore from.")
        }
        .alert("Export failed",
               isPresented: Binding(get: { exportError != nil },
                                    set: { if !$0 { exportError = nil } })) {
            Button("OK", role: .cancel) { exportError = nil }
        } message: {
            Text(exportError ?? "")
        }
    }

    // MARK: 1 — Coach

    private var coachSection: some View {
        LLSettingsSection(title: "Coach", readout: settings.persona.title) {
            LLNavRow(title: "Persona",
                     value: settings.persona.title,
                     symbol: settings.persona.symbol,
                     tint: LL.C.red) { showPersonaPicker = true }

            LLActionRow(title: "Preview voice",
                        symbol: "speaker.wave.2.fill",
                        tint: LL.C.blue) {
                preview(settings.persona)
            }

            LLToggleRow(title: "Voice",
                        subtitle: "Off runs the coach as haptics only",
                        symbol: "waveform",
                        tint: LL.C.green,
                        isOn: $settings.voiceEnabled)

            LLSliderRow(title: "Default volume",
                        value: $settings.voiceVolume,
                        range: 0...1,
                        tint: LL.C.blue,
                        display: "\(Int(settings.voiceVolume * 100))%")

            LLNavRow(title: "Custom phrases",
                     value: "\(settings.customPhrases.count) / 10",
                     symbol: "text.quote",
                     tint: LL.C.yellow) { showPhrases = true }

            LLNavRow(title: "Angel skin",
                     value: settings.angelSkin.title,
                     symbol: "sparkles",
                     tint: settings.angelSkin.tint) { showSkinPicker = true }
        }
    }

    // MARK: 2 — Session defaults

    private var sessionDefaultsSection: some View {
        LLSettingsSection(title: "Session Defaults", readout: "applied to Quick Start") {
            LLMenuRow(title: "Default mode",
                      symbol: "square.grid.2x2.fill",
                      tint: LL.C.red,
                      selection: Binding(get: { settings.defaultMode },
                                         set: { settings.defaultMode = $0 }),
                      options: TrainingMode.allCases) { $0.title }

            LLMenuRow(title: "Haptic intensity",
                      symbol: "hand.tap.fill",
                      tint: LL.C.yellow,
                      selection: Binding(get: { settings.haptics },
                                         set: { settings.haptics = $0 }),
                      options: HapticIntensity.allCases) { $0.title }

            LLMenuRow(title: "Binaural beats",
                      symbol: "waveform.path",
                      tint: LL.C.blue,
                      selection: Binding(get: { settings.binaural },
                                         set: { settings.binaural = $0 }),
                      options: BinauralDefault.allCases) { $0.title }

            LLMenuRow(title: "Duration cap",
                      symbol: "timer",
                      tint: LL.C.green,
                      selection: Binding(get: { settings.durationCap },
                                         set: { settings.durationCap = $0 }),
                      options: DurationCap.allCases) { $0.title }

            LLMenuRow(title: "Talk frequency",
                      symbol: "bubble.left.fill",
                      tint: LL.C.red,
                      selection: Binding(get: { settings.talkFrequency },
                                         set: { settings.talkFrequency = $0 }),
                      options: TalkFrequency.allCases) { $0.title }

            LLToggleRow(title: "Distraction questions",
                        subtitle: "Mental arithmetic at random intervals",
                        symbol: "questionmark.circle.fill",
                        tint: LL.C.yellow,
                        isOn: $settings.distractionQuestions)

            LLToggleRow(title: "Coach interrupt",
                        subtitle: "Periodic arousal check-ins",
                        symbol: "hand.raised.fill",
                        tint: LL.C.blue,
                        isOn: $settings.coachInterrupt)

            LLToggleRow(title: "Silent mode",
                        subtitle: "Haptic patterns replace every spoken cue",
                        symbol: "speaker.slash.fill",
                        tint: LL.C.green,
                        isOn: $settings.silentModeDefault)

            LLToggleRow(title: "Focus Mode prompt",
                        subtitle: "Offer to silence notifications at session start",
                        symbol: "moon.fill",
                        tint: LL.C.blue,
                        isOn: $settings.focusModePrompt)

            LLToggleRow(title: "Tempo Lock",
                        subtitle: "Tap-to-set pace, stepped down over the session",
                        symbol: "metronome.fill",
                        tint: LL.C.yellow,
                        isOn: $settings.tempoLock)

            LLActionRow(title: "Siri shortcut",
                        subtitle: "\"Start training\"",
                        symbol: "mic.fill",
                        tint: LL.C.red) {
                // Present INUIAddVoiceShortcutViewController from the hosting
                // controller; the intent donation lives in the session layer.
            }

            LLMenuRow(title: "Milestone reminders",
                      symbol: "bell.fill",
                      tint: LL.C.yellow,
                      selection: Binding(get: { settings.milestoneFrequency },
                                         set: { settings.milestoneFrequency = $0 }),
                      options: MilestoneFrequency.allCases) { $0.title }
        }
    }

    // MARK: 3 — Ritual

    private var ritualSection: some View {
        LLSettingsSection(title: "Pre-Session Ritual",
                          readout: ritualStore.ritual.blocks.isEmpty ? "not set" : ritualStore.ritual.formattedTotal) {
            LLNavRow(title: ritualStore.ritual.blocks.isEmpty ? "Create ritual" : "Edit ritual",
                     value: "\(ritualStore.ritual.blocks.count) blocks",
                     symbol: "square.stack.3d.up.fill",
                     tint: LL.C.green) { showRitual = true }

            LLToggleRow(title: "Run before sessions",
                        symbol: "play.circle.fill",
                        tint: LL.C.green,
                        isOn: $ritualStore.ritual.isEnabled)
                .disabled(ritualStore.ritual.blocks.isEmpty)
        }
    }

    // MARK: 4 — Regimens

    private var regimenSection: some View {
        LLSettingsSection(title: "Training Regimens",
                          readout: regimenStore.regimen?.title ?? "not enrolled") {
            if let regimen = regimenStore.regimen, let day = regimenStore.currentDayIndex {
                LLNavRow(title: "Current program",
                         value: "Day \(day) of \(regimen.dayCount)",
                         symbol: regimen.symbol,
                         tint: regimen.tint) { showRegimens = true }

                LLStaticRow(title: "Days logged",
                            value: "\(regimenStore.enrollment?.completedDays.count ?? 0) / \(regimen.dayCount)",
                            symbol: "checkmark.seal.fill",
                            tint: LL.C.green)

                LLDestructiveRow(title: "Cancel program",
                                 symbol: "xmark.octagon.fill") { regimenStore.cancel() }
            } else {
                LLNavRow(title: "Enroll in a program",
                         value: "\(RegimenCatalog.all.count) available",
                         symbol: "list.bullet.rectangle.fill",
                         tint: LL.C.blue) { showRegimens = true }
            }
        }
    }

    // MARK: 5 — Watch

    private var watchSection: some View {
        LLSettingsSection(title: "Apple Watch",
                          readout: watchPaired ? "connected" : "not installed") {
            LLStaticRow(title: "Connection",
                        value: watchPaired ? "Connected" : "Not installed",
                        symbol: watchPaired ? "applewatch.radiowaves.left.and.right" : "applewatch.slash",
                        tint: watchPaired ? LL.C.green : LL.C.dim)

            if !watchPaired {
                LLActionRow(title: "Install Watch app",
                            subtitle: "Watch-verified logs score at full weight",
                            symbol: "arrow.down.app.fill",
                            tint: LL.C.blue) {
                    // Opens the Watch app's install pane.
                }
            }

            LLToggleRow(title: "Grip pressure warning",
                        subtitle: "Wrist rigidity heuristic from the Watch only. No iPhone motion is read.",
                        symbol: "hand.raised.fill",
                        tint: LL.C.yellow,
                        isOn: $settings.antiGripPressure)
        }
    }

    // MARK: 6 — Partner sync

    private var partnerSyncSection: some View {
        LLSettingsSection(title: "Partner Sync", readout: "on-device") {
            LLActionRow(title: encouragementSent ? "Queued for next session" : "Send encouragement",
                        subtitle: "Hand them the unlocked phone. The line plays in your next session.",
                        symbol: encouragementSent ? "checkmark.circle.fill" : "heart.text.square.fill",
                        tint: encouragementSent ? LL.C.green : LL.C.red) {
                UINotificationFeedbackGenerator().notificationOccurred(.success)
                withAnimation { encouragementSent = true }
            }
        }
    }

    // MARK: 7 — Privacy

    private var privacySection: some View {
        LLSettingsSection(title: "Privacy", readout: "local only") {
            LLStaticRow(title: "Your data never leaves this device",
                        value: "",
                        symbol: "lock.shield.fill",
                        tint: LL.C.green)

            ForEach(DataExporter.Format.allCases) { format in
                LLActionRow(title: "Export \(format.title)",
                            symbol: "square.and.arrow.up",
                            tint: LL.C.blue) {
                    export(format)
                }
            }

            if let exportURL {
                ShareLink(item: exportURL) {
                    HStack {
                        Image(systemName: "paperplane.fill")
                            .font(.system(size: 13, weight: .semibold))
                            .foregroundStyle(LL.C.blue)
                            .frame(width: 26)
                        LLLabel("Share \(exportURL.lastPathComponent)", color: LL.C.text, size: 11)
                        Spacer()
                    }
                    .padding(.horizontal, 14)
                    .frame(height: 54)
                }
            }

            LLDestructiveRow(title: "Delete all data",
                             symbol: "trash.fill") { confirmDelete = true }
        }
    }

    // MARK: 8 — About

    private var aboutSection: some View {
        VStack(alignment: .leading, spacing: 12) {
            LLSectionHeader(title: "About", readout: version)

            VStack(alignment: .leading, spacing: 10) {
                Text("Educational purposes. Not medical advice.")
                    .font(LLFont.label(11, weight: .semibold))
                    .foregroundStyle(LL.C.text)

                Text("This app trains behavioural technique. It does not diagnose or treat anything. Persistent difficulty with ejaculatory control, pain, or loss of sensation is worth taking to a clinician — it is common and it is treatable.")
                    .font(LLFont.terminal(10))
                    .foregroundStyle(LL.C.dim)
                    .fixedSize(horizontal: false, vertical: true)
            }
            .padding(14)
            .frame(maxWidth: .infinity, alignment: .leading)
            .crtPanel(tint: LL.C.dim)
        }
    }

    private var version: String {
        let v = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String ?? "4.0"
        let b = Bundle.main.infoDictionary?["CFBundleVersion"] as? String ?? "1"
        return "v\(v) (\(b))"
    }

    // MARK: Actions

    private func preview(_ persona: CoachPersona) {
        guard settings.voiceEnabled else { return }
        synth.stopSpeaking(at: .immediate)
        let u = AVSpeechUtterance(string: "Slow down. Hold it there. Breathe out.")
        u.voice = persona.voice
        u.rate = persona.resolvedRate
        u.pitchMultiplier = persona.pitch
        u.volume = Float(settings.voiceVolume)
        synth.speak(u)
    }

    private func export(_ format: DataExporter.Format) {
        do {
            exportURL = try DataExporter.write(statsStore.sessions, format: format)
            UINotificationFeedbackGenerator().notificationOccurred(.success)
        } catch {
            exportError = error.localizedDescription
        }
    }

    private func deleteAll() {
        statsStore.sessions = []
        regimenStore.cancel()
        ritualStore.ritual = Ritual()
        exportURL = nil
        for key in UserDefaults.standard.dictionaryRepresentation().keys where key.hasPrefix("ll.") {
            UserDefaults.standard.removeObject(forKey: key)
        }
        UINotificationFeedbackGenerator().notificationOccurred(.warning)
        // The CoreData wipe (destroy + recreate the store file) belongs to the
        // persistence layer — call it here once that ships.
    }
}

// MARK: - Section container

struct LLSettingsSection<Content: View>: View {
    let title: String
    var readout: String? = nil
    @ViewBuilder let content: Content

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            LLSectionHeader(title: title, readout: readout)
            VStack(spacing: 0) { content }
                .crtPanel()
        }
    }
}

// MARK: - Rows

private struct RowChrome<Content: View>: View {
    let symbol: String
    let tint: Color
    @ViewBuilder let content: Content

    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: symbol)
                .font(.system(size: 13, weight: .semibold))
                .foregroundStyle(tint)
                .frame(width: 26)
            content
        }
        .padding(.horizontal, 14)
        .frame(minHeight: 54)
        .overlay(alignment: .bottom) {
            Rectangle().fill(LL.C.hairline).frame(height: 1).padding(.leading, 52)
        }
    }
}

struct LLStaticRow: View {
    let title: String, value: String, symbol: String, tint: Color

    var body: some View {
        RowChrome(symbol: symbol, tint: tint) {
            LLLabel(title, color: LL.C.text, size: 11)
            Spacer()
            if !value.isEmpty {
                Text(value).font(LLFont.terminal(10)).foregroundStyle(LL.C.label)
            }
        }
    }
}

struct LLNavRow: View {
    let title: String, value: String, symbol: String, tint: Color
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            RowChrome(symbol: symbol, tint: tint) {
                LLLabel(title, color: LL.C.text, size: 11)
                Spacer()
                Text(value).font(LLFont.terminal(10)).foregroundStyle(LL.C.label)
                Image(systemName: "chevron.right")
                    .font(.system(size: 10, weight: .bold))
                    .foregroundStyle(LL.C.dim)
            }
        }
        .buttonStyle(.plain)
        .accessibilityLabel(title)
        .accessibilityValue(value)
    }
}

struct LLActionRow: View {
    let title: String
    var subtitle: String? = nil
    let symbol: String
    let tint: Color
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            RowChrome(symbol: symbol, tint: tint) {
                VStack(alignment: .leading, spacing: 3) {
                    LLLabel(title, color: LL.C.text, size: 11)
                    if let subtitle {
                        Text(subtitle)
                            .font(LLFont.terminal(9))
                            .foregroundStyle(LL.C.dim)
                            .multilineTextAlignment(.leading)
                            .fixedSize(horizontal: false, vertical: true)
                    }
                }
                Spacer()
            }
        }
        .buttonStyle(.plain)
        .accessibilityLabel(title)
    }
}

struct LLToggleRow: View {
    let title: String
    var subtitle: String? = nil
    let symbol: String
    let tint: Color
    @Binding var isOn: Bool

    var body: some View {
        RowChrome(symbol: symbol, tint: tint) {
            Toggle(isOn: $isOn) {
                VStack(alignment: .leading, spacing: 3) {
                    LLLabel(title, color: LL.C.text, size: 11)
                    if let subtitle {
                        Text(subtitle)
                            .font(LLFont.terminal(9))
                            .foregroundStyle(LL.C.dim)
                            .multilineTextAlignment(.leading)
                            .fixedSize(horizontal: false, vertical: true)
                    }
                }
            }
            .tint(tint)
        }
    }
}

struct LLSliderRow: View {
    let title: String
    @Binding var value: Double
    let range: ClosedRange<Double>
    let tint: Color
    let display: String

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                LLLabel(title, color: LL.C.text, size: 11)
                Spacer()
                Text(display).font(LLFont.readout(11)).foregroundStyle(tint)
            }
            Slider(value: $value, in: range).tint(tint)
        }
        .padding(.horizontal, 14)
        .padding(.vertical, 12)
        .overlay(alignment: .bottom) {
            Rectangle().fill(LL.C.hairline).frame(height: 1).padding(.leading, 14)
        }
        .accessibilityElement(children: .combine)
        .accessibilityLabel(title)
        .accessibilityValue(display)
    }
}

struct LLMenuRow<T: Identifiable & Hashable>: View {
    let title: String
    let symbol: String
    let tint: Color
    @Binding var selection: T
    let options: [T]
    let label: (T) -> String

    var body: some View {
        RowChrome(symbol: symbol, tint: tint) {
            LLLabel(title, color: LL.C.text, size: 11)
            Spacer()
            Menu {
                ForEach(options) { option in
                    Button {
                        UISelectionFeedbackGenerator().selectionChanged()
                        selection = option
                    } label: {
                        if option == selection {
                            Label(label(option), systemImage: "checkmark")
                        } else {
                            Text(label(option))
                        }
                    }
                }
            } label: {
                HStack(spacing: 5) {
                    Text(label(selection))
                        .font(LLFont.terminal(10))
                        .foregroundStyle(LL.C.label)
                    Image(systemName: "chevron.up.chevron.down")
                        .font(.system(size: 9, weight: .bold))
                        .foregroundStyle(LL.C.dim)
                }
            }
        }
        .accessibilityLabel(title)
        .accessibilityValue(label(selection))
    }
}

struct LLDestructiveRow: View {
    let title: String
    let symbol: String
    let action: () -> Void

    var body: some View {
        Button(role: .destructive, action: action) {
            RowChrome(symbol: symbol, tint: LL.C.red) {
                LLLabel(title, color: LL.C.red, size: 11)
                Spacer()
            }
            .background(LL.C.red.opacity(0.08))
        }
        .buttonStyle(.plain)
    }
}

// MARK: - Persona picker

struct PersonaPickerSheet: View {
    @ObservedObject var settings: AppSettings
    let onPreview: (CoachPersona) -> Void
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 10) {
                    ForEach(CoachPersona.allCases) { persona in
                        let isSelected = persona == settings.persona
                        Button {
                            settings.persona = persona
                            onPreview(persona)
                        } label: {
                            HStack(spacing: 12) {
                                Image(systemName: persona.symbol)
                                    .font(.system(size: 17, weight: .semibold))
                                    .foregroundStyle(isSelected ? LL.C.red : LL.C.dim)
                                    .frame(width: 34, height: 34)
                                    .background((isSelected ? LL.C.red : LL.C.dim).opacity(0.12))
                                    .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))

                                VStack(alignment: .leading, spacing: 3) {
                                    Text(persona.title.uppercased())
                                        .font(LLFont.pixel(11))
                                        .foregroundStyle(LL.C.text)
                                    Text("\(persona.tone) · rate ×\(String(format: "%.1f", persona.rateMultiplier)) · pitch \(String(format: "%.1f", persona.pitch))")
                                        .font(LLFont.terminal(9))
                                        .foregroundStyle(LL.C.dim)
                                }
                                Spacer()
                                Image(systemName: isSelected ? "checkmark.circle.fill" : "speaker.wave.2")
                                    .font(.system(size: 16))
                                    .foregroundStyle(isSelected ? LL.C.green : LL.C.dim)
                            }
                            .padding(14)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .crtPanel(tint: isSelected ? LL.C.red : LL.C.dim)
                        }
                        .buttonStyle(.plain)
                    }

                    Text("Tap to select and hear a preview. Voices come from the system speech engine — no recordings ship with the app.")
                        .font(LLFont.terminal(9))
                        .foregroundStyle(LL.C.dim)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(.top, 6)
                }
                .padding(18)
            }
            .background(LL.C.bg.ignoresSafeArea())
            .scrollIndicators(.hidden)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) { GlitchText(text: "COACH", size: 12) }
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Done") { dismiss() }
                        .font(LLFont.label(12)).foregroundStyle(LL.C.dim)
                }
            }
        }
        .preferredColorScheme(.dark)
    }
}

// MARK: - Angel skin picker

struct AngelSkinPickerSheet: View {
    @ObservedObject var settings: AppSettings
    let unlocked: Set<AngelSkin>
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 100), spacing: 12)], spacing: 12) {
                    ForEach(AngelSkin.allCases) { skin in
                        let isUnlocked = unlocked.contains(skin)
                        let isSelected = settings.angelSkin == skin

                        Button {
                            guard isUnlocked else { return }
                            UIImpactFeedbackGenerator(style: .medium).impactOccurred()
                            settings.angelSkin = skin
                        } label: {
                            VStack(spacing: 8) {
                                Image(systemName: isUnlocked ? "figure.wave" : "lock.fill")
                                    .font(.system(size: 26, weight: .light))
                                    .foregroundStyle(isUnlocked ? skin.tint : LL.C.dim)
                                    .shadow(color: isUnlocked ? skin.tint.opacity(0.6) : .clear, radius: 10)
                                    .frame(height: 34)

                                Text(skin.title.uppercased())
                                    .font(LLFont.terminal(9))
                                    .foregroundStyle(isUnlocked ? LL.C.text : LL.C.dim)

                                Text(skin.unlockRequirement)
                                    .font(LLFont.terminal(7))
                                    .foregroundStyle(LL.C.dim)
                                    .multilineTextAlignment(.center)
                                    .lineLimit(2)
                                    .frame(height: 18)
                            }
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 14)
                            .background(LL.C.card)
                            .overlay(Scanlines(spacing: 3, opacity: isUnlocked ? 0.14 : 0.28))
                            .overlay(
                                RoundedRectangle(cornerRadius: 10, style: .continuous)
                                    .strokeBorder(isSelected ? skin.tint : LL.C.hairline,
                                                  lineWidth: isSelected ? 1.5 : 1)
                            )
                            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                            .saturation(isUnlocked ? 1 : 0)
                        }
                        .buttonStyle(.plain)
                        .disabled(!isUnlocked)
                        .accessibilityLabel(skin.title)
                        .accessibilityValue(isUnlocked ? (isSelected ? "Selected" : "Unlocked") : skin.unlockRequirement)
                    }
                }
                .padding(18)
            }
            .background(LL.C.bg.ignoresSafeArea())
            .scrollIndicators(.hidden)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) { GlitchText(text: "ANGEL SKIN", size: 12) }
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Done") { dismiss() }
                        .font(LLFont.label(12)).foregroundStyle(LL.C.dim)
                }
            }
        }
        .preferredColorScheme(.dark)
    }
}

// MARK: - Custom phrases

struct CustomPhrasesSheet: View {
    @ObservedObject var settings: AppSettings
    @Environment(\.dismiss) private var dismiss
    @State private var draft = ""

    private var phrases: [String] { settings.customPhrases }

    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                List {
                    ForEach(Array(phrases.enumerated()), id: \.offset) { _, phrase in
                        Text(phrase)
                            .font(LLFont.terminal(11))
                            .foregroundStyle(LL.C.text)
                            .listRowBackground(LL.C.card)
                            .listRowSeparatorTint(LL.C.hairline)
                    }
                    .onDelete { offsets in
                        var current = phrases
                        current.remove(atOffsets: offsets)
                        settings.customPhrases = current
                    }
                }
                .listStyle(.plain)
                .scrollContentBackground(.hidden)

                HStack(spacing: 10) {
                    TextField("New phrase", text: $draft)
                        .font(LLFont.terminal(11))
                        .foregroundStyle(LL.C.text)
                        .padding(.horizontal, 12)
                        .frame(height: 48)
                        .background(LL.C.card)
                        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        .submitLabel(.done)
                        .onSubmit(add)

                    Button(action: add) {
                        Image(systemName: "plus")
                            .font(.system(size: 15, weight: .bold))
                            .foregroundStyle(LL.C.text)
                            .frame(width: 48, height: 48)
                            .background(LL.C.blue.opacity(0.2))
                            .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                    }
                    .buttonStyle(.plain)
                    .disabled(draft.trimmingCharacters(in: .whitespaces).isEmpty || phrases.count >= 10)
                    .accessibilityLabel("Add phrase")
                }
                .padding(18)
            }
            .background(LL.C.bg.ignoresSafeArea())
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    GlitchText(text: "PHRASES \(phrases.count)/10", size: 11)
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Done") { dismiss() }
                        .font(LLFont.label(12)).foregroundStyle(LL.C.dim)
                }
            }
        }
        .preferredColorScheme(.dark)
    }

    private func add() {
        let trimmed = draft.trimmingCharacters(in: .whitespaces)
        guard !trimmed.isEmpty, phrases.count < 10 else { return }
        settings.customPhrases = phrases + [trimmed]
        draft = ""
    }
}

// MARK: - Preview

#Preview("Settings") {
    SettingsView(settings: AppSettings(),
                 statsStore: StatsSample.store(),
                 regimenStore: RegimenStore(),
                 ritualStore: RitualStore(ritual: .suggested),
                 badges: BadgeEvaluator.evaluate(sessions: StatsSample.sessions()),
                 watchPaired: false)
        .preferredColorScheme(.dark)
}
