# R5D: Households, housing and the spread trade

Lane: Round 5, R5D. Questions R5-8 (housing supply speed), R5-10 (human-made premium), R5-12 (pledgeable or programmable UHI), R5-17 (the newsletter spread trade). Written 2026-10-23. Facts as of 2026-10-23 unless a row says otherwise.
Builds on: R3 R3D (land shares, zoning cases, factory housing, Etsy, human-made experiments), R3 R3B (UHI bills table, shelter share of UHI spending, the shelter supply input s), R2 R2B (42 USC 407, Alaska PFD, M7 and M8), R1 L2 (GENIUS, the statutory CBDC ban through 2030-12-31).
Method: 22 WebSearch calls, direct primary pulls (Census New Residential Construction PDF for September 2026, Census New Residential Sales PDF for August 2026, Freddie Mac PMMS page, NAR release, NBER abstract, Cornell LII for 31 CFR 212.3 and 7 USC 2024), and two market datasets (Damodaran histretSP.xls, updated 2026-08, annual S&P 500 total returns 1928 to 2025, and Shiller ie_data.xls, monthly S&P composite with dividends 1871 to 2023-06). "Model" means arithmetic on stated inputs, not data. Scripts are in /tmp/claude-0/-home-user-lastlonger/41b7d58e-bedc-5a4f-859e-bd3e52b76ed8/scratchpad/scripts (spread_mc.py, spread_checks.py, hurdle.py, sp_annual.py, stock_flow.py). Raw outputs are in /tmp/claude-0/-home-user-lastlonger/41b7d58e-bedc-5a4f-859e-bd3e52b76ed8/scratchpad/dl/mkt. Numbers marked "memory" were not re-fetched this round and belong on the R5-18 re-check list.
General research and education, not personal financial advice.

---

## Answers

### R5-8. How fast can US housing supply actually respond in the 2020s?

**Answer.** Slowly, and in 2026 it is going backwards. Completions peaked at 1.627M in 2024, fell to 1.489M in 2025 and are running 12.5% below last year so far in 2026 (September annual rate 1.192M, down 14.0% on a year). Starts (1.221M) and permits (1.400M, single-family 845k) say no rebound is coming soon, and units under construction are 1.280M, down 3.3% on a year. The binding constraints are price, not physics: the 30-year mortgage rate is 7.32% (7.40% a week earlier), about half of all mortgages carry 4% or less, so owners do not sell (existing sales 3.99M a year, 4.8 months of supply), while builders sit on 8.5 months of new-home supply and cut starts. Costs and labor push the same way: input prices rose more in the first four months of 2026 than in the prior three years (ABC), NAHB cites a shortage of about 300,000 construction workers and immigration enforcement keeping legal workers off sites. Factory-built homes are 3% of single-family completions (14,000 modular and 16,000 panelized in 2025). Zoning works where it is broad and by-right (Auckland, Austin), and narrow reforms deliver little (Minneapolis triplexes, SB 9). The shortage is 3.7M to 4.7M homes on the most used estimates (Freddie Mac, Up for Growth 3.78M, Realtor.com just over 4M, Zillow 4.7M), with outliers from about 1M (Burns, NAHB 1.2M) to 10M (White House CEA, single-family only) and 15M (Glaeser and Gyourko, stock-growth counterfactual). Desk estimate of supply elasticity: new construction responds to price with an elasticity of about 1.0 nationally (range 0.5 to 1.75, coastal metros 0.3 to 0.8), which means new homes meet only about 5% to 10% of a demand shock within 3 years, 15% to 25% within 10 years and 25% to 40% within 20 years (model). Completions near 1.2M to 1.3M a year are roughly the pace needed just to keep up with new households and losses (model on memory inputs: about 0.9M new households and 0.3M to 0.35M units lost a year), so the gap is not closing in 2026.
- Status: confirmed (the 2026 data), plausible (the elasticity estimate). Confidence: 70. Horizon: H0 for the slowdown, H1 for any reform-driven catch-up.
- Three views. Governance: rate cuts alone unlock existing homes, not new ones, so only by-right zoning plus faster permits moves the 20-year number, and it takes a decade to show. Business: builders are in a destocking phase with 8.5 months of new supply, so expect incentives and rate buydowns, not new starts, until mortgage rates fall below about 6.5%. Ordinary person: do not wait for a building wave to fix rent where you live in this decade, and watch your city's zoning votes, which set your price more than robot or factory news.

### R5-10. Is there a real cash price premium for human-made goods?

**Answer.** Yes, but it is narrow, and the clearest money evidence shows a discount on AI-made goods rather than a premium on human-made ones. In controlled experiments, the same artwork is valued higher when labeled human-made (Bellaiche et al. 2023, Millet et al. 2023), handmade lifts purchase intent mainly for gifts to loved ones (Fuchs et al. 2015), and labeling a product "AI-powered" cut stated willingness to pay by about 25% in a small 2026 experiment (median $13 to $10, n=265, vendor study). The best transaction evidence is a marketplace: at CGTrader, AI-made 3D models were one in six uploads but 2.6% of sales and only $1 of every $90 of revenue (June 2025 to May 2026), so AI items sold less often and at lower prices, though quality confounds this (20% of buyers who tried one found it inadequate). Auctions say AI art sells when a known human stands behind it: Christie's Augmented Intelligence sale made $728,784, led by Refik Anadol's piece at $277,200. Stated surveys are louder than behavior: 68% of US adults say they would pick human-made over identical AI-made at the same price (vendor survey), Pew found half like a painting less once told AI made it, yet readers paid the same for a story labeled AI-written (IZA DP 17646). No peer-reviewed, transaction-based estimate of the premium's cash size exists yet, and platforms that certify "handmade" keep a growing slice (Etsy's take rate 24.2% in 2025, up from 16.5% in 2019, while its sales fell 5.3%).
- Status: plausible (a label and disclosure effect exists and shows up in one revealed-preference marketplace), speculative on its cash size. Confidence: 60 (up from 55 in R3). Horizon: H0 to H1.
- Three views. Governance: the premium depends on proof, so provenance rules (content credentials, "made by" disclosures, penalties for false human labels) decide whether it reaches makers or fakers. Business: sell the maker, the story, the gift and the service, avoid putting "AI" on the label of an emotional product, and expect platforms to tax the premium. Ordinary person: human-made pays where buyers care who made it (gifts, art, care, personal services), not for commodity goods, where AI and robots will win on price.

### R5-12. If a UHI or AI dividend law passes, will payments be pledgeable or programmable?

