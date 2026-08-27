//
//  DataExportManager.swift
//  LAST LONGER
//
//  PART E-2 — DATA EXPORT (CSV / JSON)
//
//  Reads every training session out of the local CoreData store, serialises it,
//  writes to a protected temporary file, and hands it to the share sheet.
//
//  Nothing here touches the network. Nothing here is logged. The export is the
//  only path by which session data can leave the device, and the user drives it.
//

import Foundation
import CoreData
import SwiftUI
import UIKit

// MARK: - Schema contract
//
// The exporter reads the `TrainingSession` entity created in Part A. Attribute
// names are listed here as the single source of truth. Every read is guarded
// against a missing attribute, so if Part A named something differently the
// column comes out empty instead of throwing an ObjC exception and crashing.
//
// Update `SessionAttribute` if the model changes — nowhere else.

enum SessionAttribute {
    static let entityName = "TrainingSession"

    static let id = "id"
    static let startedAt = "startedAt"
    static let endedAt = "endedAt"
    static let durationSeconds = "durationSeconds"
    static let primaryMode = "primaryMode"
    static let secondaryMode = "secondaryMode"
    static let holdCount = "holdCount"              // "edges"
    static let pullbackCount = "pullbackCount"
    static let pullbackSuccessRate = "pullbackSuccessRate"
    static let bestHoldStreak = "bestHoldStreak"
    static let emergencyPullbacks = "emergencyPullbacks"
    static let staminaScoreAfter = "staminaScoreAfter"
    static let staminaDelta = "staminaDelta"
    static let didFinish = "didFinish"
    static let coachPersona = "coachPersona"
    static let silentMode = "silentMode"
    static let watchVerified = "watchVerified"
    static let averageHeartRate = "averageHeartRate"
    static let stackTags = "stackTags"              // Transformable [String] or comma-joined String
    static let regimenDay = "regimenDay"
}

// MARK: - DTO

/// Flat, Codable representation of one session. This is the export contract —
/// changing a key here changes the CSV header and the JSON shape, so treat it
/// as a public interface once users have exports in the wild.
struct ExportedSessionRecord: Codable {
    let id: String
    let startedAt: Date?
    let endedAt: Date?
    let durationSeconds: Int
    let primaryMode: String
    let secondaryMode: String
    let holdCount: Int
    let pullbackCount: Int
    let pullbackSuccessRate: Double
    let bestHoldStreak: Int
    let emergencyPullbacks: Int
    let staminaScoreAfter: Int
    let staminaDelta: Int
    let didFinish: Bool
    let coachPersona: String
    let silentMode: Bool
    let watchVerified: Bool
    let averageHeartRate: Int
    let stackTags: [String]
    let regimenDay: Int

    static let csvHeader = [
        "id", "started_at", "ended_at", "duration_seconds",
        "primary_mode", "secondary_mode",
        "hold_count", "pullback_count", "pullback_success_rate", "best_hold_streak",
        "emergency_pullbacks",
        "stamina_score_after", "stamina_delta",
        "did_finish", "coach_persona", "silent_mode", "watch_verified",
        "average_heart_rate", "stack_tags", "regimen_day"
    ]

    func csvRow(dateFormatter: ISO8601DateFormatter) -> [String] {
        [
            id,
            startedAt.map(dateFormatter.string(from:)) ?? "",
            endedAt.map(dateFormatter.string(from:)) ?? "",
            String(durationSeconds),
            primaryMode,
            secondaryMode,
            String(holdCount),
            String(pullbackCount),
            String(format: "%.4f", pullbackSuccessRate),
            String(bestHoldStreak),
            String(emergencyPullbacks),
            String(staminaScoreAfter),
            String(staminaDelta),
            didFinish ? "true" : "false",
            coachPersona,
            silentMode ? "true" : "false",
            watchVerified ? "true" : "false",
            String(averageHeartRate),
            stackTags.joined(separator: "|"),
            String(regimenDay)
        ]
    }
}

