# VERIFY_R6: verifier report on DRAFT_L2.md (Rulebook Level 2, chapters L2.1, L2.2, L2.3)

Date: 2026-10-24. Role: Verifier (ROLES.md v4.0). Tier: Standard. Inputs read: round6/DRAFT_L2.md, lanes R6A-wealth-debt.md, R6B-bonds-money.md, R6A-tables.json, R6B-tables.json, PLAN.md section 8.3. Court and red-team files not read. Scripts and downloads in the scratchpad (v6/), run with python3 -I.

## Pass checklist
- [x] Priority list checked (owner's-numbers verdict, G7 and G10, US NIIP, Japan, auction, holders, channel table, reverse repo puzzle, Malaysia)
- [x] Every number in tldr boxes, kickers, charts, tables, curiosity and check answers of the new material checked
- [x] Random 20% of other numeric claims checked
- [x] Copy errors (draft against lane) checked
- [x] Derived numbers recomputed by script (shares, per person, $100,000 household, duration, price changes)
- [x] "Not confirmed" lane items not stated as fact
- [x] Verification table written
- [x] Corrected claims table (R6V-01 onward) written
- [x] Mismatch rate reported
- [x] Style check (no em-dashes, no en-dashes, no semicolons)

## Sources fetched in this pass (so far)
- BIS total credit API (WS_TC): world aggregate 5A, Japan, US, China, Switzerland, Malaysia. Fetched 2026-10-24.
- FSB Global Monitoring Report on NBFI 2025 (P161225.pdf), Graph 1-1.
- UBS Global Wealth Report 2026 PDF and media release of 30 Jun 2026.
- IMF blog 17 Sep 2025.
- IIF via press: Ada Derana (Feb 2026, $348T), Greater Belize (6 May 2026, Q1 2026 nearly $353T), Qatar Tribune (24 Sep 2026, over $365T).
- IIF 2022 decline via press (Kitco, 22 Feb 2023).
- McKinsey 2026 via Fortune, Advisor Analyst and a search snippet of the McKinsey chart page (report PDF and chart page returned 503).
- IMF BOP net IIP via DBnomics, BEA IIP release of 30 Jun 2025 (via search).
- Fed H.4.1 via DBnomics (Wednesday levels and week averages).
- Treasury fiscaldata (curl -g): auctions_query (7 Oct 2026 and all 10-year notes since 1979), debt_to_penny (20 to 22 Oct 2026), MSPD table 1 (30 Sep 2026), MTS table 1 (FY2026).
- Fed H.8, H.6, H.15 and Z.1 via DBnomics. TIC Table 5 (Aug 2026). MoF Japan JGB holder breakdown (now Jun 2026). IIF Reflections page (Aug 2026). SIFMA Fact Book key findings (19 Aug 2026). OFR blog (4 Dec 2025). BIS GLI (Jan 2026). IMF COFER Q2 2026 (via search). BIX Malaysia 1Q2026. NST (Sep 2026, MARC 20.1%). BNM reserves (via search of NST, Bernama, BNM).
- Scripts: v6/h41.py, v6/ser.py, v6/calc.py (bond prices, duration, stress repricing, mortgage), inline python for G7 and G10 shares, auction shares, Z.1 shares, M2 falls.

## Verification table

Match codes: yes, no, cannot check. "yes, label" means the number is right but the draft should add a date, basis or scope. Block refs are [chapter block]. All prices and durations recomputed by v6/calc.py.

### Priority list

| Block ref | Claim | Number in draft | Number at source | Match | Fix |
|---|---|---|---|---|---|
| L2.3 [6], [10], tldr | UBS world household net wealth, end 2025 | $517.7T | Pyramid bands 250.59 + 200.72 + 63.16 + 3.22 = $517.69T (UBS GWR 2026, p.10). Sample of 56 markets with over 92% of world wealth | yes, label | Add "56 markets, over 92% of world wealth" in the measures table |
| L2.3 [6], [10] | IIF four-sector debt, end 2025 | $348.3T (households 64.6, firms 100.6, governments 106.7, financial 76.4) | About $348T, governments $106.7T, firms $100.6T, households $64.6T (IIF Feb 2026 via press). Financial $76.4T is the remainder | yes | none |
| L2.3 kicker, tldr, [6], [10], [33], [60] | IIF debt mid 2026 | over $365T | "more than $365 trillion" in H1 2026 (Qatar Tribune 24 Sep 2026, SCMP), Q1 2026 "nearly $353T" (6 May 2026) | yes, label | Press only. Label "(IIF, via press)" in the tldr and [10] as [6] does in its source line |
| L2.3 [33], [60] | IIF ratio mid 2026 | about 305% to 310% | Q1 2026 "about 305%". No H1 ratio found | cannot check | Say "about 305% (Q1 2026)" |
| L2.3 [6], [7], [10] | FSB total global financial assets, end 2024 | $503.7T, 29 jurisdictions | $503.7T (FSB GMR 2025 Graph 1-1), exercise covers 29 jurisdictions over 90% of world GDP | yes | none |
| L2.3 [6], [10] | IMF nonfinancial debt, 2024 | $251T | "$251 trillion", "just above 235 percent", public $99.2T, private $151.8T (IMF blog 17 Sep 2025) | yes | none |
| L2.3 [6], [10], [33] | BIS nonfinancial credit, Q4 2025 | $262.7T, 246% | $262.669T, 245.7% (BIS WS_TC 5A) | yes | none |
| L2.3 [6], [10], tldr | McKinsey national net worth, 2025 | $600T (5.1 times GDP) | Search snippet of McKinsey chart page: total wealth $600T, households 95%. Household $570T confirmed by Fortune and Axios. Report and chart page returned 503. 5.1 is $600T over World Bank GDP $118.35T | cannot check (primary), yes (press snippet) | Keep "(via press)" label as in [6]. Add it in [10] |
| L2.3 [20] | McKinsey world real assets | about $620T | Not found in any fetched or searched source. Lane R6A-13 is Speculative | cannot check | Drop the number or write "more than the $600T of net worth (McKinsey, not confirmed)" |
| L2.3 [7] | IIF world debt as reported 2021 to 2024 | $305T to $320T | IIF: just under $300T at end 2022 after a $4T fall, about $300T in 2021, $319.5T end 2024 (Kitco 22 Feb 2023, IIF Feb 2026) | no | "about $300 trillion to $320 trillion" |
| L2.3 [40], [41] | G7 share of world nonfinancial debt | 52% | 51.46% from lane country table (29.03 + 5.74 + 3.87 + 3.51 + 4.27 + 2.26 + 2.78). Lane text says 51% | no | 51% |
| L2.3 [40], [41] | G7 wealth, output, people | 56%, 44%, 10% (table) and "under 10%" (prose) | 55.64%, 44.36%, 9.60% | yes, label | Table: write 9.6% (or "under 10%") so table and prose agree |
| L2.3 [40] | G10 (11 countries) | 60%, 56%, 48%, 10% | 59.46%, 55.61%, 47.55%, 10.20% | yes | none |
| L2.3 [40] | G10 plus China, India, Malaysia | 79%, 81%, 68%, 46% | 78.91%, 80.68%, 67.76%, 45.58% | yes | none |
| L2.3 [39] | Country shares (9 pairbars, 36 numbers) | as listed | All 36 equal R6A-tables.json and recompute from derived totals over $517.7T, $271.9T, $118.35T, 8.215bn | yes, label | Caption: say country debt is BIS while the world denominator is IIF nonfinancial ($271.9T). On the BIS world total the US share is 29.4% |
| L2.3 [38], [50] | China's share of world household wealth | 16% to 18.5% | 16.2% derived for mainland (end-2022 mean). 18.5% is "Greater China" (mainland, Hong Kong, Taiwan) in UBS | no (label) | "about 16% (18.5% counting Hong Kong and Taiwan)" |
| L2.3 [19], [21], [43], [44] | US NIIP end 2024 | minus $26.5T (minus 91% of GDP) | minus $26.54T (IMF BOP via DBnomics, BEA revised 30 Jun 2025, first print minus $26.23T) | yes, label | Add "end 2024". Newer quarters exist |
| L2.3 [19], [43], [44], [50], [64] | Japan NIIP end 2024 | plus $3.5T | plus $3.494T (IMF BOP) | yes | none |
| L2.3 [28], [29], [30], tldr | Japan nonfinancial debt in yen and dollars | 2,273 to 2,340 trillion yen, $22.05T to $14.94T, 410% to 351%, yen 103 to 157 | 2,273.1 and 2,340.4 trillion yen, $22.05T and $14.94T, 410.4% and 351.2% (BIS). Implied yen 103.1 and 156.7 | yes | none |
| L2.1 [39] | 7 Oct 2026 10-year auction | $39.0B, 4.625%, 15 Aug 2036, bids $109.0B, 2.77, 5.300%, $94.86, indirect 79.6%, direct 17.0%, dealers 2.5%, settles 15 Oct | Offering $39.0B, tendered $108.995B, bid to cover 2.77, high yield 5.3000, price 94.864, coupon 4.625, maturity 2036-08-15, issue 2026-10-15, indirect $31.06B, direct $6.62B, dealers $0.984B (shares of offering 79.6, 17.0, 2.5) | yes | Shares are of the $39.0B offering. Optional: say so |
| L2.1 [39] | Highest 10-year auction yield | since at least 2008 | Highest since 8 Nov 2000 (5.865%). The 2001 to 2026 maximum before this was 5.23% (12 Jun 2007) | yes | Stronger and still true: "the highest at a 10-year auction since 2000" |
| L2.1 [39], [41] | Dealers' 2.5% the smallest in the data | smallest | Lowest of all 10-year nominal auctions from 2008, apart from two early-2008 records with no dealer data | yes | none |
| L2.1 [40] | Bidder shares by year 2008 to 2026 (57 numbers) | as listed | Recomputed from fiscaldata, all 57 match to 0.1 | yes | none |
| L2.1 [35], [36], [37], [69] | Holders of Treasuries (Z.1 L.210) | foreign 8.3, 54.5 (2007), 32.5, Fed 12.7, banks 30.6 to 6.9, money funds 0.6 (1980) to 12.4 | Same to 0.1 (FL263061105, FL713061125, FL703061105, FL633061105 over FL893061105). Totals $0.24T and $28.48T | yes | [36] "almost exactly the Fed's 12.7%": PLAN 8.3 flags the Z.1 Fed level as too low ($3.62T against $4.23T on H.4.1). Write "close to the Fed's share" |
| L2.1 [37], [69] | TIC August 2026 | total $9.33T, Japan $1,068B, UK $1,010B, Japan minus $171B, China minus $109B, UK plus $108B | $9,331.7B, Japan 1,068.3, UK 1,009.5, Japan 1,239.3 (Feb) to 1,068.3, China 699.7 to 590.7, UK 901.3 to 1,009.5 | yes | none |
| L2.1 [37] | Tether $115B ranks about 20th, near UAE and Bermuda | about 20th | UAE $116.1B is 19th, Bermuda $111.8B is 20th in TIC Table 5. Tether figure itself is one press source | yes (rank), cannot check (Tether) | none |
| L2.1 [64], [65], [67] | Malaysia government bonds and foreign share | RM1.31T, 21.6%, March 2026 | RM1.309T, foreign RM283.10B, 21.6% computed (BIX 1Q2026) | yes, label | L2.3 [43], [49] use 20.1% (MGS only, July 2026, MARC via NST, confirmed). Name the scope in both chapters so readers do not see a conflict |
| L2.1 [64], [65], [67] | 10-year MGS yield end Aug 2026, against US | 3.985% vs about 4.8%, gap about 0.8 | MGS: Kenanga via Business Today, page returned 403. US 10-year 4.75% (31 Aug), 4.79% (1 Sep), H.15 | cannot check (MGS), yes (US) | none |
| L2.1 [64] | BNM reserves end May 2026 | US$130.6B | US$130.63B (Bernama, NST, BNM 9 Jun 2026) | yes | none |
| L2.1 [65] | Almost half of government debt is sukuk | almost half | BIX page gives no MGS and GII split | cannot check | none |
| L2.2 [7] | Bank loans by window | +0.45, +0.68, +1.56, +1.00 | +0.453, +0.681, +1.560, +1.000 (H.8 B1020NCBAM) | yes | none |
| L2.2 [7] | Bank securities by window | +0.33, +1.86, minus 0.61, +0.14 | +0.334, +1.860, minus 0.611, +0.139 (H.8 B1002NCBAM) | yes | none |
| L2.2 [7] | Fed bonds by window | minus 0.13, +4.52, minus 1.04, +0.16 | 2020 to 2021 +4.519 (H.4.1 Treasuries plus MBS, 25 Dec 2019 to 29 Dec 2021). Latest Sep to Sep about +0.17 | yes | none |
| L2.2 [7] | Deficits | 0.98, 5.90, 3.07, 1.99 | FY2026 $1,992.5B (MTS). Others not re-fetched | yes | none |
| L2.2 [7] | Deposits by window | +0.79 (6.4%), +4.71 (35.7%), minus 0.50 (2.8%), +1.23 (6.7%) | +0.792 (6.4%), +4.714 (35.7%), minus 0.505 (2.8%), +1.225 (6.65%) (H.8 B1058NCBAM) | yes | none |
| L2.2 [7] | M2 by window | +0.96, +6.15, minus 0.72, +1.17 (latest year, header says Sep 2025 to Sep 2026) | +0.960, +6.151, minus 0.723. Aug 2025 to Aug 2026 is +$1.25T. The $1.17T is Sep 2025 to Aug 2026 (11 months) | no | "+$1.25T (Aug 2025 to Aug 2026)" |
| L2.2 [7], [38] | Reverse repo rows | rose 1.64, fell 0.82 | 29 Dec 2021 $1.643T. Sep 2022 peak $2.367T | yes | none |
| L2.2 [38], [39], [42] | Reverse repo puzzle | Fed bonds $3.85T, $8.27T, $8.48T, $6.27T, $6.47T. RRP $0.00T, $1.64T, $1.97T, $2.37T, $0.11T, $0.0002T. TGA $0.39T, $0.28T, $0.78T, $0.87T, $0.95T. Reserves $1.68T, $4.04T, $3.36T, $2.85T, $2.97T. Falls $2.01T, $1.97T, $0.39T. Added $0.34T since Dec 2025 | Every cell matches H.4.1 Wednesday levels (RESPPALGUM, RESPPALGASMO, RESPPLLRD, RESPPLLDT, RESH4R). $8.478T to $6.468T is $2.01T, RRP $1.965T, reserves $3.357T to $2.970T is $0.39T, Treasuries $4.228T to $4.573T is $0.34T | yes | none |
| L2.2 [1], [14] | Reserves, TGA, reverse repo, October 2026 | $2.96T, $952B, $0.3B | Week averages to 21 Oct: $2.963T, $952.0B, $0.33B. Wednesday levels: $2.970T, $945.2B, $0.24B | yes, label | Label "week average" or switch to the Wednesday level used in [38] and [42] ($2.97T, $945B, $0.2B) |
| L2.2 [29] | Week to 21 Oct: TGA +$69B, reserves minus $60B | +69, minus 60 | Week averages: TGA +$68.6B, reserves minus $59.5B. Wednesday levels: +$59.3B and minus $61.3B | yes, label | Say "week average" |
| L2.2 [35], [42], [43] | Fed deferred asset | $245.9B peak (Jan 2026), $232.7B now | minus $245.927B on 28 Jan 2026, minus $232.672B on 21 Oct 2026 | yes | none |

### Other new material (tldr, kickers, charts, tables, curiosity and check answers)

| Block ref | Claim | Number in draft | Number at source | Match | Fix |
|---|---|---|---|---|---|
| L2.1 [2], [33], [34], [37] | World bonds and shares, end 2025 | $160.7T vs $157.8T, US 38.1% ($61.2T) | $160.7T (+10.6%), $157.8T, US 38.1% or $61.2T (SIFMA key findings, 19 Aug 2026) | yes | none |
| L2.1 [33] | Chart titled "end of 2025" includes US marketable Treasuries | 31.8 | $31.83T is 30 Sep 2026 (MSPD), not end 2025 | no (date) | Label the bar "30 Sep 2026" or retitle "2025 to 2026" |
| L2.1 [33] | Chart caption | empty | none | n.a. | Add a caption |
| L2.1 [7] | Debt held by the public, bills share | $32.57T, about 22% | $32.566T (21 Oct 2026), bills $7.118T of $31.835T marketable, 22.4% | yes | none |
| L2.1 [34] | Treasury trading | about $1.2T a day | $1.21T Jan to Jul 2026 (SIFMA, lane, not re-fetched) | cannot check | none |
| L2.1 [17], [18] | Duration table | prices 99.89, 96.09, 93.81, duration 1.9, 7.9, 15.0, changes minus 1.9 and +1.9, minus 7.5 and +8.3, minus 13.4 and +16.8 | Script: 99.89, 96.09, 93.81, 1.89, 7.87, 14.98, minus 1.86 and +1.91, minus 7.51 and +8.26, minus 13.44 and +16.82 | yes | none |
| L2.1 [16] | Durations near 2, 8, 15 | 2, 8, 15 | 1.89, 7.87, 14.98 | yes | none |
| L2.1 [21], [24], [51], [71], [72] | Yields 21 Oct 2026, peak | 10y 5.13, 2y 4.81, 30y 5.42, peak 5.31 on 5 Oct | 5.13, 4.81, 5.42, 5.31 on 5 Oct (H.15) | yes, label | 22 Oct values are 4.96, 4.65, 5.29. Keep the date stamp |
| L2.1 [27], [30] | Treasuries share of Fed securities | 71%, $4.57T of $6.47T | $4.573T of $6.468T, 70.7% (H.4.1 21 Oct 2026) | yes | none |
| L2.1 [30] | Foreign official Treasuries over world FX reserves | about 28%, $3.76T of $13.22T | $3,755.6B (TIC Aug 2026) over $13.22T (COFER Q2 2026), 28.4% | yes | none |
| L2.1 [30], [45], [46] | US repo | $12.6T "a day", "lent each day" | "averaged about $12.6 trillion in daily exposures in Q3 2025", 69.4% Treasury collateral (OFR 4 Dec 2025) | no (wording) | [30] and [46]: "about $12.6T outstanding on an average day". [45] already says this |
| L2.1 [30], [31] | Bank liquid assets, loans | $7.88T, 30%, loans $14.1T of $25.9T, Treasuries and agency $4.8T | $4.784T + $3.101T = $7.885T, 30.5% of $25.875T. Loans $14.100T (H.8 Sep 2026) | yes | none |
| L2.1 [30], L2.2 [51], [53] | Money fund assets | $7.98T (Sep 2026), about 40% of deposits | ICI via press (lane), not re-fetched. 7.98 over 19.64 is 40.6% | cannot check (level), yes (ratio) | none |
| L2.1 [30], [37] | Tether Treasury bills | about $115B | one press source (lane R6B-21 Speculative). Labelled "press" | cannot check | Keep the label |
| L2.1 [36] | Money funds 0.6% (1980) and 12.4% (2025) | as stated | Z.1 match | yes | See [36] note above |
| L2.1 [37] | Banks own about 7% (2025) | about 7% | 6.9% | yes | none |
| L2.1 [46] | Fed bought $1.27T in five weeks, end-2007 holdings | $1.27T, $0.76T | $2.523T (11 Mar 2020) to $3.789T (15 Apr 2020) = $1.27T. 26 Dec 2007: $0.7546T | no (minor) | $0.75T |
| L2.1 [49] | Mortgage payments | $2,502, $2,770, $267, $3,210 | $2,502.02, $2,769.52, $267.50, $3,210 | yes | 7.40% mortgage level itself not verified (cannot check) |
| L2.1 [51] | Inversion 541 trading days, Apr 2022 to Sep 2024, +0.31 on 22 Oct | 541, +0.31 | 541 days from 1 Apr 2022 to 5 Sep 2024. 4.96 minus 4.65 = 0.31 | yes | none |
| L2.1 [57], [62] | 1979 to 1981 | 8.76% to 15.84%, minus 35% | 8.76 (2 Jul 1979), 15.84 (30 Sep 1981). Model minus 35.0% | yes | Heading says 1979 to 1981, lane says 1979 to 1982. Fine |
| L2.1 [57] | 1994 | 5.19% to 8.05%, minus 19% | 5.19 (15 Oct 1993), 8.05 (7 Nov 1994). Model minus 19.4% | yes | none |
| L2.1 [57], [69] | 2008 | 4.27% to 2.08%, +20% | 4.27, 2.08. Model +19.7% | yes | none |
| L2.1 [57] | March 2020 | 0.54% to 1.18% in seven trading days, minus 6% | 0.54 (9 Mar), 1.18 (18 Mar). Model minus 6.0% | yes | none |
| L2.1 [57], [62], [69] | 2021 to 2023 | 1.35% to 4.98%, minus 28% | 1.35 (3 Dec 2021), 4.98 (19 Oct 2023). Model minus 28.3% | yes | none |
| L2.1 [57] | 2026 | 3.97% to 5.31%, "the highest since 2007", minus 10% | 3.97 (27 Feb), 5.31 (5 Oct). Model minus 10.3%. Last close at or above 5.31% before 2026 was 5.32% on 14 May 2002. 2007 high was 5.26% | no | "the highest since 2002" |
| L2.1 [57] | 30-year 5.67% on 7 Oct | 5.67 | 5.67, highest since Jul 2002 (H.15) | yes | none |
| L2.1 [57], [62] | US banks' unrealized losses end 2022, SVB HTM loss | $620B, $15.1B | FDIC $620B (lane), SVB 10-K HTM loss about $15.1B (lane, not re-fetched) | cannot check | none |
| L2.1 [60] | SVB-shaped ledger | owns $100 bonds, owes $100 deposits and $8 owners' money, bonds fall to about $78, equity minus $14 | Script: 1.5% coupon, 9 years left, 4.5% yield gives $78.0. 8 minus 22 = minus 14. But the "owns" column lists $100 against $108 of claims | no (does not balance) | Add "$8 of cash and loans" to the 2021 owns cell, as the lane does ($108 of assets) |
| L2.1 [62] | 0.625% 2030 note worth about $84 | $84 | Script: $84.6 at 4.9%, $84.9 at 4.81% with 3.8 years left | yes | none |
| L2.1 [62], [74] | CPI peak 9.1% June 2022, record low 0.52% Aug 2020 | 9.1, 0.52 | 0.52 on 4 Aug 2020 (H.15). CPI 9.1% June 2022 (BLS, standard) | yes | none |
| L2.1 [72] | 2.4% about what the bond market expects | 2.4% | 10-year breakeven 21 Oct 2026: 5.13 minus 2.76 (TIPS, H.15) = 2.37% | yes | none |
| L2.1 [72], [81] | After-tax and real return arithmetic | $39, $24, 1.5%, minus 0.2% | 51.30 x 0.76 = 38.99. 39 minus 24 = 15 (1.5%). 5 x 0.76 = 3.8, minus 4 = minus 0.2 | yes | none |
| L2.1 [8], [12], [14] | $1,500 total, $926, 7%, 14% | as stated | 500 + 1,000. $926.40 (annual coupons). Minus 7.36% and minus 13.76% | yes | none |
| L2.1 [24] | Japan's yen defence similar to $171B | similar sum | about $73B plus $98.6B = $171.6B (press on MoF data, lane) | cannot check | none |
| L2.1 [24] | Oil above $100 | above $100 | not checked in lane or here | cannot check | Add a dated source or drop the number |
| L2.2 tldr | Banks 87% to 96% of the two printers 1971 to 2007 | 87% to 96% | Era table upstairs shares 7.3%, 4.3%, 11.1%, 12.7% | yes | none |
| L2.2 tldr, [82], [83], [90] | 1971 to 2026 totals | loans $13.79T, Fed $6.43T, M2 $22.72T, two thirds | Loans $14.0995T (Sep 2026) minus $0.3047T (Dec 1970) = $13.79T (H.8). Fed column sums to $6.431T. M2 $23,342.8B minus $626.6B = $22.72T. 13.79 over 20.22 = 68% | yes | none |
| L2.2 [82], [83] | 2009 loans fell, 2026 to date loans, Fed, M2, 2022 to 2025 M2 | minus $481B, $784B, $201B, $988B, $853B | minus $481.4B, $784.0B, $201.0B (Treasuries plus MBS 31 Dec 2025 to 21 Oct 2026), $987.5B, $852.5B | yes | none |
| L2.2 [82] | Era shares | 7%, 4%, 11%, 13%, 75%, 87%, 20%, 32% | 7.3, 4.3, 11.1, 12.7, 75.1, 86.9, 20.4, 31.8 | yes | none |
| L2.2 [83], [61], [85] | M2 fell in 2022 and 2023, first full-year falls since 1959 | as stated | Dec on Dec falls only in 2022 (minus $210B) and 2023 (minus $513B) in the series from Jan 1959 (H.6) | yes | none |
| L2.2 [83], [61] | M2 about 37 times since 1970 | 37 | $626.6B (Dec 1970) to $23,342.8B (Aug 2026), 37.3 | yes | none |
| L2.2 [61] | M2 still 35% to 40% above early 2020 | 35% to 40% | Feb 2020 $15,492.8B. Dec 2022 +37.4%, Dec 2023 +34.1% | yes | none |
| L2.2 [65], [59] | M2 about 40%, $15.5T (Feb 2020) to $21.7T (Feb 2022) | as stated | $15,492.8B to $21,725.6B, +40.2% | yes | none |
| L2.2 [64] | Fed purchases 2020 to 2021 | +$4.6T | +$4.519T (H.4.1, 25 Dec 2019 to 29 Dec 2021), and the channel table [7] says +$4.52T | no | +$4.5T |
| L2.2 [64] | Cash withdrawn 2020 to 2021, latest | minus $0.45T, minus $0.07T | Currency in circulation +$0.434T (25 Dec 2019 to 29 Dec 2021), +$0.072T (Sep to Sep) | no (2020 to 2021) | minus $0.43T |
| L2.2 [64] | Fed purchases latest | +$0.19T net | Oct 2025 to Oct 2026: +$0.189T. Sep to Sep: +$0.17T | yes, label | Say "Oct 2025 to Oct 2026" so it does not clash with +$0.16T in [7] |
| L2.2 [8], [9], [74] | 6.6 times, a seventh, $4.71T vs $0.68T | as stated | 4.52 over 0.68 = 6.6. 0.68 over 4.71 = 0.14 | yes | none |
| L2.2 [14] | Fed holds $4.57T and $1.90T, cash $2.49T, deposits $19.6T, M2 $23.3T | as stated | $4.573T, $1.895T, currency $2.485T (H.4.1), deposits $19.64T (H.8 Sep), M2 $23.34T (Aug) | yes | none |
| L2.2 [35], [47], [49] | IORB 3.90%, about $115B a year | 3.90%, $115B (desk estimate) | lane: IORB 3.90% since 17 Sep 2026 (not re-fetched). 3.90% x $2.97T = $116B | yes (arithmetic) | none |
| L2.2 [47], [49], [48] | Reserve requirement 0% since 26 March 2020 | as stated | Fed, standard (not re-fetched) | yes | none |
| L2.2 [51], [53], [52] | Eurodollar credit | $14T, 55% as bonds, end Sep 2025 | "Dollar credit stood at $14 trillion at end-Q3 2025, with 55% in the form of debt securities" (BIS GLI Jan 2026) | yes | none |
| L2.2 [52] | "Who prints the $14 trillion? Mostly banks abroad" | mostly banks | BIS: 55% is debt securities held by investors, 45% loans | no | "Bond investors hold over half of it. The rest is loans written by banks abroad, in London, Singapore or Kuala Lumpur..." ([53] already says "banks and bond markets") |
| L2.2 [51] | Stablecoins about $308B | $308B | trackers via press (lane), not re-fetched | cannot check | none |
| L2.2 [55], [57] | Bank of Japan share of JGBs | 49% (end 2025), first below 50% since 2022 | MoF breakdown now shows Jun 2026: BoJ 470.0 of 1,006.5 trillion yen of JGBs, 46.7%. End 2025 page not retrievable | cannot check (end 2025), stale | Optional update: "47% (June 2026)". Also say "of JGBs, excluding bills" since L2.3 uses 43% of JGBs plus bills |
| L2.2 [55] | BNM SRR 1% since May 2025, ECB 1% paid 0% since Sep 2023 | as stated | lane T1 (not re-fetched) | cannot check | none |
| L2.3 [52], [57], [58] | Scale tools | 31,700 years, 11 million years, $63,000, $93,000, $42,000, $14,400 | 1e12 s = 31,688 years. $348.3T s = 11.0 million years. 517.7T over 8.215bn = $63,018, over 5.552bn adults = $93,245, 348.3T over 8.215bn = $42,398, 118.35T over 8.215bn = $14,407 | yes | none |
| L2.3 [55], [56] | $100,000 household | $437,400, $507,000, $294,300, $90,200, $85,000, $64,600, $54,600, about five years | 437,431, 506,971, 294,297, 90,156, 85,002, 64,554, 54,584, 5.07 years | yes | none |
| L2.3 [53], [54] | Village of 100 adults | 42, 41, 15, 1.5 adults, 0.6, 12.2, 38.8, 48.4% | UBS pyramid: 42.1%, 41.1%, 15.3%, 1.5% of adults, wealth 0.6, 12.2, 38.8, 48.4% | yes | none |
| L2.3 [25] | World wealth rose 10.8% in 2025 | 10.8% | "Total personal wealth grew by 10.8% when measured in USD" (UBS) | yes | none |
| L2.3 [24], [25], tldr | 20% new investment, 58% valuation | 20%, 58% | about 20% and about 58% (Fortune), "nearly 60%" (Advisor Analyst). Report not opened, as the draft says | yes | none |
| L2.3 [29] | Euro rose almost 9% in 2025 | almost 9% | "The euro, for instance, rose almost 9% against the dollar in 2025" (UBS p.9) | yes | none |
| L2.3 [29] | European wealth grew 17.5% in dollars | 17.5%, Europe | UBS: 17.5% is the Europe, Middle East and Africa region, a population-weighted average ("nearly 18%") | no (label) | "wealth in Europe, the Middle East and Africa grew about 17.5% in dollars (UBS)" |
| L2.3 [33], [36], [34], [35] | BIS ratios | 191% (2001), 202% rising to 229% by 2010, 285% (2020), $222T to $237T, 235% to 246% | 190.9, 202.3 (2008), 232.9 (2009), 229.0 (2010), 285.0, $222.0T and $237.0T, 234.8 and 245.7 | yes | Optional: the peak was 233% in 2009 |
| L2.3 [32] | Timeline chart debt series | 60.1, 88.2, 113.5, 118.6, 222.0, 228.3, 237.0, 262.7 | BIS 5A USD: 60.13, 88.16, 113.49, 118.57, 222.01, 228.3 (lane), 237.00, 262.67 | yes | none |
| L2.3 [32] | Output 36 times, debt 80 times | 36, 80 | 118.35 over 3.33 = 35.5, 262.7 over 3.3 (model) = 79.6 | yes | 1971 debt is a model, as the caption says |
| L2.3 [33], [36], tldr | 2020 record $35T, governments $14T, 2005 $130T | as stated | "record-breaking $35 trillion increase", governments "around $14 trillion", 2005 "roughly $130 trillion, or 240% of GDP" (IIF Reflections) | yes | none |
| L2.3 [50] | China added more than $4.8T of about $10T in H1 2026 | as stated | "more than $4.8 trillion" of "$10 trillion" (Qatar Tribune, 24 Sep 2026) | yes | Press. Keep "(IIF, press)" |
| L2.3 [43] | Sector debt ratios (spot check China, Switzerland, Malaysia) | China 58/143, Switzerland 123/129, Malaysia 70/89, Malaysia total 224 | BIS Q4 2025: China H 58.0, N 142.8, total 300.1. Switzerland H 122.9, N 129.0. Malaysia H 69.8, N 88.6, total 223.7 | yes | none |
| L2.3 [43], [44], [50], [64] | Japan holders: BoJ 43%, foreigners 13% | 43%, 13% (undated in the table) | Lane: end Dec 2025 (MoF). MoF page now shows Jun 2026: BoJ 41.2%, foreigners 13.1% of JGBs plus bills | yes, stale | Add "end 2025" in [43], or update to 41% and 13% (June 2026) |
| L2.3 [43] | US holders: Fed 14%, foreigners 29% | 14%, 29% | $4.573T and $9.332T over $32.598T held by the public = 14.0% and 28.6% | yes | L2.1 bridge [1] says foreigners hold "about a third" (Z.1 market value, all holders). Name the base in one of them |
| L2.3 [45], [50] | Median wealth Italy and Germany | $131,001, $53,485 | UBS Table 1 | yes | none |
| L2.3 [47] | Swiss mean wealth | $910,382 | UBS Table 1 | yes | none |
| L2.3 [43], [49] | Malaysia foreign share | about 20% | 20.1% of MGS, July 2026 (NST citing MARC) | yes | See L2.1 [64] scope note |
| L2.3 [60] | Wealth 1.5 to 1.7 times debt, debt about 3.1 times output, about 2.4 without finance | as stated | 517.7 over 348.3 = 1.49, 600 over 348.3 = 1.72, 348.3 over 118.35 = 2.94 (IIF's own GDP gives 3.08), 271.9 over 118.35 = 2.30, BIS 2.46 | yes | none |
| L2.3 [60] | Meme views | 27 million | lane vidIQ 27.2M | cannot check | none |
| L2.3 [45] | Germany has one of the lowest home-ownership rates in Europe | stated as fact | Lane: "Eurostat housing statistics, not fetched" | cannot check | Add the Eurostat figure or mark as background knowledge |

### Random sample of the other numeric claims
The old material of L2.1 and L2.2 (steps 1 to 7, the two-floors table, the Fed and Treasury steps, the 1971 to 2026 history) holds about 60 numeric claims. The rows above tagged [7], [8], [12], [14], [16], [21], [24], [27], [49], [51], [62], [64], [65], [72], [74], [81], [82], [83] cover 24 of them (40%, above the 20% floor). Of those, 2 were wrong ([64] Fed +$4.6T and cash minus $0.45T) and 2 could not be checked (7.40% mortgage, oil above $100).

## Lane items not confirmed, and how the draft uses them
| Lane item (status) | Where in the draft | Verdict | Fix |
|---|---|---|---|
| McKinsey $600T net worth (R6A-13, Speculative) | tldr, [6], [10], [33], [55] | Partly supported now (search snippet of McKinsey's own chart page: total wealth $600T, households 95%). [6] labels it "via press", [10] and the tldr do not | Add "(McKinsey, via press)" in [10] |
| McKinsey $620T real assets (R6A-13, Speculative) | L2.3 [20] | Stated as fact. Not found in any source | Drop or label "not confirmed" |
| IIF over $365T (R6A-06, Speculative) | kicker, tldr, [6], [10], [33], [60], [63] | Now corroborated by two press reports of the IIF (May and Sep 2026). Still no IIF document | Keep, label "(IIF, via press)" at first use |
| China +$4.8T in H1 2026 (R6A-06) | L2.3 [50] | Labelled "(IIF, press)". Press confirms | none |
| Cause of BIS versus IIF 2025 direction (R6A-34, hypothesis) | L2.3 [35] | Hedged ("the likely reason") | none |
| Germany home ownership (not fetched) | L2.3 [45] | Stated as fact | Add a source |
| Week to 21 Oct TGA and reserves (R6B A6, unverified) | L2.2 [29] | Verified here on a week-average basis | Label "week average" |
| 7.40% mortgage, oil above $100 (R6B A3, unverified) | L2.1 [49], [24] | Stated as fact, older text | Add a dated source |
| "Fed bond buying mostly supplied paper cash" 1971 to 2007 (R6B A5: print only after the 1971 currency level is fetched) | L2.2 [83] | Printed without the number. Plausible: Fed bonds +$0.72T over 1971 to 2007 against currency of $0.83T at end 2007 | Add the two numbers or soften to "roughly matched the growth of paper cash" |
| Nearly all primary dealers in banking groups (R6B A5: count first) | L2.2 [26] | Not counted | Count from the NY Fed list or keep as "many" |
| Tether $115B (R6B-21, Speculative) | L2.1 [30], [37] | Labelled "press" | none |
| Japan intervention sum (R6B-10, Plausible, press) | L2.1 [24] | Hedged ("a similar sum") | none |

## Mismatch rate
- Rows checked: 116 (many rows cover several numbers, about 400 numbers in all). Not checkable: 16 rows.
- Mismatches: 13 rows. Rate 13 of 116 = 11.2% of rows checked, 13 of 100 = 13% of checkable rows.
- The rate is above 10%, so per the Verifier card every headline claim was re-checked. All nine priority items were re-fetched in this pass from the primary or best available source (above). After the fixes below, no headline number is left with an unresolved mismatch. Headline items left as "cannot check": McKinsey $600T (snippet only) and $620T, the IIF mid-2026 ratio, the 10-year MGS yield of 3.985%, and the MGS and GII split.
- Most mismatches are labels or rounding. Three change what a reader learns: "highest since 2007" (really 2002), "European wealth grew 17.5%" (really the EMEA region), and "mostly banks abroad" print offshore dollars (55% is bonds).

## Corrected claims (claims table)
| id | claim | tier | status | source (URL) | source date | as-of date | falsifier |
|---|---|---|---|---|---|---|---|
| R6V-01 | The G7 owes about 51% (51.46%) of world nonfinancial debt, not 52%, on the lane's derived country table | T4 (derived) | Confirmed (arithmetic) | round6/lanes/R6A-tables.json | 2026-10-24 | 2025 | Recalculation with new BIS or IIF inputs |
| R6V-02 | UBS's 17.5% wealth growth in 2025 is for Europe, the Middle East and Africa (population-weighted), not Europe alone. The euro rose almost 9% against the dollar | T4 | Confirmed | https://www.ubs.com/global/en/media/display-page-ndp/en-20260630-gwr-2026.html | 2026-06-30 | 2025 | UBS correction |
| R6V-03 | IIF world debt was about $300T to $320T from 2021 to 2024 (just under $300T at end 2022 after a $4T fall, $319.5T at end 2024) | T4 | Plausible | https://www.kitco.com/news/off-the-wire/2023-02-22/global-debt-sees-first-annual-drop-2015-iif | 2023-02-22 | 2021 to 2024 | IIF back series shows another range |
| R6V-04 | UBS's 18.5% share is Greater China (mainland, Hong Kong, Taiwan). Mainland China is about 16% on the derived figure | T4 | Confirmed (label) | UBS GWR 2026 PDF (lane key UBS26) | 2026-06-30 | End 2025 | UBS gives a mainland share |
| R6V-05 | The 10-year yield's 2026 high of 5.31% (5 Oct) is the highest close since 14 May 2002 (5.32%), not since 2007. The 2007 high was 5.26% | T3 | Confirmed | https://api.db.nomics.world/v22/series/FED/H15/RIFLGFCY10_N.B?observations=1 | 2026-10-23 | 2026-10-05 | H.15 revision |
| R6V-06 | The 7 Oct 2026 10-year auction yield (5.300%) was the highest at a 10-year auction since 8 Nov 2000 (5.865%) | T0 | Confirmed | https://api.fiscaldata.treasury.gov/services/api/fiscal_service/v1/accounting/od/auctions_query | 2026-10-24 | 2026-10-07 | TreasuryDirect correction |
| R6V-07 | M2 rose $1.25T from Aug 2025 to Aug 2026 ($22.09T to $23.34T). The draft's $1.17T is Sep 2025 to Aug 2026 | T0 | Confirmed | https://api.db.nomics.world/v22/series/FED/H6_H6_M2/M2.M?observations=1 | 2026-10-24 | 2026-08-31 | H.6 revision |
| R6V-08 | In 2020 to 2021 the Fed's Treasuries and MBS rose $4.52T and currency in circulation $0.43T (H.4.1, 25 Dec 2019 to 29 Dec 2021) | T0 | Confirmed | https://api.db.nomics.world/v22/series/FED/H41/RESPPALGUM_N.WW?observations=1 and RESTBC_N.WW | 2026-10-24 | 2021-12-29 | H.4.1 revision |
| R6V-09 | Of the $14T of dollar credit to non-US nonbanks (end Sep 2025), 55% is debt securities, so banks abroad write well under half of it | T0 | Confirmed | https://www.bis.org/statistics/gli2601.htm | 2026-01 | 2025-09-30 | BIS revision |
| R6V-10 | US repo averaged about $12.6T of daily exposures (outstanding positions) in Q3 2025, 69.4% backed by Treasuries. It is not a daily lending flow | T0/T4 | Confirmed | https://www.financialresearch.gov/the-ofr-blog/2025/12/04/sizing-us-repo-market/ | 2025-12-04 | 2025-09-30 | Newer OFR sizing |
| R6V-11 | US marketable Treasuries of $31.83T are a 30 Sep 2026 figure, not end 2025, in the L2.1 world bonds chart | T0 | Confirmed (label) | https://api.fiscaldata.treasury.gov/services/api/fiscal_service/v1/debt/mspd/mspd_table_1 | 2026-10 | 2026-09-30 | MSPD revision |
| R6V-12 | The Fed held $0.75T of Treasuries at end 2007 ($754.6B on 26 Dec 2007) and bought $1.27T from 11 Mar to 15 Apr 2020 | T0 | Confirmed | https://api.db.nomics.world/v22/series/FED/H41/RESPPALGUM_N.WW?observations=1 | 2026-10-24 | 2007-12-26, 2020-04-15 | H.4.1 revision |
| R6V-13 | The SVB-shaped ledger balances only with $8 of other assets: $108 of assets against $100 of deposits and $8 of equity | Model | Confirmed (arithmetic) | round6/lanes/R6B-bonds-money.md section B1.9 | 2026-10-24 | n.a. | Arithmetic error |
| R6V-14 | The draft's October 2026 reserves ($2.96T), TGA ($952B) and reverse repo ($0.3B) are week averages to 21 Oct. Wednesday levels are $2.970T, $945.2B and $0.24B | T0 | Confirmed (label) | https://api.db.nomics.world/v22/series/FED/H41/RESH4R_XAW_N.WW?observations=1 | 2026-10-24 | 2026-10-21 | H.4.1 revision |
| R6V-15 | MoF's JGB holder breakdown now shows June 2026: the Bank of Japan holds 46.7% of JGBs and 41.2% of JGBs plus bills, foreigners 13.1% of JGBs plus bills | T0 | Confirmed | https://www.mof.go.jp/english/policy/jgbs/reference/Others/holdings01.pdf | 2026-09-17 | 2026-06-30 | MoF revision |
| R6V-16 | US NIIP end 2024 was minus $26.54T (BEA revised 30 Jun 2025, first print minus $26.23T), matching IMF BOP | T0 | Confirmed | https://api.db.nomics.world/v22/series/IMF/BOP/A.US.IFR_BP6_USD?observations=1 | 2026-10-24 | 2024-12-31 | BEA annual revision |
| R6V-17 | IIF world debt was nearly $353T at end Q1 2026 (ratio about 305%) and more than $365T in H1 2026, with China adding more than $4.8T | T4 (press) | Plausible | https://www.qatar-tribune.com/article/255647/business/global-debt-tops-365-trillion-as-china-us-lead-borrowing-surge | 2026-09-24 | 2026-06-30 | IIF document shows a lower figure |
| R6V-18 | Malaysia's foreign share is 21.6% of MGS plus GII (Mar 2026, BIX) or 20.1% of MGS (Jul 2026, MARC). Both chapters should name the scope | T4 | Confirmed (label) | https://bixmalaysia.com/learning-center/articles-tutorials/malaysia-bond-and-sukuk-quarterly-report-1q2026 and https://www.nst.com.my/amp/business/economy/2026/09/1523569/malaysias-resilience-boosts-appeal-government-bonds | 2026-04 and 2026-09 | 2026-03-31 and 2026-07-31 | BNM bulletin differs |
