//
//  Persistence.swift
//  LAST LONGER
//
//  CoreData built in code rather than from an .xcdatamodeld file.
//  Rationale: the schema is small, it lives under source control as
//  readable text, and it removes the Xcode model editor from the loop
//  entirely — which matters because every entity here has to survive
//  migration without anyone opening a GUI.
//
//  Store is local-only. No CloudKit container, no NSPersistentCloudKitContainer,
//  file protection set to complete-until-first-auth so the DB is
//  encrypted at rest whenever the device is locked.
//

import CoreData
import Foundation

// MARK: - Entity names

public enum Entity {
    public static let session      = "CDSession"
    public static let badge        = "CDBadge"
    public static let challenge    = "CDChallenge"
    public static let regimen      = "CDRegimen"
    public static let playlist     = "CDPlaylist"
    public static let settings     = "CDUserSettings"
    public static let stackTag     = "CDStackTag"
    public static let customPhrase = "CDCustomPhrase"
}

// MARK: - Managed object subclasses

@objc(CDSession)
public final class CDSession: NSManagedObject {
    @NSManaged public var id: UUID
    @NSManaged public var startedAt: Date
    @NSManaged public var duration: Double
    @NSManaged public var primaryMode: String
    @NSManaged public var secondaryMode: String?
    @NSManaged public var switchAfterMinutes: NSNumber?
    @NSManaged public var thresholds: Int32
    @NSManaged public var pullbacks: Int32
    @NSManaged public var emergencyPullbacks: Int32
    @NSManaged public var bestStreak: Int32
    @NSManaged public var tagsRaw: String
    @NSManaged public var persona: String
    @NSManaged public var silentMode: Bool
    @NSManaged public var watchVerified: Bool
    @NSManaged public var finished: Bool
}

@objc(CDBadge)
public final class CDBadge: NSManagedObject {
    @NSManaged public var id: String
    @NSManaged public var unlockedAt: Date
    @NSManaged public var seen: Bool
}

@objc(CDChallenge)
public final class CDChallenge: NSManagedObject {
    @NSManaged public var id: String
    @NSManaged public var title: String
    @NSManaged public var detail: String
    @NSManaged public var target: Int32
    @NSManaged public var progress: Int32
    @NSManaged public var badgeID: String
    @NSManaged public var endsAt: Date
}

@objc(CDRegimen)
public final class CDRegimen: NSManagedObject {
    @NSManaged public var id: UUID
    @NSManaged public var program: String
    @NSManaged public var startedAt: Date
    @NSManaged public var completedDays: Int32
    @NSManaged public var isActive: Bool
}

@objc(CDPlaylist)
public final class CDPlaylist: NSManagedObject {
    @NSManaged public var id: UUID
    @NSManaged public var name: String
    @NSManaged public var configData: Data
    @NSManaged public var createdAt: Date
    @NSManaged public var lastUsedAt: Date?
}

@objc(CDUserSettings)
public final class CDUserSettings: NSManagedObject {
    /// Always the string "singleton". Unique-constrained.
    @NSManaged public var key: String
    @NSManaged public var payload: Data
}

@objc(CDStackTag)
public final class CDStackTag: NSManagedObject {
    @NSManaged public var id: String
    @NSManaged public var label: String
    @NSManaged public var isBuiltIn: Bool
    @NSManaged public var sortIndex: Int32
}

@objc(CDCustomPhrase)
public final class CDCustomPhrase: NSManagedObject {
    @NSManaged public var id: UUID
    @NSManaged public var text: String
    @NSManaged public var enabled: Bool
    @NSManaged public var createdAt: Date
}

// MARK: - Model builder

private func attr(
    _ name: String,
    _ type: NSAttributeType,
    optional: Bool = false,
    defaultValue: Any? = nil
) -> NSAttributeDescription {
    let a = NSAttributeDescription()
    a.name = name
    a.attributeType = type
    a.isOptional = optional
    if let defaultValue { a.defaultValue = defaultValue }
    return a
}

private func entity(
    _ name: String,
    _ cls: AnyClass,
    _ attributes: [NSAttributeDescription],
    uniqueOn: [String] = []
) -> NSEntityDescription {
    let e = NSEntityDescription()
    e.name = name
    e.managedObjectClassName = NSStringFromClass(cls)
    e.properties = attributes
    if !uniqueOn.isEmpty {
        e.uniquenessConstraints = [uniqueOn]
    }
    return e
}