extension ExportedSessionRecord {
    /// Build directly from the domain `SessionRecord` the app actually persists
    /// (via Repository / CDSession). The old path fetched a `TrainingSession`
    /// entity that never shipped, so every export threw `entityNotFound`; this
    /// reads the real, populated data instead.
    ///
    /// Fields the domain record does not carry map to zeros: there is no per-
    /// session stamina snapshot or average heart rate in `SessionRecord`.
    init(from r: SessionRecord) {
        let successful = r.pullbacks + r.emergencyPullbacks
        self.init(
            id: r.id.uuidString,
            startedAt: r.startedAt,
            endedAt: r.startedAt.addingTimeInterval(r.duration),
            durationSeconds: Int(r.duration),
            primaryMode: r.primaryMode.name,
            secondaryMode: r.secondaryMode?.name ?? "",
            holdCount: r.thresholds,
            pullbackCount: r.pullbacks,
            pullbackSuccessRate: r.thresholds > 0
                ? min(1.0, Double(successful) / Double(r.thresholds)) : 0,
            bestHoldStreak: r.bestStreak,
            emergencyPullbacks: r.emergencyPullbacks,
            staminaScoreAfter: 0,
            staminaDelta: 0,
            didFinish: r.finished,
            coachPersona: r.persona.rawValue,
            silentMode: r.silentMode,
            watchVerified: r.watchVerified,
            averageHeartRate: 0,
            stackTags: r.tagIDs,
            regimenDay: 0
        )
    }
}

/// Wrapper so the JSON file self-describes rather than being a bare array.
struct SessionExportEnvelope: Codable {
    let schemaVersion: Int
    let exportedAt: Date
    let sessionCount: Int
    let sessions: [ExportedSessionRecord]
}

// MARK: - Errors

enum DataExportError: LocalizedError {
    case entityNotFound(String)
    case nothingToExport
    case encodingFailed

    var errorDescription: String? {
        switch self {
        case .entityNotFound(let name):
            return "The \(name) entity is missing from the data model. Check the CoreData schema."
        case .nothingToExport:
            return "No sessions recorded yet. Train once, then export."
        case .encodingFailed:
            return "The export could not be written. Free up storage and try again."
        }
    }
}

// MARK: - Manager

enum DataExportManager {

    enum Format: String, CaseIterable {
        case csv, json

        var fileExtension: String { rawValue }
        var label: String { rawValue.uppercased() }
        var symbol: String { self == .csv ? "tablecells" : "curlybraces" }
        var blurb: String {
            switch self {
            case .csv: return "Spreadsheet. One row per session."
            case .json: return "Structured. Full fidelity, nested tags."
            }
        }
    }

    static let schemaVersion = 1

    private static let iso: ISO8601DateFormatter = {
        let f = ISO8601DateFormatter()
        f.formatOptions = [.withInternetDateTime]
        return f
    }()

    // MARK: Fetch

    static func fetchSessions(in context: NSManagedObjectContext) throws -> [ExportedSessionRecord] {
        guard context.persistentStoreCoordinator?
            .managedObjectModel
            .entitiesByName[SessionAttribute.entityName] != nil else {
            throw DataExportError.entityNotFound(SessionAttribute.entityName)
        }

        let request = NSFetchRequest<NSManagedObject>(entityName: SessionAttribute.entityName)
        request.sortDescriptors = [NSSortDescriptor(key: SessionAttribute.startedAt, ascending: true)]
        request.returnsObjectsAsFaults = false

        let objects = try context.fetch(request)
        return objects.map(record(from:))
    }

