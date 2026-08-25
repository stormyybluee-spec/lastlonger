//
//  SessionStore.swift
//  LAST LONGER
//
//  Core Data, with the model built in code rather than in an .xcdatamodeld
//  file. Three reasons that's the right call here:
//
//   · The whole schema is 3 entities and ~20 attributes. A visual editor
//     buys nothing at that size.
//   · A programmatic model diffs properly in git. An .xcdatamodeld is an
//     opaque bundle that produces unreviewable merge conflicts.
//   · These files drop into a project and compile. No "now open Xcode and
//     click through the model editor" step.
//
//  Everything is local. No CloudKit, no sync, no server — matching the spec
//  and, for this app's data, the only defensible choice regardless.
//

import CoreData
import Foundation

// MARK: - Stack

final class SessionStore {

    static let shared = SessionStore()

    let container: NSPersistentContainer

    var viewContext: NSManagedObjectContext { container.viewContext }

    private init(inMemory: Bool = false) {
        let model = Self.makeModel()
        container = NSPersistentContainer(name: "LastLonger", managedObjectModel: model)

        if inMemory {
            container.persistentStoreDescriptions.first?.url = URL(fileURLWithPath: "/dev/null")
        } else if let description = container.persistentStoreDescriptions.first {
            // The store holds intimate personal data. Complete-until-first-unlock
            // means it is unreadable while the device is locked, which is the
            // strongest protection available without blocking background writes.
            description.setOption(
                FileProtectionType.completeUntilFirstUserAuthentication as NSObject,
                forKey: NSPersistentStoreFileProtectionKey
            )
        }

        container.loadPersistentStores { _, error in
            if let error {
                #if DEBUG
                fatalError("SessionStore: failed to load store — \(error)")
                #else
                print("SessionStore: failed to load store — \(error)")
                #endif
            }
        }
        container.viewContext.automaticallyMergesChangesFromParent = true
        container.viewContext.mergePolicy = NSMergeByPropertyObjectTrumpMergePolicy
    }

    static func inMemoryForTesting() -> SessionStore { SessionStore(inMemory: true) }

    func save() {
        let context = viewContext
        guard context.hasChanges else { return }
        do {
            try context.save()
        } catch {
            #if DEBUG
            print("SessionStore: save failed — \(error)")
            #endif
            context.rollback()
        }
    }

    // MARK: - Model

