//
//  StoreManager.swift
//  LAST LONGER
//
//  StoreKit 2. Two auto-renewing subscriptions in one group - weekly and
//  yearly - plus the original lifetime non-consumable, which is still honoured
//  for anyone who bought it before the app moved to a free download.
//
//  No receipt server, no validation endpoint, no third-party SDK. StoreKit 2
//  verifies transactions on device and that is the whole entitlement story.
//

import Foundation
import StoreKit
import os

@MainActor
final class StoreManager: ObservableObject {

    // MARK: - Products

    /// Must match the product IDs in Configuration.storekit and App Store Connect.
    enum ProductID {
        static let weekly   = "com.lastlonger.app.sub.weekly"
        static let yearly   = "com.lastlonger.app.sub.yearly"
        /// Retired from sale. Still entitles anyone who already owns it.
        static let lifetime = "com.lastlonger.app.unlock.lifetime"

        static let all: [String] = [weekly, yearly, lifetime]
    }

    /// The two tiers the paywall sells, in display order.
    enum Tier: String, CaseIterable, Identifiable {
        case weekly, yearly

        var id: String { rawValue }

        var productID: String {
            switch self {
            case .weekly: return ProductID.weekly
            case .yearly: return ProductID.yearly
            }
        }

        /// Name on the paywall button.
        var title: String {
            switch self {
            case .weekly: return "Unlock the Challenge"
            case .yearly: return "Commander's Pass"
            }
        }

        /// Fallback price, used only if StoreKit has not returned the product.
        /// The live `Product.displayPrice` wins everywhere it is available -
        /// a hardcoded price is wrong in every storefront outside the US.
        var fallbackPrice: String {
            switch self {
            case .weekly: return "$1.99"
            case .yearly: return "$39.99"
            }
        }

        var periodLabel: String {
            switch self {
            case .weekly: return "per week"
            case .yearly: return "per year"
            }
        }
    }

    enum PurchaseState: Equatable {
        case idle
        case loadingProducts
        case purchasing
        case restoring
        /// Ask-to-Buy / SCA. Entitlement will arrive later via Transaction.updates.
        case pending
        case failed(String)
    }

    @Published private(set) var products: [String: Product] = [:]
    @Published private(set) var isUnlocked = false
    @Published private(set) var state: PurchaseState = .idle

    private var updateListener: Task<Void, Never>?
    private let log = Logger(subsystem: "com.lastlonger.app", category: "store")

    /// Set by the DEBUG-only Founder BETA bypass so a later `refreshEntitlement`
    /// (fired by init or a transaction update) can't undo the override.
    private var betaOverride = false

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

    // MARK: - Loading

    func loadProducts() async {
        state = .loadingProducts
        do {
            let loaded = try await Product.products(for: ProductID.all)
            products = Dictionary(uniqueKeysWithValues: loaded.map { ($0.id, $0) })
            // Only the two subscriptions are on sale, so only their absence is
            // an error worth surfacing. The retired lifetime product is
            // expected to be missing on a fresh account.
            let sellable = Tier.allCases.contains { products[$0.productID] != nil }
            state = sellable
                ? .idle
                : .failed("Store listing unavailable. Check your connection and try again.")
        } catch {
            log.error("Product load failed: \(error.localizedDescription, privacy: .public)")
            state = .failed("Store unavailable. Check your connection and try again.")
        }
    }

    func product(for tier: Tier) -> Product? { products[tier.productID] }

    /// Localized price straight from StoreKit, with the US list price as a
    /// last resort so the button is never blank while products are in flight.
    func displayPrice(for tier: Tier) -> String {
        product(for: tier)?.displayPrice ?? tier.fallbackPrice
    }

    /// "$1.99 per week" / "$39.99 per year".
    func priceLine(for tier: Tier) -> String {
        "\(displayPrice(for: tier)) \(tier.periodLabel)"
    }

    /// Introductory offer copy, when the tier actually carries one. Returns nil
    /// rather than inventing a free trial that App Review would reject.
    func introOfferLine(for tier: Tier) -> String? {
        guard let offer = product(for: tier)?.subscription?.introductoryOffer else { return nil }
        let unit = offer.period.unit
        let count = offer.period.value
        let noun: String
        switch unit {
        case .day:   noun = count == 1 ? "day" : "days"
        case .week:  noun = count == 1 ? "week" : "weeks"
        case .month: noun = count == 1 ? "month" : "months"
        case .year:  noun = count == 1 ? "year" : "years"
        @unknown default: return nil
        }
        return offer.paymentMode == .freeTrial ? "\(count) \(noun) free, then" : nil
    }

    // MARK: - Purchase

    func purchase(_ tier: Tier) async {
        guard let product = product(for: tier) else {
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
                await refreshEntitlement()
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

    /// Required by App Review guideline 3.1.1, and the only way a subscriber on
    /// a new device gets their entitlement back.
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

    /// Unlocked by any live subscription in the group, or by the retired
    /// lifetime unlock. `currentEntitlements` already drops lapsed
    /// subscriptions, so an expired one simply stops appearing here.
    func refreshEntitlement() async {
        // Keep the Founder BETA bypass sticky for the session.
        if betaOverride { isUnlocked = true; return }
        for await result in Transaction.currentEntitlements {
            guard let transaction = try? verify(result) else { continue }
            guard transaction.revocationDate == nil else { continue }
            if let expiry = transaction.expirationDate, expiry <= Date() { continue }
            if ProductID.all.contains(transaction.productID) {
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

#if DEBUG
    // MARK: - Founder BETA (DEBUG only)

    /// Grants the entitlement without a purchase so the app can be entered for
    /// testing. Gated to DEBUG so it is never compiled into a release build - a
    /// "skip payment" path in production would be an instant App Review
    /// rejection and a revenue bypass.
    func enableFounderBeta() {
        betaOverride = true
        isUnlocked = true
        state = .idle
    }
#endif
}
