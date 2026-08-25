//
//  TrainingGearView.swift
//  LAST LONGER
//
//  PART E-1 — MONETIZATION / AFFILIATE REVENUE
//
//  Reached from Settings. A flat text list. No popups, no banners, no carousels,
//  no images. Tapping a row opens the affiliate URL in SFSafariViewController.
//
//  APP STORE NOTES (read before submitting)
//  • Physical goods sold off-device do NOT require In-App Purchase (Guideline 3.1.1
//    and 3.1.5(a)). Affiliate links to physical products are permitted.
//  • Do NOT link to anything that could be read as a drug purchase. Kanna
//    (Sceletium tortuosum) is an unscheduled herbal supplement in the US/EU, but
//    keep the copy factual and avoid efficacy claims — Guideline 1.4.1 rejects
//    apps that make unsubstantiated health claims. Every description below uses
//    "marketed for" language for exactly this reason.
//  • FTC 16 CFR Part 255 requires a clear, conspicuous affiliate disclosure that
//    a reader cannot miss. The footer below satisfies it. Do not delete it.
//

import SwiftUI
import SafariServices

// MARK: - Model

struct TrainingGearItem: Identifiable, Hashable {
    enum Category: String {
        case topical = "TOPICAL"
        case device = "DEVICE"
        case supplement = "SUPPLEMENT"

        var symbol: String {
            switch self {
            case .topical: return "drop.fill"
            case .device: return "circle.hexagongrid.fill"
            case .supplement: return "pills.fill"
            }
        }
    }

    let id: String
    let name: String
    let category: Category
    /// One line, clinical register. No hype. No efficacy claims.
    let clinicalNote: String
    /// Displayed verbatim. Radical transparency is on-brand and covers the FTC disclosure.
    let commission: String
    /// Concrete, non-optional safety fact. Rendered in warning yellow. `nil` for most items.
    let interaction: String?
    let urlString: String

    var url: URL? { URL(string: urlString) }
}

// MARK: - Catalog

enum TrainingGearCatalog {

    /// REPLACE THESE BEFORE SHIPPING.
    ///
    /// These are placeholders, not live affiliate links — a working link needs YOUR
    /// tracking ID from each program. Register first, then paste the tagged URLs here:
    ///   • Amazon Associates      — tag=yourtag-20
    ///   • ShareASale / Impact    — merchant-issued deep links
    ///   • Direct brand programs  — Fleshlight and most supplement brands run their own
    ///
    /// Keep them in this file, not in a remote config. The app has no server and the
    /// privacy label says "Data Not Collected" — a remote fetch would break both.
    static let items: [TrainingGearItem] = [
        TrainingGearItem(
            id: "pyt-balm",
            name: "PYT Balm",
            category: .topical,
            clinicalNote: "Topical. Marketed to reduce glans sensitivity during threshold work.",
            commission: "15–20%",
            interaction: "Transfers on contact. Wash before partnered sex or it will numb her too.",
            urlString: "https://example.com/affiliate/pyt-balm?ref=REPLACE_ME"
        ),
        TrainingGearItem(
            id: "fleshlight-stu",
            name: "Fleshlight STU",
            category: .device,
            clinicalNote: "Device. Textured sleeve marketed for graduated tolerance drills.",
            commission: "10%",
            interaction: nil,
            urlString: "https://example.com/affiliate/fleshlight-stu?ref=REPLACE_ME"
        ),
        TrainingGearItem(
            id: "ring-pelvic-arm",
            name: "Constriction Ring, Pelvic Floor Arm",
            category: .device,
            clinicalNote: "Device. Ring with a contact arm seated against the pelvic floor.",
            commission: "10–15%",
            interaction: "Twenty minutes maximum. Remove immediately on numbness or colour change.",
            urlString: "https://example.com/affiliate/constriction-ring?ref=REPLACE_ME"
        ),
        TrainingGearItem(
            id: "kanna",
            name: "Kanna Extract",
            category: .supplement,
            clinicalNote: "Supplement. Sceletium tortuosum. Marketed for calm and mood.",
            commission: "15%",
            interaction: "Serotonergic. Do not stack with an SSRI, SNRI or MAOI without a doctor.",
            urlString: "https://example.com/affiliate/kanna?ref=REPLACE_ME"
        ),
        TrainingGearItem(
            id: "theanine-gaba",
            name: "L-Theanine + GABA",
            category: .supplement,
            clinicalNote: "Supplement. Marketed for autonomic calm before a session.",
            commission: "10%",
            interaction: nil,
            urlString: "https://example.com/affiliate/theanine-gaba?ref=REPLACE_ME"
        ),
        TrainingGearItem(
            id: "mag-zinc",
            name: "Magnesium + Zinc",
            category: .supplement,
            clinicalNote: "Supplement. Marketed for muscle recovery and hormonal support.",
            commission: "10%",
            interaction: nil,
            urlString: "https://example.com/affiliate/magnesium-zinc?ref=REPLACE_ME"
        )
    ]
}

// MARK: - View

