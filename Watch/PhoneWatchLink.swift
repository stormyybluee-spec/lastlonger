//
//  PhoneWatchLink.swift
//  LAST LONGER — iOS target only.
//
//  PART 12 — the phone half of the link.
//
//  DELIVERY STRATEGY
//  -----------------
//  WatchConnectivity has three transports and they are not interchangeable:
//
//    sendMessage           Fast, but ONLY when the counterpart is reachable.
//                          Throws if not. Right for live, perishable data
//                          where a dropped update doesn't matter — the next
//                          one is a second away.
//
//    transferUserInfo      Queued and guaranteed, delivered FIFO whenever the
//                          counterpart wakes. Right for events that must not
//                          be lost — a button press, an emergency.
//
//    updateApplicationContext  Latest-value-wins, coalesced. Right for a
//                          state snapshot where only the newest matters.
//
//  So: state snapshots go out as application context (coalesced — no queue
//  backing up while the watch is asleep), and user actions go out as
//  messages with a userInfo fallback. Sending an emergency trigger as a
//  best-effort message that silently fails when the watch dozed off would be
//  the single worst bug in this app.
//

import Foundation
import WatchConnectivity

@MainActor
final class PhoneWatchLink: NSObject, ObservableObject {

    static let shared = PhoneWatchLink()

    @Published private(set) var isPaired = false
    @Published private(set) var isWatchAppInstalled = false
    @Published private(set) var isReachable = false

    /// Every inbound signal from the watch.
    var onSignal: ((SessionSignal) -> Void)?

    private var session: WCSession? {
        WCSession.isSupported() ? WCSession.default : nil
    }

    private override init() {
        super.init()
    }

    // MARK: - Activation

    func activate() {
        guard let session else { return }
        session.delegate = self
        if session.activationState != .activated {
            session.activate()
        }
        refreshStatus()
    }

    private func refreshStatus() {
        guard let session else { return }
        isPaired = session.isPaired
        isWatchAppInstalled = session.isWatchAppInstalled
        isReachable = session.isReachable
    }

    // MARK: - Outbound

    func send(_ signal: SessionSignal) {
        guard let session, session.activationState == .activated else { return }

        switch signal {
        case .stateUpdate:
            // Coalesced: only the newest snapshot matters, and a queue of
            // stale ones would drain onto the watch all at once on wake.
            try? session.updateApplicationContext(signal.encoded())

        case .emergencyBegan, .emergencyEnded, .sessionStarted,
             .sessionEnded, .ponrWarning, .hapticCommand:
            deliverGuaranteed(signal, on: session)

        default:
            deliverGuaranteed(signal, on: session)
        }
    }

    private func deliverGuaranteed(_ signal: SessionSignal, on session: WCSession) {
        let payload = signal.encoded()
        if session.isReachable {
            session.sendMessage(payload, replyHandler: nil) { _ in
                // Reachability can lapse between the check and the send.
                // Fall back rather than dropping the event.
                session.transferUserInfo(payload)
            }
        } else {
            session.transferUserInfo(payload)
        }
    }

    // MARK: - Inbound

    private func handle(_ payload: [String: Any]) {
        guard let signal = SessionSignal.decode(from: payload) else { return }
        Task { @MainActor in self.onSignal?(signal) }
    }
}

// MARK: - WCSessionDelegate

extension PhoneWatchLink: WCSessionDelegate {

    nonisolated func session(_ session: WCSession,
                             activationDidCompleteWith state: WCSessionActivationState,
                             error: Error?) {
        Task { @MainActor in self.refreshStatus() }
    }

    nonisolated func sessionReachabilityDidChange(_ session: WCSession) {
        Task { @MainActor in self.refreshStatus() }
    }

    nonisolated func session(_ session: WCSession, didReceiveMessage message: [String: Any]) {
        Task { @MainActor in self.handle(message) }
    }

    nonisolated func session(_ session: WCSession, didReceiveUserInfo userInfo: [String: Any]) {
        Task { @MainActor in self.handle(userInfo) }
    }

    nonisolated func session(_ session: WCSession,
                             didReceiveApplicationContext applicationContext: [String: Any]) {
        Task { @MainActor in self.handle(applicationContext) }
    }

    // Required on iOS. The session must be reactivated to support switching
    // to a different paired watch.
    nonisolated func sessionDidBecomeInactive(_ session: WCSession) {}

    nonisolated func sessionDidDeactivate(_ session: WCSession) {
        session.activate()
    }
}
