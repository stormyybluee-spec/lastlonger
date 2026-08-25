//
//  RitualBuilderView.swift
//  LAST LONGER
//
//  PART C-3 — Pre-Session Ritual builder and runner.
//
//  Reordering uses List + .onMove with editMode pinned active rather than a
//  custom draggable/dropDestination stack. Two reasons: the drag handles are
//  always visible so the affordance does not have to be discovered, and
//  VoiceOver gets the system reorder rotor for free, which a hand-rolled drop
//  target does not provide.
//

import SwiftUI
import UIKit

// MARK: - Builder

struct RitualBuilderView: View {

    @ObservedObject var store: RitualStore
    @ObservedObject var settings: AppSettings

    @State private var showingPalette = false
    @State private var runnerActive = false

    var body: some View {
        VStack(spacing: 0) {
            header

            if store.ritual.blocks.isEmpty {
                emptyState
            } else {
                blockList
            }

            footer
        }
        .background(LL.C.bg.ignoresSafeArea())
        .sheet(isPresented: $showingPalette) {
            BlockPaletteSheet { store.add($0) }
        }
        .fullScreenCover(isPresented: $runnerActive) {
            RitualRunnerView(
                runner: RitualRunner(blocks: store.ritual.blocks,
                                     persona: settings.persona,
                                     hapticIntensity: settings.haptics,
                                     voiceEnabled: settings.voiceEnabled)
            )
        }
    }

    private var header: some View {
        VStack(alignment: .leading, spacing: 12) {
            LLSectionHeader(title: "Pre-Session Ritual",
                            readout: store.ritual.blocks.isEmpty ? "empty" : store.ritual.formattedTotal)

            Toggle(isOn: $store.ritual.isEnabled) {
                VStack(alignment: .leading, spacing: 2) {
                    LLLabel("Run before every session", color: LL.C.text, size: 11)
                    LLLabel("Skippable from the countdown screen", size: 9)
                }
            }
            .tint(LL.C.green)
            .disabled(store.ritual.blocks.isEmpty)
            .padding(14)
            .crtPanel(tint: LL.C.green)
        }
        .padding(.horizontal, 18)
        .padding(.bottom, 14)
    }

    private var emptyState: some View {
        VStack(spacing: 12) {
            Image(systemName: "square.stack.3d.up.slash")
                .font(.system(size: 34, weight: .light))
                .foregroundStyle(LL.C.dim)
            LLLabel("No blocks yet", color: LL.C.label, size: 12)
            Text("Add blocks below. Drag to reorder. They run top to bottom before the session starts.")
                .font(LLFont.terminal(10))
                .foregroundStyle(LL.C.dim)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 40)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }

    private var blockList: some View {
        List {
            ForEach($store.ritual.blocks) { $block in
                RitualBlockRow(block: $block)
                    .listRowBackground(Color.clear)
                    .listRowSeparator(.hidden)
                    .listRowInsets(EdgeInsets(top: 4, leading: 18, bottom: 4, trailing: 18))
            }
            .onMove { store.move(from: $0, to: $1) }
            .onDelete { store.remove(at: $0) }
        }
        .listStyle(.plain)
        .scrollContentBackground(.hidden)
        .environment(\.editMode, .constant(.active))
    }

    private var footer: some View {
        HStack(spacing: 10) {
            Button {
                UIImpactFeedbackGenerator(style: .light).impactOccurred()
                showingPalette = true
            } label: {
                HStack(spacing: 6) {
                    Image(systemName: "plus").font(.system(size: 12, weight: .bold))
                    LLLabel("Add block", color: LL.C.text, size: 11)
                }
                .frame(maxWidth: .infinity)
                .frame(height: LL.Metric.tap)
                .background(LL.C.card)
                .overlay(RoundedRectangle(cornerRadius: 8, style: .continuous)
                    .strokeBorder(LL.C.hairline, lineWidth: 1))
                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
            }
            .buttonStyle(.plain)
            .disabled(store.ritual.blocks.count >= 8)

            Button {
                runnerActive = true
            } label: {
                HStack(spacing: 6) {
                    Image(systemName: "play.fill").font(.system(size: 12, weight: .bold))
                    LLLabel("Preview", color: LL.C.text, size: 11)
                }
                .frame(maxWidth: .infinity)
                .frame(height: LL.Metric.tap)
                .background(LL.C.blue.opacity(0.16))
                .overlay(RoundedRectangle(cornerRadius: 8, style: .continuous)
                    .strokeBorder(LL.C.blue.opacity(0.45), lineWidth: 1))
                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
            }
            .buttonStyle(.plain)
            .disabled(store.ritual.blocks.isEmpty)
        }
        .padding(.horizontal, 18)
        .padding(.bottom, 10)
    }
}

