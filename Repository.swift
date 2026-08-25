//
//  Repository.swift
//  LAST LONGER
//
//  The only file that knows both CoreData and the domain layer.
//  Views never touch NSManagedObject.
//

import CoreData
import Foundation

@MainActor
public final class Repository: ObservableObject {

    public static let shared = Repository()

    private let persistence: PersistenceController
    private var context: NSManagedObjectContext { persistence.viewContext }

    @Published public private(set) var settings: UserSettings = .init()
    @Published public private(set) var recentSessions: [SessionRecord] = []
    @Published public private(set) var unlockedBadges: Set<BadgeID> = []
    @Published public private(set) var playlists: [Playlist] = []
    @Published public private(set) var enrollment: RegimenEnrollment?
    @Published public private(set) var currentChallenge: Challenge?
    @Published public private(set) var stackTags: [StackTag] = []
    @Published public private(set) var customPhrases: [CustomPhrase] = []
    @Published public private(set) var score: StaminaScore = .empty

    public init(persistence: PersistenceController = .shared) {
        self.persistence = persistence
        seedBuiltInsIfNeeded()
        reloadAll()
    }

    // MARK: - Load

    public func reloadAll() {
        settings        = loadSettings()
        recentSessions  = loadSessions(limit: 200)
        unlockedBadges  = loadBadges()
        playlists       = loadPlaylists()
        enrollment      = loadEnrollment()
        currentChallenge = loadChallenge()
        stackTags       = loadStackTags()
        customPhrases   = loadPhrases()
        score           = StaminaScore.compute(from: recentSessions, breathCompliance: nil)
    }

    // MARK: - Settings

    public func update(_ mutate: (inout UserSettings) -> Void) {
        var copy = settings
        mutate(&copy)
        settings = copy
        persistSettings(copy)
    }

    private func loadSettings() -> UserSettings {
        let request = NSFetchRequest<CDUserSettings>(entityName: Entity.settings)
        request.fetchLimit = 1
        guard
            let row = try? context.fetch(request).first,
            let decoded = try? JSONDecoder().decode(UserSettings.self, from: row.payload)
        else {
            return UserSettings()
        }
        return decoded
    }

    private func persistSettings(_ value: UserSettings) {
        let request = NSFetchRequest<CDUserSettings>(entityName: Entity.settings)
        request.fetchLimit = 1
        let row = (try? context.fetch(request).first)
            ?? CDUserSettings(context: context)
        row.key = "singleton"
        row.payload = (try? JSONEncoder().encode(value)) ?? Data()
        persistence.save(context)
    }

    // MARK: - Sessions

    @discardableResult
    public func insert(_ record: SessionRecord) -> SessionRecord {
        let row = CDSession(context: context)
        apply(record, to: row)
        persistence.save(context)
        reloadAll()
        return record
    }

    private func apply(_ r: SessionRecord, to row: CDSession) {
        row.id = r.id
        row.startedAt = r.startedAt
        row.duration = r.duration
        row.primaryMode = r.primaryMode.rawValue
        row.secondaryMode = r.secondaryMode?.rawValue
        row.switchAfterMinutes = r.switchAfterMinutes.map(NSNumber.init(value:))
        row.thresholds = Int32(r.thresholds)
        row.pullbacks = Int32(r.pullbacks)
        row.emergencyPullbacks = Int32(r.emergencyPullbacks)
        row.bestStreak = Int32(r.bestStreak)
        row.tagsRaw = r.tagIDs.joined(separator: ",")
        row.persona = r.persona.rawValue
        row.silentMode = r.silentMode
        row.watchVerified = r.watchVerified
        row.finished = r.finished
    }

    private func decode(_ row: CDSession) -> SessionRecord {
        SessionRecord(
            id: row.id,
            startedAt: row.startedAt,
            duration: row.duration,
            primaryMode: SessionMode(rawValue: row.primaryMode) ?? .freeEdge,
            secondaryMode: row.secondaryMode.flatMap(SessionMode.init(rawValue:)),
            switchAfterMinutes: row.switchAfterMinutes?.intValue,
            thresholds: Int(row.thresholds),
            pullbacks: Int(row.pullbacks),
            emergencyPullbacks: Int(row.emergencyPullbacks),
            bestStreak: Int(row.bestStreak),
            tagIDs: row.tagsRaw.isEmpty ? [] : row.tagsRaw.components(separatedBy: ","),
            persona: CoachPersona(rawValue: row.persona) ?? .drillSergeant,
            silentMode: row.silentMode,
            watchVerified: row.watchVerified,
            finished: row.finished
        )
    }