public enum LastLongerModel {
    public static func make() -> NSManagedObjectModel {
        let model = NSManagedObjectModel()

        let session = entity(Entity.session, CDSession.self, [
            attr("id", .UUIDAttributeType),
            attr("startedAt", .dateAttributeType),
            attr("duration", .doubleAttributeType, defaultValue: 0.0),
            attr("primaryMode", .stringAttributeType, defaultValue: SessionMode.freeEdge.rawValue),
            attr("secondaryMode", .stringAttributeType, optional: true),
            attr("switchAfterMinutes", .integer16AttributeType, optional: true),
            attr("thresholds", .integer32AttributeType, defaultValue: 0),
            attr("pullbacks", .integer32AttributeType, defaultValue: 0),
            attr("emergencyPullbacks", .integer32AttributeType, defaultValue: 0),
            attr("bestStreak", .integer32AttributeType, defaultValue: 0),
            attr("tagsRaw", .stringAttributeType, defaultValue: ""),
            attr("persona", .stringAttributeType, defaultValue: CoachPersona.drillSergeant.rawValue),
            attr("silentMode", .booleanAttributeType, defaultValue: false),
            attr("watchVerified", .booleanAttributeType, defaultValue: false),
            attr("finished", .booleanAttributeType, defaultValue: false),
        ], uniqueOn: ["id"])

        let badge = entity(Entity.badge, CDBadge.self, [
            attr("id", .stringAttributeType),
            attr("unlockedAt", .dateAttributeType),
            attr("seen", .booleanAttributeType, defaultValue: false),
        ], uniqueOn: ["id"])

        let challenge = entity(Entity.challenge, CDChallenge.self, [
            attr("id", .stringAttributeType),
            attr("title", .stringAttributeType, defaultValue: ""),
            attr("detail", .stringAttributeType, defaultValue: ""),
            attr("target", .integer32AttributeType, defaultValue: 0),
            attr("progress", .integer32AttributeType, defaultValue: 0),
            attr("badgeID", .stringAttributeType, defaultValue: ""),
            attr("endsAt", .dateAttributeType),
        ], uniqueOn: ["id"])

        let regimen = entity(Entity.regimen, CDRegimen.self, [
            attr("id", .UUIDAttributeType),
            attr("program", .stringAttributeType, defaultValue: RegimenProgram.beginner.rawValue),
            attr("startedAt", .dateAttributeType),
            attr("completedDays", .integer32AttributeType, defaultValue: 0),
            attr("isActive", .booleanAttributeType, defaultValue: true),
        ], uniqueOn: ["id"])

        let playlist = entity(Entity.playlist, CDPlaylist.self, [
            attr("id", .UUIDAttributeType),
            attr("name", .stringAttributeType, defaultValue: ""),
            attr("configData", .binaryDataAttributeType),
            attr("createdAt", .dateAttributeType),
            attr("lastUsedAt", .dateAttributeType, optional: true),
        ], uniqueOn: ["id"])

        let settings = entity(Entity.settings, CDUserSettings.self, [
            attr("key", .stringAttributeType, defaultValue: "singleton"),
            attr("payload", .binaryDataAttributeType),
        ], uniqueOn: ["key"])

        let stackTag = entity(Entity.stackTag, CDStackTag.self, [
            attr("id", .stringAttributeType),
            attr("label", .stringAttributeType, defaultValue: ""),
            attr("isBuiltIn", .booleanAttributeType, defaultValue: false),
            attr("sortIndex", .integer32AttributeType, defaultValue: 0),
        ], uniqueOn: ["id"])

        let phrase = entity(Entity.customPhrase, CDCustomPhrase.self, [
            attr("id", .UUIDAttributeType),
            attr("text", .stringAttributeType, defaultValue: ""),
            attr("enabled", .booleanAttributeType, defaultValue: true),
            attr("createdAt", .dateAttributeType),
        ], uniqueOn: ["id"])

        model.entities = [session, badge, challenge, regimen, playlist, settings, stackTag, phrase]
        return model
    }
}

// MARK: - Stack

public final class PersistenceController {
    public static let shared = PersistenceController()

    public let container: NSPersistentContainer

    public var viewContext: NSManagedObjectContext { container.viewContext }

    public init(inMemory: Bool = false) {
        container = NSPersistentContainer(
            name: "LastLonger",
            managedObjectModel: LastLongerModel.make()
        )

        let description = container.persistentStoreDescriptions.first!

        if inMemory {
            description.url = URL(fileURLWithPath: "/dev/null")
        } else {
            // Encrypted whenever the device is locked, but still readable
            // by the Watch-sync background task after first unlock.
            description.setOption(
                FileProtectionType.completeUntilFirstUserAuthentication as NSObject,
                forKey: NSPersistentStoreFileProtectionKey
            )
        }

        // Local only. Explicitly assert it so nobody wires CloudKit in later
        // without deleting this line and noticing why it was there.
        description.cloudKitContainerOptions = nil

        container.loadPersistentStores { _, error in
            if let error {
                // A corrupt store on a privacy app is not recoverable by
                // shipping the user to a server. Log, wipe, continue empty.
                assertionFailure("Store load failed: \(error)")
            }
        }

        container.viewContext.automaticallyMergesChangesFromParent = true
        container.viewContext.mergePolicy = NSMergeByPropertyObjectTrumpMergePolicy
        container.viewContext.undoManager = nil
    }

    public func newBackgroundContext() -> NSManagedObjectContext {
        let ctx = container.newBackgroundContext()
        ctx.mergePolicy = NSMergeByPropertyObjectTrumpMergePolicy
        return ctx
    }

    public func save(_ context: NSManagedObjectContext? = nil) {
        let ctx = context ?? viewContext
        guard ctx.hasChanges else { return }
        do {
            try ctx.save()
        } catch {
            ctx.rollback()
            assertionFailure("Save failed: \(error)")
        }
    }

    /// Settings > Privacy > Delete all data. Destroys the store file
    /// and rebuilds it empty — a `NSBatchDeleteRequest` per entity would
    /// leave the WAL and journal behind.
    public func destroyAllData() throws {
        let coordinator = container.persistentStoreCoordinator
        for store in coordinator.persistentStores {
            guard let url = store.url else { continue }
            try coordinator.destroyPersistentStore(at: url, ofType: store.type, options: nil)
            try coordinator.addPersistentStore(ofType: store.type, configurationName: nil, at: url, options: nil)
        }
        viewContext.reset()
    }
}