    private static func makeModel() -> NSManagedObjectModel {
        let model = NSManagedObjectModel()

        // ── SessionRecord (entity name; class is CDSessionRow)
        let session = NSEntityDescription()
        session.name = "SessionRecord"
        session.managedObjectClassName = NSStringFromClass(CDSessionRow.self)

        // ── ArousalSample
        let arousal = NSEntityDescription()
        arousal.name = "ArousalSample"
        arousal.managedObjectClassName = NSStringFromClass(ArousalSample.self)

        // ── EmergencyEvent
        let emergency = NSEntityDescription()
        emergency.name = "EmergencyEvent"
        emergency.managedObjectClassName = NSStringFromClass(EmergencyEvent.self)

        func attribute(_ name: String,
                       _ type: NSAttributeType,
                       optional: Bool = true,
                       defaultValue: Any? = nil) -> NSAttributeDescription {
            let attr = NSAttributeDescription()
            attr.name = name
            attr.attributeType = type
            attr.isOptional = optional
            attr.defaultValue = defaultValue
            return attr
        }

        session.properties = [
            attribute("id", .UUIDAttributeType, optional: false),
            attribute("startedAt", .dateAttributeType, optional: false),
            attribute("endedAt", .dateAttributeType),
            attribute("duration", .doubleAttributeType, optional: false, defaultValue: 0),
            attribute("primaryMode", .stringAttributeType),
            attribute("secondaryMode", .stringAttributeType),
            attribute("persona", .stringAttributeType),
            attribute("thresholdStreak", .integer32AttributeType, optional: false, defaultValue: 0),
            attribute("bestStreak", .integer32AttributeType, optional: false, defaultValue: 0),
            attribute("totalCooldowns", .integer32AttributeType, optional: false, defaultValue: 0),
            attribute("emergencyPullbacks", .integer32AttributeType, optional: false, defaultValue: 0),
            attribute("reachedEndGoal", .booleanAttributeType, optional: false, defaultValue: false),
            attribute("averageHeartRate", .integer32AttributeType, optional: false, defaultValue: 0),
            attribute("peakHeartRate", .integer32AttributeType, optional: false, defaultValue: 0),
            attribute("lockedBPM", .doubleAttributeType, optional: false, defaultValue: 0),
            attribute("finalBPM", .doubleAttributeType, optional: false, defaultValue: 0),
            attribute("enhancementTags", .stringAttributeType),
            attribute("silentMode", .booleanAttributeType, optional: false, defaultValue: false),
            attribute("notes", .stringAttributeType)
        ]

        arousal.properties = [
            attribute("id", .UUIDAttributeType, optional: false),
            attribute("timestamp", .dateAttributeType, optional: false),
            attribute("elapsed", .doubleAttributeType, optional: false, defaultValue: 0),
            attribute("level", .integer16AttributeType, optional: false, defaultValue: 2)
        ]

        emergency.properties = [
            attribute("id", .UUIDAttributeType, optional: false),
            attribute("timestamp", .dateAttributeType, optional: false),
            attribute("elapsedAtTrigger", .doubleAttributeType, optional: false, defaultValue: 0),
            attribute("completed", .booleanAttributeType, optional: false, defaultValue: false),
            attribute("triggeredFromWatch", .booleanAttributeType, optional: false, defaultValue: false)
        ]

        // ── Relationships
        let sessionToArousal = NSRelationshipDescription()
        sessionToArousal.name = "arousalSamples"
        sessionToArousal.destinationEntity = arousal
        sessionToArousal.minCount = 0
        sessionToArousal.maxCount = 0            // to-many
        sessionToArousal.deleteRule = .cascadeDeleteRule

        let arousalToSession = NSRelationshipDescription()
        arousalToSession.name = "session"
        arousalToSession.destinationEntity = session
        arousalToSession.minCount = 0
        arousalToSession.maxCount = 1
        arousalToSession.deleteRule = .nullifyDeleteRule

        sessionToArousal.inverseRelationship = arousalToSession
        arousalToSession.inverseRelationship = sessionToArousal

        let sessionToEmergency = NSRelationshipDescription()
        sessionToEmergency.name = "emergencyEvents"
        sessionToEmergency.destinationEntity = emergency
        sessionToEmergency.minCount = 0
        sessionToEmergency.maxCount = 0
        sessionToEmergency.deleteRule = .cascadeDeleteRule

        let emergencyToSession = NSRelationshipDescription()
        emergencyToSession.name = "session"
        emergencyToSession.destinationEntity = session
        emergencyToSession.minCount = 0
        emergencyToSession.maxCount = 1
        emergencyToSession.deleteRule = .nullifyDeleteRule

        sessionToEmergency.inverseRelationship = emergencyToSession
        emergencyToSession.inverseRelationship = sessionToEmergency

        session.properties.append(contentsOf: [sessionToArousal, sessionToEmergency])
        arousal.properties.append(arousalToSession)
        emergency.properties.append(emergencyToSession)

        model.entities = [session, arousal, emergency]
        return model
    }
}

// MARK: - Managed objects

@objc(CDSessionRow)
final class CDSessionRow: NSManagedObject {
    @NSManaged var id: UUID
    @NSManaged var startedAt: Date
    @NSManaged var endedAt: Date?
    @NSManaged var duration: Double
    @NSManaged var primaryMode: String?
    @NSManaged var secondaryMode: String?
    @NSManaged var persona: String?
    @NSManaged var thresholdStreak: Int32
    @NSManaged var bestStreak: Int32
    @NSManaged var totalCooldowns: Int32
    @NSManaged var emergencyPullbacks: Int32
    @NSManaged var reachedEndGoal: Bool
    @NSManaged var averageHeartRate: Int32
    @NSManaged var peakHeartRate: Int32
    @NSManaged var lockedBPM: Double
    @NSManaged var finalBPM: Double
    @NSManaged var enhancementTags: String?
    @NSManaged var silentMode: Bool
    @NSManaged var notes: String?
    @NSManaged var arousalSamples: NSSet?
    @NSManaged var emergencyEvents: NSSet?