**Answer.** Most likely neither pledgeable nor fully programmable, but also less protected than people assume. US law decides benefit by benefit. Social Security is the strong model: 42 USC 407 makes payments non-assignable and immune from garnishment (with child support and alimony carved out), and 31 CFR 212 makes banks shield two months of directly deposited benefits, but that rule only covers SSA, VA, OPM and Railroad Retirement payments, so a new AI dividend would get no automatic bank-account shield unless Treasury amends it. The 2021 cash programs show Congress choosing case by case: advance child tax credit payments were protected from federal offsets but, per the IRS, not from state or private garnishment, while the December 2020 relief law did shield the second stimulus checks from private creditors. Alaska's dividend, the only US universal dividend, is only 20% exempt from creditors. Programmability already exists without a CBDC: SNAP benefits are spend-restricted on EBT cards, selling them is a felony at $100 or more (7 USC 2024), and 22 states had USDA waivers to bar soda or candy by March 2026 (one approval was vacated by a federal court on 2026-06-22). A retail Fed CBDC is barred (EO 14178 of January 2025, then a statutory ban through 2030-12-31), so any token UHI would ride private GENIUS stablecoins, whose issuers must by law be able to freeze, seize or burn coins on lawful orders. No 2025 to 2026 AI dividend bill or plan found (Sanders' stock-based fund, the Bores campaign plan, H.R. 10044) addresses assignment or programmability, so the default is set by whichever statute the payment is written into. Desk odds for a federal cash AI dividend enacted by 2035: anti-assignment clause 75, protected from private garnishment 55, still subject to child-support and federal-debt offsets 85, paid with spending restrictions 10, explicitly pledgeable 5.
- Status: plausible (law confirmed, the forecast is inference). Confidence: 70. Horizon: H0 (law and bills) to H1 (any enactment).
- Three views. Governance: write anti-assignment, a bank-account shield (add the paying agency to 31 CFR 212) and offset rules into the bill on day one, because the 2021 patchwork left families exposed to private garnishment. Business: the lending product will be underwriting against UHI as income (allowed, ECOA-protected), not buying the stream, and stablecoin wallets will compete to receive deposits, not to restrict them. Ordinary person: expect a UHI that cannot be sold or pledged, can be taken for child support or federal debts, and may be frozen at the bank by a private creditor unless the law says otherwise.

### R5-17. The spread trade: "borrow at 6.19%, earn 13.6%"

**Answer.** The headline spread is real on paper and mostly disappears once volatility, leverage and taxes are counted. First, the inputs: 6.19% is exactly Freddie Mac's 30-year mortgage rate a year ago, and the same loan costs 7.32% today, while 13.6% matches the S&P 500's arithmetic average for the ten years to 2022 (13.59%) and sits above the 1928 to 2025 compound return of 10.0% and the median ten-year window of 11.0%. Volatility drag is the core problem: at 20% equity volatility a 13.6% average compounds at about 11.4%, and two-times leverage (a 50% loan) doubles the volatility to 40%, so its compound return is about 11.7%, barely above unlevered, and at 25% volatility it is 6.8% versus 10.1% unlevered (model). With interest added to the loan, a 50% loan-to-value position is called at 65% after a 23% fall at the start, and after about 4.4 years even if prices go nowhere. In a 20,000-path Monte Carlo and in every rolling start month of 1928 to 2023, the chance of at least one margin call over 10 to 20 years is about 35% to 52% at 50% LTV (call at 65% or 70%), and 8% to 18% at 30% LTV. Over 10 years (block bootstrap of history, call at 70%), $100 of own money ends at a median of about $226 after tax levered versus $216 unlevered, but the 10th percentile is about $38 levered versus $107 unlevered. History is blunt: starting at the 2000 or 2007 peak, a 50% LTV borrower was called and five years later held about $44 to $49 of every $100, while the unlevered investor held about $90 to $108. The trade only clearly wins in the calm, high-return world the 13.6% describes, at modest leverage (30% or less), with interest paid from income, and with a horizon long enough to survive a 2000 or 2008.
- Status: plausible (model on T0 inputs). Confidence: 75 in the direction (small median gain, much fatter left tail), 50 in the exact percentages. Horizon: H0 to H1.
- Three views. Governance: margin rules (Reg T 50% initial, 25% FINRA maintenance, memory) and lender calls force selling into crashes, which is why leveraged households amplify drawdowns. Business: lenders profit either way (interest plus forced-sale fees), and portfolio lines float, so a hiking Fed raises the borrow cost mid-trade. Ordinary person: borrowing to invest roughly doubles your downside while adding only a little to the typical outcome, so if you do it at all, keep the loan small, pay the interest from income and never borrow against money you will need within ten years.

---

## Key findings

