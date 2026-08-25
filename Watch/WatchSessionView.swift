//
//  WatchSessionView.swift
//  LAST LONGER — watchOS target only.
//
//  PART 12 — the watch screens.
//
//  The watch is operated blind. The user is not looking at it, and often
//  isn't looking at anything. So the layout is driven by one rule: each
//  button must be findable by position alone.
//
//  Threshold and Cooldown are the two frequent actions and take the top half
//  as a full-width pair — left is red, right is green, and they stay in
//  those positions in every state. Emergency sits alone below them where
//  nothing else ever goes, so a blind reach to the bottom-centre can only
//  hit one thing. End is deliberately the smallest target on screen and
//  requires a long press.
//

//  PLATFORM GUARD — added during consolidation.
//
//  This file is watchOS-only, but consolidation moved it into a tree that the
//  iOS target compiles wholesale. Guarding only `import WatchKit` is not enough:
//  the body below also refers to WatchKit and watchOS-only HealthKit types that
//  simply do not exist on iOS, so the file has to compile to nothing there.
//
//  Add it to the watchOS target's Compile Sources; the guard makes it inert if
//  it is also a member of the iOS target.

#if os(watchOS)

import SwiftUI
import WatchKit

// MARK: - Model

@MainActor
final class WatchSessionModel: ObservableObject {

    let link = WatchSessionLink.shared
    let heartRate = HeartRateMonitor()
    let grip = GripSensor()
    private let haptics = WatchHaptics.shared

    @Published var showEmergency = false
    @Published var emergencyRemaining = 10
    @Published var gripWarningVisible = false

    private var emergencyTicker: Timer?

    init() {
        wire()
    }

    private func wire() {
        link.onHapticCommand = { [weak self] signal in
            self?.haptics.play(signal)
        }

        link.onEmergencyBegan = { [weak self] duration in
            self?.beginEmergency(duration: duration)
        }

        link.onEmergencyEnded = { [weak self] _ in
            self?.endEmergency()
        }

        link.onPONRWarning = { [weak self] in
            self?.haptics.ponrWarning()
        }

        heartRate.onSample = { [weak self] bpm in
            self?.link.send(.heartRate(bpm: bpm, at: Date()))
        }

        grip.onGripTooTight = { [weak self] rigidity, cadence in
            guard let self else { return }
            self.haptics.loosenWrist()
            self.link.send(.gripTooTight(rigidity: rigidity, cadence: cadence))
            self.gripWarningVisible = true
            Task { @MainActor in
                try? await Task.sleep(for: .seconds(6))
                self.gripWarningVisible = false
            }
        }
    }

    // MARK: - Lifecycle

    func onAppear() {
        link.activate()
        Task {
            await heartRate.requestAuthorization()
            heartRate.start()
            grip.start()
        }
    }

    func onDisappear() {
        heartRate.stop()
        grip.stop()
        haptics.stopEmergency()
    }

    // MARK: - Actions

    func tapThreshold() {
        haptics.threshold()
        link.send(.thresholdTapped)
    }

    func tapCooldown() {
        haptics.cooldown()
        link.send(.cooldownTapped)
    }

    func tapEmergency() {
        link.send(.emergencyTapped)
        beginEmergency(duration: 10)
    }

    func tapEnd() {
        haptics.end()
        link.send(.endTapped)
    }

    // MARK: - Emergency

    private func beginEmergency(duration: TimeInterval) {
        guard !showEmergency else { return }
        showEmergency = true
        emergencyRemaining = Int(duration)
        haptics.startEmergency(duration: duration)

        emergencyTicker?.invalidate()
        let startedAt = Date()
        emergencyTicker = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { _ in
            MainActor.assumeIsolated {
                let elapsed = Date().timeIntervalSince(startedAt)
                self.emergencyRemaining = max(0, Int(ceil(duration - elapsed)))
                if elapsed >= duration { self.endEmergency() }
            }
        }
    }

    private func endEmergency() {
        emergencyTicker?.invalidate()
        emergencyTicker = nil
        haptics.stopEmergency()
        showEmergency = false
        emergencyRemaining = 10
    }
}

// MARK: - Root

@MainActor
struct WatchSessionView: View {

    @StateObject private var model = WatchSessionModel()

    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()

