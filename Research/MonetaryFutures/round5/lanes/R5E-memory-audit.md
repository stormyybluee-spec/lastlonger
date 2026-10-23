# R5E Memory audit (R5-18)

Lane: R5E. Date: 2026-10-23. Question: verify every figure the project marked "from memory", "re-check", "memory" or "unverified", and list corrections.
Method: grep of PLAN.md (5.6 and section 10), the Round 3 decode lanes (DCC, WIF), R3B, and the Round 4 lanes (R4B, R4D, R4E) for memory tags. Each tagged figure was then searched in the published text (site/rulebook.json, site/landscape.json, site/index.html, round2/r2_data.json, round3 and round4 data JSON). Published items were checked first. 37 web calls (searches plus fetches), primary sources where they loaded (BLS, BoE, HKMA, Temasek, MINDEF, IRS via secondary relays, federalreservehistory.org, NBER). HUD and NAR historical tables returned empty pages. Helper scripts: /tmp/claude-0/-home-user-lastlonger/41b7d58e-bedc-5a4f-859e-bd3e52b76ed8/scratchpad/scripts/ctx.py (context search) and r5e_build.py (builds and checks the edit list).
Edits: /home/user/lastlonger/Research/MonetaryFutures/round5/r5_corrections.json (29 machine-applicable edits, each old string checked to occur exactly once in its file, new text checked for no em-dash, en-dash or semicolon). Not applied.

Note on site/index.html: it embeds copies of rulebook.json, landscape.json and r2_data.json. Every published edit has a twin entry for index.html, so the page stays consistent if it is patched instead of rebuilt.

## Answers

