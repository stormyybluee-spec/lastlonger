//
//  StoreManager.swift
//  LAST LONGER
//
//  One non-consumable. No subscriptions, no tiers, no consumables.
//
//  Entitlement is read from `Transaction.currentEntitlements` every launch
//  rather than cached in CoreData. StoreKit 2 verifies the signature on
//  device, so there is nothing to check with a server — which is the point,
//  and also means a user who deletes and reinstalls gets their purchase back
//  from the App Store account without a "restore" tap.
//

import Foundation
import StoreKit

@MainActor
public final class StoreManager: ObservableObject {

    public static let productID = "com.lastlonger.unlock.forever"

    public enum PurchaseState: Equatable {
        case idle
        case loading
        case purchasing
        case owned
        case failed(String)
    }

    public static let shared = StoreManager()

    @Published public private(set) var product: Product?
    @Published public private(set) var state: PurchaseState = .idle
    @Published public private(set) var isUnlocked = false

    private var updatesTask: Task<Void, Never>?

    private init() {
        listenForTransactions()
        Task {
            await loadProduct()
            await refreshEntitlement()
        }
    }

    deinit { updatesTask?.cancel() }

    /// Display price straight from StoreKit, already localised and
    /// currency-correct. Never hardcode "$9.99" in the UI.
    public var displayPrice: String {
        product?.displayPrice ?? "—"
    }

    // MARK: - Load

    public func loadProduct() async {
        guard product == nil else { return }
        state = .loading
        do {
            let products = try await Product.products(for: [Self.productID])
            product = products.first
            state = isUnlocked ? .owned : .idle
        } catch {
            state = .failed("Could not reach the App Store. Check your connection and try again.")
        }
    }

    // MARK: - Purchase

    public func purchase() async {
        guard let product else {
            state = .failed("The unlock isn't available right now. Try again in a moment.")
            return
        }

        state = .purchasing
        do {
            let result = try await product.purchase()
            switch result {
            case .success(let verification):
                guard let transaction = try? checkVerified(verification) else {
                    state = .failed("That purchase couldn't be verified. Nothing was charged.")
                    return
                }
                await transaction.finish()
                isUnlocked = true
                state = .owned

            case .userCancelled:
                state = isUnlocked ? .owned : .idle

            case .pending:
                // Ask to Buy / SCA. The transaction listener picks it up.
                state = .idle

            @unknown default:
                state = .idle
            }
        } catch {
            state = .failed("The purchase didn't go through. Nothing was charged.")
        }
    }

    // MARK: - Restore

    public func restore() async {
        state = .loading
        do {
            try await AppStore.sync()
            await refreshEntitlement()
            if !isUnlocked {
                state = .failed("No previous purchase found on this Apple Account.")
            }
        } catch {
            state = .failed("Restore didn't complete. Try again.")
        }
    }

    // MARK: - Entitlement

    public func refreshEntitlement() async {
        for await entitlement in Transaction.currentEntitlements {
            guard let transaction = try? checkVerified(entitlement) else { continue }
            if transaction.productID == Self.productID && transaction.revocationDate == nil {
                isUnlocked = true
                state = .owned
                return
            }
        }
        isUnlocked = false
        if state == .owned { state = .idle }
    }

    private func listenForTransactions() {
        updatesTask = Task.detached { [weak self] in
            for await update in Transaction.updates {
                guard let self else { return }
                guard let transaction = try? await self.checkVerified(update) else { continue }
                await transaction.finish()
                await self.refreshEntitlement()
            }
        }
    }

    private func checkVerified<T>(_ result: VerificationResult<T>) throws -> T {
        switch result {
        case .unverified:
            throw StoreError.failedVerification
        case .verified(let safe):
            return safe
        }
    }

    enum StoreError: Error { case failedVerification }
}