    static func fetchRequest() -> NSFetchRequest<CDSessionRow> {
        NSFetchRequest<CDSessionRow>(entityName: "SessionRecord")
    }

    static func recent(limit: Int = 30, in context: NSManagedObjectContext) -> [CDSessionRow] {
        let request = fetchRequest()
        request.sortDescriptors = [NSSortDescriptor(key: "startedAt", ascending: false)]
        request.fetchLimit = limit
        return (try? context.fetch(request)) ?? []
    }
}

@objc(ArousalSample)
final class ArousalSample: NSManagedObject {
    @NSManaged var id: UUID
    @NSManaged var timestamp: Date
    @NSManaged var elapsed: Double
    @NSManaged var level: Int16
    @NSManaged var session: CDSessionRow?
}

@objc(EmergencyEvent)
final class EmergencyEvent: NSManagedObject {
    @NSManaged var id: UUID
    @NSManaged var timestamp: Date
    @NSManaged var elapsedAtTrigger: Double
    @NSManaged var completed: Bool
    @NSManaged var triggeredFromWatch: Bool
    @NSManaged var session: CDSessionRow?
}

// MARK: - Writer

/// Owns the record for the session currently in flight. Everything the live
/// player wants to persist goes through here so the view never touches a
/// managed object context.
@MainActor
final class SessionLogWriter {

    private let store: SessionStore
    private var record: CDSessionRow?

    init(store: SessionStore = .shared) {
        self.store = store
    }

    var currentRecord: CDSessionRow? { record }

    func beginSession(plan: SessionPlan) {
        let context = store.viewContext
        let record = CDSessionRow(context: context)
        record.id = UUID()
        record.startedAt = Date()
        record.primaryMode = plan.primary.name
        record.secondaryMode = plan.secondary?.name
        record.persona = plan.settings.persona.name
        record.silentMode = plan.settings.silentMode
        record.enhancementTags = plan.settings.enhancementStack
            .map(\.rawValue)
            .sorted()
            .joined(separator: ", ")
        self.record = record
        store.save()
    }

    func logArousal(_ level: ArousalLevel, elapsed: TimeInterval) {
        guard let record else { return }
        let sample = ArousalSample(context: store.viewContext)
        sample.id = UUID()
        sample.timestamp = Date()
        sample.elapsed = elapsed
        sample.level = Int16(level.rawValue)
        sample.session = record
        store.save()
    }

    func logEmergency(elapsed: TimeInterval, completed: Bool, fromWatch: Bool) {
        guard let record else { return }
        let event = EmergencyEvent(context: store.viewContext)
        event.id = UUID()
        event.timestamp = Date()
        event.elapsedAtTrigger = elapsed
        event.completed = completed
        event.triggeredFromWatch = fromWatch
        event.session = record
        store.save()
    }

    func updateHeartRate(average: Int, peak: Int) {
        record?.averageHeartRate = Int32(average)
        record?.peakHeartRate = Int32(peak)
    }

    func updateTempo(locked: Double, final: Double) {
        record?.lockedBPM = locked
        record?.finalBPM = final
    }

    func endSession(duration: TimeInterval,
                    streak: ThresholdStreak,
                    reachedEndGoal: Bool) {
        guard let record else { return }
        record.endedAt = Date()
        record.duration = duration
        record.thresholdStreak = Int32(streak.current)
        record.bestStreak = Int32(streak.best)
        record.totalCooldowns = Int32(streak.totalCooldowns)
        record.emergencyPullbacks = Int32(streak.emergencyPullbacks)
        record.reachedEndGoal = reachedEndGoal
        store.save()
        self.record = nil
    }
}