            if model.showEmergency {
                WatchEmergencyView(remaining: model.emergencyRemaining)
                    .transition(.opacity)
            } else {
                controlDeck
            }
        }
        .animation(.easeInOut(duration: 0.2), value: model.showEmergency)
        .onAppear(perform: model.onAppear)
        .onDisappear(perform: model.onDisappear)
    }

    // MARK: - Deck

    private var controlDeck: some View {
        VStack(spacing: 5) {
            telemetry

            HStack(spacing: 5) {
                WatchButton(title: "Threshold",
                            symbol: "flame.fill",
                            tint: Theme.edge) {
                    model.tapThreshold()
                }
                WatchButton(title: "Cooldown",
                            symbol: "wind",
                            tint: Theme.safe) {
                    model.tapCooldown()
                }
            }

            WatchButton(title: "Emergency",
                        symbol: "exclamationmark.triangle.fill",
                        tint: Color(hex: 0xFF9500),
                        isWide: true) {
                model.tapEmergency()
            }

            Text("End")
                .font(.system(size: 11, weight: .semibold, design: .monospaced))
                .foregroundStyle(Theme.inkDim)
                .frame(maxWidth: .infinity)
                .frame(height: 26)
                .background(Theme.card)
                .clipShape(RoundedRectangle(cornerRadius: 4))
                .contentShape(Rectangle())
                .onLongPressGesture(minimumDuration: 0.6) { model.tapEnd() }
                .accessibilityAddTraits(.isButton)
                .accessibilityLabel("End session")
                .accessibilityHint("Long press to end")
        }
        .padding(.horizontal, 4)
    }

    // MARK: - Telemetry

    private var telemetry: some View {
        VStack(spacing: 3) {
            HStack(spacing: 8) {
                Text(model.link.state.elapsedLabel)
                    .font(.system(size: 19, weight: .heavy, design: .rounded))
                    .monospacedDigit()
                    .foregroundStyle(Theme.ink)

                Spacer()

                HStack(spacing: 3) {
                    Image(systemName: "heart.fill")
                        .font(.system(size: 9))
                        .foregroundStyle(Theme.edge)
                    Text(model.heartRate.currentBPM.map(String.init) ?? "--")
                        .font(.system(size: 14, weight: .bold, design: .rounded))
                        .monospacedDigit()
                        .foregroundStyle(Theme.ink)
                }
            }

            HStack(spacing: 6) {
                Text(model.link.state.phase)
                    .font(.system(size: 9, weight: .semibold, design: .monospaced))
                    .textCase(.uppercase)
                    .foregroundStyle(tint(for: model.link.state.phaseTint))

                Spacer()

                HStack(spacing: 3) {
                    Image(systemName: "flame")
                        .font(.system(size: 8, weight: .bold))
                    Text("\(model.link.state.thresholdStreak)")
                        .font(.system(size: 12, weight: .heavy, design: .rounded))
                        .monospacedDigit()
                }
                .foregroundStyle(Theme.rising)
            }

            if model.gripWarningVisible {
                Text("LOOSEN WRIST")
                    .font(.system(size: 9, weight: .bold, design: .monospaced))
                    .foregroundStyle(Theme.bg)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 3)
                    .background(Theme.rising)
                    .clipShape(RoundedRectangle(cornerRadius: 3))
                    .transition(.opacity)
            }
        }
        .padding(.bottom, 2)
        .animation(.easeInOut(duration: 0.2), value: model.gripWarningVisible)
    }

    private func tint(for tint: WatchState.Tint) -> Color {
        switch tint {
        case .alert:  return Theme.edge
        case .safe:   return Theme.safe
        case .rising: return Theme.rising
        case .data:   return Theme.data
        case .inert:  return Theme.inert
        }
    }
}

// MARK: - Button

@MainActor
struct WatchButton: View {
    let title: String
    let symbol: String
    let tint: Color
    var isWide: Bool = false
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            VStack(spacing: 2) {
                Image(systemName: symbol)
                    .font(.system(size: isWide ? 13 : 16, weight: .bold))
                Text(title)
                    .font(.system(size: isWide ? 10 : 9, weight: .bold, design: .monospaced))
                    .textCase(.uppercase)
                    .lineLimit(1)
                    .minimumScaleFactor(0.7)
            }
            .foregroundStyle(Theme.bg)
            .frame(maxWidth: .infinity)
            .frame(height: isWide ? 38 : 54)
            .background(tint)
            .clipShape(RoundedRectangle(cornerRadius: 4))
        }
        .buttonStyle(.plain)
        .accessibilityLabel(title)
    }
}

// MARK: - Emergency screen

@MainActor
struct WatchEmergencyView: View {
    let remaining: Int

    var body: some View {
        ZStack {
            Theme.edge.ignoresSafeArea()

            VStack(spacing: 4) {
                Text("SQUEEZE")
                    .font(.system(size: 20, weight: .black, design: .monospaced))
                    .foregroundStyle(.white)

                Text("\(remaining)")
                    .font(.system(size: 58, weight: .black, design: .rounded))
                    .monospacedDigit()
                    .foregroundStyle(.white)
                    .contentTransition(.numericText(countsDown: true))

                Text("PELVIC FLOOR. HOLD.")
                    .font(.system(size: 10, weight: .bold, design: .monospaced))
                    .foregroundStyle(.white.opacity(0.85))
            }
        }
        .accessibilityElement(children: .combine)
        .accessibilityLabel("Emergency protocol. Squeeze. \(remaining) seconds remaining.")
    }
}

#endif