    private func loadSessions(limit: Int) -> [SessionRecord] {
        let request = NSFetchRequest<CDSession>(entityName: Entity.session)
        request.sortDescriptors = [NSSortDescriptor(key: "startedAt", ascending: false)]
        request.fetchLimit = limit
        return (try? context.fetch(request))?.map(decode) ?? []
    }

    // MARK: - Derived stats for Home

    public struct TodayStats {
        public var thresholds = 0
        public var sessions = 0
        public var dayStreak = 0
        public var lastFinished: Date?
    }

    public var today: TodayStats {
        let cal = Calendar.current
        let todaysSessions = recentSessions.filter { cal.isDateInToday($0.startedAt) }

        var stats = TodayStats()
        stats.sessions = todaysSessions.count
        stats.thresholds = todaysSessions.reduce(0) { $0 + $1.thresholds }
        stats.dayStreak = consecutiveTrainingDays()
        stats.lastFinished = settings.lastFinishedAt
            ?? recentSessions.first(where: { $0.finished })?.startedAt
        return stats
    }

    /// Counts back from today (or yesterday, if today has no session yet)
    /// so the streak does not visibly break before the user has trained.
    private func consecutiveTrainingDays() -> Int {
        let cal = Calendar.current
        let days = Set(recentSessions.map { cal.startOfDay(for: $0.startedAt) })
        guard !days.isEmpty else { return 0 }

        var cursor = cal.startOfDay(for: .now)
        if !days.contains(cursor) {
            guard let yesterday = cal.date(byAdding: .day, value: -1, to: cursor),
                  days.contains(yesterday) else { return 0 }
            cursor = yesterday
        }

        var count = 0
        while days.contains(cursor) {
            count += 1
            guard let prev = cal.date(byAdding: .day, value: -1, to: cursor) else { break }
            cursor = prev
        }
        return count
    }

    // MARK: - Badges

    private func loadBadges() -> Set<BadgeID> {
        let request = NSFetchRequest<CDBadge>(entityName: Entity.badge)
        let rows = (try? context.fetch(request)) ?? []
        return Set(rows.compactMap { BadgeID(rawValue: $0.id) })
    }

    @discardableResult
    public func unlock(_ badge: BadgeID) -> Bool {
        guard !unlockedBadges.contains(badge) else { return false }
        let row = CDBadge(context: context)
        row.id = badge.rawValue
        row.unlockedAt = .now
        row.seen = false
        persistence.save(context)
        unlockedBadges.insert(badge)
        return true
    }

    public var unlockedSkins: [AngelSkin] {
        AngelSkin.allCases.filter { skin in
            guard let required = skin.unlockedBy else { return true }
            return unlockedBadges.contains(required)
        }
    }

    // MARK: - Playlists

    private func loadPlaylists() -> [Playlist] {
        let request = NSFetchRequest<CDPlaylist>(entityName: Entity.playlist)
        request.sortDescriptors = [NSSortDescriptor(key: "lastUsedAt", ascending: false),
                                   NSSortDescriptor(key: "createdAt", ascending: false)]
        let rows = (try? context.fetch(request)) ?? []
        return rows.compactMap { row in
            guard let config = try? JSONDecoder().decode(SessionConfig.self, from: row.configData) else { return nil }
            return Playlist(id: row.id, name: row.name, config: config,
                            createdAt: row.createdAt, lastUsedAt: row.lastUsedAt)
        }
    }

    public func save(_ playlist: Playlist) {
        let request = NSFetchRequest<CDPlaylist>(entityName: Entity.playlist)
        request.predicate = NSPredicate(format: "id == %@", playlist.id as CVarArg)
        request.fetchLimit = 1
        let row = (try? context.fetch(request).first) ?? CDPlaylist(context: context)
        row.id = playlist.id
        row.name = playlist.name
        row.configData = (try? JSONEncoder().encode(playlist.config)) ?? Data()
        row.createdAt = playlist.createdAt
        row.lastUsedAt = playlist.lastUsedAt
        persistence.save(context)
        playlists = loadPlaylists()
    }

