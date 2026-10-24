# R6B: Level 2 chapters L2.1 (rb-bonds) and L2.2 (rb-moneymake), audit and expansion

Lane R6B, Round 6, Standard tier. Date 2026-10-24. Cards followed: Topic lane, Standing lanes Data, Ledger, Sweep (ROLES.md v4.0).

## Pass checklist
- [x] Move 2: default story named, popular sweep done, schools listed, every authority scoped
- [x] Move 3: ledger walk-throughs (repo, bank caught by rates, Fed purchase bank versus nonbank, auction by nonbank, FX purchase)
- [x] Move 4: regime split with stress years checked
- [x] Move 5: channel table first, both directions, two regimes, three frames
- [x] Move 6: every size word has a number, source and date, tests dated
- [x] A. Completeness audit and word audit for both chapters
- [x] B. Expansion material for missing and partial items
- [x] C. Sweep of popular claims with reach and verdicts
- [x] D. 10 to 12 curiosity questions per chapter, tagged to Level 1 ids
- [x] E. 8 radiant rays per chapter
- [x] F. Built on Level 1 bridge per chapter
- [x] G. Claims table R6B-01 onward and tripwires
- [x] Chart-ready tables in R6B-tables.json
- [x] Style check: no em-dashes, no en-dashes, no semicolons, "to" for ranges

Notes on the checklist: the X and Reddit parts of the popular sweep were not done (YouTube and books only). Ledger walk-throughs cover repo, a bank caught by rates, the Fed purchase from a bank versus a nonbank (already in the chapter, kept), an auction bought by a nonbank (B1.4 step 5) and the BNM FX purchase (B2.6, in words). Budget used: 23 web searches, 1 page fetch, 4 YouTube searches, plus about 40 data API calls (DBnomics, fiscaldata, TIC).

---

## Answers in brief (Moves 2 to 6 summary)
- **Q1 (rb-bonds).** The chapter is a strong Level 1.5 explainer (price, yield, real return) but misses five of the ten answer spec items: world size, holders by sector, how a bond is born, balance sheets, and Malaysia. "Backbone" is asserted, not measured. Measured here, the title holds: Treasuries are 68% of the Fed's securities, about 28% of all world FX reserves sit in Treasuries held by foreign officials, $12.6T of US repo runs daily mostly on Treasury collateral, and every big stablecoin and money fund parks in bills. The world bond market ($160.7T, 2025, SIFMA) is now bigger than world stocks ($157.8T).
- **Q2 (rb-moneymake).** The chapter already passes most of the Case 2 key (two floors, nonbank seller rule, netting, regime table). It misses: limits on each printer as a set (capital, zero reserve requirement, the Fed mandate, the 1951 Accord in that frame), the reverse repo sponge story with numbers, money-like claims outside banks, other central banks (ECB, BoJ, BNM), and the critical schools. Two numbers do not match Fed data ($5.45T deposit rise and +$2.1T bank securities in 2020 to 2021) and one statement is stale (the Fed "has paid more than it earns since 2022": its loss carry-forward has been shrinking since 28 January 2026).

---

## A. Completeness audit and word audit

### A1. rb-bonds against the framer's answer spec (FRAME_R6 Q1)
| # | Spec item | Status | What is there, what is missing |
|---|---|---|---|
| 1 | Promise with a price, duration computed | Partial | Coupon, yield, seesaw and the 7% (10-year) and 14% (30-year) loss for a one point rise are there and check out by script (7.44% and 13.84%). Missing: the word duration, the rule of thumb (price change about duration times yield change), and the asymmetry (convexity): a one point fall gains 8.2% on the same 10-year bond, more than the 7.4% loss |
| 2 | Who issues and how much, world size, US share | Missing | Only "the public holds $32.57T". No world total, no company, mortgage or city bonds, no US share |
| 3 | Who holds, by sector, over time | Missing | Foreign central banks and Japan named. No sector table, no chart, no domestic versus foreign split |
| 4 | How a bond is born (auctions, dealers, bills versus coupons) | Missing | Not in this chapter (a short version sits in rb-06 and rb-moneymake) |
| 5 | Backbone test with a number on each role | Partial | Six roles listed. One number (Fed $4.57T). No repo size, no bank liquid assets, no share of world reserves, no stablecoin or money fund size |
| 6 | Yield curve, term premium, real versus nominal, inflation-linked bonds | Partial | Curve, inversion, term premium (in the forces table), real return. Missing: TIPS and breakeven inflation, the 2022 to 2024 inversion (541 trading days) and the fact that the curve has since un-inverted |
| 7 | Regimes and accidents | Partial | 1940s, 1970s, 2020 low yield, 2022, SVB 2023, 2026 forces. Missing: 1979 to 1982 numbers, 1994, March 2020 dash for cash, UK 2022, Japan yield curve control, the 2026 rise with numbers |
| 8 | Balance sheets (repo T-accounts, a bank hit by rates) | Missing | No T-accounts in the chapter |
| 9 | Smaller currency view (Malaysia) | Missing | Not mentioned |
| 10 | Overcorrection guard ("safe" and "bubble" both incomplete) | Partial | The "safe means no loss" myth is handled well. The opposite story ("China and Japan are dumping, the bond market is breaking") is not addressed |

Score: 0 present, 5 partial, 5 missing.

### A2. rb-bonds word audit (19 hits)
| # | Where | Text | Verdict and proposed rewrite |
|---|---|---|---|
| 1 | cards label | "The only five words you need" | Rewrite: "Five words to start with" (Level 2 adds duration, repo, haircut, primary dealer) |
| 2 | card Coupon | "it never changes" | True for fixed-rate bonds. Rewrite: "it never changes on a fixed-rate bond (floating-rate notes and inflation-linked bonds are the exceptions)". FRNs are $708B and TIPS $2.17T of marketable debt (MSPD, 30 Sep 2026) |
| 3 | check answer | "the price swings in between never touch you" | Keep with a condition: "never touch you, as long as you never need to sell early" |
| 4 | seesaw caption | "the price is the only thing that can move" | Keep (true for a fixed coupon) |
| 5 | steps | "the government never missed a payment" | Keep (it is the point of the example) |
| 6, 7 | widget caption | "all bought... all paying" | Keep (describes the widget) |
| 8 | tower list | "the main asset it holds" | Quantify: "Treasuries are $4.57T of the Fed's $6.47T of securities, 71%" (H.4.1, 21 Oct 2026) |
| 9 | yield curve | "Inversions have preceded most US recessions" | Quantify or soften: "preceded each of the last eight US recessions, but the 2022 to 2024 inversion, the longest since 1980, has not been followed by one so far". The count of eight needs a source check before printing |
| 10 | myth | "you cannot lose money on them" | Keep (it is the myth being debunked) |
| 11 | insider | "the only voter that votes every second" | Keep as a figure of speech, or "a voter that votes every second" |
| 12 | step 6 | "for most savers, after tax" | Keep or quantify. Tax-free accounts (IRAs, 401(k)s) are a large exception |
| 13, 16 | steps, insider | "only keeps up with prices" | Keep |
| 14 | insider | "savers who only look at the nominal number" | Keep |
| 15 | insider | "always separate a yield" | Keep (advice, not a claim) |
| 17 | step 7 | "better than most people" | Soften: "better than many people" |
| 18 | check answer | "only $30" | Keep |
| 19 | connects | "the assets that most of that money ultimately leans on" | Wrong as stated. Bank deposits ($19.6T) lean mainly on loans ($14.1T of $25.9T bank assets). Treasuries and agency securities are $4.78T, 18% of bank assets (H.8, Sep 2026). Rewrite: "the safe assets that banks, the Fed and money funds hold to settle, pledge and survive a run" |

### A3. rb-bonds numbers checked
| Number in chapter | Check | Result |
|---|---|---|
| $32.57T held by public | Debt to the Penny | $32.57T on 21 Oct 2026, $32.60T on 22 Oct. OK |
| About 22% bills | MSPD 30 Sep 2026: bills $7.12T of $31.81T marketable | 22.4%. OK |
| 10-year 5.13%, 2-year 4.81%, 30-year 5.42% | H.15 via DBnomics | Correct for 21 Oct 2026. Stale by 22 Oct: 4.96%, 4.65%, 5.29%. The 2026 peak was 5.31% on 5 Oct |
| 30-year mortgage 7.40% | Not fetched (Freddie Mac PMMS) | Unverified |
| Mortgage payments $2,502 and $2,770 | Script | $2,502.02 and $2,769.52, difference $267.50 a month, $3,210 a year. OK |
| Japan sold $171B of Treasuries | TIC Table 5 | Japan's holdings fell from $1,239.3B (Feb 2026) to $1,068.3B (Aug 2026), exactly $171.0B. That is a holdings change, not sales: it includes price falls as yields rose. Japan's yen intervention was about $73B (Apr to May) plus about $98.6B (30 Jul to 26 Aug) per press reports of MoF data. Rewrite: "Japan's recorded holdings fell $171B from February to August while it spent a similar sum defending the yen" |
| Fed $4.57T Treasuries | H.4.1 21 Oct 2026 | $4.573T. OK |
| GENIUS Act: tokens "have to be backed by bills of 93 days or less" | T1, not re-fetched | Overstated. The Act lists several eligible reserves (cash, bank deposits, Treasuries with 93 days or less left, repo on them, government money funds, central bank reserves). Bills are the dominant choice, not the only one. Rewrite accordingly |
| Net interest $1,051.8B FY2026 | Ledger L7-02, T0 | OK (not re-fetched) |
| Record low close 0.52% in Aug 2020 | H.15 | 0.52% on 4 Aug 2020. OK |
| 1% rise knocks 7% off 10-year, 14% off 30-year | Script | 7.44% and 13.84%. OK |
| $50 coupon bond falls to about $926 at 6% | Script (annual coupons) | $926.40. OK |
| Oil above $100 | Not checked | Unverified in this lane |