1. **Completions are falling fastest of all housing series.** 2026 year to date 969,600 vs 1,108,700 (-12.5%), single-family -10.8%, five-plus units -16.3%. September annual rate 1.192M, -14.0% on a year (Census, 2026-10-20, T0).
2. **Starts and permits flatline below the 2024 to 2025 pace.** Starts 1.221M in September (-7.4% on a year), year to date -1.1%. Permits 1.400M (-3.0%), single-family permits 845k (-4.8%). Under construction 1.280M (single-family 587k, five-plus 677k), -3.3% on a year (T0).
3. **Annual series for context.** Completions 1.627M (2024), 1.489M (2025). Starts 1.367M (2024), 1.356M (2025). Permits 1.478M (2024), 1.432M (2025). Single-family starts 2025 down 6.9% (NAHB).
4. **Two markets, two inventories.** New homes: 684k sales rate, 483k for sale, 8.5 months of supply, median $393,700 (August 2026). Existing homes: 3.99M sales rate, 1.60M inventory, 4.8 months, median $417,500, first-time buyers 31%, all-cash 27% (NAR September 2026, released 2026-10-13). Builders are overstocked while owners are locked in.
5. **Lock-in is the existing-home supply brake.** 30-year fixed 7.32% on 2026-10-22, 7.40% on 2026-10-15, 6.19% a year earlier (Freddie Mac PMMS, T3). About 49.9% of mortgages are at 4% or less (Q1 2026, Realtor.com on FHFA NMDB, T4), down from above 65% in Q1 2022. FHFA WP 24-03 (revised August 2024) finds lock-in prevented 1.72M sales from 2022Q2 to 2024Q2 and raised prices 7.0% through lower supply (T4, agency staff).
6. **Costs and labor are rising again.** ABC: input prices rose more in January to April 2026 than in the prior three years. NAHB: about 300,000 worker shortage, enforcement keeping legal workers off sites (2026-09). AGC and NCCER (2026-09-03): enforcement affects labor at just under a third of firms, and data centers compete for crews. An NBER paper (May 2026) finds construction jobs fell in regions with 2025 ICE arrest surges, including for US-born men (T4).
7. **Factory building is still 3%.** Non-site-built single-family homes were 3% of 2025 completions (14,000 modular, 16,000 panelized or pre-cut, modular RSE 17%), the same share as 2023 and 2024 (NAHB from Census SOC, 2026-10). The chassis-free HUD code (R3 R3D-11) has not yet changed the numbers.
8. **Shortage estimates cluster at 3.7M to 4.7M.** Freddie Mac 3.7M (2024), Up for Growth 3.78M (2025 report, 2023 data, down from 3.85M), Realtor.com just over 4M (early 2026), Zillow 4.7M (February 2026). Low: NAHB 1.2M (2024 data), John Burns about 1M (homes for current movers). High: CEA 10M single-family (2026 Economic Report, starts per million people 6,000 in 1983 to 2007 vs about 3,000 since 2008), Glaeser and Gyourko 15M units (stock growth 2000 to 2020 vs 1980 to 2000). NAR's figure was not found in a primary source this round.
9. **Elasticity has fallen and varies by place.** Median metro supply elasticity fell from 2.63 (1996 to 2006) to 1.75 (2012 to 2017), most where regulation tightened (Aastveit, Albuquerque and Anundsen, T4). Tract-level unit elasticity averages 0.35, with 0.14 to 0.44 between the 25th and 75th percentile tracts (Baum-Snow and Han, T4). Glaeser and Gyourko find Sunbelt construction rates have converged down and fell most in low-density, high-price tracts: "the suburban frontier appears to be closing."
10. **Zoning: broad works, narrow does not, and local delay is the new tool.** Auckland's 2016 upzoning of about three quarters of residential land roughly doubled permits per person within five years (about 21,800 to 26,900 extra homes, 4% to 5% of stock, JUE 2023, disputed by critics). Austin added 120,000 units (+30%) from 2015 to 2024 and real rents fell 19% from the 2021 to the 2025 average (Pew, 2026-03-18), but metro permits are down to about 15,000 through August 2026 from 17,500. Minneapolis (47 triplex homes in five years), SB 9 (rarely used), SB 79 (local delays toward 2030) and Montana (upheld 2026-03-17, compliance from May 2026, no permit data yet) are carried from R3 R3D.
11. **The human-made premium shows up as an AI discount.** CGTrader: AI 17% of uploads, 2.6% of sales, about 1.1% of revenue (Fortune, 2026-08-20, T4 on company data). Revenue share below sales share implies AI items sold at roughly 40% of the average item price (model on those two ratios).
12. **Disclosure hurts AI in the field.** Labeling AI-made ads as AI cut clicks by up to 31.5% in a Google Ads test (NYU Stern and Emory, late 2025, T4). A randomized test with about 152,634 users on an auto e-commerce platform studied AI-labeled review summaries ("When AI Disclosure Backfires", FTC-hosted paper, effect size not read).
13. **AI art sells with a human name attached.** Christie's Augmented Intelligence (closed 2025-03-05) made $728,784 against an estimate of at least $600,000, top lot Refik Anadol $277,200, Holly Herndon and Mat Dryhurst $94,500 (T0 auction result via press). Ai-Da's Sotheby's sale of about $1.08M (November 2024) is memory only.
14. **Benefit protection in law is a patchwork.** 42 USC 407 (Social Security) is broad. 31 CFR 212 protects a two-month lookback of benefits only from SSA, VA, OPM and RRB. Advance CTC was offset-protected but garnishable by state and private creditors. The second stimulus was protected from private creditors. The Alaska PFD is 20% exempt.
15. **Programmable benefits already exist on card rails.** SNAP restricts what and where you buy, criminalizes transfer, and 22 states got soda or candy restriction waivers by 2026-03-04 (effective dates from 2026 to 2028). A DC court vacated one approval on 2026-06-22 (Aragon v. Rollins).
16. **The stablecoin route builds in control.** GENIUS (Pub. L. 119-27, July 2025) requires issuers to have the technical ability to seize, freeze or burn coins on lawful orders and to block impermissible transactions (law-firm and Senate Banking summaries, T1 via T4). The CBDC route is closed by EO 14178 and the statutory ban to 2030-12-31 (R1 L2-08).
17. **No AI dividend proposal addresses pledging.** Sanders' American AI Sovereign Wealth Fund Act (stock, about $1,000 a person, June 2026), Bores' "AI Dividend" (campaign plan, token tax plus equity, payments triggered by labor indicators, April 2026), H.R. 10044 (jobs, not checks). California excludes pilot guaranteed income from state and local benefit tests (WIC 18997), AB 1357 stalled in committee in August 2025, and five states ban local guaranteed income (R3 R3B).
18. **The owner's 6.19% is last year's mortgage rate.** Freddie Mac's year-ago 30-year rate on the 2026-10-22 survey is 6.19%. The same borrowing now costs 7.32%, so the spread on paper narrowed by 1.13 points before any risk adjustment.
19. **The 13.6% is a good decade, not the long run.** S&P 500 total return: 1928 to 2025 arithmetic 11.85%, compound 10.02%, standard deviation 19.4%. Ten-year windows: median compound 11.0%, 37% of windows at or above 13.6%. The ten years to 2025 compounded 14.68%, to 2022 the arithmetic average was 13.59% (Damodaran, T0).
20. **Borrowing costs beat stocks more often than people think.** Share of rolling windows whose compound return fell below the borrow rate: 19.1% of 10-year windows at 6.19% (29.2% at 7.32%), 6.3% of 20-year windows at 6.19% (15.2% at 7.32%). Every 10-year window starting 1998 to 2002 lost to 6.19% (model on T0).
21. **Margin calls are the rule, not the tail, at 50% LTV.** Probability of at least one call: 37% to 52% in historical bootstrap over 10 to 20 years, 34% to 48% for 13.6% and 20% volatility, 50% to 65% at 25% volatility. Daily checks add about 3 to 5 points to monthly figures (spread_checks.py).
22. **Leverage barely lifts the median and wrecks the tail.** Historical rolling 20-year starts at 50% LTV and a 65% call: post-tax median $598 levered vs $613 unlevered per $100, 10th percentile $193 vs $296. At 30% LTV: median $733 vs $613, 10th percentile $246 vs $296, call odds 10.6%.

## Say/Do gaps

| Actor | Says | Does | Read |
|---|---|---|---|
| White House CEA | 10M home shortage, regulation adds over $100,000 per home (2026 ERP) | Completions fell 12.5% in 2026 to date while tariffs and enforcement raised costs and cut crews | The diagnosis is supply, the policy mix is tightening supply |
| Builders (NAHB) | Shortage, need more homes | Single-family starts and permits down on a year, 8.5 months of new supply | Builders produce to price, not to shortage estimates |
| Fed under Warsh | Fighting inflation | Hiking keeps mortgage rates above 7% and lock-in in place | Rate policy suppresses both demand and existing supply, rent stays sticky |
| Austin | Pro-housing success story | Permits down to about 15,000 through August 2026 from 17,500 | Supply waves are cyclical even after reform |
| Consumers | 68% prefer human-made at the same price | Same WTP for AI-labeled stories, buy cheaper AI in many categories | Stated premium exceeds paid premium |
| Etsy | Marketplace for the handmade | Take rate 24.2%, sales down 5.3% (2025) | The certifier taxes the premium |
| Congress (2021) | Help families with cash | Left advance CTC open to private garnishment, shielded the second stimulus | No fixed rule, each bill differs |
| Crypto-friendly administration | Freedom from surveillance money, no CBDC | GENIUS requires issuers to freeze, seize and burn on lawful orders | Control moved from the Fed to private issuers, not removed |
| The newsletter (Architect play) | Borrow at 6.19%, earn 13.6% | 6.19% is no longer available (7.32%), 13.6% is a top-third decade | The spread is quoted at its best on both legs |

## Anomalies

1. **Completions fall faster than starts while the shortage is "10 million."** Default: a shortage pulls construction up. Observed: completions -14.0% on a year, starts -7.4%. Explanation: the 2021 to 2023 multifamily wave is finishing and was not replaced at 7% rates.
2. **New-home months of supply (8.5) are nearly double existing (4.8).** Default: one housing market. Observed: builders hold inventory while owners stay put because of 4% loans. New homes are the only flexible supply, and builders are cutting it.
3. **AI 3D models sell at about 40% of the average price and 1/6 the frequency of their upload share.** Default: identical-function digital assets price on function. Observed: a large discount, which is the first revealed-preference sign of a human premium or of an AI quality gap.
4. **A crypto-friendly government chose the more controllable rail.** Default: crypto freedom means fewer controls. Observed: GENIUS hard-codes freeze and burn powers at the issuer, while the CBDC is banned.
5. **The newest federal cash precedent (advance CTC) was less protected than the 1935 one (Social Security).** Default: newer laws copy the strongest protection. Observed: Congress protected against government offsets but left private garnishment to the states.
6. **The owner's spread is quoted with last year's borrow rate and a strong decade's return.** Both legs are at their most favorable values, which is typical of how leverage is sold.

## Mechanism chains

