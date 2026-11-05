# VERIFY_R8: number check of DRAFT_R8 (L4.1 Digital credit, dissected)

Verifier, Round 8, 2026-11-05. Inputs: round8/DRAFT_R8.md, round8/lanes/R8A-instrument-claims.md, round8/lanes/R8B-flywheel-baskets.md and their tables JSON. Court and red-team files not read. Scripts (python3 -I): scratchpad/v8scripts/recompute.py, vol.py, strc_hist.py. Raw downloads: scratchpad/v8dl. General research, not personal financial advice.

## Pass checklist
- [x] Role card (ROLES.md, Verifier) and PLAN 8.3 read
- [x] Every main-path number listed: tldr, kicker, tables, curiosity and check answers, stress table, basket table, callouts
- [x] Go-deeper sample of at least 20% (blocks 15.0, 25.1 in full, 41.0, 64.1, 65.0)
- [x] Re-fetched primary sources: 8-K of 2026-11-02, 8-K of 2026-10-29 (vote), Q3 2026 results release (8-K exhibit 99.1), Q3 2026 10-Q (partial, the page text cut off before Note 10), STRC prospectus supplement No. 2 of 2026-11-02 (pdftotext), Strive 8-K of 2026-10-05, GENIUS Act (Public Law 119-27), 15 U.S.C. 80a-18, IRS treaty Table 3, IRS Form 706-NA page, PIDM FAQ, ICI weekly, Treasury MSPD, Treasury daily yield curve, Fed H.8 and H.10 via DBnomics, NY Fed SOFR, DefiLlama, CoinGecko, Kraken, Coinbase, Nasdaq STRC and MSTR history
- [x] Recomputed by script: coverage multiples, 1-time prices, years and months of cover, stress table, share-of-pool percentages, "$10 billion buys about nine months", tax-equivalent yields, volatility, returns from August 2020 and November 2021, vote share, ringgit move
- [x] The three lane differences resolved (STRC outstanding, June low, 1-time price)
- [x] Lane-unconfirmed items stated as fact in the draft flagged
- [x] Mismatch rate reported. Pass test: no unresolved mismatch in a headline number
- [x] No personal identifier or email in any request or file. SEC direct curl returned 403 without a contact email, so EDGAR documents were read through the WebFetch tool instead
- [x] Style: no em-dashes, no en-dashes, no semicolons

Data limits: Yahoo returned 429 (rate limited), so gold, S&P 500 and the JPMorgan, Citigroup and Boeing preferred volumes were not re-fetched. The 10-Q page text ended before the per-series preferred note, so STRC's $8.39B on 2026-10-25 was rebuilt from the Q2 10-Q figure plus buyback share counts (see R8V-01). Strategy's XBRL company facts could not be re-fetched (SEC asks for an email in the user agent), so holdings and cash-flow tags were checked against the lane's saved copy and against the Q3 release and 10-Q text, which agree.

---

## Resolution of the three lane differences

**1. STRC outstanding: $8.2B (R8A) versus $8.39B (R8B).** Both are right, at different dates. The Q2 10-Q gives about 104.6 million STRC shares, $10.46B notional, on 2026-07-24 after the first buybacks. The Q3 release gives 20,980,508 shares bought back in 2026 to 2026-10-25, and the 10-Q gives 13.93 million of them in Q3. That reproduces R8B's 10-Q figures: about $9.10B at 2026-09-30 and $8.39B at 2026-10-25. The 8-K of 2026-11-02 adds 2,092,035 shares bought back in the week to 2026-11-01, so STRC stood at about $8.18B on 2026-11-01. The draft should say "about $8.2 billion on 1 November 2026" (or "$8.4 billion on 25 October" if it cites the 10-Q directly). Its "about $8 billion now" is acceptable. The peak "about $10.5 billion in mid 2026" holds ($10.46B on 2026-07-24, already after about $25M of buybacks).