### A4. rb-moneymake against the framer's answer spec (FRAME_R6 Q2, plus the Case 2 key)
| # | Spec item | Status | What is there, what is missing |
|---|---|---|---|
| Key | Case 2 key: all channels with signs and sizes, both floors, nonbank seller rule, deficit netting, 1971 to today by regime | Present (with two number errors) | All five elements are there. The channel table lacks destruction rows (loan repayment, taxes, QT, nonbank auction purchases are in prose, not in the table) and some sizes do not match H.8 (see A6) |
| 1 | Channel table first, latest year and stress year | Partial | A channel table exists but sits in the middle of the chapter, has no destroy rows with sizes and no sign column |
| 2 | What limits each printer | Partial | Bank limits are in rb-06, not here. The Fed's legal limit (open market only, 1935 and 1981) and the 1942 to 1951 peg are here. Missing: capital and liquidity rules with numbers, the zero reserve requirement since 26 March 2020, the Fed's dual mandate as the brake, interest on reserves as a price, and the debt limit for the Treasury |
| 3 | Upstairs plumbing, TGA and reverse repo as sponges | Partial | Both are described. Missing the key number: from 1 June 2022 to 21 Oct 2026 the Fed's securities fell $2.01T, but reserves fell only $0.39T, because the reverse repo pool drained $1.97T (H.4.1) |
| 4 | Destruction channels in plain words | Partial | Repayment, taxes, auctions, QT are covered in prose. A bank buying back its own shares or bonds is missing |
| 5 | Money-like claims outside banks | Partial | Stablecoins only. Missing money funds ($7.98T, Sep 2026), repo ($12.6T daily exposures), eurodollar credit ($14T, BIS) and which money measure counts each |
| 6 | Other countries (ECB, BoJ, BNM) | Missing | US only |
| 7 | The critical schools | Missing | No MMT, Austrian or monetarist view |
| 8 | Regime label on every "most" | Partial | Several "most" lines carry a regime ("in 2020 to 2021"), but the summary box line "Banks create most new downstairs money when they lend" has none |

Score: Case 2 key present with two number errors. Of the 8 extra items: 0 present, 6 partial, 2 missing (other countries, critical schools).

### A5. rb-moneymake word audit (56 hits, the ones that need action)
Hits that only describe a rule ("only banks hold reserves", "only in the open market", "only when the seller is not a bank", "None overall") are correct and stay. Hits needing a number, a regime label or a rewrite:
| # | Where | Text | Proposed rewrite |
|---|---|---|---|
| 4 | summary box 2 | "Banks create most new downstairs money when they lend" | "In normal years banks create most new downstairs money when they lend (1971 to 2007: 87% to 96% of the two printers combined, Fed data). In 2008 to 2014 and 2020 to 2021 the Fed did most of it" |
| 6 | summary box 5 | "created most of the $5.45 trillion rise in bank deposits" | Fix the number: H.8 deposits rose $4.71T (35.7%) from Dec 2019 to Dec 2021. "created most of the $4.7 trillion rise" |
| 9 | intro | "That is the most common way money is born" | "In normal years that is the most common way" |
| 23 | insider | "Most primary dealers are the securities arms of big banks" | Quantify from the NY Fed list of 25 (16 Oct 2026). Count before printing. Alternative: "Nearly all primary dealers belong to big banking groups" |
| 30 | pandemic paragraph | "the Fed and banks bought most of the new bonds" | "the Fed and banks ended up holding about 68% to 72% of the new Treasury debt (Z.1 gives 68%, the chapter's own estimate 72%)" |
| 30b | same | "M2 rose 41%" | H.6: $15.49T (Feb 2020) to $21.73T (Feb 2022) is 40.2%. "M2 rose about 40%, from $15.5T to $21.7T" |
| 31 to 34 | myth and reality | "All money is created...", "main channel most years", "created most new deposits" | Keep the myth. Reality: "Loans are the largest channel in normal years (2019: loans +$0.45T, securities +$0.34T, deposits +$0.79T)..." |
| 35 to 37 | "So who is printing" | "the answer is simple", "main printer", "mostly because people and firms borrow" | Drop "simple". Keep "main printer in a normal year" with the 2025 to 2026 numbers already in the paragraph |
| 40 | 2020 paragraph | "Bank deposits jumped $5.45 trillion, about 35%" | "$4.7 trillion, about 36%" (H.8 SA, Dec 2019 to Dec 2021) |
| 41 | same | "Bank lending played only a small part" | Quantify: "bank loans rose $0.68T, a seventh of the deposit rise" |
| 42 | heading | "Then why do people say the government cannot just print?" | Keep (it is a question) |
| 46 to 48 | 1971 to 2007 bullet | "almost all of it", "mostly supplied the paper cash" | Keep "almost all" (87% to 96% is shown). "mostly supplied paper cash" needs a number: the chapter's own table gives Fed bond buying of $0.72T for 1971 to 2007, and currency in circulation was $0.83T at end 2007 (H.4.1) against well under $0.1T in 1971, so the two are similar in size. Print only after the 1971 currency level is fetched |
| 56 | connects | "it financed most of the 2020 and 2021 deficits" | "it ended up holding about 56% to 59% of the new marketable debt of 2020 and 2021" |

### A6. rb-moneymake numbers checked
| Number in chapter | Check | Result |
|---|---|---|
| Reserves $2.96T | H.4.1 RESH4R 21 Oct 2026 | $2.970T. OK |
| TGA $952B | H.4.1 Wednesday level 21 Oct | $945B (the $952B is likely the week average). OK, label it |
| Reverse repo $0.3B, "$1.8T in March 2022" | H.4.1 | $0.24B on 21 Oct 2026. $1.82T on 13 Apr 2022 is right, but the peak was $2.37T on 28 Sep 2022 (Wednesday level). Say "peaked at about $2.4T in late 2022" |
| Fed $4.57T Treasuries, $1.90T mortgage bonds | H.4.1 | $4.573T and $1.895T. OK |
| Cash $2.49T | H.4.1 RESTBC | $2.485T. OK |
| Deposits $19.6T (Sep 2026) | H.8 B1058NCBAM | $19.64T. OK |
| M2 $23.3T (Aug 2026) | H.6 | $23.34T. OK |
| Deposits +$5.45T (+35%) in 2020 to 2021 | H.8 SA monthly | +$4.71T (+35.7%) Dec 2019 to Dec 2021. The dollar figure does not match, the percentage does. Error |
| Bank securities +$2.1T in 2020 to 2021 | H.8 B1002 (all securities) | +$1.86T (Treasury and agency +$1.58T). Error, fix to $1.9T |
| Latest year loans +$1.0T, securities +$0.14T, deposits +$1.2T (+6.7%) | H.8 Sep 2025 to Sep 2026 | +$1.00T, +$0.139T, +$1.225T (+6.7%). OK |
| M2 $15.5T to $21.8T, +41% | H.6 | $15.49T to $21.73T, +40.2%. Small error |
| Fed bought about 59% of new marketable debt 2020 to 2021 | Z.1 L.210 | Fed +$3.36T of +$6.01T all-sector holdings, 56%. Within range, label as "56% to 59% depending on source" |
| Interest on reserves about $115B a year | IORB 3.90% since 17 Sep 2026 times $2.97T | $116B. OK (model, label it) |
| Fed owes itself $232.7B | H.4.1 RESPPLLOP | $232.7B on 21 Oct 2026. OK. But "since 2022 it has paid more than it earns" is stale: the deferred asset peaked at $245.9B on 28 Jan 2026 and has shrunk $13.3B since, so the Fed is again earning slightly more than it pays. Update |
| 25 primary dealers | NY Fed list 16 Oct 2026 | 25 (it was 26 in January 2026 after MUFG joined). OK |
| Week to 21 Oct: TGA +$69B, reserves -$60B | Not recomputed (week averages) | Plausible, unverified here |
| 1935 open market rule, 1942 exception lapsed 1981, Accord 4 Mar 1951 | T1 history, not re-fetched | Consistent with standard sources |
| 1971 to 2026 table | Round 5 build, not re-run in full | Spot checks only. 2020 to 2021 Fed +$4.52T matches H.4.1 Treasuries plus MBS change within rounding |

---

## B. Expansion material

### B1. Bonds (rb-bonds)

#### B1.1 Duration, computed (model, script duration.py, semiannual coupons)
Duration is the bond's "lever": the percentage price change for a one point change in yield. It equals roughly the average time until you get your money back, weighted by each payment's present value.
| Bond (yields of 21 Oct 2026) | Coupon | Yield | Price | Modified duration | Price if yields +1 point | Price if yields -1 point |
|---|---|---|---|---|---|---|
| 2-year | 4.75% | 4.81% | 99.89 | 1.89 | -1.86% | +1.91% |
| 10-year (the 7 Oct 2026 reopening, coupon 4.625%) | 4.625% | 5.13% | 96.09 | 7.87 | -7.51% | +8.26% |
| 30-year | 5.00% | 5.42% | 93.81 | 14.98 | -13.44% | +16.82% |
Lessons for the chapter: (1) the 10-year moves about 8% per point, the 30-year about 15%, the 2-year about 2%. (2) Gains beat losses for the same move (convexity): +16.8% versus -13.4% on the 30-year. (3) The rule of thumb "price change is about minus duration times the yield change" is good to about half a point of error for a one point move on a 10-year.
Inputs: coupons are illustrative except the 10-year (4.625%, CUSIP 91282CRF0, TreasuryDirect auction data). Yields: H.15 21 Oct 2026.

#### B1.2 How big is the bond world
| Measure | Value | Date | Source |
|---|---|---|---|
| Global fixed income outstanding | $160.7T, up 10.6% in a year | end 2025 | SIFMA Capital Markets Fact Book 2026 (key findings, 19 Aug 2026) |
| Global equity market value, same source | $157.8T | end 2025 | SIFMA 2026 |
| US share of global bonds | 38.1%, about $61.2T (computed) | end 2025 | SIFMA 2026 |
| Global long-term bond issuance | $29.9T in 2025 | 2025 | SIFMA 2026 |
| Previous year | $145.1T | end 2024 | SIFMA 2025 Fact Book |
| US marketable Treasuries | $31.81T (bills $7.12T, notes $16.28T, bonds $5.54T, TIPS $2.17T, FRNs $0.71T) | 30 Sep 2026 | Treasury MSPD Table 1 |
| Treasury market daily trading | $1.21T average a day, Jan to Jul 2026, up 12.1% | Jul 2026 | SIFMA US Treasury statistics (primary dealer basis) |
Eye-opener: at end 2025 the world's bonds ($160.7T) were worth slightly more than all the world's listed shares ($157.8T). Most people picture stocks as the bigger market.
Gap: the split of the $160.7T by issuer type (governments, companies, mortgage pools, cities) was not fetched. The Data lane should pull it from the SIFMA PDF or BIS debt securities statistics before printing.