**A. Rates lock the stock, costs cap the flow.** Fed hikes, then mortgage rates stay above 7%, then half of owners with 4% loans do not sell (4.8 months of existing supply), then buyers turn to new homes, then builders already at 8.5 months of supply cut starts, then completions fall 12% to 14%, then the shortage holds near 4M, then rents stay sticky even as the economy slows. Test: Census completions (2026-11-18), FHFA NMDB sub-4% share, shelter CPI.

**B. Stock-flow arithmetic caps any UHI's real value in housing.** New construction is about 1% of the stock a year, then even an elasticity of 1.75 adds under 1% to the stock within 3 years for a 10% demand jump, then about 90% of the extra demand is rationed by price, then a printed UHI is mostly a rent and land transfer in H0. Ties R5-8 to R3 R3B-13. Test: shelter CPI against core goods CPI in any large-transfer period.

**C. Proof decides who keeps the human premium.** Buyers value the human label, then the label must be verified, then platforms or certifiers capture part of the premium (Etsy 24.2%), then AI disclosure rules (and fines for false "human" labels) set the premium's size. Test: Etsy Q3 2026 take rate, CGTrader AI revenue share, any marketplace disclosing prices by provenance.

**D. A UHI inherits the rules of the statute it is written into.** If paid under the Social Security Act, then 42 USC 407 applies, then it is non-assignable and shielded, then lenders underwrite it as income only. If written as a tax credit (like 2021 CTC), then federal offsets may be blocked but private garnishment depends on state law, then exposure varies by state. If paid in stablecoins, then GENIUS freeze and seize powers apply, then programmability for enforcement is built in, spending restrictions need a separate rule. Test: the first AI dividend bill text.

**E. Leverage turns volatility into permanent loss.** Borrow at a fixed rate, then interest compounds on the loan, then any 23% fall in year one (or a flat market for 4.4 years) triggers a 65% LTV call, then the lender sells at the low, then the position can no longer recover fully, then the median barely beats unlevered while the 10th percentile is a third of it. Test: realized equity volatility above 25%, an S&P 500 drawdown above 20%, portfolio-line rates above 8%.

## Tripwires (with dates)

| Date | Event | What would change the answer |
|---|---|---|
| 2026-10-27 | Census new-home sales for September | Months of supply above 9 strengthens the destocking read, below 7.5 means builders may restart |
| Weekly (Thursdays) | Freddie Mac PMMS | 30-year below 6.5% for a month starts to loosen lock-in, above 7.5% deepens it |
| 2026-10-28 | FOMC | A hike keeps mortgage rates above 7% into 2027 |
| Early November 2026 | Etsy Q3 2026 results, NAR Profile of Home Buyers and Sellers | Take rate above 24.2% with falling sales confirms platform capture. First-time buyer age above 40 |
| 2026-11-18 | Census new residential construction for October | Completions below 1.2M annual rate for a second month confirms the 2026 contraction, permits above 1.5M would be the first turn |
| Late November 2026 | NAR October existing-home sales | Inventory above 1.7M with prices flat would mean lock-in is easing |
| By 2027-01-18 | GENIUS effective date and Treasury final rules | Final freeze and seize requirements, any benefit program choosing stablecoin delivery |
| 2027-02-01 to 2028-02-01 | SNAP restriction waivers take effect (Wyoming, Kansas, Nevada), Aragon v. Rollins appeal | More waivers upheld means spend-restricted benefits are the US template for programmability |
| Spring 2027 | Alaska legislature sets the 2027 PFD | Any change to the 20% exemption |
| 2027 | First Montana permit data under SB 382, LA's SB 79 delay ordinance | Whether broad state upzoning moves permits |
| Any date | First AI dividend bill text with an assignment, garnishment or wallet clause | Moves the R5-12 desk odds directly |
| Any date | S&P 500 drawdown above 23% from a peak | A 50% LTV, 65%-call borrower gets called |
| 2030-12-31 | Statutory CBDC ban sunset | Renewal or lapse reopens the public programmable-money route |

## Open questions

1. The published Mandel and Imas auction sizes and the registered Heinrich et al. and Newcastle auction studies, still the first real-money estimates of a human premium for identical goods.
2. NAR's own shortage figure (often quoted as about 4M to 5.5M, memory) was not found in a primary source.
3. Manufactured-home shipments for 2025 and 2026 (MHI) were not retrieved, so the factory share above covers modular and panelized only.
4. Whether any state shields guaranteed-income pilot payments from private garnishment. None found.
5. The exact GENIUS section text on freeze, seize and burn (congress.gov returns 403), and the status of Treasury's proposed rule (comment deadline reported as 2026-10-19 by a low-quality source).
6. Housing stock (about 147M units) and 2020 to 2023 completions used in the elasticity cross-check are memory and should be re-fetched.
7. Portfolio-line and margin-loan rates for 2026 were not sourced, so the model uses the owner's 6.19% and a 7.40% stress case.

---

## Data tables

### T1. US housing supply, September 2026 (Census and HUD, released 2026-10-20, NAR 2026-10-13, Freddie Mac 2026-10-22)

| Series | Latest | Change on a year | 2025 annual | 2024 annual |
|---|---|---|---|---|
| Permits (annual rate) | 1,400,000 | -3.0% | 1,431,600 | 1,478,000 |
| Single-family permits | 845,000 | -4.8% | 911,900 | 981,900 |
| Starts (annual rate) | 1,221,000 | -7.4% | 1,355,800 | 1,367,100 |
| Single-family starts | 859,000 | n/a | 939,700 | 1,012,900 |
| Completions (annual rate) | 1,192,000 | -14.0% | 1,488,500 | 1,626,900 |
| Completions 2026 year to date | 969,600 | -12.5% | | |
| Under construction (end of month) | 1,280,000 | -3.3% | | |
| New homes for sale (August) | 483,000 | -2.0% | | |
| New-home months of supply (August) | 8.5 | flat | | |
| Existing-home sales (annual rate) | 3,990,000 | -2.2% | | |
| Existing inventory and months | 1.60M, 4.8 months | +4.6% | | |
| 30-year fixed mortgage (2026-10-22) | 7.32% | +1.13 points (6.19% a year ago) | | |
| Mortgages at 4% or less (Q1 2026) | 49.9% | down from above 65% (Q1 2022) | | |
| Factory-built share of SF completions (2025) | 3% (30,000) | flat since 2023 | | |

Sources: https://www.census.gov/construction/nrc/pdf/newresconst.pdf , https://www.census.gov/construction/nrs/pdf/newressales.pdf , https://www.nar.realtor/newsroom/existing-home-sales-increased-1-5-in-september-according-to-nar-report , https://www.freddiemac.com/pmms , https://eyeonhousing.org/2026/10/market-share-for-modular-and-other-non-site-built-housing-in-2025/

### T2. Housing shortage estimates

| Source | Estimate | Data year or date | Method in one line |
|---|---|---|---|
| NAHB | 1.2M | 2024 data | Vacancy-based gap |
| John Burns | about 1M | 2026 | Homes for people trying to move now |
| Freddie Mac | 3.7M | 2024 | Households that should exist plus vacancy target |
| Up for Growth | 3.78M | 2025 report, 2023 data | Missing households plus vacancy, peaked 3.89M in 2021 |
| Realtor.com | just over 4M | early 2026 | Household formation vs completions since 2012 |
| Zillow | 4.7M | February 2026 | Doubled-up families |
| Homes.com (Brad Case) | 4M to 5M | 2026 | All housing types |
| White House CEA | 10M (single-family) | 2026 Economic Report | Starts per million people vs 1983 to 2007 |
| Glaeser and Gyourko | 15M units | NBER w33876, May 2025 | Stock growth 2000 to 2020 vs 1980 to 2000 |