    public func delete(playlistID: UUID) {
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: Entity.playlist)
        request.predicate = NSPredicate(format: "id == %@", playlistID as CVarArg)
        if let rows = try? context.fetch(request) as? [NSManagedObject] {
            rows.forEach(context.delete)
        }
        persistence.save(context)
        playlists = loadPlaylists()
    }

    // MARK: - Regimen

    private func loadEnrollment() -> RegimenEnrollment? {
        let request = NSFetchRequest<CDRegimen>(entityName: Entity.regimen)
        request.predicate = NSPredicate(format: "isActive == YES")
        request.fetchLimit = 1
        guard let row = try? context.fetch(request).first,
              let program = RegimenProgram(rawValue: row.program) else { return nil }
        return RegimenEnrollment(id: row.id, program: program, startedAt: row.startedAt,
                                 completedDays: Int(row.completedDays), isActive: row.isActive)
    }

    public func enroll(in program: RegimenProgram) {
        // One active program at a time.
        let existing = NSFetchRequest<CDRegimen>(entityName: Entity.regimen)
        existing.predicate = NSPredicate(format: "isActive == YES")
        (try? context.fetch(existing))?.forEach { $0.isActive = false }

        let row = CDRegimen(context: context)
        row.id = UUID()
        row.program = program.rawValue
        row.startedAt = .now
        row.completedDays = 0
        row.isActive = true
        persistence.save(context)
        enrollment = loadEnrollment()
    }

    // MARK: - Challenge

    private func loadChallenge() -> Challenge? {
        let request = NSFetchRequest<CDChallenge>(entityName: Entity.challenge)
        request.predicate = NSPredicate(format: "endsAt > %@", Date.now as NSDate)
        request.sortDescriptors = [NSSortDescriptor(key: "endsAt", ascending: true)]
        request.fetchLimit = 1
        guard let row = try? context.fetch(request).first,
              let badge = BadgeID(rawValue: row.badgeID) else { return nil }
        return Challenge(id: row.id, title: row.title, detail: row.detail,
                         target: Int(row.target), progress: Int(row.progress),
                         badge: badge, endsAt: row.endsAt)
    }

    // MARK: - Stack tags

    private func loadStackTags() -> [StackTag] {
        let request = NSFetchRequest<CDStackTag>(entityName: Entity.stackTag)
        request.sortDescriptors = [NSSortDescriptor(key: "sortIndex", ascending: true)]
        let rows = (try? context.fetch(request)) ?? []
        return rows.map { StackTag(id: $0.id, label: $0.label,
                                   isBuiltIn: $0.isBuiltIn, sortIndex: Int($0.sortIndex)) }
    }

    // MARK: - Custom phrases

    private func loadPhrases() -> [CustomPhrase] {
        let request = NSFetchRequest<CDCustomPhrase>(entityName: Entity.customPhrase)
        request.sortDescriptors = [NSSortDescriptor(key: "createdAt", ascending: true)]
        let rows = (try? context.fetch(request)) ?? []
        return rows.map { CustomPhrase(id: $0.id, text: $0.text,
                                       enabled: $0.enabled, createdAt: $0.createdAt) }
    }

    /// Returns false when the user is already at the cap.
    @discardableResult
    public func addPhrase(_ text: String) -> Bool {
        let trimmed = text.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !trimmed.isEmpty, customPhrases.count < CustomPhrase.maxCount else { return false }
        let row = CDCustomPhrase(context: context)
        row.id = UUID()
        row.text = trimmed
        row.enabled = true
        row.createdAt = .now
        persistence.save(context)
        customPhrases = loadPhrases()
        return true
    }

    // MARK: - Seed

    private func seedBuiltInsIfNeeded() {
        let request = NSFetchRequest<CDStackTag>(entityName: Entity.stackTag)
        request.fetchLimit = 1
        guard ((try? context.fetch(request)) ?? []).isEmpty else { return }

        for tag in StackTag.builtIns {
            let row = CDStackTag(context: context)
            row.id = tag.id
            row.label = tag.label
            row.isBuiltIn = true
            row.sortIndex = Int32(tag.sortIndex)
        }
        persistence.save(context)
    }

    // MARK: - Destructive

    public func deleteEverything() throws {
        try persistence.destroyAllData()
        seedBuiltInsIfNeeded()
        reloadAll()
    }
}