#### B1.3 Who holds US Treasuries, by sector, 1970 to 2025 (Fed Z.1 table L.210 via DBnomics)
Share of all Treasury securities held, percent. Codes in R6B-tables.json.
| Holder | 1970 | 1980 | 1990 | 2000 | 2007 | 2014 | 2019 | 2021 | 2023 | 2025 |
|---|---|---|---|---|---|---|---|---|---|---|
| Federal Reserve | 15.2 | 12.4 | 5.8 | 11.7 | 11.8 | 21.7 | 14.0 | 25.0 | 17.3 | 12.7 |
| Foreign (rest of world) | 8.3 | 20.9 | 20.8 | 36.0 | 54.5 | 48.8 | 40.9 | 33.7 | 32.8 | 32.5 |
| Banks and credit unions | 30.6 | 20.6 | 9.7 | 7.1 | 2.8 | 4.0 | 5.2 | 7.2 | 6.3 | 6.9 |
| Money market funds | 0.0 | 0.6 | 2.2 | 3.3 | 4.2 | 3.8 | 6.6 | 7.9 | 9.4 | 12.4 |
| Mutual funds and ETFs | 0.4 | 0.3 | 3.9 | 4.0 | 4.7 | 5.9 | 8.9 | 8.4 | 7.8 | 8.4 |
| Pensions and insurers | 6.2 | 11.7 | 21.3 | 15.0 | 10.5 | 6.7 | 6.9 | 6.0 | 5.6 | 6.0 |
| Households and hedge funds (residual) | 13.0 | 11.3 | 12.4 | 7.4 | -7.3 | 0.8 | 8.2 | 1.3 | 9.8 | 9.5 |
| State and local governments | 9.7 | 11.4 | 11.8 | 5.8 | 9.4 | 4.3 | 3.6 | 5.6 | 5.9 | 5.6 |
| Other (dealers, firms, GSEs) | 5.4 | 3.0 | 5.9 | 1.3 | 0.2 | 1.9 | 2.8 | 2.1 | 2.5 | 3.6 |
| Total held, $T | 0.24 | 0.61 | 2.11 | 2.84 | 4.36 | 12.62 | 16.93 | 22.94 | 24.19 | 28.48 |
Readings: (1) Foreigners went from 8% (1970) to a peak of 54.5% (2007) and back to 32.5% (2025). Their dollar holdings still rose, to a record $9.49T in Feb 2026 (TIC), but everyone else grew faster. (2) Money market funds are the quiet giant: from almost nothing in 1980 to 12.4% in 2025, roughly the Fed's share. (3) Banks held 31% in 1970 and 7% now. (4) The household line is a residual that includes hedge funds, so it can even go negative (2007).
Caveats: Z.1 values Treasuries differently from H.4.1. Z.1 shows the Fed at $3.62T at end 2025 while H.4.1 shows $4.23T (face value). Use Z.1 for shares within one table, H.4.1 for the Fed's level. The total ($28.48T) is below marketable debt at face ($30.07T Z.1 liability line).
Latest foreign detail (TIC Table 5, Aug 2026): total foreign $9.33T, of which foreign official $3.76T. Japan $1,068B, UK $1,010B, China $591B. Japan fell $171B from Feb 2026, China fell $109B in a year, the UK rose $108B in a year. Foreign official bills fell from $457B (Apr) to $312B (Aug).

#### B1.4 How a bond is born: the 7 October 2026 ten-year auction (TreasuryDirect auction data, fiscaldata API)
| Step | What happened |
|---|---|
| 1. Announcement | Treasury offered $39.0B of a reopened 10-year note (coupon 4.625%, matures 15 Aug 2036, CUSIP 91282CRF0) |
| 2. Bidding | Bids came in for $109.0B, 2.77 times the offer. The 25 primary dealers must bid for their share, and they tendered $52.9B |
| 3. Single price | All winners pay the same yield, the highest accepted: 5.300%, a price of $94.86 per $100. Bids at exactly 5.300% got 57.6% of what they asked for. The median accepted bid was 5.255% |
| 4. Who won | Indirect bidders (foreign central banks and investors bidding through dealers, plus many domestic funds) $31.06B, 79.6%. Direct bidders (domestic funds and others bidding directly) $6.62B, 17.0%. Primary dealers $0.98B, 2.5%. Noncompetitive (small savers) $0.33B. The Fed rolled over $0.93B of maturing holdings on top, which gives the Treasury no new cash |
| 5. Settlement | 15 Oct 2026: buyers' banks pay, reserves and deposits move up into the Treasury General Account (L2.2 link: if the buyer was a nonbank, deposits fall until the Treasury spends) |
Two surprises: it was the highest yield at a 10-year auction in this dataset (since 2008), and the dealers' take (2.5%) was the lowest share of any 10-year nominal auction in the dataset. The yield was high, so the crowd bought, and the dealers were left with little.
Dealers' share of 10-year auctions, by year: 71.8% (2008), 44.2% (2010), 29.2% (2015), 25.4% (2020), 16.6% (2022), 11.0% (2025), 8.8% (2026 to date). Indirect bidders rose from 27.1% to 73.3%. Full table in R6B-tables.json. Plain reading: the dealer's job has shifted from buyer to backstop.