Desk range for use in models: 3.7M to 4.7M (central 4.0M), about 2.5% to 3.2% of the stock.

### T3. Supply elasticity, desk estimate with range (model)

| Measure | Low | Central | High | Basis |
|---|---|---|---|---|
| New construction elasticity to price, national | 0.5 | 1.0 | 1.75 | Aastveit et al. median metro 1.75 in 2012 to 2017 and falling. 2020 to 2024: completions up about 26% vs real prices up about 25% to 30% (memory) |
| Coastal metros | 0.3 | 0.5 | 0.8 | Saiz 2010 lowest metros, Baum-Snow and Han tracts 0.14 to 0.44 |
| Share of a 10% demand shock met by new homes, 3 years | 0.04 | 0.05 to 0.08 | 0.12 | stock_flow.py, construction 1% of stock a year, demand elasticity 0.4 to 0.8 |
| Same, 10 years | 0.11 | 0.14 to 0.23 | 0.30 | same |
| Same, 20 years | 0.20 | 0.25 to 0.37 | 0.47 | same. Above 0.4 needs elasticity of 3 (broad reform) |

Model logic: extra stock over T years = c × e × dp × T, and demand d = 10% is met by extra stock plus price rationing (eta × dp). So dp = d / (eta + c × e × T) and the share met by supply is c × e × dp × T / d. Inputs: c = 1% of stock a year, e = 0.5 to 3, eta = 0.4 to 0.8.

### T4. Human-made premium evidence

| Evidence | Type | Result | Tier |
|---|---|---|---|
| Bellaiche et al. 2023 | Lab, same images | Human label scores higher on liking, beauty, worth | T4 peer-reviewed (R3) |
| Fuchs, Schreier, van Osselaer 2015 | Lab | Handmade lifts intent for gifts to loved ones | T4 peer-reviewed (R3) |
| Mandel and Imas 2026 | Four preregistered auctions | Bids fall as stated AI involvement rises, sizes not verified | T4 working paper via summary |
| IZA DP 17646 | Lab | AI-labeled story rated lower, same WTP | T4 |
| SegmentOS June 2026 | Survey, 1,017 adults | 68% pick human-made at the same price | T5 vendor |
| SegmentOS July 2026 | Experiment, 265 adults | "AI-powered" label: median WTP $13 to $10 | T5 vendor |
| Pew 2025 | Survey | Half like a painting less once told it is AI | T4 |
| NYU Stern and Emory 2025 | Field ad test | AI disclosure cut clicks up to 31.5% | T4 |
| CGTrader June 2025 to May 2026 | Marketplace transactions | AI 17% of uploads, 2.6% of sales, 1.1% of revenue | T4 on company data |
| Christie's Augmented Intelligence 2025 | Auction | $728,784 total, top lot $277,200 (named human artist) | T0 via press |
| Etsy 2019 to 2025 | 10-K | Take rate 16.5% to 24.2%, 2025 sales -5.3% | T0 (R3) |

### T5. Benefit law: assignment, garnishment and programmability

| Program | Assignable? | Private garnishment? | Government offset? | Bank-account shield | Programmable? | Source |
|---|---|---|---|---|---|---|
| Social Security | No (42 USC 407) | No | Child support and alimony (42 USC 659), federal debts only where statute says | Yes, two-month lookback (31 CFR 212) | No | law.cornell.edu |
| VA, OPM, RRB benefits | No (VA 38 USC 5301, memory) | Generally no | Limited | Yes (31 CFR 212) | No | 31 CFR 212.3 |
| SNAP | Transfer is a crime at $100 or more (7 USC 2024) | n/a (EBT) | n/a | n/a | Yes, eligible foods at authorized retailers, plus 22 state soda or candy waivers | law.cornell.edu, USDA |
| Advance CTC 2021 | Not addressed | Yes, subject to state law (IRS FAQ) | Protected from federal offsets | No | No | NAFCU, NCLC |
| EIP 2 (December 2020 law) | Not addressed | Protected | Protected | n/a | No | Consumer Finance Monitor |
| Alaska PFD | Historical pledging existed (R2 R2B-09) | Yes, 80% reachable | Child support, restitution, state debts | No | No | AS 43.23.140 |
| Trump Accounts | Locked to 18, IRA-like | n/a | n/a | n/a | No | R3 R3B |
| California guaranteed income pilots | Not addressed | No shield found | n/a | No | No | WIC 18997 (benefit-test exclusion only) |
| GENIUS stablecoin balance | Transferable | Issuer must obey lawful orders | n/a | No | Freeze, seize, burn, block by issuer | Pub. L. 119-27 summaries |
| Fed retail CBDC | Barred | | | | | EO 14178, H.R. 6644 ban to 2030-12-31 (R1 L2) |

### T6. Spread trade model: inputs

| Input | Value | Source or reason |
|---|---|---|
| Borrow rate | 6.19% fixed (owner), 7.40% stress | Owner's newsletter, Freddie Mac year-ago rate. 7.40% is the 2026-10-15 PMMS |
| Expected equity return | 13.6% arithmetic (owner), 11.9% (1928 to 2025 arithmetic), 8% (low case) | Damodaran histretSP.xls |
| Volatility | 15%, 20%, 25% | Brief. History 19.4% annual, 15.5% from monthly averages |
| Starting LTV | 50% (2x) and 30% | Brief |
| Margin call | LTV reaches 65% or 70%, lender sells to restore the starting LTV | Brief |
| Interest | Capitalized monthly (trade must fund itself). Variant: paid from income | Owner's "let the asset pay" framing |
| Taxes | 23.8% on final gains (20% plus 3.8% NIIT), dividend drag 1.4% yield × 23.8% a year, no interest deduction | Simplification. Forced sales treated as tax-free, which flatters the levered case |
| Paths | 20,000 lognormal monthly paths per case, 12-month block bootstrap of 1,146 months (1928-01 to 2023-06), every rolling start month (1,027 ten-year and 907 twenty-year windows) | spread_mc.py |

Code logic (spread_mc.py, simplified, no semicolons):

```
port = 100 / (1 - ltv0)        # own money 100, loan = ltv0 * port
loan = port * ltv0
for each month t:
    port = port * (1 + r[t] - dividend_tax_drag / 12)
    loan = loan * (1 + b) ** (1 / 12)        # capitalized interest
    if port <= loan: equity = 0 and the path ends (wipeout)
    if loan / port >= call:
        x = (loan - ltv0 * port) / (1 - ltv0)    # forced sale back to the starting LTV
        port = port - x
        loan = loan - x
equity_after_tax = port - loan - 0.238 * max(port - basis, 0)
compare with unlevered: 100 * product(1 + r - drag), taxed the same way
lognormal case: monthly log return ~ Normal((ln(1 + m) - vol^2 / 2) / 12, vol / sqrt(12))
```

### T7. Volatility drag (model)

| Arithmetic return | Volatility | Unlevered compound | 2x levered arithmetic (2m minus 6.19%) | 2x levered compound |
|---|---|---|---|---|
| 13.6% | 15% | 12.3% | 21.0% | 15.7% |
| 13.6% | 20% | 11.4% | 21.0% | 11.7% |
| 13.6% | 25% | 10.1% | 21.0% | 6.8% |
| 10.0% | 15% | 8.8% | 13.8% | 8.8% |
| 10.0% | 20% | 7.8% | 13.8% | 5.1% |
| 10.0% | 25% | 6.6% | 13.8% | 0.4% |