    /// Reads one managed object defensively. `value(forKey:)` on an absent key
    /// raises an ObjC exception that Swift cannot catch, so every access checks
    /// `entity.attributesByName` first.
    private static func record(from object: NSManagedObject) -> ExportedSessionRecord {
        let present = Set(object.entity.attributesByName.keys)

        func raw(_ key: String) -> Any? {
            present.contains(key) ? object.value(forKey: key) : nil
        }
        func str(_ key: String, default fallback: String = "") -> String {
            if let s = raw(key) as? String { return s }
            if let u = raw(key) as? UUID { return u.uuidString }
            return fallback
        }
        func int(_ key: String) -> Int { (raw(key) as? NSNumber)?.intValue ?? 0 }
        func dbl(_ key: String) -> Double { (raw(key) as? NSNumber)?.doubleValue ?? 0 }
        func bool(_ key: String) -> Bool { (raw(key) as? NSNumber)?.boolValue ?? false }
        func date(_ key: String) -> Date? { raw(key) as? Date }

        // Tags may be a Transformable [String] or a comma-joined String, depending
        // on how Part A modelled it. Handle both.
        let tags: [String] = {
            if let array = raw(SessionAttribute.stackTags) as? [String] { return array }
            if let joined = raw(SessionAttribute.stackTags) as? String, !joined.isEmpty {
                return joined
                    .split(separator: ",")
                    .map { $0.trimmingCharacters(in: .whitespaces) }
                    .filter { !$0.isEmpty }
            }
            return []
        }()

        return ExportedSessionRecord(
            id: str(SessionAttribute.id, default: object.objectID.uriRepresentation().lastPathComponent),
            startedAt: date(SessionAttribute.startedAt),
            endedAt: date(SessionAttribute.endedAt),
            durationSeconds: int(SessionAttribute.durationSeconds),
            primaryMode: str(SessionAttribute.primaryMode),
            secondaryMode: str(SessionAttribute.secondaryMode),
            holdCount: int(SessionAttribute.holdCount),
            pullbackCount: int(SessionAttribute.pullbackCount),
            pullbackSuccessRate: dbl(SessionAttribute.pullbackSuccessRate),
            bestHoldStreak: int(SessionAttribute.bestHoldStreak),
            emergencyPullbacks: int(SessionAttribute.emergencyPullbacks),
            staminaScoreAfter: int(SessionAttribute.staminaScoreAfter),
            staminaDelta: int(SessionAttribute.staminaDelta),
            didFinish: bool(SessionAttribute.didFinish),
            coachPersona: str(SessionAttribute.coachPersona),
            silentMode: bool(SessionAttribute.silentMode),
            watchVerified: bool(SessionAttribute.watchVerified),
            averageHeartRate: int(SessionAttribute.averageHeartRate),
            stackTags: tags,
            regimenDay: int(SessionAttribute.regimenDay)
        )
    }

    // MARK: Serialise

    static func csvData(from records: [ExportedSessionRecord]) -> Data {
        var out = "\u{FEFF}"                      // BOM so Excel reads UTF-8 correctly
        out += ExportedSessionRecord.csvHeader.map(csvField).joined(separator: ",")
        out += "\r\n"                             // RFC 4180 line terminator

        for record in records {
            out += record.csvRow(dateFormatter: iso).map(csvField).joined(separator: ",")
            out += "\r\n"
        }
        return Data(out.utf8)
    }

    static func jsonData(from records: [ExportedSessionRecord]) throws -> Data {
        let envelope = SessionExportEnvelope(
            schemaVersion: schemaVersion,
            exportedAt: Date(),
            sessionCount: records.count,
            sessions: records
        )
        let encoder = JSONEncoder()
        encoder.outputFormatting = [.prettyPrinted, .sortedKeys, .withoutEscapingSlashes]
        encoder.dateEncodingStrategy = .iso8601
        return try encoder.encode(envelope)
    }

    /// RFC 4180 quoting, plus neutralisation of spreadsheet formula injection.
    /// Custom coach phrases are user-authored and land in exports, so a field
    /// beginning `=`, `+`, `-` or `@` gets a leading apostrophe before Excel or
    /// Sheets can evaluate it.
    private static func csvField(_ value: String) -> String {
        var field = value
        if let first = field.first, "=+-@\t\r".contains(first) {
            field = "'" + field
        }
        let needsQuoting = field.contains(where: { $0 == "," || $0 == "\"" || $0 == "\n" || $0 == "\r" })
        guard needsQuoting else { return field }
        return "\"" + field.replacingOccurrences(of: "\"", with: "\"\"") + "\""
    }