struct TrainingGearView: View {
    @State private var presentedLink: IdentifiedURL?

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 0) {

                header

                LLSection(title: "Topical") {
                    rows(for: .topical)
                }

                LLSection(title: "Devices") {
                    rows(for: .device)
                }

                LLSection(title: "Supplements") {
                    rows(for: .supplement)
                }

                disclosure
            }
            .padding(.top, 12)
        }
        .llScreen()
        .navigationTitle("Training Gear")
        .navigationBarTitleDisplayMode(.inline)
        .sheet(item: $presentedLink) { link in
            SafariView(url: link.url)
                .ignoresSafeArea()
        }
    }

    // MARK: Pieces

    private var header: some View {
        VStack(alignment: .leading, spacing: 6) {
            GlitchHeader(text: "Training Gear", size: 16)
            Text("Hardware and compounds. Nothing here is required to train.")
                .font(LLFont.mono(11))
                .foregroundStyle(LLColor.textDim)
        }
        .padding(.horizontal, LLMetrics.gutter)
        .padding(.bottom, 24)
    }

    @ViewBuilder
    private func rows(for category: TrainingGearItem.Category) -> some View {
        let items = TrainingGearCatalog.items.filter { $0.category == category }
        ForEach(Array(items.enumerated()), id: \.element.id) { index, item in
            if index > 0 { LLDivider() }
            gearRow(item)
        }
    }

    private func gearRow(_ item: TrainingGearItem) -> some View {
        Button {
            guard let url = item.url else { return }
            UIImpactFeedbackGenerator(style: .rigid).impactOccurred()
            presentedLink = IdentifiedURL(url: url)
        } label: {
            HStack(alignment: .top, spacing: 12) {
                Image(systemName: item.category.symbol)
                    .font(.system(size: 15, weight: .semibold))
                    .foregroundStyle(LLColor.dataBlue)
                    .frame(width: 22)
                    .padding(.top, 1)

                VStack(alignment: .leading, spacing: 6) {
                    HStack(alignment: .firstTextBaseline, spacing: 8) {
                        Text(item.name)
                            .llLabelStyle(13)
                            .fixedSize(horizontal: false, vertical: true)
                        LLTag(text: item.commission, color: LLColor.textFaint)
                    }

                    Text(item.clinicalNote)
                        .font(LLFont.mono(10))
                        .foregroundStyle(LLColor.textDim)
                        .fixedSize(horizontal: false, vertical: true)

                    if let interaction = item.interaction {
                        HStack(alignment: .top, spacing: 5) {
                            Image(systemName: "exclamationmark.triangle.fill")
                                .font(.system(size: 9, weight: .bold))
                                .padding(.top, 1)
                            Text(interaction)
                                .font(LLFont.mono(10))
                                .fixedSize(horizontal: false, vertical: true)
                        }
                        .foregroundStyle(LLColor.warning)
                    }
                }

                Spacer(minLength: 4)

                Image(systemName: "arrow.up.forward.square")
                    .font(.system(size: 12, weight: .bold))
                    .foregroundStyle(LLColor.textFaint)
                    .padding(.top, 2)
            }
            .padding(.horizontal, LLMetrics.gutter)
            .padding(.vertical, LLMetrics.rowVerticalPadding)
            .frame(minHeight: LLMetrics.minTapTarget)
            .contentShape(Rectangle())
        }
        .buttonStyle(.plain)
        .accessibilityLabel("\(item.name). \(item.clinicalNote)")
        .accessibilityHint("Opens an affiliate link in a browser")
    }

    private var disclosure: some View {
        VStack(alignment: .leading, spacing: 10) {
            Rectangle()
                .fill(LLColor.hairline)
                .frame(height: 1)

            Text("Disclosure")
                .llLabelStyle(11, color: LLColor.textDim)

            Text("""
            These are affiliate links. LAST LONGER earns the commission shown next to \
            each product when you buy through them. The rates are printed so you can \
            weigh the recommendation yourself.

            Nothing here is medical advice. Supplement claims are not evaluated by the \
            FDA. If you take prescription medication — particularly an SSRI, which is \
            the usual first-line treatment for early ejaculation — talk to a doctor \
            before adding anything on this page.
            """)
            .font(LLFont.mono(10))
            .foregroundStyle(LLColor.textFaint)
            .lineSpacing(3)
            .fixedSize(horizontal: false, vertical: true)
        }
        .padding(.horizontal, LLMetrics.gutter)
        .padding(.bottom, 48)
    }
}

// MARK: - Safari wrapper

struct IdentifiedURL: Identifiable {
    let url: URL
    var id: String { url.absoluteString }
}

/// SFSafariViewController keeps the click inside the app, which matters for
/// attribution and means the user never leaves a private context into Safari's
/// shared history. Storage is isolated from Safari on iOS 11+, so any affiliate
/// program relying on third-party cookies will need URL-parameter tracking
/// instead — every program listed in the catalog above supports that.
struct SafariView: UIViewControllerRepresentable {
    let url: URL

    func makeUIViewController(context: Context) -> SFSafariViewController {
        let config = SFSafariViewController.Configuration()
        config.entersReaderIfAvailable = false
        config.barCollapsingEnabled = true

        let controller = SFSafariViewController(url: url, configuration: config)
        controller.preferredControlTintColor = UIColor(LLColor.primary)
        controller.preferredBarTintColor = UIColor(LLColor.card)
        controller.dismissButtonStyle = .close
        return controller
    }

    func updateUIViewController(_ controller: SFSafariViewController, context: Context) {}
}

#Preview {
    NavigationStack { TrainingGearView() }
}