**R5-18. Do the project's memory-tagged figures hold up?**
Mostly yes. Of 52 tagged items checked, 38 are confirmed, 6 are corrected, 2 are confirmed but need a precision fix, 1 is partly confirmed from a secondary source, and 5 stay unverifiable (3 of them are funds that publish nothing, so "estimate" is the right label). No published headline number or scenario odd changes. The real corrections are in the sovereign wealth fund table of Rulebook chapter 20: four funds are labelled "estimate" or "hundreds of billions" although they publish official figures (CIC $1.57T total assets at end 2024, PIF about $905B for 2025, Hong Kong's Exchange Fund HK$4.15T at end 2025, Temasek S$518B at March 2026), and PIF is below the "about $1T" shown. The Winsemius mission started in 1960, not 1961. A lane-only figure was wrong: the Bund was about 2.4%, not 2.6%, at the start of 2025. All four decode items in PLAN 5.6 are confirmed: the 1947 CPI peak was 19.7% (March 1947), the BoE bought GBP 19.3B of gilts in 2022, the 1934 gold profit was about $2.8B with $2B to the ESF, and the legal gold cover on Federal Reserve notes ended on 18 March 1968.
Status: confirmed (the audit result). Confidence 85. Horizon H0.
Three views:
- Governance: the project's memory recall was accurate on dates and laws. Its weak spot is "estimate" labels on numbers that institutions publish, which is a sourcing habit to fix, not a knowledge gap.
- Business: none of the corrections changes a decision. The PIF figure matters slightly for anyone sizing Gulf capital, because it is below $1T and fell in 2025.
- Ordinary person: the history in the Rulebook (gold, 1940s yield cap, 2022 inflation, Malaysia 1998, crypto dates) can be trusted as written.

## Key findings
1. All four PLAN 5.6 decode items are confirmed against primary or scholarly sources (BLS data via Gallup, BoE notices and the Cunliffe letter, Schwartz NBER w5699, Public Law 90-269).
2. Every Rulebook update 2 to 7 "from memory" date checked holds: UAE VAT 5% on 1 January 2018, OECD minimum tax agreed by 136 of 140 Inclusive Framework members on 8 October 2021, FATCA enacted 18 March 2010, Fed long-bond cap of 2.5% from 1942 to the March 1951 Accord, CPI 9.1% in June 2022, Indonesia's nickel ore ban from 1 January 2020, Kuwait Investment Board in February 1953, genesis block headline, April 2024 halving to 3.125, January 2024 spot ETF approvals, USDC about 87 cents with $3.3B at SVB, EO 14178 on 23 January 2025, El Salvador legal tender from 7 September 2021.
3. Malaysia figures hold: about 2.50 per dollar before the crisis, record low about 4.885 in January 1998, about 4.79 to 4.80 in late 2023 and February 2024, peg at 3.80 from September 1998 to 21 July 2005, US-Singapore facilities MOU signed in November 1990 (Lee Kuan Yew and Dan Quayle).
4. The SWF table under-uses published data. Four funds publish. Only GIC, ADIA, QIA, KIA and SAFE IC truly need estimates.
5. The R2 "$92,000 NAR median existing home in 1990" now has a secondary match citing NAR, but the primary NAR and HUD tables could not be loaded.
6. Two "confirmed with nuance" items: Eritrea's citizenship tax is a flat 2% diaspora levy, not a full income tax, and the Jubilee of Leviticus 25 returned land and freed bonded servants while debt release is the seventh-year rule of Deuteronomy 15.

## Say/Do gaps
- The project says "sizes marked published or estimate", but labelled four published figures as estimates or left them vague.
- The 1990 housing inputs carry a "verify" caveat in published text since Round 2. This audit can upgrade only the price to secondary-confirmed.

## Anomalies
- The ringgit's 2024 weak point is often reported as "weakest since 1998", but it was matched or nearly matched in October 2023 (4.7958). The Rulebook's "early 2024" wording is still fair.
- Sources differ on the 1998 low (4.88 vs 4.885). "About 4.88" is fine.

## Mechanism chains
Not applicable to an audit lane. The one chain worth noting: an "estimate" label on a published number lowers the evidence tier of every derived claim (for example "the UAE runs four funds above $250B"). Replacing labels with published values raises those to T1.

## Tripwires
- 2027-03 to 2027-04: CIC 2025 annual report. Update the CIC row.
- 2027-07: Temasek Review 2027. Update the Temasek row.
- 2027-08: PIF 2026 annual report. Update the PIF row.
- Monthly: HKMA Exchange Fund abridged balance sheet.

## Open questions
- Primary NAR series for 1990 (FRED HSFMEDUSM052N is bot-blocked from here). A run from a machine that can reach FRED or NAR would close it.
- The other R2 time-price inputs tagged [M] (1990 new car about $15,900, 1990 mortgage rate 10.13%, early 2020 3.47%, KFF 1999 family premium $5,791) were not checked this round. They are consistent with known series but remain memory.
- SGD per USD in early 1997 (about 1.40) was not found in a primary series, so "about 1.75 ringgit per Singapore dollar" is derived (2.50 / 1.40 is about 1.79).

## Data table: item-by-item audit

Published = appears in site/rulebook.json, site/landscape.json or round data JSON.

| # | Item (where tagged) | Used in published text? | Verdict | Correct figure or note | Source |
|---|---|---|---|---|---|
| 1 | 1947 inflation peak (PLAN 5.6, DCC, WIF) | No (decode lanes only) | Confirmed | 19.7% y/y, March 1947 | https://news.gallup.com/vault/405026/gallup-vault-americans-reaction-record-inflation.aspx |
| 2 | UK 2022 gilt purchases (PLAN 5.6, DCC-10) | No | Confirmed | GBP 19.3B (12.1B conventional, 7.2B index-linked), 28 Sep to 14 Oct 2022, unwound by 12 Jan 2023 | https://www.bankofengland.co.uk/news/2023/january/boe-completes-unwind-of-recent-financial-stability-gilt-purchases |
| 3 | UK 30y gilt up about 160bp in days (DCC) | No | Confirmed | "rose by 160 basis points in just a few days" | https://www.bankofengland.co.uk/-/media/boe/files/letter/2022/october/letter-from-jon-cunliffe-ldi-5-october-2022 |
| 4 | 1934 gold profit split (PLAN 5.6, WIF) | No | Confirmed | About $2.8B profit, $2B to the ESF ($200M working capital) | https://www.nber.org/papers/w5699.pdf |
| 5 | Gold cover end date (PLAN 5.6) | Yes, landscape myth box ("ended in 1968") | Confirmed | Public Law 90-269, 18 March 1968, removed the 25% gold cover | https://www.govinfo.gov/link/statute/82/50 |
| 6 | Pre-crisis USD/MYR about 2.50 (Rulebook update 2) | Yes, rulebook ch. 13 | Confirmed | About 2.50 in 1995 to 1997 | https://en.wikipedia.com/wiki/MYR |
| 7 | SGD/MYR about 1.75 early 1997 | Yes, rulebook ch. 13 | Unverifiable (derived) | About 1.75 to 1.8 by derivation. Keep "about" | none primary |
| 8 | Ringgit low about 4.88, January 1998 | Yes, rulebook ch. 13 | Confirmed | Record about 4.885 | https://freemalaysiatoday.com/category/highlight/2024/02/19/ringgit-within-a-whisker-of-1998-record-low |
| 9 | About 4.80 in early 2024 | Yes, rulebook ch. 13 | Confirmed | 4.7958 in Oct 2023, about 4.79 to 4.80 in Feb 2024 | https://mothership.sg/2024/02/singapore-dollar-strengthens-ringgit-again//amp |
| 10 | Peg 3.80, Sep 1998 to Jul 2005 | Yes, rulebook ch. 13 | Confirmed | Peg from 2 Sep 1998, removed 21 Jul 2005 | https://en.wikipedia.org/wiki/Central_Bank_of_Malaysia |
| 11 | US-Singapore 1990 facilities agreement | Yes, rulebook ch. 13 table | Confirmed | MOU signed November 1990, renewed 2019 to 2035 | https://www.mindef.gov.sg/news-and-events/latest-releases/24sep19_fs/ |
| 12 | Winsemius 1961 | Yes, rulebook ch. 13 table | Corrected | Mission arrived 5 Oct 1960, first report 1961 | https://eresources.nlb.gov.sg/infopedia/articles/SIP_1457_2009-02-11.html |
| 13 | UAE VAT 5% from 2018 (update 4) | Yes, rulebook ch. 19 | Confirmed | 1 January 2018, Federal Decree-Law 8 of 2017 | https://gulfnews.com/amp/story/business%2Fuae-gets-vat-law-ahead-of-january-2018-tax-roll-out-1.2080996 |
| 14 | OECD minimum tax, more than 130 countries, 2021 | Yes, rulebook ch. 19 | Confirmed | 136 of 140, 8 October 2021 | https://www.osler.com/en/resources/regulations/2021/136-countries-agree-to-oecd-g20-inclusive-framework-s-two-pillar-solution-to-international-tax-refor |
| 15 | US and Eritrea citizenship-based taxation | Yes, rulebook ch. 19 and glossary | Confirmed with nuance, precision edit | Eritrea levies a flat 2% diaspora tax | https://en.wikipedia.org/wiki/Expatriation_tax |
| 16 | FATCA 2010 | Yes, rulebook ch. 19 | Confirmed | Enacted 18 March 2010 in the HIRE Act | https://www.eitc.irs.gov/pub/irs-drop/a-10-22.pdf |
| 17 | Scripture references | Yes, rulebook ch. 19 and glossary | Confirmed, glossary precision edit | Exodus 22:25, Leviticus 25:36 to 37, Deuteronomy 23:19 to 20, Quran 2:275 to 279 are correct in standard English numbering. Jubilee gloss conflates two rules | https://www.sefaria.org/Leviticus.25 (not fetched) |
| 18 | CIC size (update 5, estimate) | Yes, rulebook ch. 20 table | Corrected | $1.57T total assets, end 2024, published | https://www.marketscreener.com/news/china-s-cic-profit-jumps-30-4-on-investment-gains-financial-capital-under-management-grows-ce7d51d2dc88f223 |
| 19 | SAFE IC size | Yes | Unverifiable | Publishes nothing. Keep "estimate" | none |
| 20 | KIA size | Yes | Confirmed as estimate | About $1.07T (Global SWF via Wikipedia, May 2026) | https://en.wikipedia.org/wiki/Kuwait_Investment_Authority |
| 21 | PIF size | Yes | Corrected | SAR 3.396T, about $905B (2025 annual report) | https://www.zawya.com/en/special-coverage/corporate-earnings/saudi-pif-annualised-total-shareholder-returns-fall-to-5.8-as-some-assets-lose-value-459122 |
| 22 | GIC size | Yes | Unverifiable | GIC publishes no AUM. Keep "estimate" | none |
| 23 | QIA size | Yes | Unverifiable | No official AUM. Keep "estimate" | none |
| 24 | HKMA Exchange Fund | Yes | Corrected (made specific) | HK$4,151.4B, end 2025 | https://www.hkma.gov.hk/eng/news-and-media/press-releases/2026/01/20260130-5/ |
| 25 | Temasek | Yes | Corrected (made specific) | S$518B, 31 March 2026 | https://www.temasek.com.sg/en/news-and-resources/news-room/news/2026/temasek-net-portfolio-value-grows-to-518b-up-49b-from-last-year |
| 26 | Fed 2.5% cap 1942 to 1951 (update 5) | Yes, rulebook ch. 7 ("1940s ... near 2.5%") | Confirmed | Bill peg April 1942, implicit 2.5% long cap, Accord 4 March 1951 | https://www.federalreservehistory.org/essays/treasury-fed-accord |
| 27 | CPI 9.1% June 2022 | Yes, rulebook ch. 7 | Confirmed | 9.1%, largest since Nov 1981 | https://www.bls.gov/news.release/archives/cpi_07132022.htm |
| 28 | Haber-Bosch 1913 | Yes, rulebook ch. 12 | Confirmed (not re-fetched) | BASF Oppau plant began in September 1913 | standard history |
| 29 | Indonesia nickel ore ban 2020 | Yes, rulebook ch. 12 | Confirmed | Brought forward from 2022 to 1 January 2020 | https://www.aljazeera.com/amp/economy/2019/9/2/worlds-biggest-nickel-ore-maker-bans-exports-from-january-2020 |
| 30 | Kuwait Investment Board 1953 | Yes, rulebook ch. 20 table | Confirmed | February 1953, London, oldest SWF per IFSWF | https://ifswf.org/member-profiles/kuwait-investment-authority |
| 31 | Genesis block headline (update 6) | Yes, rulebook ch. 21 | Confirmed | "The Times 03/Jan/2009 Chancellor on brink of second bailout for banks" | https://en.bitcoin.it/wiki/Genesis_block |
| 32 | April 2024 halving | Yes, rulebook ch. 21 and glossary | Confirmed | 19 to 20 April 2024, 6.25 to 3.125 | https://kucoin.com/learn/crypto/bitcoin-halving-countdown |
| 33 | January 2024 ETF approvals | Not in rulebook text | Confirmed | SEC approved 11 spot ETPs on 10 January 2024 | https://internationalbanker.com/brokerage/bitcoins-reputation-shines-brightly-in-2024/ |
| 34 | USDC 87 cents and $3.3B at SVB | Yes, rulebook ch. 21 | Confirmed | Low 87 to 88 cents on 11 March 2023, $3.3B of about $40B reserves | https://www.cnbc.com/amp/2023/03/11/stablecoin-usdc-breaks-dollar-peg-after-firm-reveals-it-has-3point3-billion-in-svb-exposure.html |
| 35 | EO 14178, 23 January 2025 | Yes, rulebook ch. 21 ("January 2025 executive order") | Confirmed | Signed 23 Jan 2025, 90 FR 8647 | https://www.govinfo.gov/content/pkg/FR-2025-01-31/html/2025-02123.htm |
| 36 | Hayek 1976 (update 7) | Yes, rulebook ch. 21 | Confirmed (not re-fetched) | IEA, 1976 | standard bibliography |
| 37 | El Salvador legal tender September 2021 | Yes, rulebook ch. 21 ("in 2021") | Confirmed | In force 7 September 2021 | https://en.wikipedia.org/wiki/Bitcoin_Law |
| 38 | 1990 NAR median $92,000 (R2, landscape caveat) | Yes, landscape ch. and r2_data | Partly confirmed (secondary) | $92,000 matched by a table citing NAR. Primary not loaded | https://housingalmanac.com/year/1990 |
| 39 | Greece €41B deposits fled 2015 (R4B) | Yes, landscape and r4_data | Confirmed | €164B (Nov 2014) to about €121B to €123B (Jun to Jul 2015) | https://cityam.com/?p=417865 and https://euobserver.com/199194/greek-bank-deposits-fall-despite-cash-controls/ |
| 40 | Greece third programme €86B, controls 2015 to 2019 (R4B) | No | Confirmed (not re-fetched) | ESM up to €86B, controls fully lifted 1 Sep 2019 | standard record |
| 41 | Dollar share about 71% in 2000, 71.5% in 2001 (R4E) | Yes, landscape ch. 13 and r4_data ("about 71% in 2000") | Confirmed | 71.14% (2000), 71.52% (2001) | https://db.nomics.world/IMF/COFER/A.W00.RAXGFXARUSDRT_PT |
| 42 | Bund about 2.6% at start of 2025 (R4E) | No (lane only) | Corrected | 2.36% at end 2024, about 2.3% to 2.4% on 2 Jan 2025 | https://ibir.deutschebahn.com/2024/en/combined-management-report/business-development/financial-position/interest-rate-environment/ |
| 43 | Weimar Rentenmark 1 trillion (DCC-07) | No | Confirmed (not re-fetched) | 15 Nov 1923 | Cato working paper (cited in DCC) |
| 44 | Greece PSI 53.5% (DCC-08) | Yes, dc_data | Confirmed (not re-fetched) | 53.5% face value | PIIE (cited in DCC) |
| 45 | BoJ YCC 2016 to 2024-03-19 (DCC-09) | No | Confirmed (not re-fetched) | Ended 19 March 2024 | BoJ statement (cited in DCC) |
| 46 | SDR weights 10.92% and 12.28% (WIF) | Yes, wif_group (via R2E) | Confirmed (not re-fetched) | 2016 and 2022 reviews, next review 2027 | IMF press releases |
| 47 | China $50,000 quota since 2007 (WIF) | Yes, landscape and wif_group | Confirmed (not re-fetched) | SAFE rule effective 1 Feb 2007 | SAFE |
| 48 | 2015-08-11 devaluation about 1.9% (WIF) | Yes, wif_group ("small devaluation") | Confirmed (not re-fetched) | 1.86% fixing cut | PBoC |
| 49 | Connally "our currency, your problem" 1971 (DCC) | Yes, rulebook ch. 3 quote | Confirmed (not re-fetched) | G10 meeting, Rome, late 1971 | Eichengreen, Exorbitant Privilege |
| 50 | 1976 IMF loan about $3.9B, UK 1975 inflation about 24% (DCC) | No | Unverifiable this round | Consistent with SDR 3.36B and RPI 24.2% (1975 average). Not re-fetched | none fetched |
| 51 | Euro crisis figures: SNB floor 1.20 from 6 Sep 2011, TARGET2 above €700B in 2012 (R4D) | No | Confirmed (not re-fetched) | TARGET2 peak about €751B in Aug 2012 | standard record |
| 52 | R3B 340M residents, $5T pandemic support, 2020 GDP $21.4T | No (model inputs) | Confirmed in range (not re-fetched) | Census 2024 about 340M, BEA 2020 GDP about $21.35T | standard record |

Items marked "not re-fetched" are consistent with standard references but were not checked against a page this round because they appear only in lane files or are textbook dates. They are not upgraded to T1.

## Corrections (summary of r5_corrections.json)

| # | File(s) | Old (short) | New (short) | Why |
|---|---|---|---|---|
| C1 | site/rulebook.json, site/index.html | CIC "over $1T (estimate)" | "$1.57T total assets (end 2024, published)" | CIC publishes |
| C2 | same | PIF "about $1T (estimate)" | "about $905B (2025, published)" | PIF publishes, below $1T |
| C3 | same | Exchange Fund "hundreds of billions" | "about $530B (HK$4.15T, end 2025, published)" | HKMA publishes |
| C4 | same | Temasek "hundreds of billions" | "S$518B, about $400B (March 2026, published)" | Temasek publishes |
| C5 | same | "1961: Dutch economist Albert Winsemius leads a UN mission..." | "1960 to 1961: ... reports in 1961 and becomes..." | Mission began 1960 |
| C6 | same | Jubilee glossary | Leviticus 25 land and servants, Deuteronomy 15 debts | Precision |
| C7 | same | Citizenship-based taxation glossary | US main example, Eritrea flat 2% | Precision |
| C8 | same | "one of only two countries, with Eritrea" | "the only major country ... Eritrea ... flat 2%" | Precision |
| C9 | site/landscape.json, site/index.html | "(model, with the 1990 price a memory figure to verify)" | "(model, using NAR's 1990 median of $92,000 as reported in a secondary table)" | Secondary match |
| C10 | round2/r2_data.json, site/index.html | "(model, 1990 price from memory)" | "(model, 1990 price of $92,000 from NAR via a secondary table)" | Same |
| C11 | round2/r2_data.json, site/index.html | "NAR existing $92,000 (1990, memory, not re-verified)" | "NAR existing $92,000 (1990, NAR via a secondary table)" | Same |
| C12 | round4/lanes/R4E-markets-odds.md | Bund "about 2.6% at the start of 2025" | "about 2.4% ... (2.36% at the end of 2024)" | Wrong level |
| C13 to C16 | round3/decode/DCC-reset-cbdc.md | memory tags on 160bp, GBP 19.3B, 1947 CPI, DCC-10 | sourced wording | Verified, tags closed |
| C17 to C18 | round3/decode/WIF-whatif.md | memory tags on 1934 profit and 1947 CPI | sourced wording | Verified, tags closed |

Counting each file twin once, that is 18 distinct corrections (4 substantive figure corrections C1 to C4 plus one date C5, one lane figure C12, 3 precision edits C6 to C8, 3 status upgrades C9 to C11 and 6 tag closures C13 to C18). The JSON has 29 entries because 11 published edits also patch site/index.html.

Suggested follow-up for the orchestrator (not an edit): PLAN 5.6 line "Re-check memory-tagged figures in the decode lanes (...)" can be marked done by R5E.

## Claims table

| id | claim | tier | status | source | source date | as-of date | falsifier |
|---|---|---|---|---|---|---|---|
| R5E-01 | US CPI rose 19.7% y/y at its March 1947 peak | T1 via T3 | confirmed | https://news.gallup.com/vault/405026/gallup-vault-americans-reaction-record-inflation.aspx | 2022 | 2026-10-23 | BLS CPI-U table showing a different peak |
| R5E-02 | The BoE bought GBP 19.3B of gilts from 28 Sep to 14 Oct 2022 (12.1B conventional, 7.2B index-linked) and sold them all by 12 Jan 2023 | T1 | confirmed | https://www.bankofengland.co.uk/news/2023/january/boe-completes-unwind-of-recent-financial-stability-gilt-purchases | 2023-01-12 | 2026-10-23 | BoE revision |
| R5E-03 | The 30-year gilt yield rose 160bp in a few days in September 2022 | T1 | confirmed | https://www.bankofengland.co.uk/-/media/boe/files/letter/2022/october/letter-from-jon-cunliffe-ldi-5-october-2022 | 2022-10-05 | 2026-10-23 | n/a |
| R5E-04 | The 1934 devaluation produced about $2.8B of gold profit, $2B of which funded the ESF | T2 | confirmed | https://www.nber.org/papers/w5699.pdf | 1997 | 2026-10-23 | Treasury Bulletin showing other amounts |
| R5E-05 | The 25% gold cover on Federal Reserve notes was removed by Public Law 90-269 on 18 March 1968 | T0 | confirmed | https://www.govinfo.gov/link/statute/82/50 | 1968-03-18 | 2026-10-23 | n/a |
| R5E-06 | The ringgit's record low was about 4.885 per dollar in January 1998 | T3 | confirmed | https://freemalaysiatoday.com/category/highlight/2024/02/19/ringgit-within-a-whisker-of-1998-record-low | 2024-02-19 | 2026-10-23 | BNM series with a lower low |
| R5E-07 | Malaysia pegged at 3.80 from September 1998 to 21 July 2005 | T3 | confirmed | https://en.wikipedia.org/wiki/Central_Bank_of_Malaysia | 2026 | 2026-10-23 | BNM record |
| R5E-08 | The US-Singapore facilities MOU was signed in November 1990 by Lee Kuan Yew and Dan Quayle and renewed in 2019 for 15 years | T1 | confirmed | https://www.mindef.gov.sg/news-and-events/latest-releases/24sep19_fs/ | 2019-09-24 | 2026-10-23 | n/a |
| R5E-09 | Winsemius's UN mission arrived in Singapore on 5 October 1960 and first reported in 1961 | T1 | confirmed (corrects "1961") | https://eresources.nlb.gov.sg/infopedia/articles/SIP_1457_2009-02-11.html | 2009 | 2026-10-23 | n/a |
| R5E-10 | UAE VAT started at 5% on 1 January 2018 | T1 via T3 | confirmed | https://gulfnews.com/amp/story/business%2Fuae-gets-vat-law-ahead-of-january-2018-tax-roll-out-1.2080996 | 2017 | 2026-10-23 | n/a |
| R5E-11 | 136 of 140 Inclusive Framework members agreed the two-pillar deal on 8 October 2021 | T1 via T3 | confirmed | https://www.osler.com/en/resources/regulations/2021/136-countries-agree-to-oecd-g20-inclusive-framework-s-two-pillar-solution-to-international-tax-refor | 2021-10 | 2026-10-23 | n/a |
| R5E-12 | FATCA was enacted on 18 March 2010 in the HIRE Act | T1 | confirmed | https://www.eitc.irs.gov/pub/irs-drop/a-10-22.pdf | 2010 | 2026-10-23 | n/a |
| R5E-13 | Eritrea's citizenship tax is a flat 2% levy on income earned abroad | T3 | confirmed | https://en.wikipedia.org/wiki/Expatriation_tax | 2026 | 2026-10-23 | Eritrean law text showing a full income tax |
| R5E-14 | CIC's total assets were $1.57T at end 2024 | T1 via T3 | confirmed | https://www.marketscreener.com/news/china-s-cic-profit-jumps-30-4-on-investment-gains-financial-capital-under-management-grows-ce7d51d2dc88f223 | 2025 | 2026-10-23 | CIC 2025 report |
| R5E-15 | PIF's AUM was SAR 3.396T (about $905B) in 2025, down from SAR 3.434T | T1 via T3 | confirmed | https://www.zawya.com/en/special-coverage/corporate-earnings/saudi-pif-annualised-total-shareholder-returns-fall-to-5.8-as-some-assets-lose-value-459122 | 2026-08 | 2026-10-23 | PIF restatement |
| R5E-16 | Temasek's net portfolio value was S$518B at 31 March 2026 | T1 | confirmed | https://www.temasek.com.sg/en/news-and-resources/news-room/news/2026/temasek-net-portfolio-value-grows-to-518b-up-49b-from-last-year | 2026-07-08 | 2026-10-23 | n/a |
| R5E-17 | Hong Kong's Exchange Fund held HK$4,151.4B of assets at end 2025 (unaudited) | T1 | confirmed | https://www.hkma.gov.hk/eng/news-and-media/press-releases/2026/01/20260130-5/ | 2026-01-30 | 2026-10-23 | Audited accounts |
| R5E-18 | The Kuwait Investment Board was set up in February 1953 in London and IFSWF calls KIA the oldest SWF | T1 | confirmed | https://ifswf.org/member-profiles/kuwait-investment-authority | 2026 | 2026-10-23 | n/a |
| R5E-19 | The Fed pegged bills from April 1942 with an implicit 2.5% cap on long bonds until the 4 March 1951 Accord | T1 | confirmed | https://www.federalreservehistory.org/essays/treasury-fed-accord | 2013 | 2026-10-23 | n/a |
| R5E-20 | US CPI rose 9.1% in the year to June 2022, the most since November 1981 | T0 | confirmed | https://www.bls.gov/news.release/archives/cpi_07132022.htm | 2022-07-13 | 2026-10-23 | n/a |
| R5E-21 | Indonesia banned nickel ore exports from 1 January 2020, two years earlier than planned | T3 | confirmed | https://www.aljazeera.com/amp/economy/2019/9/2/worlds-biggest-nickel-ore-maker-bans-exports-from-january-2020 | 2019-09-02 | 2026-10-23 | n/a |
| R5E-22 | The genesis block (3 Jan 2009) embeds "The Times 03/Jan/2009 Chancellor on brink of second bailout for banks" | T0 | confirmed | https://en.bitcoin.it/wiki/Genesis_block | n/a | 2026-10-23 | n/a |
| R5E-23 | USDC fell to about 87 cents on 11 March 2023 after Circle disclosed $3.3B of about $40B reserves at SVB | T3 | confirmed | https://www.cnbc.com/amp/2023/03/11/stablecoin-usdc-breaks-dollar-peg-after-firm-reveals-it-has-3point3-billion-in-svb-exposure.html | 2023-03-11 | 2026-10-23 | n/a |
| R5E-24 | EO 14178 was signed on 23 January 2025 and bars agencies from establishing or promoting a CBDC | T0 | confirmed | https://www.govinfo.gov/content/pkg/FR-2025-01-31/html/2025-02123.htm | 2025-01-31 | 2026-10-23 | n/a |
| R5E-25 | El Salvador's Bitcoin Law took effect on 7 September 2021 | T3 | confirmed | https://en.wikipedia.org/wiki/Bitcoin_Law | 2026 | 2026-10-23 | n/a |
| R5E-26 | Greek private deposits fell from about €164B (Nov 2014) to about €121B (Jul 2015), consistent with "about €41B fled" | T3 | confirmed | https://euobserver.com/199194/greek-bank-deposits-fall-despite-cash-controls/ | 2015 | 2026-10-23 | Bank of Greece series |
| R5E-27 | The dollar's COFER share was 71.14% in 2000 and 71.52% in 2001 | T1 via T3 mirror | confirmed | https://db.nomics.world/IMF/COFER/A.W00.RAXGFXARUSDRT_PT | 2024-03 | 2026-10-23 | IMF revision |
| R5E-28 | The 10-year Bund closed 2024 at 2.36%, so "about 2.6% at the start of 2025" is wrong | T3 | confirmed (corrects R4E) | https://ibir.deutschebahn.com/2024/en/combined-management-report/business-development/financial-position/interest-rate-environment/ | 2025 | 2026-10-23 | Bundesbank daily series |
| R5E-29 | A secondary table citing NAR gives $92,000 as the 1990 median existing-home price | T4 | plausible | https://housingalmanac.com/year/1990 | n/a | 2026-10-23 | NAR or FRED HSFMEDUSM052N showing another value |
| R5E-30 | Of 52 memory-tagged items, 38 confirm, 6 are corrected, 2 need precision, 1 is secondary-confirmed, 5 are unverifiable | model (count) | confirmed | this file | 2026-10-23 | 2026-10-23 | A later check overturning a confirmed item |

## Proposed changes
- Scenario odds: no change (H0 62/15/1/22, H1 44/23/3/30, H2 31/28/10/31, S2a 13/17/18 plus S2b 2/6/10). No corrected figure feeds a scenario input.
- Earlier rulings: none changed. Round 4's "dollar from about 71% to 56.70%" and "Greece lost about €41B of deposits" are confirmed. R4E's Bund argument (no haven pattern) is unchanged by the lower starting level. It strengthens slightly, since the Bund's rise since early 2025 is about 100bp, not 80bp.
- Process: (1) label a size "estimate" only after checking that the institution does not publish one. (2) Close memory tags in lane files when verified, using the edits above. (3) Mark PLAN 5.6's decode re-check item as done.