// MARK: - Block row

struct RitualBlockRow: View {
    @Binding var block: RitualBlock

    private var kind: RitualBlockKind? { block.kind }

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack(spacing: 10) {
                Image(systemName: kind?.symbol ?? "square")
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundStyle(kind?.tint ?? LL.C.dim)
                    .frame(width: 24)

                VStack(alignment: .leading, spacing: 2) {
                    Text((kind?.title ?? "Unknown").uppercased())
                        .font(LLFont.pixel(10))
                        .foregroundStyle(LL.C.text)
                    LLLabel(block.summary, size: 9)
                }
                Spacer()
            }

            if let kind {
                if kind.isRepBased {
                    Stepper(value: $block.reps, in: 1...20) {
                        LLLabel("\(block.reps) reps", color: LL.C.label, size: 10)
                    }
                    .tint(kind.tint)
                }

                HStack(spacing: 10) {
                    LLLabel("\(block.duration)s", color: LL.C.label, size: 10)
                        .frame(width: 42, alignment: .leading)
                    Slider(value: Binding(
                        get: { Double(block.duration) },
                        set: { block.duration = Int($0.rounded()) }
                    ), in: 10...180, step: 5)
                    .tint(kind.tint)
                }
                .accessibilityElement(children: .combine)
                .accessibilityLabel("\(kind.title) duration")
                .accessibilityValue("\(block.duration) seconds")
            }
        }
        .padding(12)
        .crtPanel(tint: kind?.tint ?? LL.C.dim, corner: 8)
    }
}

// MARK: - Palette

struct BlockPaletteSheet: View {
    let onAdd: (RitualBlockKind) -> Void
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 10) {
                    ForEach(RitualCatalog.all) { kind in
                        Button {
                            UIImpactFeedbackGenerator(style: .medium).impactOccurred()
                            onAdd(kind)
                            dismiss()
                        } label: {
                            HStack(spacing: 12) {
                                Image(systemName: kind.symbol)
                                    .font(.system(size: 16, weight: .semibold))
                                    .foregroundStyle(kind.tint)
                                    .frame(width: 34, height: 34)
                                    .background(kind.tint.opacity(0.12))
                                    .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))

                                VStack(alignment: .leading, spacing: 3) {
                                    Text(kind.title.uppercased())
                                        .font(LLFont.pixel(10))
                                        .foregroundStyle(LL.C.text)
                                    Text(kind.detail)
                                        .font(LLFont.terminal(9))
                                        .foregroundStyle(LL.C.dim)
                                        .multilineTextAlignment(.leading)
                                        .fixedSize(horizontal: false, vertical: true)
                                }
                                Spacer()
                                Image(systemName: "plus.circle.fill")
                                    .font(.system(size: 18))
                                    .foregroundStyle(kind.tint)
                            }
                            .padding(14)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .crtPanel(tint: kind.tint)
                        }
                        .buttonStyle(.plain)
                    }
                }
                .padding(18)
            }
            .background(LL.C.bg.ignoresSafeArea())
            .scrollIndicators(.hidden)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    GlitchText(text: "ADD BLOCK", size: 12)
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Close") { dismiss() }
                        .font(LLFont.label(12))
                        .foregroundStyle(LL.C.dim)
                }
            }
        }
        .presentationDetents([.large])
        .preferredColorScheme(.dark)
    }
}

// MARK: - Runner

struct RitualRunnerView: View {

