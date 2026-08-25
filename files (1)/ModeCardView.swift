//
//  ModeCardView.swift
//  LAST LONGER
//
//  One cell of the Precision Atlas. Selection is ordered, not boolean —
//  the card shows 1 or 2, which is the whole affordance for "mode one runs
//  first, mode two runs second".
//

import SwiftUI

@MainActor
struct ModeCardView: View {

    let mode: SessionMode
    /// 1 or 2 when selected, nil when not.
    let selectionIndex: Int?
    /// Selection is full and this card isn't part of it.
    let isBlocked: Bool
    let action: () -> Void

    @State private var isPressed = false

    private var isSelected: Bool { selectionIndex != nil }

    private var borderColor: Color {
        if isSelected { return mode.difficulty.dot }
        return Theme.hairline
    }

    var body: some View {
        Button(action: action) {
            VStack(alignment: .leading, spacing: 0) {

                // ── Header row: icon + selection badge
                HStack(alignment: .top) {
                    Image(systemName: mode.symbol)
                        .font(.system(size: 20, weight: .semibold))
                        .foregroundStyle(isSelected ? mode.difficulty.dot : Theme.inkDim)
                        .frame(width: 28, height: 28, alignment: .leading)

                    Spacer(minLength: 0)

                    if let index = selectionIndex {
                        Text("\(index)")
                            .font(Typeface.numeric(13))
                            .foregroundStyle(Theme.bg)
                            .frame(width: 22, height: 22)
                            .background(mode.difficulty.dot, in: RoundedRectangle(cornerRadius: Theme.Metric.chipRadius))
                            .transition(.scale.combined(with: .opacity))
                    }
                }
                .padding(.bottom, 14)

                // ── Name
                Text(mode.name)
                    .font(Typeface.pixel(15))
                    .foregroundStyle(Theme.ink)
                    .lineLimit(2)
                    .multilineTextAlignment(.leading)
                    .fixedSize(horizontal: false, vertical: true)
                    .padding(.bottom, 6)

                // ── Description
                Text(mode.blurb)
                    .font(Typeface.body(11))
                    .foregroundStyle(Theme.inkDim)
                    .lineLimit(3)
                    .multilineTextAlignment(.leading)
                    .fixedSize(horizontal: false, vertical: true)

                Spacer(minLength: 12)

                Rule()
                    .padding(.bottom, 8)

                // ── Footer: difficulty dot + estimate
                HStack(spacing: 6) {
                    Circle()
                        .fill(mode.difficulty.dot)
                        .frame(width: 6, height: 6)

                    Text(mode.difficulty.label)
                        .font(Typeface.label(9))
                        .uppercaseLabel(tracking: 1.0)
                        .foregroundStyle(Theme.inkDim)
                        .lineLimit(1)
                        .minimumScaleFactor(0.8)

                    Spacer(minLength: 4)

                    Text(mode.estimatedLabel)
                        .font(Typeface.label(9))
                        .uppercaseLabel(tracking: 1.0)
                        .foregroundStyle(Theme.inkFaint)
                        .lineLimit(1)
                }
            }
            .padding(14)
            .frame(maxWidth: .infinity, minHeight: 186, alignment: .topLeading)
            .background(isPressed ? Theme.cardPressed : Theme.card)
            .overlay(
                RoundedRectangle(cornerRadius: Theme.Metric.cardRadius)
                    .strokeBorder(borderColor, lineWidth: isSelected ? 1.5 : 1)
            )
            .overlay(alignment: .topLeading) {
                // Corner registration mark — the "Precision" tell.
                if isSelected {
                    Path { path in
                        path.move(to: CGPoint(x: 0, y: 10))
                        path.addLine(to: CGPoint(x: 0, y: 0))
                        path.addLine(to: CGPoint(x: 10, y: 0))
                    }
                    .stroke(mode.difficulty.dot, lineWidth: 2)
                    .frame(width: 10, height: 10)
                    .padding(4)
                }
            }
            .clipShape(RoundedRectangle(cornerRadius: Theme.Metric.cardRadius))
            .opacity(isBlocked ? 0.32 : 1)
            .scaleEffect(isPressed ? 0.975 : 1)
        }
        .buttonStyle(.plain)
        .disabled(isBlocked)
        .animation(.snappy(duration: 0.18), value: selectionIndex)
        .animation(.easeOut(duration: 0.12), value: isPressed)
        .simultaneousGesture(
            DragGesture(minimumDistance: 0)
                .onChanged { _ in isPressed = true }
                .onEnded { _ in isPressed = false }
        )
        .accessibilityElement(children: .combine)
        .accessibilityLabel("\(mode.name). \(mode.blurb) Difficulty \(mode.difficulty.label). \(mode.estimatedLabel).")
        .accessibilityValue(selectionIndex.map { "Selected, position \($0)" } ?? "Not selected")
        .accessibilityHint(isBlocked ? "Deselect another mode first" : "Double tap to select")
    }
}