Compound ≈ exp(ln(1 + arithmetic) - vol²/2) - 1. Leverage doubles volatility, so it quadruples the drag.

### T8. Monte Carlo and history results, per $100 of own money (model, interest capitalized at 6.19% unless noted)

| Case | Years | LTV / call | P(at least one call) | Levered median after tax | Levered 10th pct after tax | Unlevered median after tax | Unlevered 10th pct | P(levered beats unlevered) |
|---|---|---|---|---|---|---|---|---|
| 13.6%, vol 15% | 10 | 50% / 65% | 22.2% | 328 | 112 | 260 | 151 | 73% |
| 13.6%, vol 20% | 10 | 50% / 70% | 33.7% | 273 | 57 | 240 | 120 | 59% |
| 13.6%, vol 25% | 10 | 50% / 70% | 50.1% | 204 | 27 | 218 | 94 | 45% |
| 13.6%, vol 20% | 10 | 30% / 65% | 7.1% | 264 | 88 | 240 | 120 | 69% |
| 13.6%, vol 20%, 7.40% loan | 10 | 50% / 70% | 39.1% | 246 | 48 | 240 | 120 | 51% |
| 11.9%, vol 20% | 10 | 50% / 70% | 41.3% | 206 | 41 | 208 | 107 | 49% |
| 8%, vol 20% | 10 | 50% / 70% | 59.6% | 104 | 18 | 154 | 77 | 30% |
| Bootstrap 1928 to 2023 | 10 | 50% / 70% | 36.8% | 226 | 38 | 216 | 107 | 54% |
| Bootstrap 1928 to 2023 | 10 | 30% / 65% | 11.8% | 229 | 62 | 216 | 107 | 62% |
| History, every start month | 10 | 50% / 65% | 38.7% | 257 | 70 | 226 | 126 | 59% |
| 13.6%, vol 20% | 20 | 50% / 70% | 39.5% | 793 | 90 | 633 | 216 | 60% |
| 13.6%, vol 25% | 20 | 50% / 70% | 58.2% | 469 | 28 | 508 | 143 | 43% |
| Bootstrap 1928 to 2023 | 20 | 50% / 70% | 44.6% | 538 | 47 | 494 | 172 | 52% |
| History, every start month | 20 | 50% / 65% | 45.5% | 598 | 193 | 613 | 296 | 61% |
| History, every start month | 20 | 30% / 65% | 10.6% | 733 | 246 | 613 | 296 | 80% |

Robustness (spread_checks.py): daily margin checks raise call odds by about 3 to 5 points (13.6%, vol 20%, 50%/65%: 41.4% monthly vs 45.2% daily). Paying interest from income instead of capitalizing it cuts call odds to 6.2%, 22.3% and 41.6% at 15%, 20% and 25% volatility (the cash paid in must then be counted as extra investment). Wipeouts were zero in all cases because calls de-lever before equity is gone, which is the point of a call: losses are realized instead.

Call thresholds with flat prices and capitalized 6.19% interest: from 50% LTV, a 65% call needs a 23.1% fall at once, 18.3% after one year, 7.9% after three years, and none after 4.4 years. A 70% call needs 28.6%, 24.1% and 14.5%. From 30% LTV a 65% call needs 53.8%, 51.0% and 44.7%.

### T9. Historical episodes (Shiller monthly averages, which understate closing drawdowns)

| Start (prior peak) | Window | Index trough vs start (monthly average) | Published closing drawdown (memory) | 50% LTV called? | Levered equity at end | Unlevered at end |
|---|---|---|---|---|---|---|
| 1929-09 | 10 years | -81% | -86% | Yes | 4 to 7 | 66 |
| 2000-08 | 5 years | -41% | -49% (2000 to 2002) | Yes | 43 to 44 | 90 |
| 2007-10 | 5 years | -48% | -57% (2007 to 2009) | Yes | 49 | 108 |
| 2020-02 | 2 years | -19% | -34% | No on monthly data, yes on closing data | 173 | 144 |
| 2022-01 | 1.5 years | -19% | -25% | Yes at 65%, no at 70% | 68 to 72 | 91 |

Annual calendar returns (Damodaran): 2000 -9.0%, 2001 -11.9%, 2002 -22.0%, 2008 -36.6%, 2020 +18.0%, 2022 -18.0%. On closing prices the 2020 fall (-34%) would have called a 50% LTV borrower at both 65% and 70% within weeks, then the market recovered without them.

### T10. Pre-registered predictions for this lane (scored in a later round)

| Event | Date | Desk prediction | Resolution rule | Market odds |
|---|---|---|---|---|
| Census October housing completions | 2026-11-18 | 80% that completions are below 1.30M annual rate | First print in the October 2026 NRC release | none |
| Census October housing starts | 2026-11-18 | 70% that starts are below 1.35M annual rate | First print | none |
| Freddie Mac 30-year rate | 2026-12-31 (last PMMS of 2026) | 70% above 7.00% | PMMS 30-year fixed on the last survey of 2026 | none found |
| Etsy Q3 2026 take rate | Etsy Q3 release (early November 2026) | 65% at or above 24% for the quarter | Revenue divided by GMS for Q3 2026 | none |
| Federal AI dividend bill with an assignment or programmability clause introduced | by 2027-06-30 | 15% | Bill text on congress.gov or govinfo | none |

---

## Claims