    @StateObject var runner: RitualRunner
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        ZStack {
            LL.C.bg.ignoresSafeArea()
            InstrumentGrid(divisions: 12, color: LL.C.grid.opacity(0.5))
                .ignoresSafeArea()

            VStack(spacing: 28) {
                rail

                Spacer()

                if runner.isFinished {
                    finishedState
                } else if let block = runner.current, let kind = block.kind {
                    activeState(block: block, kind: kind)
                }

                Spacer()
                transport
            }
            .padding(24)

            Scanlines(spacing: 3, opacity: 0.20).ignoresSafeArea()
        }
        .onAppear { runner.start() }
        .onDisappear { runner.stop() }
        .preferredColorScheme(.dark)
    }

    private var rail: some View {
        HStack(spacing: 4) {
            ForEach(Array(runner.blocks.enumerated()), id: \.element.id) { i, block in
                Rectangle()
                    .fill(i < runner.index ? (block.kind?.tint ?? LL.C.dim)
                          : i == runner.index ? (block.kind?.tint ?? LL.C.dim).opacity(0.55)
                          : LL.C.hairline)
                    .frame(height: i == runner.index ? 5 : 3)
            }
        }
        .animation(.easeOut(duration: 0.25), value: runner.index)
        .accessibilityElement(children: .ignore)
        .accessibilityLabel("Ritual progress")
        .accessibilityValue("Block \(runner.index + 1) of \(runner.blocks.count)")
    }

    private func activeState(block: RitualBlock, kind: RitualBlockKind) -> some View {
        VStack(spacing: 22) {
            Image(systemName: kind.symbol)
                .font(.system(size: 42, weight: .light))
                .foregroundStyle(kind.tint)
                .shadow(color: kind.tint.opacity(0.6), radius: 18)

            GlitchText(text: kind.title.uppercased(), size: 18, tint: LL.C.text)

            ZStack {
                Circle()
                    .stroke(LL.C.hairline, lineWidth: 3)
                Circle()
                    .trim(from: 0, to: runner.elapsedFraction)
                    .stroke(kind.tint, style: StrokeStyle(lineWidth: 3, lineCap: .round))
                    .rotationEffect(.degrees(-90))
                    .animation(.linear(duration: 1), value: runner.remaining)

                Text("\(runner.remaining)")
                    .font(LLFont.readout(52))
                    .foregroundStyle(LL.C.text)
                    .contentTransition(.numericText())
            }
            .frame(width: 172, height: 172)

            if kind.isRepBased {
                LLLabel("\(block.reps) reps", color: kind.tint, size: 12)
            }

            Text(kind.detail)
                .font(LLFont.terminal(11))
                .foregroundStyle(LL.C.dim)
                .multilineTextAlignment(.center)
                .fixedSize(horizontal: false, vertical: true)
                .padding(.horizontal, 20)
        }
        .accessibilityElement(children: .combine)
        .accessibilityLabel(kind.title)
        .accessibilityValue("\(runner.remaining) seconds remaining")
    }

    private var finishedState: some View {
        VStack(spacing: 16) {
            Image(systemName: "checkmark.seal.fill")
                .font(.system(size: 48))
                .foregroundStyle(LL.C.green)
                .shadow(color: LL.C.green.opacity(0.6), radius: 20)
            GlitchText(text: "RITUAL COMPLETE", size: 18)
            LLLabel("Session begins on close", size: 11)
        }
    }

    private var transport: some View {
        HStack(spacing: 10) {
            Button {
                runner.stop(); dismiss()
            } label: {
                LLLabel(runner.isFinished ? "Close" : "Skip ritual", color: LL.C.dim, size: 11)
                    .frame(maxWidth: .infinity)
                    .frame(height: LL.Metric.tap)
                    .background(LL.C.card)
                    .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
            }
            .buttonStyle(.plain)

            if !runner.isFinished {
                Button {
                    runner.skip()
                } label: {
                    HStack(spacing: 6) {
                        LLLabel("Next block", color: LL.C.text, size: 11)
                        Image(systemName: "forward.fill").font(.system(size: 11))
                            .foregroundStyle(LL.C.text)
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: LL.Metric.tap)
                    .background(LL.C.blue.opacity(0.16))
                    .overlay(RoundedRectangle(cornerRadius: 8, style: .continuous)
                        .strokeBorder(LL.C.blue.opacity(0.45), lineWidth: 1))
                    .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                }
                .buttonStyle(.plain)
            }
        }
    }
}

// MARK: - Preview

#Preview("Ritual Builder") {
    RitualBuilderView(store: RitualStore(ritual: .suggested), settings: AppSettings())
        .preferredColorScheme(.dark)
}
