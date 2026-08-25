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
                    ritualSection
                    regimenSection
                    watchSection
                    partnerSyncSection

                    // 6 — PART E-1
                    trainingGearSection

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
            LLRow(symbol: "waveform", title: "Persona", detail: "Drill Sergeant", showsChevron: true) {}
            LLDivider()
            LLRow(symbol: "speaker.wave.2.fill", title: "Voice", detail: "On", showsChevron: true) {}
            LLDivider()
            LLRow(symbol: "text.quote", title: "Custom Phrases", detail: "0 of 10", showsChevron: true) {}
            LLDivider()
            LLRow(symbol: "figure.wave", title: "Angel Skin", detail: "Default", showsChevron: true) {}
        }
    }

    // MARK: - 2. Session defaults  (PART A / C)

    private var sessionDefaultsSection: some View {
        LLSection(title: "Session Defaults") {
            LLRow(symbol: "square.grid.2x2.fill", title: "Default Mode", detail: "Free Hold", showsChevron: true) {}
            LLDivider()
            LLRow(symbol: "iphone.radiowaves.left.and.right", title: "Haptic Intensity", detail: "Medium", showsChevron: true) {}
            LLDivider()
            LLRow(symbol: "waveform.path", title: "Binaural Beats", detail: "Off", showsChevron: true) {}
            LLDivider()
            LLRow(symbol: "speaker.slash.fill", title: "Silent Mode", detail: "Off", showsChevron: true) {}
            LLDivider()
            LLRow(symbol: "moon.fill", title: "Focus Mode", detail: "Auto-enable during sessions", showsChevron: true) {}
            LLDivider()
            LLRow(symbol: "bell.fill", title: "Reminders", detail: "Off", showsChevron: true) {}
        }
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
            LLRow(symbol: "applewatch", title: "Connection", detail: "Not paired", showsChevron: true) {}
            LLDivider()
            LLRow(symbol: "hand.raised.fill", title: "Grip Tension Alerts", detail: "Requires watch", showsChevron: true) {}
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
