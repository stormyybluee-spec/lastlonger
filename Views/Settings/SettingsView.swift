//
//  SettingsView.swift
//  LAST LONGER
//
//  PART E - Settings container.
//
//  Settings deliberately does NOT duplicate the per-session controls. Persona,
//  voice, volume, coach interrupt, distraction questions, default mode and the
//  duration cap all live in the Mode Selection card (SessionConfigSheet), which
//  is where they are actually chosen. What remains here is: the two reference
//  guides, plain-language explanations of the session controls, the settings
//  that exist nowhere else (custom phrases, angel skin, reminders, watch),
//  Siri, privacy and about.
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

    // Info sheets (the "what does this do" explanations)
    @State private var infoTopic: SettingsInfoTopic?
    @State private var showingSiriHelp = false
    @State private var showingWatchInstallHelp = false
    @State private var showingWatchGuide = false

    // Wipe
    @State private var showWipeConfirmation = false
    @State private var showWipeFinalWarning = false
    @State private var wipeError: String?
    @State private var wipeSucceeded = false

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 0) {

                    // Grouped so the list stays under the 10-child
                    // ViewBuilder limit as sections are added.
                    Group {
                        // Reference first: what the gestures and words mean.
                        angelGuideSection
                        modeFunctionsGuideSection

                        // Explanations only - these are set per session in
                        // the Mode Selection card, not here.
                        sessionInfoSection
                    }

                    Group {
                        // Settings that exist nowhere else.
                        personalisationSection
                        remindersSection
                        siriSection
                        watchSection
                    }

                    // Affiliate "Training Gear" links are CUT for v1 per the
                    // App Store compliance checklist; the section view still
                    // exists but is not reachable.
                    // trainingGearSection

                    privacySection
                    aboutSection
                }
                .padding(.top, 8)
            }
            .llScreen()
            .navigationTitle("Settings")
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(LLColor.background, for: .navigationBar)
        }
        .sheet(item: $infoTopic) { topic in
            SettingsInfoSheet(topic: topic)
                .presentationDetents([.height(300)])
        }
        .sheet(isPresented: $showingSiriHelp) {
            SiriInstructionsSheet(onOpenShortcuts: openShortcuts)
                .presentationDetents([.medium, .large])
        }
        .sheet(isPresented: $showingWatchGuide) {
            WatchGuideSheet()
                .presentationDetents([.medium])
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
            Text("Sessions, streaks, badges, regimens, rituals and custom phrases. There is no backup - nothing is stored off this phone.")
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
        .onAppear { watch.activate() }
        .alert("Install on Apple Watch", isPresented: $showingWatchInstallHelp) {
            Button("OK") {}
        } message: {
            Text("Open the Apple Watch app on your iPhone, scroll to LAST LONGER under Available Apps, and tap Install. iOS does not allow an app to install its Watch app for you.")
        }
    }

    // MARK: - Guides

    private var angelGuideSection: some View {
        LLSection(title: "Tapping Angel Guide",
                  subtitle: "Every gesture during a session happens on the Angel.") {
            guideRow("hand.tap.fill", "Tap once",
                     "Logs a Hold - you've reached the threshold.")
            LLDivider()
            guideRow("hand.tap", "Tap twice",
                     "Logs a Recover - you've backed off.")
            LLDivider()
            guideRow("exclamationmark.triangle.fill", "Triple tap",
                     "Emergency Protocol - stops you from finishing.",
                     tint: LLColor.primary)
            LLDivider()
            guideRow("stop.circle.fill", "Hold 2 seconds",
                     "Ends the session.")
        }
    }

    private var modeFunctionsGuideSection: some View {
        LLSection(title: "Mode Functions Guide",
                  subtitle: "What the words on the session screen mean.") {
            guideRow("flame.fill", "Hold",
                     "You've reached the edge. Log it.", tint: LLColor.primary)
            LLDivider()
            guideRow("wind", "Recover",
                     "You've backed off. Log it.", tint: LLColor.secondary)
            LLDivider()
            guideRow("exclamationmark.triangle.fill", "Emergency",
                     "Urgent stop. Prevents finishing.", tint: LLColor.primary)
            LLDivider()
            guideRow("gauge.with.needle", "Threshold",
                     "The point just before losing control.")
            LLDivider()
            guideRow("moon.zzz.fill", "Cooldown",
                     "Rest period after a Recover.", tint: LLColor.secondary)
        }
    }

    /// Read-only reference row: icon, term, meaning. No control, no action.
    private func guideRow(_ symbol: String,
                          _ title: String,
                          _ detail: String,
                          tint: Color = LLColor.text) -> some View {
        LLRow(symbol: symbol, title: title, detail: detail, tint: tint)
    }

    // MARK: - Session controls (explanations only)

    private var sessionInfoSection: some View {
        LLSection(title: "Session Controls",
                  subtitle: "Chosen per session in the mode card. Tap any row for what it does.") {
            infoRow(.hapticSensitivity)
            LLDivider()
            infoRow(.binauralBeats)
            LLDivider()
            infoRow(.tempoLock)
            LLDivider()
            infoRow(.silentMode)
            LLDivider()
            infoRow(.focusMode)
        }
    }

    private func infoRow(_ topic: SettingsInfoTopic) -> some View {
        LLRow(symbol: topic.symbol,
              title: topic.title,
              showsChevron: false,
              action: {
                  UISelectionFeedbackGenerator().selectionChanged()
                  infoTopic = topic
              }) {
            Image(systemName: "info.circle")
                .font(.system(size: 15, weight: .semibold))
                .foregroundStyle(LLColor.dataBlue)
        }
        .accessibilityHint("Explains what \(topic.title) does.")
    }

    // MARK: - Personalisation (not available in the mode card)

    // The Angel Skin selector lived here and is removed: the skins did not
    // change anything on screen yet. `AppSettings.angelSkin` and the AngelSkin
    // unlock rules are left intact for when the skins are real.
    private var personalisationSection: some View {
        LLSection(title: "Personalisation") {
            NavigationLink {
                CustomPhrasesView(settings: settings)
            } label: {
                LLRow(symbol: "text.quote", title: "Custom Phrases",
                      detail: "\(settings.customPhrases.count) of 10 used",
                      showsChevron: true)
            }
            .buttonStyle(.plain)
        }
    }

    // MARK: - Reminders

    private var remindersSection: some View {
        LLSection(title: "Reminders",
                  subtitle: "Local notifications only. Nothing leaves this device.") {
            menuRow(symbol: "bell.fill", title: "Milestone Notifications",
                    selection: $settings.milestoneFrequency,
                    options: MilestoneFrequency.allCases,
                    label: { $0.title })
        }
    }

    // MARK: - Siri

    private var siriSection: some View {
        LLSection(title: "Siri & Shortcuts", subtitle: "Start a session hands-free.") {
            LLRow(symbol: "text.book.closed.fill", title: "How to set up Siri",
                  detail: "Step-by-step instructions",
                  showsChevron: true,
                  action: {
                      UISelectionFeedbackGenerator().selectionChanged()
                      showingSiriHelp = true
                  })
            LLDivider()
            LLRow(symbol: "arrow.up.forward.app.fill", title: "Open Shortcuts App",
                  detail: "Add or edit “Start a session”",
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

    // MARK: - 5. Watch  (PART B)

    private var watchSection: some View {
        LLSection(title: "Apple Watch") {
            LLRow(symbol: "applewatch", title: "Connection", detail: watchStatus) {
                Circle()
                    .fill(watchStatusColor)
                    .frame(width: 9, height: 9)
            }

            // Only when a watch is paired but the companion app is missing.
            if watch.isPaired && !watch.isWatchAppInstalled {
                LLDivider()
                LLRow(symbol: "square.and.arrow.down.fill",
                      title: "Install on Apple Watch",
                      detail: "Get the watch companion to control sessions from your wrist",
                      tint: LLColor.secondary,
                      showsChevron: true,
                      action: openWatchAppInstall)
            }

            LLDivider()
            toggleRow(symbol: "hand.raised.fill", title: "Anti-Death Grip",
                      detail: "Buzzes your wrist when you grip too hard. Requires a paired Apple Watch.",
                      isOn: $settings.antiGripPressure)

            LLDivider()
            LLRow(symbol: "applewatch.watchface", title: "Apple Watch Guide",
                  detail: "How the watch buttons and readouts work",
                  showsChevron: true,
                  action: {
                      UISelectionFeedbackGenerator().selectionChanged()
                      showingWatchGuide = true
                  })
        }
    }

    /// Connection status - exactly the three states requested, plus a benign
    /// "Connected" whether or not the watch is reachable this instant
    /// (reachability flaps every time the watch screen sleeps, so surfacing it
    /// as a status would read as broken when it is not).
    private var watchStatus: String {
        if !watch.isPaired { return "Not Paired" }
        if !watch.isWatchAppInstalled { return "Not Installed" }
        return "Connected"
    }

    private var watchStatusColor: Color {
        if !watch.isPaired { return LLColor.textFaint }
        if !watch.isWatchAppInstalled { return LLColor.warning }
        return LLColor.secondary
    }

    /// There is no public API to open the Watch app or install a watch app
    /// programmatically, so the honest action is clear instructions.
    private func openWatchAppInstall() {
        UISelectionFeedbackGenerator().selectionChanged()
        showingWatchInstallHelp = true
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

    // MARK: - 6. Training Gear  (PART E-1)

    private var trainingGearSection: some View {
        LLSection(title: "Training Gear", subtitle: "Affiliate links. Commission rates shown.") {
            NavigationLink {
                TrainingGearView()
            } label: {
                LLRow(
                    symbol: "shippingbox.fill",
                    title: "Browse Gear",
                    detail: "\(TrainingGearCatalog.items.count) items - topical, devices, supplements",
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

            // Legal links. App Review requires a reachable Privacy Policy, and a
            // Terms of Use link next to it for the subscriptions. Both open in
            // the browser; the chevron signals they leave the app.
            LLRow(symbol: "doc.text.fill", title: "Privacy Policy",
                  detail: "How your data is handled. Opens in browser.",
                  showsChevron: true,
                  action: { openLegal(LegalLink.privacy) })

            LLDivider()

            LLRow(symbol: "doc.text", title: "Terms of Use",
                  detail: "Subscription and usage terms. Opens in browser.",
                  showsChevron: true,
                  action: { openLegal(LegalLink.terms) })

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
                Text("Educational purposes. Not medical advice. Persistent difficulty with ejaculatory control is treatable. A urologist or a sex therapist can help, and this app is not a substitute for either.")
                    .font(LLFont.mono(10))
                    .foregroundStyle(LLColor.textFaint)
                    .lineSpacing(3)
                    .fixedSize(horizontal: false, vertical: true)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, LLMetrics.gutter)
            .padding(.vertical, 16)
        }
    }

    private static var versionString: String {
        let info = Bundle.main.infoDictionary
        let short = info?["CFBundleShortVersionString"] as? String ?? "-"
        let build = info?["CFBundleVersion"] as? String ?? "-"
        return "\(short) (\(build))"
    }

    // MARK: - Legal links

    /// The two hosted legal pages. These are PLACEHOLDER URLs - swap the host
    /// for the real site before shipping (App Review checks the Privacy Policy
    /// link resolves). Kept here so both live in one place.
    private enum LegalLink {
        static let privacy = "https://your-site.netlify.app/privacy"
        static let terms   = "https://your-site.netlify.app/terms"
    }

    private func openLegal(_ urlString: String) {
        UISelectionFeedbackGenerator().selectionChanged()
        guard let url = URL(string: urlString) else { return }
        openURL(url)
    }

    // MARK: - Actions

    private func export(_ format: DataExportManager.Format) {
        guard !isExporting else { return }
        isExporting = true
        UIImpactFeedbackGenerator(style: .rigid).impactOccurred()

        // Gather the real, persisted sessions on the main actor (Repository is
        // MainActor-isolated), then serialise + write off the main thread so a
        // heavy history doesn't stall the scroll view mid-tap.
        let records = Repository.shared.recentSessions.map(ExportedSessionRecord.init(from:))
        Task.detached {
            do {
                let url = try DataExportManager.writeExport(format: format, records: records)
                await MainActor.run {
                    isExporting = false
                    exportURL = IdentifiedURL(url: url)
                }
            } catch {
                await MainActor.run {
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

// MARK: - Info topics

/// The five session controls Settings explains rather than duplicates. Each is
/// actually chosen per session in the Mode Selection card; this is the
/// plain-language description behind the info button.
enum SettingsInfoTopic: String, Identifiable, CaseIterable {
    case hapticSensitivity
    case binauralBeats
    case tempoLock
    case silentMode
    case focusMode

    var id: String { rawValue }

    var title: String {
        switch self {
        case .hapticSensitivity: return "Haptic Sensitivity"
        case .binauralBeats:     return "Binaural Beats"
        case .tempoLock:         return "Tempo Lock"
        case .silentMode:        return "Silent Mode"
        case .focusMode:         return "Focus Mode"
        }
    }

    var symbol: String {
        switch self {
        case .hapticSensitivity: return "iphone.radiowaves.left.and.right"
        case .binauralBeats:     return "waveform.path"
        case .tempoLock:         return "metronome.fill"
        case .silentMode:        return "speaker.slash.fill"
        case .focusMode:         return "moon.fill"
        }
    }

    var explanation: String {
        switch self {
        case .hapticSensitivity:
            return "Controls the intensity of haptic feedback during sessions. Low = subtle, High = strong."
        case .binauralBeats:
            return "Plays binaural frequencies to help with focus and relaxation. Theta (6Hz), Alpha (10Hz), Low Beta (14Hz). Needs headphones - through a speaker the two tones mix in the air and the effect is lost."
        case .tempoLock:
            return "Locks onto your stroking rhythm and gradually slows it down to build control."
        case .silentMode:
            return "Replaces all voice coaching with haptic patterns only. Great for quiet environments."
        case .focusMode:
            return "Blocks notifications during sessions to keep you focused."
        }
    }
}

// MARK: - Info sheet

/// Bottom sheet behind each info button. Dark-only, matching the rest of the app.
struct SettingsInfoSheet: View {

    let topic: SettingsInfoTopic
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        ZStack {
            LLColor.background.ignoresSafeArea()

            VStack(alignment: .leading, spacing: 16) {
                HStack(spacing: 10) {
                    Image(systemName: topic.symbol)
                        .font(.system(size: 17, weight: .semibold))
                        .foregroundStyle(LLColor.dataBlue)
                    Text(topic.title)
                        .llLabelStyle(14, color: LLColor.text)
                }

                Text(topic.explanation)
                    .font(LLFont.mono(12))
                    .foregroundStyle(LLColor.textDim)
                    .lineSpacing(4)
                    .fixedSize(horizontal: false, vertical: true)

                Text("Set this per session in the mode card, before you start.")
                    .font(LLFont.mono(10))
                    .foregroundStyle(LLColor.textFaint)
                    .fixedSize(horizontal: false, vertical: true)

                Spacer(minLength: 0)

                Button {
                    UIImpactFeedbackGenerator(style: .rigid).impactOccurred()
                    dismiss()
                } label: {
                    Text("Got it")
                        .llLabelStyle(13, color: LLColor.background)
                        .frame(maxWidth: .infinity)
                        .frame(height: LLMetrics.minTapTarget)
                        .background(LLColor.text)
                        .clipShape(RoundedRectangle(cornerRadius: LLMetrics.buttonRadius))
                }
                .buttonStyle(.plain)
            }
            .padding(.horizontal, LLMetrics.gutter)
            .padding(.top, 24)
            .padding(.bottom, 20)
        }
        .preferredColorScheme(.dark)
    }
}

// MARK: - Siri instructions

/// The voice commands the app registers: Start a session, plus the four in-
/// session commands (Log a hold / recover, Emergency, End). Each is a real
/// AppIntent (see FocusModeController), so these phrases actually work and also
/// show up as actions in the Shortcuts app for custom phrases.
struct SiriInstructionsSheet: View {

    let onOpenShortcuts: () -> Void
    @Environment(\.dismiss) private var dismiss

    /// The in-session voice commands, exactly as the app registers them. Each
    /// also appears as an action in the Shortcuts app, where a shorter custom
    /// phrase (e.g. just "log hold") can be assigned.
    private let commands: [(phrase: String, does: String)] = [
        ("“Hey Siri, log a hold in LAST LONGER”",     "Logs a Hold"),
        ("“Hey Siri, log a recover in LAST LONGER”",  "Logs a Recover"),
        ("“Hey Siri, emergency in LAST LONGER”",      "Triggers Emergency Protocol"),
        ("“Hey Siri, end session in LAST LONGER”",    "Ends the session")
    ]

    var body: some View {
        ZStack {
            LLColor.background.ignoresSafeArea()

            ScrollView {
                VStack(alignment: .leading, spacing: 18) {
                    HStack(spacing: 10) {
                        Image(systemName: "mic.fill")
                            .font(.system(size: 17, weight: .semibold))
                            .foregroundStyle(LLColor.dataBlue)
                        Text("Set up Siri")
                            .llLabelStyle(14, color: LLColor.text)
                    }

                    Text("Control a running session by voice, with the phone away. Say:")
                        .font(LLFont.mono(11))
                        .foregroundStyle(LLColor.textDim)
                        .fixedSize(horizontal: false, vertical: true)

                    VStack(alignment: .leading, spacing: 12) {
                        ForEach(commands, id: \.phrase) { command in
                            VStack(alignment: .leading, spacing: 3) {
                                Text(command.phrase)
                                    .font(LLFont.mono(12, weight: .bold))
                                    .foregroundStyle(LLColor.text)
                                    .fixedSize(horizontal: false, vertical: true)
                                Text(command.does)
                                    .font(LLFont.mono(10))
                                    .foregroundStyle(LLColor.textFaint)
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.vertical, 8)
                            .padding(.horizontal, 12)
                            .background(LLColor.card)
                            .clipShape(RoundedRectangle(cornerRadius: LLMetrics.buttonRadius))
                        }
                    }

                    Text("These commands only do something while a session is running. To shorten a phrase, open the Shortcuts app, find the action under LAST LONGER, and set your own - like just “log hold”.")
                        .font(LLFont.mono(10))
                        .foregroundStyle(LLColor.textFaint)
                        .lineSpacing(3)
                        .fixedSize(horizontal: false, vertical: true)

                    Button {
                        UIImpactFeedbackGenerator(style: .rigid).impactOccurred()
                        dismiss()
                        onOpenShortcuts()
                    } label: {
                        Text("Open Shortcuts App")
                            .llLabelStyle(13, color: LLColor.background)
                            .frame(maxWidth: .infinity)
                            .frame(height: LLMetrics.minTapTarget)
                            .background(LLColor.text)
                            .clipShape(RoundedRectangle(cornerRadius: LLMetrics.buttonRadius))
                    }
                    .buttonStyle(.plain)
                }
                .padding(.horizontal, LLMetrics.gutter)
                .padding(.vertical, 24)
            }
        }
        .preferredColorScheme(.dark)
    }
}

// MARK: - Apple Watch guide

/// Full pop-up reference for the watch companion: what each button does and what
/// each readout shows during a session. Dark-only, matching the rest of the app.
/// Reachable from the Apple Watch section, under the Anti-Death Grip toggle.
struct WatchGuideSheet: View {

    @Environment(\.dismiss) private var dismiss

    /// One row per control on the watch face. Symbol, title, plain-language use.
    private let features: [(symbol: String, title: String, detail: String)] = [
        ("flame.fill", "HOLD Button",
         "Tap to log a Hold when you reach the threshold."),
        ("wind", "RECOVER Button",
         "Tap to log a Recover when you have backed off."),
        ("exclamationmark.triangle.fill", "EMERGENCY Button",
         "Tap to trigger the Emergency Protocol. Stops you from finishing."),
        ("stop.circle.fill", "END Button",
         "Tap to end the session."),
        ("heart.fill", "Heart Rate Display",
         "Shows your heart rate during the session."),
        ("number.circle.fill", "Hold Streak Counter",
         "Shows your current consecutive holds."),
        ("hand.raised.fill", "Anti-Death Grip",
         "Buzzes your wrist when grip is too tight. Enable in Settings above.")
    ]

    var body: some View {
        ZStack {
            LLColor.background.ignoresSafeArea()

            VStack(spacing: 0) {
                ScrollView {
                    VStack(alignment: .leading, spacing: 18) {
                        HStack(spacing: 10) {
                            Image(systemName: "applewatch")
                                .font(.system(size: 17, weight: .semibold))
                                .foregroundStyle(LLColor.dataBlue)
                            Text("Apple Watch Guide")
                                .llLabelStyle(14, color: LLColor.text)
                        }

                        Text("Learn how to use your Apple Watch with LAST LONGER during sessions.")
                            .font(LLFont.mono(11))
                            .foregroundStyle(LLColor.textDim)
                            .lineSpacing(3)
                            .fixedSize(horizontal: false, vertical: true)

                        Rectangle()
                            .fill(LLColor.hairline)
                            .frame(height: 1)

                        VStack(alignment: .leading, spacing: 16) {
                            ForEach(features, id: \.title) { feature in
                                featureRow(feature)
                            }
                        }

                        Rectangle()
                            .fill(LLColor.hairline)
                            .frame(height: 1)
                    }
                    .padding(.horizontal, LLMetrics.gutter)
                    .padding(.top, 24)
                    .padding(.bottom, 16)
                }

                Button {
                    UIImpactFeedbackGenerator(style: .rigid).impactOccurred()
                    dismiss()
                } label: {
                    Text("Got it")
                        .llLabelStyle(13, color: LLColor.background)
                        .frame(maxWidth: .infinity)
                        .frame(height: LLMetrics.minTapTarget)
                        .background(LLColor.text)
                        .clipShape(RoundedRectangle(cornerRadius: LLMetrics.buttonRadius))
                }
                .buttonStyle(.plain)
                .padding(.horizontal, LLMetrics.gutter)
                .padding(.bottom, 20)
            }
        }
        .preferredColorScheme(.dark)
    }

    private func featureRow(_ feature: (symbol: String, title: String, detail: String)) -> some View {
        HStack(alignment: .top, spacing: 12) {
            Image(systemName: feature.symbol)
                .font(.system(size: 15, weight: .semibold))
                .foregroundStyle(LLColor.dataBlue)
                .frame(width: 22, alignment: .center)

            VStack(alignment: .leading, spacing: 3) {
                Text(feature.title)
                    .llLabelStyle(12, color: LLColor.text)
                Text(feature.detail)
                    .font(LLFont.mono(10))
                    .foregroundStyle(LLColor.textFaint)
                    .fixedSize(horizontal: false, vertical: true)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .accessibilityElement(children: .combine)
    }
}

#Preview {
    SettingsView()
        .environment(\.managedObjectContext, PersistenceController.shared.container.viewContext)
}