**2. STRC's June low: $74.57 close versus about $71.40 intraday.** Nasdaq history: the lowest close since listing was $74.57 on 2026-06-26. The intraday low that same day was $71.25 (KuCoin's "about $71.40" is an approximation of it). The draft should use the close ($74.57, 25% below par) as the headline and, where it wants the intraday figure, say "traded as low as $71.25 during 26 June". Box 2's "about $71 to $74" is fine if labelled as the intraday low and the close.

**3. STRC's 1-time coverage price: $13,250 versus $13,541.** The gap comes from two inputs. R8B used STRC at $8.39B (25 October) and STRF at $1.28B. R8A used STRC at about $8.19B (1 November) and STRF at $1.24B. With the 1 November stack (debt $6.75B, STRF $1.24B model, STRC $8.18B, less $4.92B of dollars) the price is $13,248. Using the 1 November STRC but R8B's STRF gives $13,295. So **about $13,250 is right for today's stack**, and the residual uncertainty is STRF's size, which no filing in hand gives (each $0.1B of STRF moves the price by about $118). Draft fix for [25.1]: "about $13,250 (model, depends on STRF's size, which is not disclosed by series)".

---

## Main-path check table

Basis: "recomputed" means by script from the cited inputs. "Re-fetched" means read today from the named source.