    // MARK: Write

    private static var exportDirectory: URL {
        FileManager.default.temporaryDirectory
            .appendingPathComponent("Exports", isDirectory: true)
    }

    /// Deliberately neutral filename. The app's promise is "zero recordings" — an
    /// export that lands in Files or a shared album should not announce itself.
    private static func filename(for format: Format) -> String {
        let stamp = DateFormatter()
        stamp.dateFormat = "yyyy-MM-dd-HHmm"
        stamp.locale = Locale(identifier: "en_US_POSIX")
        return "training-log-\(stamp.string(from: Date())).\(format.fileExtension)"
    }

    /// Preferred entry point: serialise already-fetched records. The caller
    /// gathers `ExportedSessionRecord`s from the domain layer (Repository) on
    /// the main actor, then hands them here to serialise and write off-thread.
    @discardableResult
    static func writeExport(format: Format, records: [ExportedSessionRecord]) throws -> URL {
        guard !records.isEmpty else { throw DataExportError.nothingToExport }

        let payload: Data
        switch format {
        case .csv:  payload = csvData(from: records)
        case .json: payload = try jsonData(from: records)
        }

        try FileManager.default.createDirectory(
            at: exportDirectory,
            withIntermediateDirectories: true,
            attributes: [.protectionKey: FileProtectionType.complete]
        )

        let url = exportDirectory.appendingPathComponent(filename(for: format))
        do {
            try payload.write(to: url, options: [.atomic, .completeFileProtection])
        } catch {
            throw DataExportError.encodingFailed
        }

        // Keep the export out of iCloud Drive backups.
        var resource = URLResourceValues()
        resource.isExcludedFromBackup = true
        var mutable = url
        try? mutable.setResourceValues(resource)

        return url
    }

    /// Sweep stale exports. Call on `.background` scene phase and after a share
    /// sheet dismisses. A forgotten CSV sitting in tmp/ is exactly the kind of
    /// residue this app promises not to leave.
    static func purgeExports(olderThan interval: TimeInterval = 0) {
        let fm = FileManager.default
        guard let contents = try? fm.contentsOfDirectory(
            at: exportDirectory,
            includingPropertiesForKeys: [.contentModificationDateKey]
        ) else { return }

        let cutoff = Date().addingTimeInterval(-interval)
        for file in contents {
            let modified = (try? file.resourceValues(forKeys: [.contentModificationDateKey]))?
                .contentModificationDate ?? .distantPast
            if modified <= cutoff {
                try? fm.removeItem(at: file)
            }
        }
    }
}

// MARK: - Share sheet

/// `UIActivityViewController` bridge. Handles the iPad popover anchor, which is
/// a hard crash on iPad if left unset.
struct ShareSheet: UIViewControllerRepresentable {
    let items: [Any]
    var onDismiss: (() -> Void)?

    func makeUIViewController(context: Context) -> UIActivityViewController {
        let controller = UIActivityViewController(activityItems: items, applicationActivities: nil)
        controller.excludedActivityTypes = [
            .addToReadingList,
            .assignToContact,
            .openInIBooks,
            .postToFacebook,
            .postToTwitter,
            .postToWeibo,
            .postToVimeo,
            .postToFlickr,
            .postToTencentWeibo
        ]
        controller.completionWithItemsHandler = { _, _, _, _ in
            DataExportManager.purgeExports()
            onDismiss?()
        }
        return controller
    }

    func updateUIViewController(_ controller: UIActivityViewController, context: Context) {
        if let popover = controller.popoverPresentationController,
           popover.sourceView == nil,
           let root = controller.view {
            popover.sourceView = root
            popover.sourceRect = CGRect(x: root.bounds.midX, y: root.bounds.midY, width: 0, height: 0)
            popover.permittedArrowDirections = []
        }
    }
}
