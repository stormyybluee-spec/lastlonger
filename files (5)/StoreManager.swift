//
//  StoreManager.swift
//  LAST LONGER
//
//  StoreKit 2. One non-consumable, $9.99, unlocks everything forever.
//  No receipt server, no validation endpoint, no third-party SDK — StoreKit 2
//  verifies transactions on device and that is the whole entitlement story.
//

import Foundation
import StoreKit
import os

@MainActor
final class StoreManager: ObservableObject {

    /// Must match `productID` in Configuration.storekit and in App Store Connect.
    static let unlockProductID = "com.lastlonger.app.unlock.lifetime"

    enum PurchaseState: Equatable {
        case idle
        case loadingProducts
        case purchasing
        case restoring
        /// Ask-to-Buy / SCA. Entitlement will arrive later via Transaction.updates.
        case pending
        case failed(String)
    }

    @Published private(set) var product: Product?
    @Published private(set) var isUnlocked = false
    @Published private(set) var state: PurchaseState = .idle

    private var updateListener: Task<Void, Never>?
    private let log = Logger(subsystem: "com.lastlonger.app", category: "store")

    init() {
        updateListener = listenForTransactions()
        Task {
            await refreshEntitlement()
            await loadProducts()
        }
    }

    deinit {
        updateListener?.cancel()
    }

    // MARK: - Products

    func loadProducts() async {
        state = .loadingProducts
        do {
            let products = try await Product.products(for: [Self.unlockProductID])
            product = products.first
            state = product == nil
                ? .failed("Store listing unavailable. Check your connection and try again.")
                : .idle
        } catch {
            log.error("Product load failed: \(error.localizedDescription, privacy: .public)")
            state = .failed("Store unavailable. Check your connection and try again.")
        }
    }

    /// Localized price straight from StoreKit. Never hardcode "$9.99" in the UI —
    /// it is wrong in every storefront outside the US.
    var displayPrice: String { product?.displayPrice ?? "$9.99" }

    // MARK: - Purchase

    func purchase() async {
        guard let product else {
            await loadProducts()
            return
        }
        state = .purchasing
        do {
            let result = try await product.purchase()
            switch result {
            case .success(let verification):
                let transaction = try verify(verification)
                await transaction.finish()
                isUnlocked = true
                state = .idle

            case .userCancelled:
                state = .idle

            case .pending:
                state = .pending

            @unknown default:
                state = .idle
            }
        } catch {
            log.error("Purchase failed: \(error.localizedDescription, privacy: .public)")
            state = .failed("Purchase didn't complete. Nothing was charged.")
        }
    }

    // MARK: - Restore

    /// Required by App Review guideline 3.1.1 for any non-consumable.
    func restore() async {
        state = .restoring
        do {
            try await AppStore.sync()
            await refreshEntitlement()
            state = isUnlocked
                ? .idle
                : .failed("No previous purchase found on this Apple Account.")
        } catch {
            log.error("Restore failed: \(error.localizedDescription, privacy: .public)")
            state = .failed("Restore didn't complete. Try again.")
        }
    }

    // MARK: - Entitlement

    func refreshEntitlement() async {
        for await result in Transaction.currentEntitlements {
            guard let transaction = try? verify(result) else { continue }
            if transaction.productID == Self.unlockProductID, transaction.revocationDate == nil {
                isUnlocked = true
                return
            }
        }
        isUnlocked = false
    }

    private func listenForTransactions() -> Task<Void, Never> {
        Task.detached { [weak self] in
            for await result in Transaction.updates {
                guard let self else { return }
                do {
                    let transaction = try await self.verify(result)
                    await transaction.finish()
                    await self.refreshEntitlement()
                } catch {
                    await self.log.error("Unverified transaction update discarded.")
                }
            }
        }
    }

    private func verify<T>(_ result: VerificationResult<T>) throws -> T {
        switch result {
        case .unverified(_, let error): throw error
        case .verified(let safe): return safe
        }
    }

    func clearError() {
        if case .failed = state { state = .idle }
    }
}