| id | claim | tier | status | source (URL) | source date | as-of date | falsifier |
|---|---|---|---|---|---|---|---|
| R5D-01 | Housing completions were 1,192,000 at an annual rate in September 2026, 14.0% below September 2025, and 2026 year-to-date completions are 12.5% lower (969,600 vs 1,108,700) | T0 | confirmed | https://www.census.gov/construction/nrc/pdf/newresconst.pdf | 2026-10-20 | 2026-10-23 | Revision that reverses the sign |
| R5D-02 | Starts 1,221,000 (-7.4% on a year), permits 1,400,000 (-3.0%), single-family permits 845,000, units under construction 1,280,000 (-3.3%) in September 2026 | T0 | confirmed | https://www.census.gov/construction/nrc/pdf/newresconst.pdf | 2026-10-20 | 2026-10-23 | Revision |
| R5D-03 | Annual completions were 1,626,900 (2024) and 1,488,500 (2025), starts 1,367,100 and 1,355,800, permits 1,478,000 and 1,431,600 | T0 | confirmed | https://www.census.gov/construction/nrc/pdf/newresconst.pdf | 2026-10-20 | 2026-10-23 | Annual revision |
| R5D-04 | New-home months of supply were 8.5 in August 2026 with 483,000 for sale, 684,000 sales rate and median price $393,700 | T0 | confirmed | https://www.census.gov/construction/nrs/pdf/newressales.pdf | 2026-09-24 | 2026-10-23 | September release revises below 7.5 |
| R5D-05 | Existing-home sales were 3.99M (annual rate) in September 2026 with 1.60M inventory, 4.8 months of supply, median $417,500, first-time buyers 31%, cash 27% | T0 | confirmed | https://www.nar.realtor/newsroom/existing-home-sales-increased-1-5-in-september-according-to-nar-report | 2026-10-13 | 2026-10-23 | NAR revision |
| R5D-06 | The 30-year fixed mortgage rate was 7.32% on 2026-10-22, 7.40% on 2026-10-15 and 6.19% a year earlier | T3 | confirmed | https://www.freddiemac.com/pmms | 2026-10-22 | 2026-10-23 | PMMS correction |
| R5D-07 | About 49.9% of outstanding mortgages carried rates of 4% or less in Q1 2026, down from above 65% in Q1 2022 | T4 (on FHFA NMDB) | plausible | https://www.noradarealestate.com/blog/nearly-half-of-mortgages-still-cost-4-percent-lock-in/ , https://wolfstreet.com/2026/03/27/update-on-the-lock-in-effect-in-the-housing-market-below-3-4-mortgages-fade-very-slowly/ | 2026-03 | 2026-10-23 | FHFA NMDB table shows a different share |
| R5D-08 | FHFA staff estimate mortgage lock-in prevented 1.72M home sales from 2022Q2 to 2024Q2 and raised prices 7.0% through reduced supply (revised WP 24-03) | T4 (agency staff) | plausible | https://www.fhfa.gov/research/papers/wp2403 | 2024-08 | 2026-10-23 | Published version with different estimates |
| R5D-09 | Non-site-built homes were 3% of 2025 single-family completions: 14,000 modular and 16,000 panelized or pre-cut | T0 via T4 | confirmed | https://eyeonhousing.org/2026/10/market-share-for-modular-and-other-non-site-built-housing-in-2025/ | 2026-10 | 2026-10-23 | Census SOC revision |
| R5D-10 | Construction input prices rose more in January to April 2026 than in the prior three years, and NAHB cites a shortage of about 300,000 construction workers with enforcement keeping legal workers off sites | T4 | plausible | https://www.nahb.org/blog/2026/09/immigration-enforcement , https://www.inman.com/tag/supply-chain/ | 2026-09 | 2026-10-23 | BLS JOLTS construction openings fall sharply |
| R5D-11 | Housing shortage estimates: Freddie Mac 3.7M (2024), Up for Growth 3.78M (2023 data), Realtor.com just over 4M, Zillow 4.7M (Feb 2026), NAHB 1.2M, CEA 10M single-family | T4 | confirmed (that these are the estimates) | https://www.housingwire.com/articles/white-house-housing-deficit-deregulation/ , https://marylandmatters.org/2025/12/25/how-many-is-96000-key-housing-number-cited-by-moore-is-hard-to-explain/ , https://thedailyrecord.com/2026/02/05/how-many-homes-us-housing-shortage/ | 2026-04-14 | 2026-10-23 | Primary reports give different figures |
| R5D-12 | Had the stock grown 2000 to 2020 as fast as 1980 to 2000, the US would have about 15M more housing units, and Sunbelt construction rates have converged down | T4 (NBER, BPEA) | plausible | https://nber.org/papers/w33876 | 2025-05 | 2026-10-23 | Published version revises |
| R5D-13 | Median metro housing supply elasticity fell from 2.63 (1996 to 2006) to 1.75 (2012 to 2017) | T4 | plausible | https://bankunderground.co.uk/2020/02/25/the-declining-elasticity-of-us-housing-supply/ | 2020-02-25 | 2026-10-23 | Later estimates find a rise |
| R5D-14 | Tract-level housing unit supply elasticity averages about 0.35 (0.14 to 0.44 between the 25th and 75th percentile tracts) | T4 | plausible | https://lewis.ucla.edu/?p=22125 | 2024 | 2026-10-23 | Published paper differs |
| R5D-15 | Desk estimate: national new-construction elasticity about 1.0 (0.5 to 1.75), so new homes meet 5% to 10% of a demand shock in 3 years, 15% to 25% in 10 years, 25% to 40% in 20 years | model | plausible | this file T3, stock_flow.py | 2026-10-23 | 2026-10-23 | Completions rise above 1.8M with flat real prices |
| R5D-16 | Austin added 120,000 units (+30%) 2015 to 2024 and real rents fell 19% from the 2021 to the 2025 average, but metro permits fell to about 15,000 through August 2026 from 17,500 | T4 | plausible | https://www.pew.org/research-and-analysis/articles/2026/03/18/austins-surge-of-new-housing-construction-drove-down-rents , https://www.credaily.com/?p=223343 | 2026-03-18 | 2026-10-23 | City data show different counts |
| R5D-17 | Auckland's 2016 upzoning roughly doubled permits per person within five years (about 21,800 to 26,900 extra homes, 4% to 5% of stock), a result critics dispute | T4 (peer-reviewed plus critique) | plausible | https://www.royalsociety.org.nz/research/will-upzoning-deliver-housing-affordability-for-everyone-evidence-from-auckland , https://www.fresheconomicthinking.com/p/the-auckland-myth-there-is-no-evidence | 2023 | 2026-10-23 | Replication finds no effect |
| R5D-18 | At CGTrader, AI-made models were about one in six uploads but 2.6% of sales and $1 of every $90 of revenue (June 2025 to May 2026) | T4 (company data via press) | plausible | https://fortune.com/2026/08/20/ai-product-fatigue-online-marketplace-ecommerce/ | 2026-08-20 | 2026-10-23 | Company report shows a larger AI revenue share |
| R5D-19 | Christie's Augmented Intelligence sale (closed 2025-03-05) made $728,784, top lot Refik Anadol $277,200 | T0 via press | confirmed | https://loeildelaphotographie.com/en/christies-augmented-intelligence-totals-728784 | 2025-03 | 2026-10-23 | Christie's results page differs |
| R5D-20 | 68% of US adults say they would choose human-made over identical AI-made at the same price, and an "AI-powered" label cut median stated WTP from $13 to $10 in a 265-person test | T5 (vendor) | speculative | https://www.pr.com/press-release/971818 , https://www.pr.com/press-release/973668 | 2026-06 | 2026-10-23 | Independent survey finds no preference |
| R5D-21 | Disclosing ads as AI-made cut clicks by up to 31.5% in a Google Ads field test | T4 | plausible | https://www.affiversemedia.com/?p=104511 | 2025 | 2026-10-23 | Published paper reports no effect |
| R5D-22 | 31 CFR 212 shields a two-month lookback of directly deposited benefits only for SSA, VA, OPM and RRB payments, so a new AI dividend would not be covered without a rule change | T1 | confirmed | https://www.law.cornell.edu/cfr/text/31/212.3 | current CFR | 2026-10-23 | Treasury amends the agency list |
| R5D-23 | Advance child tax credit payments (2021) were protected from federal offsets but, per the IRS, not from state, local or private garnishment, while the December 2020 relief law shielded second-round stimulus payments from private creditors | T1 via T4 | confirmed | https://www.nafcu.org/node/35253 , https://www.consumerfinancemonitor.com/2020/12/28/new-covid-19-economic-relief-legislation-provides-exemption-for-economic-impact-payments-from-garnishment-by-private-creditors-and-debt-collectors/ | 2021 | 2026-10-23 | Statute text says otherwise |
| R5D-24 | Using or transferring SNAP benefits contrary to the Act is a felony at $100 or more (up to 20 years at $5,000 or more) | T1 | confirmed | https://www.law.cornell.edu/uscode/text/7/2024 | current code | 2026-10-23 | Amendment |
| R5D-25 | USDA had approved SNAP food restriction waivers for 22 states by 2026-03-04, and a DC federal court vacated one approval on 2026-06-22 (Aragon v. Rollins) | T1/T4 | confirmed | https://civileats.com/2026/03/04/usda-approves-more-snap-waivers-limiting-soda-and-candy/ , https://www.fna.usda.gov/snap/waivers/foodrestriction | 2026-06-22 | 2026-10-23 | Appeal reinstates or more vacaturs follow |
| R5D-26 | GENIUS requires stablecoin issuers to have the technical ability to seize, freeze or burn coins on lawful orders and to block impermissible transactions | T1 via T4 | confirmed | https://www.banking.senate.gov/newsroom/majority/fact-sheet-the-genius-act-bolsters-national-security , https://insightplus.bakermckenzie.com/bm/banking-finance_1/united-states-the-genius-act-a-new-federal-framework-for-stablecoin-issuers-custodians-and-banks | 2025-07 | 2026-10-23 | Enacted text lacks the clause |
| R5D-27 | No 2025 to 2026 AI dividend bill or plan found (Sanders fund, Bores plan, H.R. 10044) addresses assignment, garnishment or programmable delivery | T4 | plausible (absence) | https://axios.com/2026/04/20/alex-bores-ai-dividend-plan-wealth , https://broadbandbreakfast.com/sanders-proposes-the-american-ai-sovereign-wealth-fund-act.md | 2026-06 | 2026-10-23 | Bill text with such a clause |
| R5D-28 | California excludes guaranteed income pilot payments from state and local benefit eligibility (WIC 18997), and AB 1357 to widen this stalled in committee in August 2025 | T1 | confirmed | https://california.public.law/codes/welfare_and_institutions_code_section_18997 , https://calmatters.digitaldemocracy.org/bills/ca_202520260ab1357 | 2025-08 | 2026-10-23 | AB 1357 enacted |
| R5D-29 | Desk odds for a federal cash AI dividend enacted by 2035: anti-assignment 75, private-garnishment shield 55, offsets kept 85, spending restrictions 10, explicitly pledgeable 5 | inference | speculative | this file R5-12 | 2026-10-23 | 2026-10-23 | First enacted text |
| R5D-30 | The owner's 6.19% equals Freddie Mac's 30-year rate a year before 2026-10-22, and the same loan now costs 7.32% | T3 | confirmed | https://www.freddiemac.com/pmms | 2026-10-22 | 2026-10-23 | PMMS history differs |
| R5D-31 | S&P 500 total return 1928 to 2025: arithmetic 11.85%, compound 10.02%, standard deviation 19.4%. The ten years to 2022 averaged 13.59% arithmetic and the ten years to 2025 compounded 14.68% | T0 | confirmed | https://pages.stern.nyu.edu/~adamodar/pc/datasets/histretSP.xls | 2026-08 | 2026-10-23 | Data revision |
| R5D-32 | 19.1% of rolling 10-year S&P 500 windows (1928 to 2025) compounded below 6.19%, 29.2% below 7.32%, and every 10-year window starting 1998 to 2002 fell below 6.19% | model on T0 | confirmed (arithmetic) | hurdle.py on histretSP.xls | 2026-10-23 | 2026-10-23 | Data revision |
| R5D-33 | At 20% volatility, 2x leverage funded at 6.19% compounds at about 11.7% vs 11.4% unlevered for a 13.6% arithmetic return, and at 25% volatility 6.8% vs 10.1% | model | confirmed (arithmetic) | this file T7 | 2026-10-23 | 2026-10-23 | n/a (identity under lognormal returns) |
| R5D-34 | At 50% LTV with capitalized 6.19% interest, the chance of at least one margin call is about 35% to 52% over 10 to 20 years on historical paths, and 8% to 18% at 30% LTV | model on T0 | plausible | spread_mc.py, T8 | 2026-10-23 | 2026-10-23 | A model with daily data and real lender rules finds under 20% at 50% LTV |
| R5D-35 | Over 10 years (historical bootstrap, 50% LTV, call at 70%) the levered after-tax median is about $226 per $100 vs $216 unlevered, and the 10th percentile about $38 vs $107 | model on T0 | plausible | spread_mc.py, T8 | 2026-10-23 | 2026-10-23 | Different tax or call rules reverse the ranking |
| R5D-36 | A 50% LTV borrower starting at the 2000 or 2007 peak was called and held about $44 to $49 per $100 five years later, vs about $90 to $108 unlevered | model on T0 | plausible | spread_mc.py episodes on Shiller ie_data.xls | 2026-10-23 | 2026-10-23 | Closing-price path gives a different outcome |