| block ref | claim | number in draft | number at source | match | fix |
|---|---|---|---|---|---|
| kicker, [0] | STRC pays 12% | 12% | 12.00% for November 2026 (supplement No. 2, 2026-11-02) | yes | none |
| [0] | Rate set each month by the company | monthly | "sole and absolute discretion", notice by the 15th (supplement) | yes | none |
| [0] | Backed about four to six times | 4 to 6 times | 4.2 gross, 6.1 net of dollars (recomputed) | yes | none |
| [0], [25.0] | Claim tally | 26: 10, 9, 4, 3 | 26: 10, 9, 4, 3 (counted from R8A D2) | yes | none |
| [0], [11] | Issuer junk-rated | B- | S&P B-, stable, 2025-10-27, no 2026 action found | yes | none |
| [0], [40] | 2025 purchases exceed mined supply | 225,030 vs 164,250, 137% | 672,500 less 447,470 = 225,030 (XBRL), 137.0% (recomputed) | yes | none |
| [0], [39], [44] | Q3 2026 raise and Bitcoin spend | $5.41B, $0.59B | $5,407.7M ATM, $588.1M for 7,218 BTC (Q3 release) | yes | none |
| [39] | Q3 Bitcoin sold and use | $348.6M, $239.9M for dividends | 5,552 BTC, carrying value $348.6M, $239.9M dividends, $108.6M STRC buybacks (Q3 release) | yes | optional: add "at carrying value" |
| [7] | Daily dividends since | 3 November 2026 | first daily payment date 3 November 2026 (supplement) | yes | none |
| [11] | Perpetual, holder put only on a takeover | none | perpetual, put at $100 plus unpaid only on a fundamental change (supplement) | yes | none |
| [11], [18] | Cut limit | 0.25 point a month plus any fall in the short rate, never below it | 25 bp plus the fall in monthly SOFR, never below monthly SOFR (supplement) | yes | none |
| [11] | Floor rate | 3.97% early November | Overnight SOFR 3.97% on 2026-11-03 (NY Fed). The contract floor is "monthly SOFR", defined in the March 2026 Annex, not overnight SOFR | cannot check | write "about 4%" or name the one-month rate if the Annex definition is checked |
| [11] | Pay only if declared, cumulative, juniors blocked | qualitative | "when, as and if declared", juniors blocked until accumulated STRC dividends paid (supplement) | yes | none |
| [11] | Ranks behind convertible notes | about $6.75B of convertible notes | Convertible principal $6.714B plus about $0.040B other secured debt = $6.75B of debt (10-Q) | no | "behind about $6.75 billion of debt, almost all convertible notes" |
| [11], [15.0] | Ranks behind STRF, ahead of three preferreds | qualitative | STRF is "dividend senior stock" to STRC (supplement). STRE, STRK, STRD junior (Annex via R8A) | yes | none. STRF seniority is T1 confirmed. STRF size is not |
| [11] | Bitcoin held and value | 849,327, about $68B at $80,500 | 849,327 (8-K 2026-11-02), $68.37B at $80,500 (recomputed), spot $80,448 on 2026-11-05 (CoinGecko) | yes | none |
| [11] | Dollar reserve | $4.79B | $4.79B USD Reserve plus $132.7M cash (8-K) | yes | none |
| [11] | STRC size now and peak | about $8B, peak about $10.5B mid 2026 | $8.18B on 2026-11-01, $10.46B on 2026-07-24 (derived, see resolution 1) | yes | prefer "about $8.2 billion on 1 November" |
| [13] | PIDM limit | RM250,000 | RM250,000 per depositor per member bank, shares not eligible (PIDM FAQ) | yes | none |
| [13], [14], [15.0], [22] | June low | $74.57 on 26 June, 25% below par | lowest close $74.57 on 2026-06-26, 25.4% below par (Nasdaq) | yes | none |
| [14] | Vote share | about 99.3% | 381,373,199 for, 2,236,551 against, 444,753 abstain = 99.30% of votes cast (8-K 2026-10-29) | yes | none |
| [14] | Founder's super-voting shares counted | qualitative | The 8-K does not mention class B. 19,640,250 class B and 402,714,357 class A on 2026-10-25 (10-Q). Ten votes a share not stated in the excerpt read. Class B would be 32.8% of all votes if ten votes | cannot check | drop the clause, or "votes cast may include the founder's class B shares, which carry more votes" |
| [14] | Vote changed timing only | qualitative | "does not increase or decrease the total amount of regular dividends", rates and obligations unchanged (8-K) | yes | none |
| [14] | Price on 4 November, call price | $99.98, $101 | $99.98 close (Nasdaq), call at $101 plus unpaid (supplement) | yes | none |
| [15.1], [22] | STRC daily trading | about $156M a day | $155.9M, 60 sessions to 2026-11-04 (Nasdaq, recomputed) | yes | none |
| [22] | Coverage, company method and gross | 6.1 and 4.2 | 6.08 and 4.23 (recomputed, STRF $1.24B model) | yes | none |
| [22], [27] | Years of cover | about 46 in Bitcoin, 3.2 to 3.4 in dollars | 45.9, and 3.21 to 3.40 on $1.49B a year (company: 3.4 years from $5.07B) | yes | none |
| [22] | Claims ahead of STRC | about $8B | $6.75B debt plus STRF about $1.24B (model) = about $8.0B | yes | none |
| [22], [25.1] | Tax-equivalent yields | about 27% top NYC, 19.5% vs qualified dividend, 12% tax-free | 27.0% and 19.5% (recomputed: 37 + 3.8 + 10.9 + 3.876, and 20 + 3.8 + 10.9 + 3.876) | yes | none |
| [22] | 1940 Act preferred coverage | at least twice | at least 200% for senior stock, 300% for debt (15 U.S.C. 80a-18(a)(2)(A), (a)(1)(A)) | yes | none |
| [22], [28] | GENIUS Act yield ban and reserves | ban, no Bitcoin or preferred | section 4(a)(11) bans "any form of interest or yield", 4(a)(1)(A) lists cash, insured deposits, bills of 93 days or less, repo, government money funds, no Bitcoin or equity (PL 119-27) | yes | none |
| [22] | $10B buys about nine months of new coins, a year near $61,000 | nine months, $61,000 | 124,224 BTC = 0.756 years = 9.1 months at $80,500. One year at $60,883 (recomputed) | yes | none |
| [22] | Return since August 2020 | Bitcoin 37%, MSTR 51%, "true from that start date" | Bitcoin 36.8% (Coinbase closes), MSTR 46.0% (Nasdaq end price, lane's split-adjusted start price) | no | "Bitcoin's 37% reproduces. MSTR's 51% comes out at about 46% on our data" |
| [22], [29] | From the November 2021 peak gold and the S&P beat both | qualitative | Bitcoin 4.4% and MSTR 11.8% a year (recomputed). Gold 16.6% and S&P 12.1% are lane figures, Yahoo rate-limited | cannot check | keep, the Bitcoin and MSTR leg reproduces |
| [22] | From January 2025 MSTR last | minus 33% a year | minus 33.3% (recomputed) | yes | none |
| [22] | Repair cost | rate to 12%, about $2.1B buybacks | 12.00% from July 2026, 20,980,508 shares, $2.10B notional, about $2.04B paid (Q3 release) | yes | none |
| [22] | Bank of England history | 1694, £1.2M, consols 1751, gold standard 1821 to 1931 | standard record (Bank of England history) | yes | none |
| [22] | Ahead of JPMorgan, Citigroup and Boeing preferreds | qualitative | Lane: JPM $6.4M, Citi $2.9M, Boeing $48.6M a day. Not re-fetched (Yahoo 429) | cannot check | keep, the STRC side is confirmed |
| [24] | Software operating cash | $14.3M in nine months | $14,267 thousand (10-Q) | yes | none |
| [25.1] | Coverage inputs | 849,327 at $80,536, debt $6.75B, dollars $4.92B, STRC $8.2B, STRF $1.2B (model) | all match filings. STRF correctly labelled model | yes | none |
| [25.1] | Whole stack gross | 3.4 times, about $20B | 3.43, $19.95B (recomputed, preferred $13.20B on 1 November) | yes | none |
| [25.1] | STRC 1-time price | about $13,000 to $13,500 | $13,248 on the 1 November stack (resolution 3) | yes | state "about $13,250 (model)" |
| [25.1] | Volatility | Bitcoin 39 and 44, MSTR 85 and 81, STRC 9 and 22 | 39.5 and 44.0, 85.1 and 80.8, 9.1 (dividend-adjusted) and 22.2 (recomputed, Kraken and Nasdaq) | yes | none |
| [33] | mNAV in November 2024 | about 3 to 4 | Press only (T4): about 2.5 to 2.7 times (Cointelegraph, MSTR-Tracker) to a "256% premium" (BitMEX via Benzinga). No company figure | cannot check | "about 2.5 to 3.5 times at the late-2024 peak (press estimates, definitions vary)" |
| [33], [34] | mNAV today | about 1.08 company measure, 0.86 shares alone | 1.10 and 0.88 at the 4 November MSTR close of $142.54 (recomputed). 1.08 and 0.86 at the lane's $139.15 | yes | "about 1.1" and "about 0.9", or date the price |
| [34] | Bitcoin against cost | $75,451, $80,500 is 6.7% above | $75,451 (8-K), 6.7% (recomputed) | yes | none |
| [34] | 2026 Bitcoin low | $57,740 in late June | $57,740 intraday on 2026-07-01 (Kraken daily). Lowest daily close $58,532 on 2026-06-30. The lane's figure is the weekly bar starting 25 June | no | "The 2026 low was about $57,700 on 1 July" or "at the turn of June and July" |
| [34] | Company rule of 12 months of dividends | 12 months | Reported in press (Decrypt, T4). Not found in the filings read | cannot check | add "(company policy as reported)" or cite the filing |
| [34] | Dollars on hand | $4.92B, about 39 months | $4.92B, 39.6 months on $1.49B a year (recomputed) | yes | none |
| [34] | STRC buyback trigger | below about $99 the company stops selling and starts buying back | It sells only above $100. In the week to 1 November it bought back 2,092,035 shares for $208.2M, an average of about $99.52 (8-K) | no | "Below $100 the company stops selling and starts buying back (it paid about $99.50 in the week to 1 November)" |
| [34], [40], [45] | Convertible puts | $5.91B, September 2027 to September 2028, all conversion prices above the share price | $1,010M + $2,000M + $1,500M + $800M + $603.7M = $5.914B, puts 2027-09-15 to 2028-09-15. Lowest conversion price $149.77 against MSTR $142.54 on 2026-11-04 (10-Q, Nasdaq) | yes | none. Note the 2030A notes are only about 5% out of the money |
| [35] | 24-month funding gap | $8.91B against $4.92B, about $4B | 2 x $1.49B + $5.91B = $8.90B, gap $3.97B (recomputed) | yes | none |
| [36] | Stress table prices | $80,500, $56,400, $40,300, $24,200 | $80,500, $56,350, $40,250, $24,150 | yes | rounding only |
| [36] | Coverage column | 3.4, 2.4, 1.7, 1.0 | 3.43, 2.40, 1.71, 1.03 (gross, stack $19.95B) | yes | none |
| [36] | Months of dollar dividends | 39 in every row | 39.6 (held fixed by design) | yes | none |
| [36] | Bitcoin to sell a year | 19,000 (11%), 27,000 (16%), 37,000 (23%), 62,000 (38%) | 18,524 (11.3%), 26,463 (16.1%), 37,048 (22.6%), 61,746 (37.6%) | yes | none |
| [37] | Months before a forced sale | about 27 | 27.6 (recomputed) | yes | none |
| [37] | Preferred stack falls below 1 time | only near $18,000 | $17,692 net of dollars, but $23,488 on the gross measure the table itself uses (table shows 1.0 times at $24,200) | no | "falls below 1 time near $23,500 on the table's measure, or near $18,000 if the dollar reserve is counted" |
| [40] | Q3 2026 share of mined supply | bought about 4% | Bought 7,218 BTC, about 18% of about 41,000 mined. Sold 5,552. Net added 1,666, about 4% (Q3 release, XBRL) | no | "In the third quarter of 2026 it bought about 18% but sold most of it back, adding only about 4%" |
| [51] | Money funds | $7.9T, 0.19% | $7,901.28B week to 2026-10-28 (ICI), 0.186% | yes | none |
| [51] | Treasury bills | $7.1T, 0.21% | $7,118.1B at 2026-09-30 (MSPD), 0.207% | yes | none |
| [51] | Bank deposits | $19.6T, 0.08% | $19,636.7B September 2026, H.8 seasonally adjusted deposits, 0.075% | yes | none |
| [51] | Stablecoins | $295B, 5.0% | $294.6B on 2026-11-05 (DefiLlama USD-pegged), 4.99% | yes | none |
| [51] | New Bitcoin a year | about $13B, about 110% | 164,250 BTC = $13.2B at $80,500, 111% | yes | none |
| [51], [62] | Digital credit total | about $14.7B | Strategy preferred $13.40B on 2026-10-25 plus SATA $1.294B on 2026-09-30 (Strive 8-K, now T0) = $14.70B. On 1 November about $14.5B | yes | optional: date it "late October 2026" |
| [53] | Stablecoin pipe vs Strategy | +$100.5B vs $25.3B, about four to one, minus $9.1B in 2026 | +$100.5B (1 Jan 2025 to 1 Jan 2026), $25.31B (16.27 + 7.04 + 2.00, XBRL), ratio 3.97, minus $9.1B from 1 January 2026 (DefiLlama) | yes | none |
| [55], [62] | Rivals near 0.9 in June 2026 | 0.9 | Forklog (T4) only | cannot check | add "(press reports)" |
| [56] | June price range in Box 2 | about $71 to $74 | intraday low $71.25, close $74.57, both 26 June (Nasdaq) | yes | "as low as $71 during the day, $74.57 at the close" |
| [60] | 10-year yield and bills | 4.90%, 4% bills | 10-year 4.90%, 3-month 4.21% on 2026-11-04 (Treasury) | yes | none |
| [61] | Listed companies' Bitcoin | about 1.3 million, 6.5% of all supply | 1,300,893 BTC (CoinGecko). 6.47% of 20.1 million mined so far, 6.19% of the 21 million cap | no | "6.5% of the Bitcoin mined so far" |
| [62] | STRC track record | about 15 months | listed 2025-07-29, first dividend August 2025 (R8A) | yes | none |
| [63] | Malaysia treaty, withholding | no treaty, 30% | Malaysia absent from IRS Table 3 (updated to 2025-09-26). 30% statutory rate | yes | none |
| [63] | US estate tax threshold | $60,000 | $60,000, US company shares are US-situated (IRS Form 706-NA page) | yes | none |
| [63] | Ringgit move | 18%, February 2024 to January 2026, more than a year and a half of 12% | Lane's own figures 4.77 to 3.93 give 17.6%. Fed H.10 monthly averages February 2024 (4.7655) to February 2026 (3.911) give 17.9%. A year and a half of 12% is 18% | no | "about 18% between February 2024 and early 2026, about a year and a half of a 12% dividend" |
| [65.0] | Reserve floor, first put | about $1.5B, 15 September 2027 | $1.49B a year, 2028 notes put 2027-09-15 (10-Q) | yes | none |

## Go-deeper sample (blocks 15.0, 41.0, 64.1)

| block ref | claim | number in draft | number at source | match | fix |
|---|---|---|---|---|---|
| [15.0] | Consol fall by 1974 | about 85% | 2.5 / 15.17 x 100 = 16.5 against a peak near 108 to 113 (model, R8A, FRED LTCYUKA via search) | yes | label as a model |
| [15.0] | Gold revaluation | $20.67 to $35, 41% | 1 minus 20.67/35 = 40.9%. Gold Reserve Act January 1934 | yes | none |
| [15.0] | Reserve Primary Fund | $0.97 | $0.97, September 2008 (standard record) | yes | none |
| [15.0] | USDC depeg | about $0.87 | about $0.87 on 2023-03-11 (standard record) | yes | none |
| [15.0] | Junk bond index 2008 | about 26% | about 26% total return loss in 2008 (rating agency and index records, T4) | yes | none |
| [41.0], [64.1] | Goldman Sachs Trading Corporation | about $104 to under $2 | Issued at $104 in December 1928, peaked above $220 in February 1929, about $1.75 by 1932 (Galbraith). R8B marked the peak and low unconfirmed | yes | "issued at $104, peaked above $220 in early 1929, under $2 by 1932" |
| [41.0] | MicroStrategy March 2000 | 62% in one day | about 62% on 2000-03-20 (CNN, R8B) | yes | none |
| [41.0] | GBTC discount | about 50% | record about 47% to 50% in December 2022 (The Block, CoinDesk) | yes | none |
| [41.0] | South Sea | about £1,000 in June to about £135 by November | sources differ, about £1,050 in late June to about £130 to £190 by autumn (R8B, T4) | yes | "about £135 by the end of 1720" is safer |
| [64.1] | Anchor rate | about 19.5% | 19.5% (standard record) | yes | none |

---

## Flags: lane-unconfirmed items stated as fact

| block | statement | lane status | verifier finding | fix |
|---|---|---|---|---|
| [11], [15.0], [22] | STRC ranks behind STRF | R8B: T4, unconfirmed | Confirmed T1: supplement No. 2 names STRF as "dividend senior stock" | none |
| [25.1], [22] | STRF about $1.2B, claims ahead about $8B | Model in both lanes | Still a model. No per-series figure in the filings read | keep the "(model)" label, add it at [22] |
| [33] | mNAV about 3 to 4 in November 2024 | T4, needs T2 check | No company figure found. Press gives about 2.5 to 3.6 | see main table |
| [14] | Vote counted the founder's super-voting shares | "to verify" | 8-K silent on class B | see main table |
| [34] | 12-month reserve rule | T4 (Decrypt) | Not found in filings read | label as reported policy |
| [55], [62] | Metaplanet and Nakamoto near 0.9 in June 2026 | T4 (Forklog) | Not re-checked | add "(press reports)" |
| none | May 2026 reserve drawdown | T4 | Not stated in the draft | none needed |
| [51] | SATA $1.29B | R8B: T4, to verify | Confirmed T0: 12,940,621 shares, $1,294.1M stated amount at 2026-09-30 (Strive 8-K 2026-10-05) | none |

---

## Mismatch rate

Main path: 75 rows. 60 yes, 8 no, 7 cannot check. Mismatch rate = 8 / 68 checkable = 11.8% (8 / 75 = 10.7% of all rows). Go-deeper sample: 10 rows, 0 no (two wording fixes).
Combined: 8 / 78 checkable = 10.3%.

The rate is above 10%, so under the role card every headline claim in the round is re-checked. This pass already covers every main-path number. None of the 8 mismatches is a headline number in the tldr. Seven are small (a label, a date, a rounding word, a measure mixed up), and one changes a reader-facing fact: the Q3 2026 "bought about 4%" ([40]) should be "bought about 18%, net about 4%". All 8 have a fix written above. Pass: yes once the 8 fixes are applied.

---

## Claims table (corrected and resolved claims)

| id | claim | tier | status | source (URL) | source date | as-of date | falsifier |
|---|---|---|---|---|---|---|---|
| R8V-01 | STRC notional was about $10.46B on 2026-07-24, $8.39B on 2026-10-25 and about $8.18B on 2026-11-01 after 2,092,035 shares were bought back that week | T0 plus arithmetic | Confirmed | https://www.sec.gov/Archives/edgar/data/0001050446/000105044626000044/mstr-20260630.htm and https://www.sec.gov/Archives/edgar/data/1050446/000119312526442707/mstr-20261102.htm | 2026-08-03 and 2026-11-02 | 2026-11-01 | A company per-series figure outside $8.1B to $8.3B for 2026-11-01 |
| R8V-02 | STRC's lowest close since listing was $74.57 on 2026-06-26. Its intraday low that day was $71.25 | T3 | Confirmed | https://api.nasdaq.com/api/quote/STRC/historical | 2026-11-05 | 2026-11-04 | Exchange data showing a lower print |
| R8V-03 | STRC's coverage on the company's net method falls to 1 time near $13,250 Bitcoin on the 1 November stack (about $13,300 if STRF is $1.28B) | Model on T0 | Plausible | scratchpad/v8scripts/recompute.py | 2026-11-05 | 2026-11-01 | A disclosed STRF amount above $1.5B or below $1.0B |
| R8V-04 | In Q3 2026 Strategy bought 7,218 BTC (about 18% of about 41,000 mined) and sold 5,552, so holdings rose only 1,666 BTC (about 4%) | T0 | Confirmed | https://www.sec.gov/Archives/edgar/data/1050446/000105044626000047/mstr-20261029x8kxex9912.htm | 2026-10-29 | 2026-09-30 | 10-K restates Q3 purchases or sales |
| R8V-05 | MSTR's compound annual return from 2020-08-11 to 2026-11-04 is about 46%, not 51%. Bitcoin's is about 37% | T3 plus model | Confirmed | Nasdaq MSTR history, Coinbase BTC-USD candles, lane's split-adjusted start price | 2026-11-05 | 2026-11-04 | A split-adjusted start price that differs from $13.49 by more than 5% |
| R8V-06 | Strategy's debt is about $6.75B: $6.714B of convertible notes plus about $0.040B of other secured debt | T0 | Confirmed | https://www.sec.gov/Archives/edgar/data/1050446/000105044626000060/mstr-20260930.htm | 2026-11-02 | 2026-09-30 | New debt issued or notes repurchased |
| R8V-07 | Bitcoin's 2026 low was $57,740 intraday on 2026-07-01 (Kraken), lowest daily close $58,532 on 2026-06-30 | T3 | Confirmed | https://api.kraken.com/0/public/OHLC?pair=XBTUSD&interval=1440 | 2026-11-05 | 2026-11-05 | Another major venue with a low more than 2% different |
| R8V-08 | Strategy bought back STRC at an average of about $99.52 in the week to 2026-11-01, so buybacks run just below $100, not only below $99 | T0 | Confirmed | https://www.sec.gov/Archives/edgar/data/1050446/000119312526442707/mstr-20261102.htm | 2026-11-02 | 2026-11-01 | none (historical) |
| R8V-09 | Bitcoin over all debt and preferred (gross) falls to 1 time near $23,500. Net of the $4.92B of dollars it falls to 1 time near $17,700 | Model on T0 | Plausible | scratchpad/v8scripts/recompute.py | 2026-11-05 | 2026-11-01 | Stack or reserve changes by more than $1B |
| R8V-10 | Listed companies hold about 1.30 million BTC, 6.5% of the 20.1 million mined so far and 6.2% of the 21 million cap | T3 | Confirmed | https://api.coingecko.com/api/v3/companies/public_treasury/bitcoin | 2026-11-05 | 2026-11-05 | Treasury tracker revisions above 5% |
| R8V-11 | The ringgit gained about 18% against the dollar from February 2024 to February 2026 (Fed H.10 monthly averages 4.7655 to 3.911), about a year and a half of a 12% dividend | T3 | Confirmed | https://api.db.nomics.world/v22/series/FED/H10/RXI_N.M.MA?observations=1 | 2026-11 | 2026-10-31 | none (historical) |
| R8V-12 | mNAV in late 2024 was about 2.5 to 3.6 times in press estimates, with no company figure checked | T4 | Speculative | https://www.benzinga.com/markets/cryptocurrency/24/11/42138209/microstrategy-trading-at-insane-256-premium-to-bitcoin-holdings-research-shows | 2024-11 | 2024-11 | A Strategy filing with a different mNAV for November 2024 |
| R8V-13 | mNAV is about 1.10 on the company's enterprise measure and 0.88 on market cap alone at the 4 November MSTR close of $142.54 | Model on T0 and T3 | Plausible | Nasdaq MSTR history, 8-K and 10-Q inputs | 2026-11-05 | 2026-11-04 | Strategy's published mNAV differs by more than 0.05 |
| R8V-14 | STRF is "dividend senior stock" to STRC: STRC dividends are blocked until accumulated STRF dividends are paid | T1 | Confirmed | https://assets.contentstack.io/v3/assets/bltf8d808d9b8cebd37/blt242c99774eae697a/6ae8f9dbf0e9f2d3c7e1c369/form-424B2_11-02-2026_STRC-pro-supp_amendment-2.pdf | 2026-11-02 | 2026-11-05 | Amended certificate of designations |
| R8V-15 | Strive's SATA had 12,940,621 shares and $1.294B stated amount outstanding on 2026-09-30 | T0 | Confirmed | https://www.sec.gov/Archives/edgar/data/0001920406/000162828026064753/asst-20261005.htm | 2026-10-05 | 2026-09-30 | Later Strive filing |
| R8V-16 | The STRC rate floor is "monthly SOFR" as defined in the Annex. Overnight SOFR was 3.97% on 2026-11-03 | T1 and T0 | Plausible (definition not re-read) | https://markets.newyorkfed.org/api/rates/secured/sofr/last/3.json | 2026-11-04 | 2026-11-03 | Annex definition that differs materially from about 4% |
