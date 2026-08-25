//
//  PersistenceController+Wipe.swift
//  LAST LONGER
//
//  PART E-2 — "DELETE ALL DATA"
//
//  A batch delete leaves the SQLite file, its -wal journal and its -shm shared
//  memory index on disk with recoverable pages inside them. For an app whose
//  entire pitch is "zero evidence", that is not good enough. This destroys the
//  store outright and rebuilds an empty one.
//

import Foundation
import CoreData
import UserNotifications

extension Notification.Name {
    /// Posted after a successful wipe. Every view model observing CoreData should
    /// reset its in-memory caches on receipt — a destroyed store does not emit
    /// the usual change notifications.
    static let llDataWasWiped = Notification.Name("com.lastlonger.dataWasWiped")
}

enum DataWipeError: LocalizedError {
    case noStoreLoaded
    case reloadFailed(Error)

    var errorDescription: String? {
        switch self {
        case .noStoreLoaded:
            return "No local database was loaded. Nothing to erase."
        case .reloadFailed(let error):
            return "The database was erased but could not be rebuilt: \(error.localizedDescription)"
        }
    }
}

extension PersistenceController {

    /// Erases every session, badge, regimen, ritual and custom phrase.
    /// Irreversible. There is no backup — the app has no server by design.
    ///
    /// Call on the main actor. Stop any active session before invoking.
    @MainActor
    func wipeAllData() throws {
        let coordinator = container.persistentStoreCoordinator

        // 1. Drop everything in memory first so no context tries to save into a
        //    store that is about to disappear.
        container.viewContext.reset()

        let stores = coordinator.persistentStores
        guard !stores.isEmpty else { throw DataWipeError.noStoreLoaded }

        // 2. Detach, then destroy. Destroying removes the .sqlite, .sqlite-wal
        //    and .sqlite-shm siblings together.
        var storeDescriptors: [(url: URL, options: [AnyHashable: Any]?)] = []
        for store in stores {
            guard let url = store.url else { continue }
            storeDescriptors.append((url, store.options))
            try coordinator.remove(store)
        }

        for descriptor in storeDescriptors {
            try coordinator.destroyPersistentStore(
                at: descriptor.url,
                type: .sqlite,
                options: descriptor.options
            )
            // destroyPersistentStore is thorough, but sweep the siblings anyway
            // in case a prior crash left an orphaned journal behind.
            for suffix in ["-wal", "-shm"] {
                let sibling = URL(fileURLWithPath: descriptor.url.path + suffix)
                try? FileManager.default.removeItem(at: sibling)
            }
        }

        // 3. Rebuild an empty store at the same location.
        var reloadError: Error?
        container.loadPersistentStores { _, error in reloadError = error }
        if let reloadError { throw DataWipeError.reloadFailed(reloadError) }

        container.viewContext.reset()
        container.viewContext.automaticallyMergesChangesFromParent = true

        // 4. Everything else the app owns.
        Self.wipeUserDefaults()
        Self.wipePendingNotifications()
        DataExportManager.purgeExports()

        NotificationCenter.default.post(name: .llDataWasWiped, object: nil)
    }

    /// Clears app preferences but preserves the StoreKit entitlement — the user
    /// paid $9.99 once and erasing their data must not erase their purchase.
    /// StoreKit 2 re-verifies against the App Store receipt, so the paywall flag
    /// is a cache, not the source of truth; it is preserved here purely so the
    /// user does not see a paywall flash on relaunch.
    private static func wipeUserDefaults() {
        guard let domain = Bundle.main.bundleIdentifier else { return }
        let defaults = UserDefaults.standard

        let preserved = "hasCompletedPurchase"
        let entitlement = defaults.object(forKey: preserved)

        defaults.removePersistentDomain(forName: domain)

        if let entitlement { defaults.set(entitlement, forKey: preserved) }
        defaults.synchronize()
    }

    private static func wipePendingNotifications() {
        let center = UNUserNotificationCenter.current()
        center.removeAllPendingNotificationRequests()
        center.removeAllDeliveredNotifications()
    }
}

// MARK: - Reference PersistenceController
//
// DELETE THIS BLOCK if Part A already defines PersistenceController. It exists so
// Part E compiles standalone, and it documents two store options that the Part A
// version must also set:
//
//   • NSPersistentStoreFileProtectionKey = .complete
//     The database is unreadable while the device is locked. Non-negotiable for
//     an app that stores this category of data.
//
//   • isExcludedFromBackup
//     Keeps the store out of iCloud and encrypted iTunes backups, honouring the
//     onboarding promise that data never leaves the phone.

#if LL_STANDALONE_PART_E
struct PersistenceController {
    static let shared = PersistenceController()
    let container: NSPersistentContainer

    init(inMemory: Bool = false) {
        container = NSPersistentContainer(name: "LastLonger")

        if let description = container.persistentStoreDescriptions.first {
            if inMemory {
                description.url = URL(fileURLWithPath: "/dev/null")
            } else {
                description.setOption(
                    FileProtectionType.complete as NSObject,
                    forKey: NSPersistentStoreFileProtectionKey
                )
                description.shouldMigrateStoreAutomatically = true
                description.shouldInferMappingModelAutomatically = true
            }
        }

        container.loadPersistentStores { _, error in
            if let error { fatalError("CoreData store failed to load: \(error)") }
        }
        container.viewContext.automaticallyMergesChangesFromParent = true
        container.viewContext.mergePolicy = NSMergeByPropertyObjectTrumpMergePolicy

        if var url = container.persistentStoreDescriptions.first?.url {
            var resource = URLResourceValues()
            resource.isExcludedFromBackup = true
            try? url.setResourceValues(resource)
        }
    }
}
#endif