---

## Proposed changes

**Scenario odds: no change.** H0 62/15/1/22, H1 44/23/3/30, H2 31/28/10/31, with S2 shown as S2a 13/17/18 plus S2b 2/6/10. Housing supply falling 12% to 14% under 7%+ mortgage rates keeps shelter inflation sticky, which supports the existing H0 S4 path (oil and term-premium inflation met by a hiking Fed), but it does not add a new disorderly path by itself. Pledgeability and programmability findings fit S1 (private dollar rails with built-in issuer controls), already priced.

**Changes to earlier rulings.**
1. **R3 R3B shelter input s (and R3X-05).** Replace the shelter supply response of 0.10 / 0.25 / 0.40 (H0 / H1 / H2) with 0.05 to 0.10 / 0.15 to 0.25 / 0.25 to 0.40, and mark 0.40 or more as "needs broad by-right reform" (T3, R5D-15). The sigma cap at Musk scale moves from 0.57 to 0.64 to about 0.55 to 0.63 in H0 (cap = 1 - shelter weight × (1 - s), weights 39.5% to 47.5%). Direction: a printed UHI's H0 inflation range edges up, the R3 headline (5.8% to 9.8%) stays inside the error band. Close R3 open question 6 (2020s elasticity) as answered.
2. **R3-5 (housing via supply, plausible 65).** Keep 65. Add: "In 2026 supply is shrinking (completions -12.5% year to date, under construction 1.28M), factory-built is still 3%, and the shortage is 3.7M to 4.7M on mainstream estimates." Horizon for coastal reopening stays H1, and add that national catch-up at current completions needs more than 20 years.
3. **R3-6 and R2 M15 (human-made premium).** Raise confidence from 55 to 60. Replace "no transaction-based cash premium is measured" with "the first marketplace transaction data (CGTrader, 2025 to 2026) show AI-made items earning about 1.1% of revenue on 17% of uploads, a large AI discount that is partly a quality gap, while no peer-reviewed estimate of the premium's size exists."
4. **R2 Q4 and M7, R3-8 (pledgeability).** Keep confirmed 80 and plausible 70. Add the bank-account gap: "31 CFR 212 shields only SSA, VA, OPM and RRB deposits, so a new UHI needs its own garnishment shield, and the 2021 advance CTC shows Congress may leave private garnishment open." Add to R2 M8: "Programmable US benefits already exist on EBT card rails (SNAP restrictions in 22 states), and GENIUS gives issuers freeze and seize powers, so 'programmable' in the US means card-network or issuer controls, not a CBDC."
5. **PLAN section 3 (Architect play) and the options backlog item.** Mark the spread trade as answered: "The 6.19% is last year's mortgage rate (now 7.32%) and the 13.6% is a strong decade (long run 10.0% compound). At 50% LTV the median gain over unlevered is small, the chance of a margin call over 10 to 20 years is about 35% to 52%, and the 10th percentile ends at about a third of the unlevered outcome. Low leverage (30% or less), interest paid from income and long horizons are what make it survivable." Status plausible (model), confidence 75 in direction.
6. **Memory items for R5-18.** Add to the re-check list: published closing drawdowns (2000 to 2002 -49%, 2007 to 2009 -57%, 2020 -34%, 2022 -25%), Ai-Da $1.08M (2024), US housing stock about 147M, completions 2020 to 2023, Reg T and FINRA margin levels, 38 USC 5301, NAR's shortage figure.
