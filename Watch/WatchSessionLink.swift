//
//  WatchSessionLink.swift
//  LAST LONGER — watchOS target only.
//
//  PART 12 — the watch half of the link. Mirror of PhoneWatchLink with the
//  arrows reversed.
//
//  Heart rate is the one high-frequency stream here. It goes out as
//  `sendMessage` and is allowed to fail: a dropped sample is worthless a
//  second later anyway, and queueing them via transferUserInfo would build
//  a backlog that floods the phone on reconnect with readings that are
//  minutes stale.
//

import Foundation
import WatchConnectivity

@MainActor
final class WatchSessionLink: NSObject, ObservableObject {

    static let shared = WatchSessionLink()

    @Published private(set) var state = WatchState()
    @Published private(set) var isReachable = false
    @Published private(set) var isSessionActive = false
    @Published private(set) var isEmergencyActive = false

    /// Inbound commands the watch acts on locally.
    var onHapticCommand: ((SilentSignal) -> Void)?
    var onEmergencyBegan: ((TimeInterval) -> Void)?
    var onEmergencyEnded: ((Bool) -> Void)?
    var onPONRWarning: (() -> Void)?

    private var session: WCSession? {
        WCSession.isSupported() ? WCSession.default : nil
    }

    private override init() { super.init() }

    // MARK: - Activation

    func activate() {
        guard let session else { return }
        session.delegate = self
        if session.activationState != .activated {
            session.activate()
        }
        isReachable = session.isReachable
    }

    // MARK: - Outbound

    func send(_ signal: SessionSignal) {
        guard let session, session.activationState == .activated else { return }

        switch signal {
        case .heartRate:
            // Perishable. Best effort only — never queue.
            guard session.isReachable else { return }
            session.sendMessage(signal.encoded(), replyHandler: nil, errorHandler: nil)

        default:
            // Button presses and grip warnings must arrive.
            let payload = signal.encoded()
            if session.isReachable {
                session.sendMessage(payload, replyHandler: nil) { _ in
                    session.transferUserInfo(payload)
                }
            } else {
                session.transferUserInfo(payload)
            }
        }
    }

    // MARK: - Inbound

    private func handle(_ payload: [String: Any]) {
        guard let signal = SessionSignal.decode(from: payload) else { return }

        switch signal {
        case .stateUpdate(let newState):
            state = newState
            isEmergencyActive = newState.isEmergencyActive

        case .sessionStarted:
            isSessionActive = true

        case .sessionEnded:
            isSessionActive = false
            isEmergencyActive = false
            state = WatchState()

        case .emergencyBegan(let duration):
            isEmergencyActive = true
            onEmergencyBegan?(duration)

        case .emergencyEnded(let completed):
            isEmergencyActive = false
            onEmergencyEnded?(completed)

        case .ponrWarning:
            onPONRWarning?()

        case .hapticCommand(let silentSignal):
            onHapticCommand?(silentSignal)

        default:
            break
        }
    }
}

// MARK: - WCSessionDelegate

extension WatchSessionLink: WCSessionDelegate {

    nonisolated func session(_ session: WCSession,
                             activationDidCompleteWith state: WCSessionActivationState,
                             error: Error?) {
        Task { @MainActor in self.isReachable = session.isReachable }
    }

    nonisolated func sessionReachabilityDidChange(_ session: WCSession) {
        Task { @MainActor in self.isReachable = session.isReachable }
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
}