#### B1.5 Repo walked through balance sheets (ledger)
Repo is a loan secured by a bond: sell the bond for cash today, buy it back tomorrow at a slightly higher price. The difference is the interest. The "haircut" is the cushion the lender keeps (for example, lend $98 against $100 of bonds).
Example (illustrative sizes): a hedge fund buys a $100 Treasury and funds it in repo through a dealer, and a money market fund supplies the cash.
| Actor | Assets | Liabilities | What changed |
|---|---|---|---|
| Hedge fund | +$100 Treasury (still its bond, pledged) | +$98 repo borrowing, $2 of its own capital | It owns the bond with 50 to 1 leverage at a 2% haircut |
| Dealer (bank arm) | +$98 reverse repo (loan to fund), offset by +$98 repo borrowing from the money fund | | It is the middleman. Often cleared through FICC as "sponsored repo", which lets the dealer net the two legs |
| Money market fund | -$98 deposit at its bank (or cash at the Fed's reverse repo if it was parked there), +$98 repo loan | | It swapped one cash-like asset for another, safer one |
| Floors | Upstairs: reserves move between banks. If the cash came out of the Fed's reverse repo pool, reserves in the banking system rise. Downstairs: the money fund's deposit falls, the bond seller's deposit rises. Public money only moved |
Sizes: the US repo market averaged $12.6T of daily exposures in Q3 2025: $4.4T centrally cleared at FICC, $3.1T on BNY's tri-party platform, $5.0T bilateral uncleared (OFR, 4 Dec 2025). Cleared repo averaged $7.8T a day in July 2026, of which sponsored $2.4T (ISDA-Actrix, 15 Sep 2026).
Why it is backbone: a Treasury is worth more than its coupons because it can be turned into cash overnight at a small haircut. That "pawnshop value" is part of why Treasuries yield less than they otherwise would.
Where it breaks: when haircuts jump or dealers' balance sheets fill up, the fund must sell the bond, which pushes prices down and haircuts up again. That loop drove March 2020.

#### B1.6 The backbone test: a number on each role
| Role | Measure | Value | Date | Source | Tier |
|---|---|---|---|---|---|
| Base under the Fed's money | Treasuries as share of Fed securities | 70.7% ($4.573T of $6.468T) | 21 Oct 2026 | H.4.1 | T0 |
| World savings | Foreign official Treasury holdings as share of world FX reserves | about 28% ($3.76T of $13.22T, dates differ by two months) | Aug 2026 and Q2 2026 | TIC Table 5, IMF COFER | T0 |
| Dollar share of world reserves | | 56.70% | Q2 2026 | IMF COFER (30 Sep 2026) | T0 |
| Pawnshop ticket | US repo daily exposures | $12.6T | Q3 2025 | OFR | T0/T4 |
| Bank liquidity | Treasury and agency securities plus cash assets at US banks | $7.88T, 30.5% of $25.87T assets | Sep 2026 | H.8 | T0 |
| Money funds | Money fund assets, and their Treasuries | $7.98T total (2 Sep 2026). Treasuries $3.52T at end 2025 | 2025 to 2026 | ICI weekly, Z.1 | T0/T4 |
| Stablecoins | Market value, and the largest issuer's Treasury bills | $308B (Aug 2026). Tether $115B of bills and $25.6B reverse repo out of $187.8B assets | Aug 2026, 30 Jun 2026 | Trackers (DefiLlama), Tether attestation via press | T4 |
| Base price of credit | Spread logic | Mortgages and corporate loans are priced as a Treasury yield plus a margin | ongoing | Market convention | T3 |
Verdict on the title: "backbone" passes on every measure, with one correction. Bonds are the backbone of the system's plumbing (collateral, reserves, liquidity buffers, stablecoin backing). They are not what most bank deposits lean on: loans are. A fair title test sentence: "Deposits are born from loans, but the system settles, pledges and saves in Treasuries."

#### B1.7 The yield curve: numbers to add
- The 10-year minus 2-year spread was negative on 541 trading days between 1 Apr 2022 and 5 Sep 2024 (H.15). The deepest inversion on record in this series was -2.41 points on 20 Mar 1980. On 22 Oct 2026 the curve sloped up by +0.31 points.
- Inflation-linked bonds: TIPS outstanding $2.17T (MSPD Sep 2026). Breakeven inflation (nominal minus TIPS yield) is the market's inflation forecast. Not fetched this lane (FED TIPS dataset on DBnomics has it).

#### B1.8 Stress years (H.15 daily 10-year yield, price change of a 10-year bond bought at par at the low)
Model: price-only repricing of a 10-year par bond from the window's low yield to its high, same maturity, coupons ignored.
| Episode | 10-year yield low to high (dates) | Price change | What broke and who stepped in |
|---|---|---|---|
| 1979 to 1982, Volcker | 8.76% (2 Jul 1979) to 15.84% (30 Sep 1981), the record high | -35% | Inflation above 13%. The Fed let rates rise until inflation broke. Long bonds became "certificates of confiscation" |
| 1994, bond massacre | 5.19% (15 Oct 1993) to 8.05% (7 Nov 1994) | -19% | A surprise Fed hiking cycle. Orange County went bankrupt. The year Carville's quote became famous |
| 2008 | 4.27% (13 Jun) to 2.08% (18 Dec) | +20% (a gain) | Treasuries rallied as everything else fell: the safe asset worked |
| March 2020, dash for cash | 0.54% (9 Mar) to 1.18% (18 Mar) | -6% in seven trading days | Even Treasuries could not be sold easily. The Fed bought $1.27T of Treasuries in five weeks (H.4.1, 11 Mar to 15 Apr 2020) |
| 2022 to 2023 | 1.35% (3 Dec 2021) to 4.98% (19 Oct 2023) | -28% | Stocks and bonds fell together. UK pension funds (LDI) hit margin calls in Sep 2022 and the Bank of England bought £19.3bn of long gilts from 28 Sep to 14 Oct 2022 |
| 2023, SVB | | | US banks carried $620B of unrealized securities losses at end 2022 (FDIC). SVB's held-to-maturity losses were about $15.1B, near its whole equity. A bond loss became a deposit run in one day |
| 2026 | 3.97% (27 Feb) to 5.31% (5 Oct), the highest since 2007 | -10% | Fed hike on 16 Sep, oil, heavy issuance. The MOVE index of bond volatility jumped about 30% in the week to 25 Sep (press). Then 10-year fell to 4.96% on 22 Oct |
Japan as the extreme: the Bank of Japan held 49.0% of JGBs at end Dec 2025 (MoF breakdown of Flow of Funds, 18 Mar 2026), its first reading below 50% since June 2022. Foreigners held 6.8% (12.8% including bills).

#### B1.9 Ledger: a bank caught by rising rates (illustrative, SVB-shaped)
| Step | Assets | Liabilities and equity |
|---|---|---|
| 2021: deposits flood in | +$100 deposits arrive as reserves, bank buys $100 of 10-year bonds at 1.5% | +$100 deposits, equity $8 against $108 of assets |
| 2022: yields rise to 4.5% | Bonds are now worth about $78 (script: 1.5% coupon, 9 years left, priced at 4.5%) | Deposits still $100. Equity on a market basis: $8 - $22 = -$14 |
| 2023: depositors leave | To pay $30 of withdrawals the bank must sell bonds and book the loss | The hidden loss becomes real. Equity is gone |
Held-to-maturity accounting let the loss stay off the income statement until a sale was forced. The bond was never in default.

#### B1.10 The smaller-currency case: Malaysian government bonds
| Item | Value | Date | Source |
|---|---|---|---|
| All Malaysian bonds and sukuk | RM2.291T | Mar 2026 | BIX Malaysia 1Q2026 report |
| Government bonds (MGS conventional plus GII sukuk) | RM1.309T (about RM695B MGS, RM625B GII) | Mar 2026 | BIX Malaysia |
| Foreign holdings of MGS plus GII | RM283.1B, 21.6% (computed) | Mar 2026 | BIX Malaysia |
| Foreign share of MGS reported by MARC | 20.1%, from 20.6% in June | Jul 2026 | MARC via Bernama, 1 Sep 2026 |
| Foreign inflow | RM11.1B into government bonds | Aug 2026 | Kenanga via Business Today |
| 10-year MGS yield | 3.985% | end Aug 2026 | Kenanga |
| BNM reserves | US$130.63B | end May 2026 | BNM via NST |
| Policy rate (OPR), reserve requirement | 2.75%, SRR 1% (cut from 2% on 16 May 2025) | Jul 2026 | NST, BNM policy document |
| EPF (main domestic holder) | Investment assets RM1.31T, fixed income 46.2% of assets (end 2024), mostly MGS | Jun 2025 | EPF via NST, The Vibes |
Readings: (1) Malaysia's 10-year government yield (3.985% at end Aug 2026) sat about 0.8 points below the US 10-year then (4.79% on 1 Sep, H.15), and further below it in October (5.13% on 21 Oct). A smaller currency borrowing cheaper than the US is a Level 2 surprise: Malaysia has lower inflation, a captive domestic saver (EPF) and a central bank with reserves, while the US has heavy issuance. (2) The foreign fifth is the swing holder: MARC tied the July outflow to higher US yields. When US yields jump, foreign money leaves ringgit bonds, the ringgit weakens and BNM may sell dollars. (3) Islamic sukuk (GII) are almost half of government debt, a structure the US does not have.
Gap: the holder breakdown (EPF, banks, insurers, BNM, foreign) by share was not found. It is on BNM's monthly statistical bulletin.

#### B1.11 Overcorrection guard for bonds
| Story | When it is right | When it is wrong |
|---|---|---|
| "Treasuries are safe" | Safe from default in dollars. In 2008 they rose 20% while other assets fell | Not safe from price: -35% (1979 to 1981), -28% (2021 to 2023). Not safe from inflation |
| "China and Japan are dumping, the bond market is breaking" (Andrei Jikh, 2.6M views) | Japan's holdings fell $171B in six months (TIC), China's $109B in a year. The foreign share fell from 54.5% to 32.5% since 2007 | Total foreign holdings were $9.33T in Aug 2026, near the record. The UK alone added $108B in a year. The 7 Oct 10-year auction drew 2.77 times cover and dealers took only 2.5% |

### B2. Money creation (rb-moneymake)

#### B2.1 The channel table (goes first in the chapter)
Sign: + adds to the public's deposits, - drains them, 0 changes only upstairs. Sizes in $T, from Fed data via DBnomics (H.8 SA monthly, H.4.1 Wednesday levels, H.6) and the Treasury Monthly Treasury Statement. Windows: normal year (Dec 2018 to Dec 2019), stress (Dec 2019 to Dec 2021), QT (Dec 2021 to Dec 2023), latest year (Sep 2025 to Sep 2026).
| Channel | Creates or destroys | Sign on public deposits | Normal 2019 | Stress 2020 to 2021 | QT 2022 to 2023 | Latest year |
|---|---|---|---|---|---|---|
| Bank loans, net of repayments | Both | + when lending exceeds repayment | +0.45 | +0.68 | +1.56 | +1.00 |
| Bank purchases (sales) of securities from nonbanks | Both | + buy, - sell | +0.33 | +1.86 | -0.61 | +0.14 |
| Fed purchases (QE) or run-off (QT) of Treasuries and MBS | Both | Reserves always. Deposits only when the final seller (or holder at run-off) is a nonbank | -0.13 | +4.52 | -1.04 | +0.16 |
| Federal deficit (fiscal year, spending minus taxes) | Creates gross | + when spent, then netted by who buys the bonds | FY2019 deficit 0.98 | FY2020 plus FY2021 deficits 5.90 | FY2022 plus FY2023 3.07 | FY2026 1.99 |
| Treasury account (TGA) rise | Drains | - (rise), + (fall) | -0.02 (fell) | -0.07 (fell) | +0.43 (rose, drain) | +0.23 (rose, drain) |
| Reverse repo pool rise | Drains reserves (money funds' cash parked at the Fed) | - (rise), + (fall) | 0.00 | +1.64 (rose, soaked up QE) | -0.82 (fell, released cash) | -0.02 |
| Cash withdrawn into wallets | Moves deposits to notes | - on deposits, 0 on M2 | +0.09 | +0.43 | +0.11 | +0.07 |
| Result: bank deposits | | | +0.79 (+6.4%) | +4.71 (+35.7%) | -0.50 (-2.8%) | +1.23 (+6.7%) |
| Result: M2 | | | +0.96 | +6.15 | -0.72 | +1.17 (Aug to Aug) |
| Result: bank reserves (upstairs) | | | -0.01 | +2.39 | -0.61 | -0.12 |
Not sized here (channels without a clean series): banks buying back their own shares or bonds from nonbanks (destroys deposits), bank fees and interest paid by the public (destroy, then recreate when banks pay wages and dividends), Fed interest on reserves (creates reserves, about $116B a year at 3.90% on $2.97T, model), foreign official purchases of Treasuries from US residents (moves deposits to foreigners' accounts, often at the Fed's foreign repo pool, $334B on 21 Oct 2026).
Readings: in a normal year (2019) bank lending plus bank securities buying explain all of the deposit rise and the Fed was slightly negative. In 2020 to 2021 the Fed channel ($4.52T) was 6.6 times bank lending ($0.68T). In 2022 to 2023 deposits fell even though banks lent $1.56T, because QT, bank securities sales and a rising TGA drained more.

#### B2.2 What limits each printer
| Printer | Hard limit (law or rule) | Soft limit (price or demand) | Numbers |
|---|---|---|---|
| Commercial banks | Capital rules: common equity of at least 4.5% of risk-weighted assets plus buffers (Basel III as applied in the US). Liquidity coverage ratio: enough high quality liquid assets for 30 days of stress outflows | Borrowers must want loans and pass credit checks. The loan must beat the bank's funding cost, which is anchored by interest on reserves (3.90% since 17 Sep 2026) | Reserve requirements: 0% since 26 March 2020 (Fed announcement of 15 March 2020). So the "ten times reserves" multiplier has no legal base in the US today |
| The Fed | Federal Reserve Act section 14: may buy Treasuries and agency debt only in the open market (1935). Direct purchase authority from 1942 lapsed in 1981. Section 2A: the mandate of maximum employment, stable prices and moderate long-term rates | Inflation: buying bonds while inflation runs high conflicts with the mandate. Warsh doctrine (2026): rates are the main tool, QE "sparingly, if at all" (ledger L1-30) | The 1951 Treasury-Fed Accord (4 Mar 1951) ended the 1942 to 1951 peg (bills 0.375%, long bonds 2.5%) and is the founding text of Fed independence |
| Treasury (spender) | Congress must appropriate. The debt limit caps total debt | Auctions must clear. Bond market demand sets the yield. Net interest $1,051.8B in FY2026 | FY2026 deficit $1,992.5B (MTS) |
| Government plus Fed together ("emergency printer") | Needs both keys: Congress spends, the Fed buys from nonbanks | Inflation and the bond market | 2020 to 2021: Fed +$4.52T while deficits were $5.90T |

#### B2.3 The two sponges, with numbers (H.4.1)
| Date | Fed securities | Reverse repo (others) | TGA | Currency | Bank reserves |
|---|---|---|---|---|---|
| 26 Feb 2020 | $3.85T | $0.00T | $0.39T | $1.80T | $1.68T |
| 29 Dec 2021 | $8.27T | $1.64T | $0.28T | $2.24T | $4.04T |
| 1 Jun 2022 (QT starts) | $8.48T | $1.97T | $0.78T | $2.28T | $3.36T |
| 28 Sep 2022 (reverse repo peak) | | $2.37T | | | |
| 31 Dec 2025 | $6.27T | $0.11T | $0.87T | $2.45T | $2.85T |
| 21 Oct 2026 | $6.47T | $0.0002T | $0.95T | $2.49T | $2.97T |
The puzzle and its answer: from June 2022 to October 2026 the Fed's securities fell $2.01T, yet bank reserves fell only $0.39T. The reverse repo pool drained $1.97T: money funds pulled cash out of the Fed to buy Treasury bills, so the cash came back into the banking system as the Treasury spent it. QT mostly emptied the sponge, not the banks. With the sponge now empty ($0.24B), any further QT or TGA rise would hit reserves one for one. That is why the Fed ended Treasury run-off on 1 December 2025 (FOMC decision of October 2025, T2, not re-fetched) and its Treasury holdings rose from $4.23T (31 Dec 2025) to $4.57T (21 Oct 2026).

#### B2.4 Destruction channels in plain words
1. Repaying a bank loan: loan and deposit both vanish.
2. Paying taxes: deposit goes up the stairs into the TGA. It comes back only when the Treasury spends.
3. Buying a new Treasury at auction with a deposit: same as taxes, until the Treasury spends.
4. Fed QT: when a bond held by the Fed matures and the Treasury repays it with money raised from a nonbank, a deposit is gone and so are reserves.
5. A bank selling a bond to a nonbank, or buying back its own shares or bonds from a nonbank: the buyer pays with a deposit, which the bank cancels.
6. Money moving into the Fed's reverse repo pool: it leaves bank deposits (money fund investors' deposits become fund shares, the fund's cash goes to the Fed). The pool was the largest single drain in 2021 and 2022.

#### B2.5 Money-like claims outside banks
| Claim | Size | Date | In M2? | Source |
|---|---|---|---|---|
| Money market fund shares | $7.98T total, retail about $3.11T | 2 Sep 2026 | Retail funds yes, institutional funds no | ICI weekly release via press |
| Repo (cash lent against bonds) | $12.6T daily exposures | Q3 2025 | No | OFR |
| Stablecoins | about $308B (peak $322.4B in May 2026) | Aug 2026 | No | Trackers via press (T4) |
| Offshore dollar credit to non-US nonbanks (eurodollar system, loans plus bonds) | $14T, 55% as bonds | end Sep 2025 | No | BIS global liquidity indicators |
| Dollar cross-border bank credit growth | +$793B in one quarter | Q1 2026 | No | BIS, 31 Jul 2026 |
Who creates eurodollars: banks outside the US, in London, Singapore or Kuala Lumpur, write dollar deposits and loans on their own books, exactly like a US bank does with a loan. They settle through correspondent accounts at US banks, and in stress they need dollars from the Fed's swap lines (central banks) or the foreign repo pool. So the Fed is the last-resort supplier, but private foreign banks are the everyday printers of offshore dollars.

#### B2.6 How other central banks differ
| | Fed (US) | ECB (euro area) | Bank of Japan | Bank Negara Malaysia |
|---|---|---|---|---|
| Reserve requirement | 0% since Mar 2020 | 1% since Jan 2012, paid 0% since 20 Sep 2023 | Still has a reserve requirement system (small ratios) | SRR 1% since 16 May 2025 (cut from 2%), not a policy signal per BNM |
| Ban on financing the state | Open market only (FRA s.14) | Article 123 of the EU Treaty bans direct purchase of government debt | Public Finance Act Article 5 bars the BoJ from underwriting new government bonds (special cases need Diet approval), but the BoJ owns half the market | Central Bank of Malaysia Act 2009 limits central bank credit to the government (exact terms not re-checked) |
| Share of government bonds held by the central bank | Fed 12.7% (Z.1, end 2025, market value basis) | Not fetched | 49.0% of JGBs (end Dec 2025) | Not fetched |
| Extra printer the US does not use day to day | | Lends to banks at scale (targeted long-term loans, now mostly repaid) | Yield curve control 2016 to 2024: bought whatever amount held the 10-year yield near target | FX channel: buying dollars to steady the ringgit creates ringgit reserves, selling dollars destroys them. BNM then absorbs or adds liquidity in its money market operations (sterilisation) |
| Reserves held | | | | US$130.63B (end May 2026) |
Key Level 2 point: the two floor picture works everywhere, but the doors differ. In Malaysia, a large share of base money changes come through the FX door, not the bond door. In Japan, the central bank's share of the bond market is so large that "who sold the bond" matters less than how much the BoJ chose to buy.

#### B2.7 The critical schools (strongest version of each)
| School | Strongest point | Where it agrees with the chapter | Where it objects | Best source |
|---|---|---|---|---|
| MMT and post-Keynesian | Consolidate the Fed and the Treasury: the state spends first, taxes and bond sales drain afterwards. Bonds are an interest-paying alternative to reserves, used to hit the interest rate, not to "fund" spending. The limit is inflation, not money | Two floors, deficit netting, the nonbank seller rule | The chapter says the Treasury "moves money between floors", which hides that deficit spending is the only source of net financial assets for the private sector as a whole | Stephanie Kelton, The Deficit Myth (2020) |
| Austrian and hard money | New money enters unevenly (Cantillon effect): the first receivers (banks, bond holders, asset owners) gain before prices rise. Credit created without savings causes booms that end in busts | Bank credit is the everyday printer, the Fed amplifies it | The chapter maps where money lands by floor, not by person. It should say who receives new money first and what that did to asset prices in 2020 to 2021 | Murray Rothbard, The Case Against the Fed (1994), Mises Institute |
| Monetarist | The quantity of money matters for inflation, with a lag of about one to two years. Congdon forecast an inflationary boom for 2021 to 2022 in March 2020, from broad money growth | The data part: M2 +40% in two years, then CPI peaked at 9.1% in June 2022, and M2 fell in 2022 and 2023 | The chapter stops at creation. It should add the consequence: the 2020 to 2021 surge was followed by the highest inflation since the early 1980s. The Fed chair now says "money matters" (ledger L1-30) | Tim Congdon, Money and Inflation at the Time of Covid (2025), IEA |
| Official (Fed, Bank of England) | Money is created on demand at the policy rate. Central banks steer the price, banks and borrowers choose the quantity | Most of the chapter | Would warn that QE works mainly through yields and portfolio balance, not through the deposit count | BoE (2014), Castro, Cavallo and Zarutskie FEDS Notes (2022) |
None of the three critical schools points to a missing channel. Each points to a missing consequence: distribution (Austrian), inflation (monetarist), and the consolidated state as the origin of net money (MMT). Add one paragraph each.

---

## C. Sweep: popular claims, reach and verdicts (Move 2)
Reach from the vidIQ YouTube search (views and likes as read on 24 Oct 2026). X and Reddit were not swept in this lane (no post ids in hand, budget kept for data). Books are listed by their known standing, with reach not quantified. All are T5 hypotheses until tested.

### C1. Bonds
| Claim | Who says it, reach | School | Test | Verdict |
|---|---|---|---|---|
| "Every bond market in the world is breaking. China and Japan are dumping US bonds" | Andrei Jikh, 2.60M views, 50.6K likes, 26 May 2026 | Popular, hard money leaning | TIC Table 5, auction data | Half true. Japan's holdings fell $171B (Feb to Aug 2026) and China's $109B in a year. But total foreign holdings were $9.33T in Aug 2026, near the record $9.49T of Feb 2026, the UK added $108B, and the 7 Oct 10-year auction was covered 2.77 times |
| "If you don't understand bonds, you don't understand money." The bond market is larger than the stock market | Lock Stock Finance, 2.97M views, 7 Aug 2025 | Popular, mainstream | SIFMA 2026 | True but narrow: $160.7T of bonds versus $157.8T of shares at end 2025. The margin was much wider in earlier years and flips with prices |
| Governments are "addicted to debt", bond vigilantes are back, risk of a "death spiral" | FT Film, 3.31M views, 27 Mar 2025 | Mainstream financial press | Net interest, auction results, 10-year path | Vigilantes are real: the 10-year rose 1.34 points in 2026 to 5.31% and the UK had to be rescued in 2022. No spiral in the data: auctions clear, the average rate on US debt (3.518%, Sep 2026, ledger L1-22) is still below new issue yields, so the interest bill keeps rising slowly rather than exploding |
| "US 30-year yields just hit 5.2%, the highest since July 2007" | Patrick Boyle, 1.69M views, 29 May 2026 | Popular, expert | H.15 30-year | Confirmed for the date (5.18% close on 19 May 2026, the highest since 2007 on closes). Overtaken: the 30-year closed at 5.67% on 7 Oct 2026, the highest since July 2002 |
| "Government bonds are risk free" | Textbooks, Khan Academy bond lessons (1.88M views) | Official, textbook | Price history | Default-free in dollars, not price-free: a 10-year par bond lost 35% in price from 1979 to 1981 and 28% from 2021 to 2023 (model) |
| "Bonds always rise when stocks fall" | Common 60/40 portfolio lore | Mainstream | 2022 | Wrong in 2022 (both fell). Right in 2008 (10-year bonds +20% in price while stocks fell) |

### C2. Money printing
| Claim | Who says it, reach | School | Test | Verdict |
|---|---|---|---|---|
| Most money is credit. In a deleveraging the central bank must "print money" | Ray Dalio, How the Economic Machine Works, 131.7M views, 720K likes, 2013 | Macro practitioner | Channel table | Largely right and the most watched money video found. Matches the two printer picture (credit in normal years, central bank in crises). Misses the nonbank seller rule and the Treasury's netting |
| "How is money created? Trillions printed around the world" | ColdFusion, 5.86M views, Jun 2020 | Popular | H.4.1, H.8 | Partly right. Central bank "printing" creates reserves first. Public money rose because nonbanks sold and the Treasury spent |
| "The New Fed Chair's plan to cancel America's $39T debt" (title claim) | Minority Mindset, 3.04M views, 20 Apr 2026 | Popular | Law, H.4.1 | Not supported. The Fed holds $4.57T of the $40.44T gross debt (21 to 22 Oct 2026). It has no legal power to cancel Treasury debt, and cancelling its own holdings would leave reserves without matching assets. $7.85T of the gross debt is owed to government trust funds |
| Governments print money (notes) | Raj talks Money, 3.25M views, 14 Nov 2025 (short) | Popular | H.4.1, H.6 | Notes are a small part: currency $2.49T against M2 of $23.34T, about 11% |
| Banks lend out your deposits ten times over (money multiplier) | Common in textbooks and owner notes (Round 1) | Textbook | Fed rules | Refuted for the US now. Reserve requirements are 0% since March 2020. Banks create the deposit when they lend |
| The Fed is a private cartel that creates money from nothing and keeps the interest | G. Edward Griffin, The Creature from Jekyll Island (long-running hard-money bestseller) | Hard money | H.4.1 earnings line | Mixed. The Fed does create reserves from nothing. But its profits go to the Treasury, and since late 2022 it has carried a loss carry-forward, peaking at $245.9B (28 Jan 2026) and $232.7B now |
| Deficits do not need to be "funded", taxes destroy money, the limit is inflation | Stephanie Kelton, The Deficit Myth (2020, a New York Times bestseller) | MMT | Channel table | The accounting is right for the consolidated state (taxes move deposits up into the TGA). The "limit is inflation" claim was tested in 2021 to 2022, when inflation reached 9.1% |
| Fiat money is printed without limit and destroys savings | Saifedean Ammous, The Bitcoin Standard (2018, bestseller) | Hard money | H.6 | M2 rose about 37 times from 1970 to 2026 ($0.63T to $23.3T). But it fell in 2022 and 2023, so "without limit" fails as a law, and the real loss to savers depends on interest earned versus inflation |

---

## D. Curiosity questions (final, 12 per chapter)

### D1. L2.1 Bonds
1. **Which is bigger, the world's stock market or its bond market?** Bonds, just: $160.7T of bonds against $157.8T of listed shares at end 2025 (SIFMA). Most people guess stocks by a mile. Builds on rb-buckets (market caps are price tags).
2. **Which holder of US debt grew from almost nothing in 1980 to roughly the size of the Fed?** Money market funds: 0.6% of Treasuries in 1980, 12.4% in 2025, almost the Fed's 12.7% (Z.1). Your "cash" in a money fund is mostly lent to the government. Builds on rb-06 (three kinds of dollars).
3. **In 1970 US banks owned almost a third of all Treasuries. What do they own now?** 6.9% (Z.1 2025). Banks moved from lending to the government to lending to households and firms, while foreigners and funds took over. Builds on rb-06.
4. **At the October 2026 ten-year auction, the dealers who must bid bought only 2.5%. Who bought the other 97.5%, and is that good news?** Indirect bidders (foreign and domestic investors via dealers) took 79.6% and direct bidders 17.0%, at a 5.30% yield, the highest 10-year auction yield since 2008 (TreasuryDirect). Strong demand at a high price. Builds on rb-04 (foreign surpluses come back as Treasury purchases).
5. **How much could a "risk free" 10-year Treasury lose?** About 35% of its price as yields went from 8.76% (1979) to 15.84% (Sep 1981), and about 28% from 2021 to 2023 (model, H.15). Builds on rb-13 (never confuse free of default with free of risk).
6. **Why would the Fed buy more Treasuries in five weeks than it owned in total in 2007?** In March and April 2020 even Treasuries froze, and the Fed bought $1.27T in five weeks against total holdings of $0.76T at end 2007 (H.4.1). Builds on rb-buckets (falls are fast because collateral chains force selling).
7. **A bank failed in 2023 holding bonds that never missed a payment. How?** SVB's held-to-maturity bonds had lost about $15.1B, close to its equity, and US banks together carried $620B of unrealized losses (FDIC, end 2022). When depositors ran, the paper loss became real. Builds on rb-07 (when everyone repays at once).
8. **Why is a Treasury worth more than its coupons?** Because it is a pawnshop ticket: $12.6T of US repo a day is lent against bonds, mostly Treasuries (OFR). You can turn it into cash overnight. Builds on rb-01 (money is a promise others accept).
9. **Japan cut its US Treasuries by $171B in six months. Did foreigners flee US debt?** No. Total foreign holdings were $9.33T in August 2026, near the record, and the UK ($1,010B) is now almost level with Japan ($1,068B) (TIC). Builds on rb-leader (money flows to the deepest market).
10. **Why can Malaysia borrow for ten years more cheaply than the United States?** At end August 2026 the 10-year MGS yielded 3.985% against about 4.8% for the US 10-year, with lower inflation and a captive domestic saver (EPF). But the foreign fifth of holders leaves when US yields jump. Builds on rb-em (two rulers for your savings).
11. **Tether holds about $115B of Treasury bills. Where would that rank among countries?** About 20th, between the UAE ($116B) and Bermuda ($112B) in the August 2026 TIC table (dates differ by two months). A private token issuer now owns more Treasuries than most nations. Builds on rb-crypto and rb-12 (new rails, old anchors).
12. **Someone bought a 10-year Treasury at 0.625% in 2020. What is it worth now, and did they lose money?** About $84 per $100 at today's yields with four years left (model). They lose nothing if they hold to 2030, but they lose buying power: inflation peaked at 9.1% in 2022. Builds on rb-10 (nominal or real?).

### D2. L2.2 Who creates money
1. **US banks have had to hold zero reserves since March 2020. So what stops them lending forever?** Capital rules (owners' money must absorb losses), liquidity rules, the 3.90% the Fed pays on reserves (which sets their cost), and borrowers who must want and repay loans. Builds on rb-06.
2. **In 2020 and 2021 bank deposits rose $4.71T while bank loans rose only $0.68T. Who printed the rest?** The emergency printer: the Fed bought $4.52T of bonds and banks bought $1.86T of securities while the Treasury ran $5.90T of deficits (H.8, H.4.1, MTS). Builds on rb-06.
3. **The Fed shrank its bonds by $2.01T from mid 2022, yet bank reserves fell only $0.39T. Where did the shrinkage go?** Into an empty sponge: money funds drained $1.97T from the Fed's reverse repo pool (H.4.1). Builds on rb-buckets (money rotates between buckets).
4. **When you pay your taxes, does the money still exist?** It leaves the public's books and sits upstairs in the Treasury's account at the Fed ($945B on 21 Oct 2026) until it is spent again. Builds on rb-nation (tax as the subscription fee).
5. **The Fed lost money for three years. Did anyone have to rescue it?** No. It booked a "deferred asset" that peaked at $245.9B in January 2026 and is now shrinking ($232.7B), meaning it earns slightly more than it pays again. Builds on rb-01 (who keeps the ledger).
6. **Money market funds hold $7.98T, about 40% of all US bank deposits. Is that money?** Retail funds are counted in M2, institutional funds are not, and both are mostly lent to the government. Builds on rb-01 (the three jobs of money).
7. **Who prints the $14T of dollars borrowed outside America?** Mostly banks and bond markets abroad, writing dollar loans on their own books (BIS, end Sep 2025). The Fed only steps in during a crisis with swap lines. Builds on rb-04.
8. **When Bank Negara buys dollars to steady the ringgit, does it create ringgit?** Yes, at first: it pays with new ringgit reserves. It then usually soaks them back up in its money market operations, so the ringgit money stock need not change. Builds on rb-em.
9. **The Fed has been banned from buying bonds from the Treasury since 1935. How did it end up with about 56% to 59% of the new debt of 2020 and 2021?** It bought in the open market from dealers and investors days or months after the auctions. In wartime 1942 to 1951 it did the same by capping yields. Builds on rb-03 (wars break money rules).
10. **M2 fell in 2022 and 2023, the first full-year falls since the record starts in 1959. Why was there no deflation?** Prices respond with a lag and the stock of money was still 40% above early 2020. Inflation slowed but stayed positive. Builds on rb-defl.
11. **The Bank of Japan owns 49% of its government's bonds. Who is the printer in Japan?** The central bank, on a scale no other big economy matches, though its share fell below 50% at end 2025 for the first time since 2022 (MoF Flow of Funds). Builds on rb-leader.
12. **Is today's two-printer system the old empire habit of debasing money, or a safeguard against it?** Both readings have evidence: M2 grew about 37 times since 1970 (H.6), but the open market rule, the 1951 Accord and the 2022 to 2023 contraction show a brake that empires lacked. Builds on rb-09 (why empires and their currencies fall).

---

## E. Radiant maps (centre plus 8 rays)

### E1. L2.1 Bonds. Centre: "A bond is a promise the whole system uses as cash."
| # | Ray title | Six-word subtitle | Linked chapter |
|---|---|---|---|
| 1 | The seesaw and the lever | Price falls as yield rises, measured | rb-10 |
| 2 | Bigger than stocks | $160.7T of promises worldwide, priced daily | rb-buckets |
| 3 | Who holds the promise | Foreigners, money funds, Fed, banks, households | rb-04 |
| 4 | How a bond is born | Auctions, dealers, bidders, and settlement day | rb-moneymake |
| 5 | The pawnshop ticket | Repo turns bonds into overnight cash | rb-buckets |
| 6 | The weather report | Yield curve, inflation and real return | rb-08 |
| 7 | When the safe asset broke | 1981, 1994, 2020, 2022, 2023, 2026 | rb-13 |
| 8 | Smaller currencies and new rails | Malaysia's bonds and stablecoins holding bills | rb-em |

### E2. L2.2 Who creates money. Centre: "Two floors, two printers, many drains."
| # | Ray title | Six-word subtitle | Linked chapter |
|---|---|---|---|
| 1 | The everyday printer | Banks create deposits when they lend | rb-06 |
| 2 | The upstairs printer | Fed reserves reach you through nonbanks | rb-bonds |
| 3 | The Treasury's staircase | Taxes up, spending down, deficits netted | rb-nation |
| 4 | The sponges | Treasury account and reverse repo absorb | rb-buckets |
| 5 | The shredders | Repayments, taxes, auctions, QT destroy money | rb-07 |
| 6 | The brakes | Capital, mandate, law, 1951 Accord, inflation | rb-03 |
| 7 | Money outside banks | Money funds, repo, stablecoins and eurodollars | rb-crypto |
| 8 | Other printers abroad | ECB, Bank of Japan, Bank Negara | rb-em |

---

## F. Built on Level 1 (bridges)

### F1. Before L2.1 Bonds, recall
1. **rb-01 What money really is:** money is a promise that others agree to accept, and a bond is a promise with a date and a price.
2. **rb-04 How the world gets its dollars:** trade surpluses come back to the US as purchases of Treasuries, which is why foreigners hold about a third of them.
3. **rb-06 How money is born today:** Treasuries are the third layer of dollars, after base money and bank deposits, held by anyone through a broker or bank.
4. **rb-10 The yardstick problem:** every yield is a nominal number, so a bond's real return is what is left after inflation.
5. **rb-13 Eye-openers:** free of default is not free of risk, the rule that SVB forgot.

### F2. Before L2.2 Who creates money, recall
1. **rb-06 How money is born today:** a bank loan creates a deposit and repaying it destroys one, and there is no fixed money multiplier.
2. **rb-01 What money really is:** money is a ledger of who owes what, so always ask whose ledger (the Fed's or a bank's) a dollar sits on.
3. **rb-nation Nation Inc.:** taxes are the subscription fee for the state, and here you see them leave the public's books.
4. **rb-03 War, Bretton Woods and the dollar's crown:** wars suspend money rules, as the 1942 to 1951 yield cap did.
5. **rb-bonds (L2.1):** Treasuries are the asset the Fed buys, the Treasury sells and stablecoins hold, so read L2.1 first.

---

## G. Claims table and tripwires

DBnomics base URL: https://api.db.nomics.world/v22/series/FED/<dataset>/<code>?observations=1. Fiscaldata base: https://api.fiscaldata.treasury.gov/services/api/fiscal_service/.
| id | claim | tier | status | source (URL) | source date | as-of date | falsifier |
|---|---|---|---|---|---|---|---|
| R6B-01 | Global fixed income outstanding was $160.7T at end 2025, up 10.6%, and global equity value $157.8T | T4 (industry body) | Plausible | https://www.sifma.org/news/blog/2026-capital-markets-fact-book-key-findings | 2026-08-19 | 2025-12-31 | The Fact Book tables or BIS debt securities statistics show a different total |
| R6B-02 | The US is 38.1% of global fixed income (about $61.2T, computed) | T4 | Plausible | same as R6B-01 | 2026-08-19 | 2025-12-31 | As above |
| R6B-03 | US marketable Treasuries were $31.81T on 30 Sep 2026, of which bills $7.12T (22.4%) | T0 | Confirmed | fiscaldata v1/debt/mspd/mspd_table_1 | 2026-10 | 2026-09-30 | MSPD revision |
| R6B-04 | Debt held by the public was $32.60T and gross debt $40.44T on 22 Oct 2026 | T0 | Confirmed | fiscaldata v2/accounting/od/debt_to_penny | 2026-10-23 | 2026-10-22 | Treasury revision |
| R6B-05 | Foreigners held 32.5% of Treasuries at end 2025, down from a 54.5% peak in 2007 | T0 | Confirmed | DBnomics FED/Z1 FL263061105.A over FL893061105.A | 2026 | 2025-12-31 | Z.1 revision |
| R6B-06 | Money market funds held 12.4% of Treasuries at end 2025, from 0.6% in 1980, close to the Fed's 12.7% (Z.1 basis) | T0 | Confirmed (Z.1 valuation caveat) | DBnomics FED/Z1 FL633061105.A, FL713061125.A | 2026 | 2025-12-31 | Z.1 revision, or H.4.1 basis comparison changes the ranking |
| R6B-07 | Banks held 30.6% of Treasuries in 1970 and 6.9% in 2025 | T0 | Confirmed | DBnomics FED/Z1 FL703061105.A | 2026 | 2025-12-31 | Z.1 revision |
| R6B-08 | Total foreign holdings $9.33T in Aug 2026 (record $9.49T in Feb 2026), foreign official $3.76T | T0 | Confirmed | https://ticdata.treasury.gov/resource-center/data-chart-center/tic/Documents/slt_table5.txt | 2026-10 | 2026-08-31 | TIC revision or benchmark survey |
| R6B-09 | Japan's holdings fell $171.0B from Feb to Aug 2026, China's $109B over the year to Aug 2026, the UK's rose $108B | T0 | Confirmed (holdings, not transactions) | same as R6B-08 | 2026-10 | 2026-08-31 | TIC transactions data show different net sales |
| R6B-10 | The rb-bonds line "Japan sold $171B" equals a holdings change that includes price effects. Yen intervention was about $73B (Apr to May) plus $98.6B (30 Jul to 26 Aug) | T0 plus T4 press on MoF data | Plausible | https://www.treasuryandrisk.com/amp/2026/06/08/japan-likely-sold-treasuries-to-fund-record-yen-intervention/ | 2026-06 to 2026-09 | 2026-08-31 | MoF discloses intervention funding |
| R6B-11 | The 7 Oct 2026 10-year reopening sold $39.0B at a 5.300% high yield, cover 2.77, dealers $0.98B (2.5%), indirect $31.06B, direct $6.62B | T0 | Confirmed | fiscaldata v1/accounting/od/auctions_query | 2026-10 | 2026-10-07 | TreasuryDirect correction |
| R6B-12 | Dealers' share of 10-year nominal auctions fell from 71.8% (2008) to 8.8% (2026 to date) and 2.5% on 7 Oct 2026 was the lowest in the dataset | T0 | Confirmed | same as R6B-11 | 2026-10 | 2026-10-07 | Data correction or a pre-2008 record |
| R6B-13 | A 10-year Treasury (4.625% coupon, 5.13% yield) has modified duration 7.87, loses 7.5% for +1 point and gains 8.3% for -1 point. A 30-year (5%, 5.42%) has duration 15.0 | Model on T3 inputs | Confirmed (arithmetic) | scratchpad scripts/duration.py, H.15 yields | 2026-10-24 | 2026-10-21 | Arithmetic error |
| R6B-14 | US repo averaged $12.6T of daily exposures in Q3 2025 ($4.4T FICC cleared, $3.1T tri-party, $5.0T bilateral) | T0/T4 (OFR research) | Plausible | https://www.financialresearch.gov/the-ofr-blog/2025/12/04/sizing-us-repo-market/ | 2025-12-04 | 2025-09-30 | A newer OFR sizing |
| R6B-15 | Cleared repo averaged $7.8T a day in July 2026, sponsored $2.4T | T4 | Plausible | https://www.isda.org/2026/09/15/isda-actrix-us-treasury-repo-market-clearing-indicators-july-2026/ | 2026-09-15 | 2026-07-31 | OFR monitor shows otherwise |
| R6B-16 | Treasuries are 70.7% of the Fed's securities ($4.573T of $6.468T) on 21 Oct 2026 | T0 | Confirmed | DBnomics FED/H41 RESPPALGUM_N.WW, RESPPALGASMO_N.WW | 2026-10-23 | 2026-10-21 | H.4.1 revision |
| R6B-17 | World FX reserves $13.22T, dollar share 56.70% in Q2 2026 | T0 | Confirmed | https://data.imf.org/en/news/imf%20data%20brief%20september%2030 | 2026-09-30 | 2026-06-30 | COFER revision |
| R6B-18 | Foreign official Treasury holdings equal about 28% of world FX reserves (computed, dates two months apart) | T0 derived | Plausible | R6B-08 and R6B-17 | 2026-10 | 2026-08 | Matching-date data change the share by more than 3 points |
| R6B-19 | US banks held $4.78T of Treasury and agency securities and $3.10T of cash assets, 30.5% of $25.87T total assets, Sep 2026 | T0 | Confirmed | DBnomics FED/H8 B1003NCBAM, B1048NCBAM, B1151NCBAM | 2026-10 | 2026-09-30 | H.8 revision |
| R6B-20 | Money market fund assets were $7.98T in the week to 2 Sep 2026 | T4 (ICI via press) | Plausible | https://www.streetinsider.com/PRNewswire/ICI+REPORTS+MONEY+MARKET+FUND+ASSETS/25882018.html | 2026-09 | 2026-09-02 | ICI release shows a different figure |
| R6B-21 | Stablecoins about $308B in Aug 2026, Tether held $114.96B of bills and $25.62B reverse repo at 30 Jun 2026 | T4 | Speculative (single press source for Tether bills) | https://forklog.com/en/news/tethers-excess-reserves-halve-in-q2 | 2026-07 to 2026-08 | 2026-06-30 | Tether's own attestation PDF shows different bills |
| R6B-22 | rb-bonds says GENIUS Act tokens "have to be backed by bills of 93 days or less". The Act allows several eligible reserve assets, so this is overstated | T1 | Plausible (statute not re-fetched in this lane) | GENIUS Act text (congress.gov) | 2025-07 | 2026-10-24 | Statute text limits reserves to bills only |
| R6B-23 | 10-year yield extremes: 15.84% (30 Sep 1981, record), 8.05% (7 Nov 1994), 0.52% (4 Aug 2020, record low), 5.31% (5 Oct 2026, 2026 high) | T3 | Confirmed | DBnomics FED/H15 RIFLGFCY10_N.B | 2026-10-23 | 2026-10-22 | H.15 revision |
| R6B-24 | The 30-year yield closed at 5.67% on 7 Oct 2026, highest since July 2002 | T3 | Confirmed | DBnomics FED/H15 RIFLGFCY30_N.B | 2026-10-23 | 2026-10-07 | H.15 revision |
| R6B-25 | The 10-year fell to 4.96% on 22 Oct 2026 (from 5.13% on 21 Oct), so rb-bonds' 5.13% is a one-day snapshot | T3 | Confirmed | same as R6B-23 | 2026-10-23 | 2026-10-22 | H.15 revision |
| R6B-26 | The 10y minus 2y spread was negative on 541 trading days from 1 Apr 2022 to 5 Sep 2024 and is +0.31 on 22 Oct 2026 | T3 | Confirmed | DBnomics FED/H15 | 2026-10-23 | 2026-10-22 | H.15 revision |
| R6B-27 | The Fed bought $1.27T of Treasuries from 11 Mar to 15 Apr 2020 | T0 | Confirmed | DBnomics FED/H41 RESPPALGUM_N.WW | 2026 | 2020-04-15 | H.4.1 revision |
| R6B-28 | US banks had $620B of unrealized securities losses at end 2022, SVB about $15.1B on held-to-maturity bonds | T0 via FDIC | Plausible | https://www.fdic.gov/resources/regulations/federal-register-publications/2023/2023-regulatory-capital-rule-large-banking-organizations-3064-af29-c-112.pdf | 2023 | 2022-12-31 | FDIC QBP shows otherwise |
| R6B-29 | The Bank of England bought £19.3bn of gilts from 28 Sep to 14 Oct 2022 | T0 | Confirmed | https://www.bankofengland.co.uk/news/2023/january/boe-completes-unwind-of-recent-financial-stability-gilt-purchases | 2023-01-12 | 2022-10-14 | BoE correction |
| R6B-30 | The Bank of Japan held 49.0% of JGBs at end Dec 2025, first below 50% since June 2022 | T0 | Confirmed | https://www.mof.go.jp/english/policy/jgbs/reference/Others/holdings01.pdf | 2026-03-18 | 2025-12-31 | MoF revision |
| R6B-31 | Malaysian government bonds were RM1.309T in Mar 2026, foreign holdings RM283.1B (21.6%) | T4 (BIX, a BNM-linked platform) | Plausible | https://bixmalaysia.com/learning-center/articles-tutorials/malaysia-bond-and-sukuk-quarterly-report-1q2026 | 2026-04 | 2026-03-31 | BNM bulletin shows otherwise |
| R6B-32 | Foreign share of MGS 20.1% in Jul 2026, 10-year MGS 3.985% at end Aug 2026, Aug foreign inflow RM11.1B | T4 | Plausible | https://www.businesstoday.com.my/2026/08/29/foreign-investors-expanded-their-bond-holdings-by-rm3-6-billion/ and Bernama | 2026-09 | 2026-08-31 | BNM data differ |
| R6B-33 | BNM's SRR is 1% (from 16 May 2025), OPR 2.75% (Jul 2026), reserves US$130.63B (end May 2026) | T1/T0 via press | Plausible | https://www.skrine.com/insights/alerts/may-2025/bank-negara-malaysia-issues-policy-document-on-sta | 2025-05 to 2026-07 | 2026-07 | A BNM change |
| R6B-34 | Channel table: 2019 loans +$0.45T, securities +$0.33T, deposits +$0.79T. 2020 to 2021 loans +$0.68T, securities +$1.86T, Fed +$4.52T, deposits +$4.71T, M2 +$6.15T | T0 | Confirmed | DBnomics FED/H8, H41, H6 | 2026-10 | 2026-09-30 | H.8 revision |
| R6B-35 | rb-moneymake's "+$5.45T (35%)" deposit rise for 2020 to 2021 does not match H.8 (+$4.71T, 35.7%) | T0 | Confirmed (error in chapter) | DBnomics FED/H8 B1058NCBAM | 2026-10 | 2021-12-31 | A different deposit series the chapter cites explicitly |
| R6B-36 | From 1 Jun 2022 to 21 Oct 2026 Fed securities fell $2.01T, reverse repo fell $1.97T, reserves fell $0.39T | T0 | Confirmed | DBnomics FED/H41 | 2026-10-23 | 2026-10-21 | H.4.1 revision |
| R6B-37 | Reverse repo (others) peaked at $2.37T on 28 Sep 2022 (Wednesday level) | T0 | Confirmed | DBnomics FED/H41 RESPPLLRD_N.WW | 2026-10-23 | 2022-09-28 | H.4.1 revision |
| R6B-38 | Interest on reserve balances is 3.90% since 17 Sep 2026, so reserves earn about $116B a year (model) | T0 plus model | Confirmed (rate), model (cost) | DBnomics FED/PRATES_PRATES_POLICY_RATES RESBM_N.D | 2026-10 | 2026-10-21 | Rate change at the next FOMC |
| R6B-39 | The Fed's deferred asset peaked at $245.9B on 28 Jan 2026 and was $232.7B on 21 Oct 2026, so the Fed is again earning slightly more than it pays | T0 | Confirmed | DBnomics FED/H41 RESPPLLOP_N.WW | 2026-10-23 | 2026-10-21 | The deferred asset grows again after the September hike |
| R6B-40 | Fiscal deficits: FY2019 $0.98T, FY2020 $3.13T, FY2021 $2.77T, FY2022 $1.38T, FY2023 $1.70T, FY2026 $1.99T | T0 | Confirmed | fiscaldata v1/accounting/mts/mts_table_1 | 2026-10 | 2026-09-30 | MTS revision |
| R6B-41 | ECB minimum reserves are 1% of reserve base (since Jan 2012) and paid 0% since 20 Sep 2023 | T1 | Confirmed for 2023, current status not re-checked | https://www.ecb.europa.eu/press/pr/date/2023/html/ecb.pr230727~7206e9aa48.en.html | 2023-07-27 | 2026-10-24 | An ECB change after 2023 |
| R6B-42 | Dollar credit to non-US nonbanks was $14T at end Sep 2025 (55% bonds), and dollar cross-border bank credit rose $793B in Q1 2026 | T0 (BIS statistics) | Confirmed | https://www.bis.org/statistics/gli2601.htm and https://www.bis.org/statistics/gli2607.htm | 2026-01 and 2026-07 | 2026-03-31 | BIS revision |
| R6B-43 | 25 primary dealers on the NY Fed list of 16 Oct 2026 (26 in Jan 2026) | T1 | Plausible (list page not opened) | https://www.newyorkfed.org/newsevents/news/markets/2026/an261016p | 2026-10-16 | 2026-10-16 | The list itself shows another count |
| R6B-44 | Treasury trading averaged $1.21T a day in Jan to Jul 2026, up 12.1% | T4 | Plausible | https://www.sifma.org/resources/research/statistics/us-treasury-securities-statistics/ | 2026-08-04 | 2026-07-31 | SIFMA revision |
| R6B-45 | Congdon forecast an inflationary boom for 2021 to 2022 in March 2020 from broad money growth | T4 | Plausible | https://iea.org.uk/media/new-book-reveals-why-economists-and-central-bankers-failed-to-predict-the-cost-of-living-crisis/ | 2025 | 2020-03 | His March 2020 text says otherwise |

### Tripwires (dated)
| Tripwire | Threshold | Watch date | What it would change |
|---|---|---|---|
| 10-year yield | Above 5.5% (2026 high 5.31%) or below 4.5% (4.96% on 22 Oct) | Daily, FOMC on about 9 Dec 2026 | Update every yield in rb-bonds. Above 5.5% moves the "bond vigilante" ray from history into the present |
| 30-year yield | Above 6% (5.67% on 7 Oct) | Next 30-year auction (mid November 2026) | Headline for the 2026 stress row |
| 10-year auction dealer take | Above 20% at the November or December 10-year auction (2.5% on 7 Oct) | Nov and Dec 2026 auctions | Weak demand: rewrite curiosity question D1-4 |
| Foreign holdings (TIC) | Total below $9.0T or Japan below $1.0T | TIC releases about 18 Nov and 17 Dec 2026 | Strengthens the "dumping" sweep claim |
| Bank reserves | Below $2.8T while reverse repo is near zero | Weekly H.4.1 | Confirms the sponge is empty, expect more Fed bill purchases |
| Fed deferred asset | Grows again for 8 weeks in a row | Weekly H.4.1 | Reverses claim R6B-39 |
| M2 | A year-on-year fall | H.6 monthly (next about 25 Nov 2026) | Back to a 2022 to 2023 style contraction |
| Stablecoin total | Above $400B | Monthly trackers | Stablecoin backing becomes a top-10 holder class |
| MGS foreign share | Below 19% | BNM monthly bulletin | Confirms US yield pull on Malaysia |
| BoJ JGB share | Below 45% | MoF Flow of Funds (December 2026 release for Q3) | Japan ray update |

---

## Key findings
1. **The dealers left the auction.** At the 7 Oct 2026 ten-year auction dealers took 2.5%, the lowest in the dataset since 2008, at the highest 10-year auction yield (5.30%) in that span. Dealers' share fell from 71.8% (2008) to 8.8% (2026). The dealer is now the backstop, not the buyer (R6B-11, R6B-12).
2. **QT emptied a sponge, not the banks.** Fed securities fell $2.01T from June 2022, reserves only $0.39T, because the reverse repo pool gave back $1.97T. The sponge is now empty ($0.24B), so the next drain hits reserves directly (R6B-36).
3. **Money funds became a top holder of US debt.** 0.6% of Treasuries in 1980, 12.4% in 2025, level with the Fed on the Z.1 basis. Banks went the other way, 30.6% to 6.9% (R6B-06, R6B-07).
4. **"Backbone" passes, with a correction.** Treasuries are 71% of the Fed's securities, about 28% of world FX reserves, the main repo collateral in a $12.6T daily market, and the main stablecoin reserve. But bank deposits lean mainly on loans, so rb-bonds' "most of that money ultimately leans on" bonds is wrong (A2 hit 19).
5. **Two chapter numbers and one statement need fixing in rb-moneymake.** Deposits rose $4.71T in 2020 to 2021, not $5.45T. Bank securities rose $1.86T, not $2.1T. The Fed's loss carry-forward has been shrinking since 28 Jan 2026, so "since 2022 it has paid more than it earns" is stale (R6B-35, R6B-39).

## Say/do gaps
| Actor | Says | Does | Gap |
|---|---|---|---|
| Fed (Warsh) | QE "sparingly, if at all", rates are the tool (L1-30) | Treasury holdings up from $4.23T (31 Dec 2025) to $4.57T (21 Oct 2026) through bill purchases for reserve management | Balance sheet growing again while the chair rejects QE. The Fed calls this reserve management, not QE. The difference is maturity (bills) and intent |
| Japan's MoF | Does not confirm how it funds intervention | Holdings fell $171B in six months (TIC) | Sales inferred, not stated |
| BNM | The ringgit is market-determined, derivatives manage liquidity (Jul 2025) | Holds US$130.63B of reserves and has intervened in past episodes | Normal central bank ambiguity |

## Anomalies (story versus data)
1. The popular story says foreigners are fleeing US debt. Data: total foreign holdings near a record ($9.33T) and record-low dealer takedown at a 5.30% auction.
2. The popular story says QT drained the banking system. Data: reserves fell only $0.39T over a $2.01T QT, because of the reverse repo pool.
3. The chapter says Japan "sold" $171B. Data: holdings fell $171B, which includes price falls as yields rose 1.3 points. The sale amount is unknown.

## Mechanism chains (with dated tests)
1. Higher US long yields, then foreign outflow from MGS, then a weaker ringgit, then BNM sells dollars (destroys ringgit liquidity) and may sterilise. Test: MGS foreign share and BNM reserves in the Oct and Nov 2026 bulletins.
2. Empty reverse repo pool plus a rising TGA, then reserves fall, then repo rates rise above interest on reserves, then the Fed buys more bills. Test: weekly H.4.1 reserves below $2.8T and SOFR above 3.90% before 31 Dec 2026.
3. Stablecoin growth, then more bill demand, then lower bill yields relative to the policy rate, then Treasury shifts issuance to bills. Test: stablecoin total above $400B and the November 2026 refunding statement.

## Open questions
- The split of the $160.7T world bond market by issuer type.
- Holders of Malaysian government bonds by category (EPF, banks, insurers, BNM).
- Tether's bill holdings from its own attestation (only one press source here).
- ECB and BoJ shares of their government bond markets on the same date, and the BoJ current account size.
- Whether the "preceded each of the last eight recessions" count for curve inversions holds on a named source.
- X and Reddit sweep (not done in this lane).

## Proposed changes (for the Rulebook, pending owner approval under PLAN 5.7)
rb-bonds:
1. Add four steps before "Say it back": "How a bond is born" (B1.4), "Who holds the promise" (B1.3 chart), "The pawnshop ticket: repo" (B1.5 with T-accounts), "When the safe asset broke" (B1.8 table). Add "Malaysia's bonds" as a side panel (B1.10).
2. Replace step 4's list with the measured backbone table (B1.6) and fix the connects line to rb-06 (A2 hit 19).
3. Add duration and convexity to step 2 (B1.1). Rename the card set "Five words to start with" and add duration, repo, haircut, primary dealer.
4. Date-stamp every yield ("on 21 Oct 2026") and fix the Japan line (A3) and the GENIUS Act line (R6B-22).
5. Add the "Built on Level 1" bridge (F1) at the top, the 12 curiosity questions (D1) spread through the steps, and the radiant map (E1).
rb-moneymake:
1. Move the channel table (B2.1) to the top, with sign and four regimes, including destroy rows.
2. Fix the numbers in A6 ($4.71T, $1.86T, 40%, reverse repo peak $2.37T, deferred asset now shrinking).
3. Add "What limits each printer" (B2.2), "The sponges" (B2.3 with the QT puzzle), "Money outside banks" (B2.5), "Other printers abroad" (B2.6) and "What the critics say" (B2.7).
4. Apply the word audit rewrites in A5, starting with the summary box line on "most".
5. Add the bridge (F2), curiosity questions (D2) and radiant map (E2).
