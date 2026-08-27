//
//  SettingsView.swift
//  LAST LONGER
//
//  PART E — Settings container.
//
//  Sections 1–5 and 7 are navigation stubs owned by Parts A–D; each is marked
//  with the part that fills it in. Sections 6 (Training Gear), 8 (Privacy) and
//  9 (About) are fully implemented here as Part E deliverables.
//

import SwiftUI
import CoreData
import UIKit

struct SettingsView: View {
    @Environment(\.managedObjectContext) private var context
    @Environment(\.scenePhase) private var scenePhase

    // Live, persisted preference store. Every control below binds to this and
    // writes straight through to UserDefaults (see AppSettings).
    @StateObject private var settings = AppSettings()
    @ObservedObject private var watch = PhoneWatchLink.shared
    @Environment(\.openURL) private var openURL

    // Export
    @State private var exportURL: IdentifiedURL?
    @State private var isExporting = false
    @State private var exportError: String?

    // Wipe
    @State private var showWipeConfirmation = false
    @State private var showWipeFinalWarning = false
    @State private var wipeError: String?
    @State private var wipeSucceeded = false

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 0) {

                    // 1–5, 7 — owned by Parts A–D.
                    coachSection
                    sessionDefaultsSection
                    siriSection
                    ritualSection
                    regimenSection
                    watchSection
                    partnerSyncSection

                    // 6 — PART E-1 — CUT for v1 (App Store compliance).
                    // Affiliate "Training Gear" links (incl. a sex-toy row) are
                    // deferred to Phase 2 per the compliance checklist ("No sex
                    // toy affiliate links in v1"). The section view still exists
                    // but is no longer reachable by a reviewer.
                    // trainingGearSection

                    // 8 — PART E-2
                    privacySection

                    // 9
                    aboutSection
                }
                .padding(.top, 8)
            }
            .llScreen()
            .navigationTitle("Settings")
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(LLColor.background, for: .navigationBar)
        }
        .sheet(item: $exportURL) { wrapped in
            ShareSheet(items: [wrapped.url]) { exportURL = nil }
                .presentationDetents([.medium, .large])
        }
        .alert("Export failed", isPresented: .constant(exportError != nil)) {
            Button("OK") { exportError = nil }
        } message: {
            Text(exportError ?? "")
        }
        .confirmationDialog(
            "Erase everything on this device?",
            isPresented: $showWipeConfirmation,
            titleVisibility: .visible
        ) {
            Button("Continue", role: .destructive) { showWipeFinalWarning = true }
            Button("Cancel", role: .cancel) {}
        } message: {
            Text("Sessions, streaks, badges, regimens, rituals and custom phrases. There is no backup — nothing is stored off this phone.")
        }
        .alert("Last chance", isPresented: $showWipeFinalWarning) {
            Button("Erase all data", role: .destructive) { performWipe() }
            Button("Keep my data", role: .cancel) {}
        } message: {
            Text("This cannot be undone. Your purchase is kept.")
        }
        .alert("Erased", isPresented: $wipeSucceeded) {
            Button("OK") {}
        } message: {
            Text("The local database has been destroyed and rebuilt empty.")
        }
        .alert("Could not erase", isPresented: .constant(wipeError != nil)) {
            Button("OK") { wipeError = nil }
        } message: {
            Text(wipeError ?? "")
        }
        .onChange(of: scenePhase) { phase in
            if phase == .background { DataExportManager.purgeExports() }
        }
    }

    // MARK: - 1. Coach  (PART A)

    private var coachSection: some View {
        LLSection(title: "Coach") {
            // Split into groups: one ViewBuilder closure tops out at 10 children.
            Group {
                menuRow(symbol: "waveform", title: "Persona",
                        selection: $settings.persona,
                        options: CoachPersona.allCases,
                        label: { $0.title.capitalized })
                LLDivider()
                toggleRow(symbol: "speaker.wave.2.fill", title: "Voice",
                          detail: "Spoken coaching (text-to-speech)",
                          isOn: $settings.voiceEnabled)
                LLDivider()
                sliderRow(symbol: "speaker.wave.3.fill", title: "Voice Volume",
                          value: $settings.voiceVolume)
                    .disabled(!settings.voiceEnabled)
                    .opacity(settings.voiceEnabled ? 1 : 0.4)
                LLDivider()
                toggleRow(symbol: "bubble.left.and.exclamationmark.bubble.right.fill",
                          title: "Coach Interrupt",
                          detail: "Periodic “arousal level?” check-ins",
                          isOn: $settings.coachInterrupt)
            }
            LLDivider()
            Group {
                toggleRow(symbol: "questionmark.circle.fill",
                          title: "Distraction Questions",
                          detail: "Arithmetic prompts to pull focus",
                          isOn: $settings.distractionQuestions)
                LLDivider()
                NavigationLink {
                    CustomPhrasesView(settings: settings)
                } label: {
                    LLRow(symbol: "text.quote", title: "Custom Phrases",
                          detail: "\(settings.customPhrases.count) of 10 used",
                          showsChevron: true)
                }
                .buttonStyle(.plain)
                LLDivider()
                menuRow(symbol: "figure.wave", title: "Angel Skin",
                        selection: $settings.angelSkin,
                        options: AngelSkin.allCases,
                        label: { $0.title.capitalized })
            }
        }
    }

    // MARK: - 2. Session defaults  (PART A / C)

    private var sessionDefaultsSection: some View {
        LLSection(title: "Session Defaults") {
            // Split into two groups: a single ViewBuilder closure tops out at
            // 10 child views, and rows-plus-dividers exceeds that.
            Group {
                menuRow(symbol: "square.grid.2x2.fill", title: "Default Mode",
                        selection: $settings.defaultMode,
                        options: TrainingMode.allCases,
                        label: { $0.title })
                LLDivider()
                menuRow(symbol: "iphone.radiowaves.left.and.right", title: "Haptic Intensity",
                        selection: $settings.haptics,
                        options: HapticIntensity.allCases,
                        label: { $0.rawValue.capitalized })
                LLDivider()
                menuRow(symbol: "waveform.path", title: "Binaural Beats",
                        selection: $settings.binaural,
                        options: BinauralDefault.allCases,
                        label: { $0.title })
            }
            LLDivider()
            Group {
                menuRow(symbol: "timer", title: "Default Duration Cap",
                        selection: $settings.durationCap,
                        options: DurationCap.allCases,
                        label: { $0 == .none ? "None" : "\($0.rawValue) min" })
                LLDivider()
                toggleRow(symbol: "metronome.fill", title: "Tempo Lock",
                          detail: "Haptic metronome during active phases",
                          isOn: $settings.tempoLock)
                LLDivider()
                toggleRow(symbol: "speaker.slash.fill", title: "Silent Mode", isOn: $settings.silentModeDefault)
                LLDivider()
                toggleRow(symbol: "moon.fill", title: "Focus Mode",
                          detail: "Prompt to enable Focus during sessions",
                          isOn: $settings.focusModePrompt)
                LLDivider()
                menuRow(symbol: "bell.fill", title: "Reminders",
                        selection: $settings.milestoneFrequency,
                        options: MilestoneFrequency.allCases,
                        label: { $0.title })
            }
        }
    }

    // MARK: - Siri

    private var siriSection: some View {
        LLSection(title: "Siri & Shortcuts", subtitle: "“Hey Siri, start a session.”") {
            LLRow(symbol: "mic.fill", title: "Siri Shortcut",
                  detail: "Set up “Start a session” in the Shortcuts app",
                  showsChevron: true,
                  action: openShortcuts)
        }
    }

    private func openShortcuts() {
        // App Shortcuts (AppShortcutsProvider) are available to Siri with no
        // setup; this just takes the user to the Shortcuts app to add or
        // customise them.
        UISelectionFeedbackGenerator().selectionChanged()
        if let url = URL(string: "shortcuts://") { openURL(url) }
    }

    // MARK: - 3. Ritual  (PART C)

    private var ritualSection: some View {
        LLSection(title: "Pre-Session Ritual") {
            LLRow(symbol: "list.bullet.rectangle", title: "Edit Ritual", detail: "Not configured", showsChevron: true) {}
        }
    }

    // MARK: - 4. Regimens  (PART C)

    private var regimenSection: some View {
        LLSection(title: "Training Regimens") {
            LLRow(symbol: "calendar.badge.clock", title: "Current Program", detail: "None", showsChevron: true) {}
        }
    }

    // MARK: - 5. Watch  (PART B)

    private var watchSection: some View {
        LLSection(title: "Apple Watch") {
            LLRow(symbol: "applewatch", title: "Connection", detail: watchStatus, showsChevron: false) {}
            LLDivider()
            toggleRow(symbol: "hand.raised.fill", title: "Grip Tension Alerts",
                      detail: "Requires a paired Apple Watch",
                      isOn: $settings.antiGripPressure)
        }
    }

    private var watchStatus: String {
        if !watch.isPaired { return "Not paired" }
        if !watch.isWatchAppInstalled { return "Paired — Watch app not installed" }
        return watch.isReachable ? "Connected" : "Paired — not reachable"
    }

    // MARK: - Reusable controls

    /// A row whose whole surface opens a menu picker, with the current choice
    /// shown as the detail line.
    private func menuRow<T: Hashable>(
        symbol: String,
        title: String,
        selection: Binding<T>,
        options: [T],
        label: @escaping (T) -> String
    ) -> some View {
        Menu {
            ForEach(options, id: \.self) { option in
                Button {
                    selection.wrappedValue = option
                    UISelectionFeedbackGenerator().selectionChanged()
                } label: {
                    if option == selection.wrappedValue {
                        Label(label(option), systemImage: "checkmark")
                    } else {
                        Text(label(option))
                    }
                }
            }
        } label: {
            LLRow(symbol: symbol, title: title, detail: label(selection.wrappedValue)) {
                Image(systemName: "chevron.up.chevron.down")
                    .font(.system(size: 11, weight: .bold))
                    .foregroundStyle(LLColor.textFaint)
            }
        }
        .buttonStyle(.plain)
    }

    /// A full-width labelled slider row (0…100%), padded to match LLRow.
    private func sliderRow(
        symbol: String,
        title: String,
        value: Binding<Double>
    ) -> some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack(spacing: 12) {
                Image(systemName: symbol)
                    .font(.system(size: 15, weight: .semibold))
                    .foregroundStyle(LLColor.text)
                    .frame(width: 22, alignment: .center)
                Text(title)
                    .llLabelStyle(13, color: LLColor.text)
                Spacer(minLength: 8)
                Text("\(Int((value.wrappedValue * 100).rounded()))%")
                    .font(LLFont.mono(11))
                    .foregroundStyle(LLColor.textDim)
            }
            Slider(value: value, in: 0...1)
                .tint(LLColor.primary)
                .padding(.leading, 34)
        }
        .padding(.horizontal, LLMetrics.gutter)
        .padding(.vertical, LLMetrics.rowVerticalPadding)
    }

    /// A row with a trailing toggle bound straight to the settings store.
    private func toggleRow(
        symbol: String,
        title: String,
        detail: String? = nil,
        isOn: Binding<Bool>
    ) -> some View {
        LLRow(symbol: symbol, title: title, detail: detail) {
            Toggle("", isOn: isOn)
                .labelsHidden()
                .tint(LLColor.primary)
        }
    }

    // MARK: - 7. Partner Sync  (PART C)

    private var partnerSyncSection: some View {
        LLSection(title: "Partner Sync", subtitle: "Local only. Nothing is transmitted.") {
            LLRow(symbol: "person.2.fill", title: "Send Encouragement", showsChevron: true) {}
        }
    }

    // MARK: - 6. Training Gear  (PART E-1)

    private var trainingGearSection: some View {
        LLSection(title: "Training Gear", subtitle: "Affiliate links. Commission rates shown.") {
            NavigationLink {
                TrainingGearView()
            } label: {
                LLRow(
                    symbol: "shippingbox.fill",
                    title: "Browse Gear",
                    detail: "\(TrainingGearCatalog.items.count) items — topical, devices, supplements",
                    tint: LLColor.dataBlue,
                    showsChevron: true
                )
            }
            .buttonStyle(.plain)
        }
    }

    // MARK: - 8. Privacy  (PART E-2)

    private var privacySection: some View {
        LLSection(title: "Privacy") {
            VStack(alignment: .leading, spacing: 8) {
                HStack(spacing: 8) {
                    Image(systemName: "lock.shield.fill")
                        .font(.system(size: 15, weight: .semibold))
                        .foregroundStyle(LLColor.secondary)
                    Text("Your data never leaves this device")
                        .llLabelStyle(12, color: LLColor.secondary)
                }
                Text("No server. No account. No analytics. The database is encrypted while the phone is locked and is excluded from iCloud backups.")
                    .font(LLFont.mono(10))
                    .foregroundStyle(LLColor.textFaint)
                    .lineSpacing(3)
                    .fixedSize(horizontal: false, vertical: true)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, LLMetrics.gutter)
            .padding(.vertical, 16)

            LLDivider()

            ForEach(Array(DataExportManager.Format.allCases.enumerated()), id: \.element) { index, format in
                if index > 0 { LLDivider() }
                LLRow(
                    symbol: format.symbol,
                    title: "Export as \(format.label)",
                    detail: format.blurb,
                    showsChevron: false,
                    action: { export(format) }
                ) {
                    if isExporting {
                        ProgressView().tint(LLColor.textDim)
                    } else {
                        Image(systemName: "square.and.arrow.up")
                            .font(.system(size: 13, weight: .semibold))
                            .foregroundStyle(LLColor.textDim)
                    }
                }
                .disabled(isExporting)
            }

            LLDivider()

            VStack(spacing: 10) {
                LLDestructiveButton(title: "Delete All Data", symbol: "trash.fill") {
                    UINotificationFeedbackGenerator().notificationOccurred(.warning)
                    showWipeConfirmation = true
                }
                Text("Destroys the local database. Your purchase is kept.")
                    .font(LLFont.mono(9))
                    .foregroundStyle(LLColor.textFaint)
            }
            .padding(.horizontal, LLMetrics.gutter)
            .padding(.vertical, 16)
        }
    }

    // MARK: - 9. About

    private var aboutSection: some View {
        LLSection(title: "About") {
            LLRow(symbol: "number", title: "Version", detail: Self.versionString)
            LLDivider()
            VStack(alignment: .leading, spacing: 6) {
                Text("Disclaimer")
                    .llLabelStyle(11, color: LLColor.textDim)
                Text("Educational purposes. Not medical advice. Persistent difficulty with ejaculatory control is treatable — a urologist or a sex therapist can help, and this app is not a substitute for either.")
                    .font(LLFont.mono(10))
                    .foregroundStyle(LLColor.textFaint)
                    .lineSpacing(3)
                    .fixedSize(horizontal: false, vertical: true)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, LLMetrics.gutter)
            .padding(.vertical, 16)
        }
        .padding(.bottom, 60)
    }

    private static var versionString: String {
        let info = Bundle.main.infoDictionary
        let short = info?["CFBundleShortVersionString"] as? String ?? "—"
        let build = info?["CFBundleVersion"] as? String ?? "—"
        return "\(short) (\(build))"
    }

    // MARK: - Actions

    private func export(_ format: DataExportManager.Format) {
        guard !isExporting else { return }
        isExporting = true
        UIImpactFeedbackGenerator(style: .rigid).impactOccurred()

        // The fetch and serialise run off the main thread; a heavy history would
        // otherwise stall the scroll view mid-tap.
        let container = PersistenceController.shared.container
        container.performBackgroundTask { backgroundContext in
            do {
                let url = try DataExportManager.writeExport(format: format, context: backgroundContext)
                DispatchQueue.main.async {
                    isExporting = false
                    exportURL = IdentifiedURL(url: url)
                }
            } catch {
                DispatchQueue.main.async {
                    isExporting = false
                    exportError = error.localizedDescription
                }
            }
        }
    }

    private func performWipe() {
        do {
            try PersistenceController.shared.wipeAllData()
            UINotificationFeedbackGenerator().notificationOccurred(.success)
            wipeSucceeded = true
        } catch {
            UINotificationFeedbackGenerator().notificationOccurred(.error)
            wipeError = error.localizedDescription
        }
    }
}

#Preview {
    SettingsView()
        .environment(\.managedObjectContext, PersistenceController.shared.container.viewContext)
}
