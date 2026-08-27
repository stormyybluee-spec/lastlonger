//
//  CustomPhrasesView.swift
//  LAST LONGER
//
//  Editor for the up-to-10 custom coach lines injected into the voice
//  rotation. Bound to the shared AppSettings store, so edits persist
//  immediately (AppSettings caps the list at 10 on write).
//

import SwiftUI
import UIKit

struct CustomPhrasesView: View {

    @ObservedObject var settings: AppSettings

    @State private var draft = ""
    @FocusState private var fieldFocused: Bool

    private let maxCount = 10

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 0) {

                LLSection(title: "Custom Phrases",
                          subtitle: "Up to \(maxCount) lines. Injected into the coach's rotation during a session.") {

                    if settings.customPhrases.isEmpty {
                        Text("No custom phrases yet.")
                            .font(LLFont.mono(11))
                            .foregroundStyle(LLColor.textFaint)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal, LLMetrics.gutter)
                            .padding(.vertical, 16)
                    } else {
                        ForEach(Array(settings.customPhrases.enumerated()), id: \.offset) { index, phrase in
                            if index > 0 { LLDivider() }
                            LLRow(symbol: "quote.opening", title: phrase) {
                                Button {
                                    remove(at: index)
                                } label: {
                                    Image(systemName: "minus.circle.fill")
                                        .font(.system(size: 15, weight: .semibold))
                                        .foregroundStyle(LLColor.primary)
                                }
                                .buttonStyle(.plain)
                                .accessibilityLabel("Remove phrase")
                            }
                        }
                    }
                }

                if settings.customPhrases.count < maxCount {
                    addRow
                } else {
                    Text("You've reached the \(maxCount)-phrase limit. Remove one to add another.")
                        .font(LLFont.mono(10))
                        .foregroundStyle(LLColor.textFaint)
                        .padding(.horizontal, LLMetrics.gutter)
                }
            }
            .padding(.top, 8)
        }
        .llScreen()
        .navigationTitle("Custom Phrases")
        .navigationBarTitleDisplayMode(.inline)
    }

    private var addRow: some View {
        HStack(spacing: 8) {
            TextField("Add a line", text: $draft)
                .font(LLFont.mono(12))
                .foregroundStyle(LLColor.text)
                .focused($fieldFocused)
                .submitLabel(.done)
                .onSubmit(commit)
                .padding(.vertical, 10)
                .padding(.horizontal, 12)
                .background(LLColor.card)
                .clipShape(RoundedRectangle(cornerRadius: LLMetrics.buttonRadius))

            Button(action: commit) {
                Image(systemName: "plus")
                    .font(.system(size: 14, weight: .bold))
                    .foregroundStyle(LLColor.background)
                    .frame(width: 42, height: 42)
                    .background(LLColor.secondary)
                    .clipShape(RoundedRectangle(cornerRadius: LLMetrics.buttonRadius))
            }
            .buttonStyle(.plain)
            .disabled(trimmedDraft.isEmpty)
            .opacity(trimmedDraft.isEmpty ? 0.4 : 1)
            .accessibilityLabel("Add phrase")
        }
        .padding(.horizontal, LLMetrics.gutter)
        .padding(.top, 4)
    }

    private var trimmedDraft: String {
        draft.trimmingCharacters(in: .whitespacesAndNewlines)
    }

    private func commit() {
        let phrase = trimmedDraft
        guard !phrase.isEmpty,
              settings.customPhrases.count < maxCount,
              !settings.customPhrases.contains(phrase) else { return }
        settings.customPhrases.append(phrase)
        draft = ""
        fieldFocused = false
        UISelectionFeedbackGenerator().selectionChanged()
    }

    private func remove(at index: Int) {
        guard settings.customPhrases.indices.contains(index) else { return }
        settings.customPhrases.remove(at: index)
        UIImpactFeedbackGenerator(style: .rigid).impactOccurred()
    }
}
