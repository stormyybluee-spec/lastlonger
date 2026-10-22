# R3D: Ownership and markets for the next generation

Lane: R3D. Questions R3-5 (housing supply), R3-6 (human-made premium), R3-7 (attention costs), R3-11 (child accounts and the bottom half's equity share).
Written 2026-10-22. Facts as of 2026-10-22 unless a row says otherwise.
Builds on: R2 R2C (down payment model, Trump Account values, ladder), R2 R2D (cost stacks, platform tolls), R1 RELOOP section 4 (Fed DFA), R1 L2 (Trump Account rules and deposits). Earlier numbers are cited as "R2 R2C-18" etc. and not re-argued.
Method: 20 web searches, plus direct primary pulls: Fed DFA zip (file dated 2026-09-15), SEC EDGAR 10-K and 8-K text for Meta, Alphabet, Amazon and Etsy, BLS PPI and CPI flat files, the FHFA land price workbook (version 4.0, June 2024), Crossref and Europe PMC for paper abstracts. "Model" means arithmetic on stated inputs, not data. Scripts are in /tmp/claude-0/-home-user-lastlonger/41b7d58e-bedc-5a4f-859e-bd3e52b76ed8/scratchpad/scripts (dfa_bottom50.py, fhfa_land.py, land_absorb.py, annual.py, attention_vs_ppi.py, trump_b50_model.py). The Trump Account model is reproduced in full in section 9.
Not personal financial advice.

## 1. Answers

### R3-5. Can housing reopen through supply (factory and robot-built homes, zoning reform), or do land prices absorb the savings?

Both happen, and which one wins depends on the metro. Factory and robot building attacks the structure, but in the costliest metros the structure is the smaller part of a home's value: land is 68% of single-family property value in San Jose and Los Angeles, 59% in San Francisco and 40% nationally (FHFA appraisal-based estimates, 2022), and the land share rose in big metros from 2012 to 2022 (Los Angeles 59% to 68%, Austin 32% to 41%). So a 20% cut in structure cost lowers prices about 6% in San Jose but about 14 to 16% in Houston or St. Louis (model), and less if scarce land captures part of it. The factory route also has a bad record: Katerra burned through more than $2B of SoftBank money before its June 2021 bankruptcy, Veev shut in November 2023 after about 170 units, and the 2026 crop is small (Reframe Systems has 10 homes delivered and a factory rated at 250 to 500 units a year). Zoning works when it is broad, by-right and lets more homes share the same land: Auckland's 2016 upzoning doubled construction and left three-bedroom rents 22 to 35% below a synthetic control, and Austin's supply wave pushed median rent about 16% below its 2021 peak. Narrow reforms do little (Minneapolis's famous triplex rule produced 47 homes in five years, and California SB 9 was rarely used), and cities can stall broad ones (Los Angeles is seeking to delay SB 79 toward 2030). The honest summary: robots cut the cost of the box, zoning cuts the land per box, and only the two together reopen the coastal housing rung.

- Status: plausible. Confidence: 65. Horizon: H1 (2028 to 2035) for coastal metros, H0 for Sun Belt metros where land is a third or less of value.
- Three views. Governance: By-right density near transit and jobs is the lever that turns factory savings into lower prices instead of higher land values, and the new chassis-free federal code (ROAD to Housing Act, law since 2026-07-11) only pays off where local zoning lets those homes land. Business: Factory builders fail on demand volatility and capital cost, not technology, so the survivors will be those tied to a steady pipeline (manufactured-housing incumbents, build-to-rent owners, public programs). Ordinary person (wage or UHI): Expect cheaper new homes first in places where land is cheap, and in expensive metros watch rezoning votes more than robot news, because that is where your price is set.

### R3-6. Is there a measurable cash price premium for human-made goods?

It is measurable in experiments and not yet in market prices. Peer-reviewed lab work finds that the same image rated as "human-created" scores higher on liking, beauty, profundity and worth than when labeled "AI-created" (Bellaiche et al. 2023, Millet et al. 2023), and that "handmade" raises purchase intent mainly for gifts to loved ones, because buyers read it as containing love (Fuchs, Schreier and van Osselaer 2015). A preregistered auction study with real money finds bids fall as stated AI involvement rises, with the first trace of AI costing the most (Mandel and Imas, SSRN working paper, revised 2026-10-06, size not seen). But a story labeled AI-written got lower ratings without lower willingness to pay (IZA DP 17646), and I found no peer-reviewed, transaction-based estimate of a cash premium for human-made consumer goods. Market signals are mixed: AI 3D models are about one in six uploads but 2.6% of sales at CGTrader (R2 R2D-29), yet Etsy, the largest human-made marketplace, saw sales fall 5.3% in 2025 while its take rate rose from 16.5% (2019) to 24.2%. So the premium is real as a label effect, concentrated in gifts, art and identity goods, of unknown size in cash, and partly captured by the platforms that certify it.

- Status: plausible (premium exists in controlled settings), speculative on its cash size. Confidence: 55. Horizon: H0 to H1.
- Three views. Governance: A premium needs a verifiable label, so provenance rules (C2PA-style content credentials, "made by" disclosures) decide whether it goes to makers or to fakers. Business: Sell the maker, the story and the gift, not the hand labor, and expect the platform to tax the premium. Ordinary person: Human-made work can earn a premium where buyers care who made it (gifts, art, personal services), not in commodity goods.

### R3-7. Do attention costs (ad prices, platform fees) rise faster than production costs fall?

Production costs have not fallen at all in nominal terms: the producer price index for finished consumer goods less food and energy is up 31% from 2019 to 2026 (January to September average). Unit ad prices mostly tracked or lagged that: Meta's average price per ad was only about 2% higher in 2025 than in 2019 (19% lower after PPI), and Google's search cost per click was 24% higher (about flat after PPI). The clear rise is in the toll as a share of seller revenue: Amazon's advertising revenue grew 5.4 times from 2019 to 2025 while its third-party seller services grew 3.2 times, so ads went from 23.5% to 41.9% (first half 2026) of seller-services revenue, and Etsy's take rate rose from 16.5% to 24.2%. Since 2024 unit prices have also turned up: Meta's price per ad rose 12%, 12% and 14% year on year in the first three quarters of 2026 against about 4% for core consumer-goods PPI, and Google's cost per click rose 7% in each of 2024 and 2025. So yes, the attention toll is outrunning production costs, mainly by taking a bigger slice of each sale, and since 2024 also by price.

- Status: confirmed (T0 filings, share version and 2026 price version). Confidence: 70. Horizon: H0, with the structural share trend extending into H1.
- Three views. Governance: Marketplace take rates and self-preferencing rules move consumer prices more than automation policy does, and none of these tolls appear in CPI as a line. Business: Model customer acquisition cost rising 5 to 15% a year and own a direct audience, because a cheaper factory does not fix a growing toll. Ordinary person: Products made cheaply still arrive with a growing advertising and platform markup, so store brands and direct sellers are where cost savings show up first.

### R3-11. Does the bottom half's share of equities move at all once child accounts are funded?

It moves, but by tenths of a point, not points. In the Fed's Distributional Financial Accounts the bottom 50% hold 0.58% of directly held corporate equities and mutual fund shares ($374B of $64.6T in 2026 Q2), down from a peak of 1.65% in 1996 and stuck between 0.53% and 0.66% since 2010. The evidence on child accounts is that automatic, state-owned seeding works for ownership and modestly for families: in the SEED OK randomized trial (2,704 Oklahoma births in 2007) a $1,000 automatic deposit put almost every treatment child into an account (only 2% of control children of color had one), grew to about $2,300 by age 14, and slightly reduced maternal depressive symptoms, but families added little. Connecticut's baby bonds ($3,200 per Medicaid-covered birth since July 2023, about 15,000 to 16,000 children a year, $600M over 12 years) will not pay out until 2041. My model of Trump Accounts takes the share from 0.58% to about 0.60% with the seed and Dell gift only, about 0.70% with $10B a year of family money, about 0.82% with a $100B AI equity grant, and about 1.27% only with a $500B grant, all by 2045 and in the Fed's own household accounting. Counted by family of origin instead, the base case is only 0.62%, because much of the measured rise is young adults from richer families appearing as new low-wealth households. Getting back to the 1990s share needs public money in the high hundreds of billions aimed at poorer children, not a flat $1,000.

- Status: plausible (model on T0 anchors). Confidence: 70 that the share stays below 1% by 2045 under the current design. Horizon: H2 (2035 to 2050).
- Three views. Governance: Auto-claim the seed, make the top-up progressive (a baby bond layer), and route any AI equity to the bottom half, or the program mainly subsidizes families who already save. Business: Employer $2,500 contributions will flow mostly to children of well-paid staff, a recruiting perk rather than a wealth policy. Ordinary person (wage or UHI): Claim the account and add even $25 a month, because the public seed alone is about $2,400 real at 18 (R2 R2C-18), and the account is locked until 18 and then IRA-like.

## 2. Key findings

1. **Land is the majority of home value in the metros where the housing rung broke.** FHFA's appraisal-based land shares (2022): San Jose 68.4%, Los Angeles 67.7%, San Diego 61.1%, San Francisco 59.3%, Boston 55.4%, Seattle 51.7%, New York 45.8%, Austin 41.4%, US 39.9%, Minneapolis 33.6%, Dallas 31.4%, Houston 28.8%, Atlanta 24.7%, St. Louis 21.2%. The national share rose from 37.0% (2012) to 39.9% (2022), and in Los Angeles from 58.9% to 67.7%. Land absorbed much of the 2012 to 2022 price boom.
2. **For new homes, construction is the bigger slice nationally.** NAHB's 2024 builder survey puts construction cost at 64.4% of the average $665,298 sales price and the finished lot at 13.7% (a series low, T4, non-representative sample). This is why factory savings could matter in Sun Belt subdivisions and why they matter much less for an existing home in a coastal metro, where the land under it is most of the price.
3. **Model: a 20% structure-cost cut reaches prices as 6% in San Jose and 16% in St. Louis.** Price change = cut x (1 minus land share). If scarce land captures half the saving in metros with a land share above 45%, the coastal gain shrinks to about 3 to 5%.
4. **Factory housing has a long failure list and a small 2026 cohort.** Katerra: more than $2B from SoftBank's Vision Fund, bankrupt June 2021. Veev: once valued at $1B, shut November 2023 after about 170 units when a funding round collapsed. Nook Homes (New Zealand) shutting in late 2025. Reframe Systems: $40M raised 2026-08-31, 10 homes delivered, FAB1 starting 2026-10-05 with capacity for up to 500 multifamily units a year. Construction robotics drew about $1.36B of venture money in the first three quarters of 2025 but robots are under 0.03% of global construction spend (Zacua report via press, T4).
5. **Federal law just widened the factory channel.** The 21st Century ROAD to Housing Act (law since 2026-07-11, the same vehicle that carried the CBDC ban, R1 L2) removed the permanent-chassis requirement from the HUD manufactured-home code, and HUD issued a Next Generation Manufactured Housing Action Plan on 2026-10-07 (chassis-free design, foundations, a performance code for larger factory-built structures). No cost-saving figures were published.
6. **Broad upzoning has the best evidence.** Auckland: construction rate doubled and three-bedroom rents ended 22 to 35% below a synthetic control six years on (rents +11% vs +41 to 45% in comparison cities, 2016 to 2022, working paper, T4). Austin: median rent $1,546 (Dec 2021) to $1,296 (Jan 2026), about 16% lower, after a supply wave, with the pipeline now down from 19.7% to 4.6% of stock (T4).
7. **Minneapolis is weaker evidence than its reputation.** The Minneapolis Fed (2025-08-25) finds rents rose 25.7% from 2019 to 2023, only 3.2 points less than peers, and attributes slow rent growth more to a 2020 demand drop than to supply. By October 2026 its economists said the advantage (about $150 a month) was shrinking, multifamily permits had fallen more than 90% since 2022, and only 47 homes used the triplex rule from 2020 to 2025. Minneapolis is also one of the few big metros where the land share fell (35.0% to 33.6%, 2012 to 2022).
8. **California and Montana show the implementation gap.** SB 9 lot splits were rarely used (Los Angeles approved 38 of 211 unit applications and none of 28 lot splits in 2022, fewer than 500 homeowner applications statewide by May 2024 per secondary summary). SB 79 took effect 2026-07-01, but San Diego deferred much of its eligible land to 2027 to 2031 and Los Angeles is seeking a citywide delay toward 2030. Montana's Supreme Court upheld the 2023 land-use overhaul (SB 382) on 2026-03-17, and cities only had to comply from May 2026, so no permit result exists yet.
9. **The human-made premium is a label effect in experiments.** Same artwork, different label: human-labeled art scores higher on liking, beauty, profundity and worth (Bellaiche et al. 2023, Cognitive Research). Anthropocentric bias against AI art is replicated (Millet et al. 2023, Computers in Human Behavior). Handmade raises purchase intent for gifts to loved ones but not distant recipients (Fuchs et al. 2015, Journal of Marketing). Bids fall with stated AI involvement in four preregistered auctions (Mandel and Imas 2026, working paper, via secondary summary, T4). Counter: AI-labeled stories got lower ratings but equal willingness to pay (IZA DP 17646).
10. **AI raises creative supply and does not obviously lower audience valuation.** On a large art-sharing platform, adopters of text-to-image AI produced 25% more and their favorites per view rose about 50% (Zhou and Lee, PNAS Nexus 2024). Human makers face more competition even if a label premium exists.
11. **Etsy shows the platform captures the human premium.** Etsy's revenue take rate rose from 16.5% (2019: $818M on $4.97B GMS) to 24.2% (2025: $2.88B on $11.92B GMS) while GMS fell 5.3% in 2025.
12. **Unit ad prices lagged producer prices from 2019 to 2025, then jumped.** Chained index 2019 = 100: Meta price per ad 102.3 in 2025 (PPI core consumer goods 126.7), about 115 in 2026 year to date. Google search CPC 123.8 in 2025. Meta's 2026 increases (12%, 12%, 14%) are three times core consumer-goods PPI inflation (about 4% year on year in September 2026).
13. **The toll share rose steadily.** Amazon advertising revenue $12.6B (2019) to $68.6B (2025), third-party seller services $53.8B to $172.2B. Ads as a share of seller-services revenue: 23.5% (2019), 24.6%, 30.1%, 32.1%, 33.5%, 36.0%, 39.9% (2025), 41.9% (H1 2026).
14. **The bottom half's equity share has a 30-year downtrend, then a flat floor.** DFA: 1.15% (1989 Q3), peak 1.65% (1996 Q4), 1.0% (2007), 0.66% (2013 to 2016), 0.53% (2022), 0.58% (2026 Q2). Including DC pension holdings it fell from 3.35% (1994) to 1.46%. The bottom half's share of owner-occupied real estate fell from 15.1% (2009) to 9.7% (2026 Q2), so their main asset is shrinking as a share too.
15. **Child accounts change ownership rates fast and wealth shares slowly.** SEED OK shows automatic seeding produces near-universal ownership and modest well-being effects. The model shows the share of equities barely moves because the money is small relative to a $64.6T stock and family top-ups go mostly to richer children.

## 3. Say/Do gaps

| Actor | Say | Do | Gap |
|---|---|---|---|
| Administration on Trump Accounts | Every child gets a head start, about 70M auto-enrolled (R1 L2-19) | Seed only for 2025 to 2028 births, families must still claim the account before the $1,000 lands, no progressive top-up | Auto-enrollment without auto-funding repeats the take-up problem SEED OK solved by auto-depositing |
| Los Angeles | Pro-housing, many affordability programs | Proposed ordinances to delay SB 79 citywide toward 2030 | Local delay neutralizes state upzoning |
| Minneapolis 2040 Plan | Ended single-family zoning | 47 homes used the triplex change 2020 to 2025, multifamily permits down more than 90% since 2022 | Famous reform, small direct effect, the big supply came from apartment zoning and permits before rates rose |
| Meta | AI tools make advertising more efficient for businesses | Average price per ad +14% year on year in Q3 2026 | Efficiency gains accrue to the auction owner |
| Amazon | No new seller fee increases for 2025, fee cuts and incentives | Ads revenue +25% in H1 2026 vs third-party services +15%, 3.5% surcharge kept (R2 R2D-12) | The toll moved from fees to ads |
| Etsy | Marketplace for handmade, vintage and unique items | Take rate up 7.7 points since 2019 while GMS fell in 2025 | The human-made platform taxes the premium it certifies |
| Factory-housing startups | 20 to 50% faster or cheaper (company claims) | Katerra and Veev failed, Reframe has 10 homes | Claims precede volume by years |

## 4. Anomalies

1. **Meta's price per ad was flat for six years while its ad revenue nearly tripled.** Default expectation: ad prices rise with demand. What happened: impressions rose 10 to 34% a year, much of it in lower-priced regions and formats, so the average price is a mix effect. The toll grows through volume and seller share, not through a visible price.
2. **Etsy's GMS fell while its take rate rose.** Default: a shrinking marketplace cuts fees to keep sellers. Etsy did the opposite, consistent with sellers being locked in by buyer traffic.
3. **The bottom half's net worth share rose (0.4% in 2010 to 2.3%) while its equity share stayed flat and its real estate share fell.** Their gains came from lower debt and price gains on fewer homes, not from new ownership.
4. **Minneapolis's land share fell while coastal metros rose.** Consistent with broad upzoning spreading land value across more units, but the Fed reads the rent result as mostly demand. Treat as suggestive.
5. **PPI for all finished consumer goods was flat from 2025 to 2026 year to date while the core index rose about 3.5%.** The energy component in this series fell or flattened even as CPI energy rose 20.4% (R2 C7). I report the series as published and flag it as unexplained.

## 5. Mechanism chains

**Chain A: robots cut the box, land takes the rest.** Factory or robot methods cut structure cost by X% → in metros where zoning caps units per lot, buyers bid the saving into the lot → land share rises, prices fall little (San Jose about 6% per 20% cut, less with capture) → only where zoning lets more units share a lot does the saving show up as more homes and lower rents (Auckland, Austin). Test: FHFA land share series update, Census new-home price per square foot, permits in metros with SB 79 or by-right laws.

**Chain B: factories need steady demand.** Factory housing has high fixed cost → it needs a steady order book → rate cycles, permitting delays and local zoning make orders lumpy → factories run below capacity and fail (Katerra, Veev, UK volumetric builders) → survivors attach to steady buyers (manufactured-housing incumbents, build-to-rent, public programs) → the chassis-free HUD code (2026) widens the federal path and pre-empts some local building codes, which is the most important change for factory economics this decade. Test: HUD rules under the action plan, manufactured shipments, Reframe's 114-unit target by about 2027-09.

**Chain C: cheap production, dear attention.** AI and automation make products and ad creative cheap → more sellers and more ads compete for the same buyers → auction owners and marketplaces raise their slice (Amazon ads 23.5% to 41.9% of seller services, Etsy take rate 16.5% to 24.2%) → founder margins depend on owning demand, not making things. Test: Meta price per ad, Amazon ads vs third-party services growth, Etsy take rate.

**Chain D: the human label as a toll gate.** Buyers value the human label in experiments → the label needs verification → the platform or certifier that verifies it captures part of the premium (Etsy) → makers keep the premium only if they own the buyer relationship. Test: Etsy take rate and GMS, any marketplace that discloses prices by provenance label.

**Chain E: child accounts and the measured equity share.** $1,000 seed plus family top-ups → balances concentrate in children of savers → at 18 accounts belong to young adults, most of whom sit in the bottom half of household wealth → the DFA bottom-50% share rises even if no poorer family gains (relabeling) → a real shift needs progressive public deposits and auto-claiming. Test: Treasury data on contributions by income, DFA 2026 Q3 (about mid-December 2026), any AI equity routed into 530A accounts.

## 6. Tripwires (with dates)

| Date | Tripwire | What it tells us |
|---|---|---|
| Late Oct 2026 | Amazon Q3 2026 results: advertising vs third-party seller services growth | Whether the ad share keeps rising above 42% |
| Early Nov 2026 | Etsy Q3 2026: take rate above 24%, GMS trend | Platform capture of the handmade premium |
| Early Nov 2026 | NAR Profile of Home Buyers and Sellers 2026 (first-time buyer age, record 40 in 2025) | Whether the housing rung is still breaking |
| About mid-Dec 2026 | Fed DFA 2026 Q3 | Bottom-50% equity share: watch 0.58% |
| Late Jan 2027 | Meta Q4 2026: price per ad growth above 10% for a fifth quarter | Attention price outrunning PPI becomes a trend |
| 2027 | HUD rules under the Next Generation Manufactured Housing Action Plan | Whether chassis-free factory homes get a workable federal path |
| About Sep 2027 | Reframe Systems delivery of the targeted 114 units | Whether 2026 factory players scale where Katerra and Veev failed |
| 2027 to 2031 | San Diego deferred SB 79 areas switch on, LA delay ordinance outcome | Whether California's broad upzoning actually applies |
| 2027 | Montana permit data after May 2026 MLUPA compliance | First test of the "Montana Miracle" |
| Any date | Statute or deal routing AI equity into Trump Accounts, and whether it is per child or progressive | Moves the R3-11 model from case B to E or H |
| Any date | Results of the registered AI-disclosure auction study (Heinrich et al., run June to July 2026) and the published Mandel and Imas paper | First real-money estimates of the human premium's size |
| 2028-12-31 | End of $1,000 seed birth window | After this, only private and philanthropic money flows unless Congress acts |
| 2041 | First Connecticut baby bond payouts (births from July 2023 turn 18) | First US baby-bond outcome data |

## 7. Open questions and gaps

1. No transaction-based, peer-reviewed estimate of a cash premium for human-made goods was found. The best next data would be a marketplace disclosing prices by provenance label, or the published Mandel and Imas bid sizes.
2. The FHFA land series ends in 2022. A 2023 to 2025 update would show whether the rate shock lowered land shares.
3. I did not obtain SEED OK's treatment vs control balance comparison at age 14 (the PDF was behind a bot check). Figures above come from the repository summary and the WashU news piece.
4. Trump Account deposits: R1 L2-19 has $4.5B since 2026-07-04 (transcript of 2026-10-07 remarks), while an aggregator reported $2.2B. Unresolved. No Treasury breakdown by income exists yet.
5. Share of children living in bottom-50%-wealth households (model input 55%) is an assumption. An SCF tabulation would pin it down.
6. Whether DFA (built on the SCF) captures balances in minors' 530A accounts inside the parents' household is an assumption of the model.
7. Retail media totals beyond Amazon (Walmart Connect, Instacart) and TikTok Shop fees were not refreshed in this lane.
8. The flat PPI for all finished consumer goods in 2026 against a 20.4% CPI energy rise needs a check of the energy weight in that index.

## 8. Data tables

### 8.1 Bottom 50% share of household equity holdings (Fed DFA, Q4 unless noted)

| Year | Bottom 50% directly held equities and MF ($B) | Share of directly held | Share incl. DC pensions | Share of owner-occupied real estate | Share of net worth |
|---|---|---|---|---|---|
| 1989 Q3 | 23.9 | 1.15% | 2.52% | 12.0% | 3.51% |
| 1996 | 89.1 | 1.65% | 3.31% | 15.6% | 3.37% |
| 2000 | 127.8 | 1.42% | 2.82% | 13.9% | 3.15% |
| 2007 | 134.1 | 1.00% | 2.33% | 14.6% | 1.70% |
| 2009 | 93.8 | 0.88% | 2.39% | 15.1% | 0.58% |
| 2013 | 115.6 | 0.66% | 1.88% | 13.0% | 0.91% |
| 2019 | 166.7 | 0.59% | 1.76% | 11.9% | 1.73% |
| 2022 | 176.8 | 0.53% | 1.57% | 11.1% | 2.59% |
| 2025 | 317.8 | 0.57% | 1.50% | 10.2% | 2.40% |
| 2026 Q2 | 374.2 | 0.58% | 1.46% | 9.7% | 2.30% |

Source: https://www.federalreserve.gov/releases/z1/dataviz/download/zips/dfa.zip (dfa-networth-levels.csv, files dated 2026-09-15), computed by dfa_bottom50.py. Total household directly held equities and MF 2026 Q2: $64.64T.

### 8.2 Land share of single-family property value (FHFA, appraisal-based, experimental)

| Metro (CBSA) | 2012 | 2022 | 2022 standardized property value |
|---|---|---|---|
| San Jose | 62.5% | 68.4% | $2,222,600 |
| Los Angeles | 58.9% | 67.7% | $1,373,400 |
| San Diego | 49.4% | 61.1% | $1,283,300 |
| San Francisco | 52.4% | 59.3% | $1,865,800 |
| Boston | 54.6% | 55.4% | $843,100 |
| Seattle | 48.0% | 51.7% | $1,048,400 |
| Miami | 37.1% | 46.6% | $720,600 |
| New York | 44.4% | 45.8% | $960,900 |
| Austin | 31.8% | 41.4% | $660,200 |
| US (nation) | 37.0% | 39.9% | $547,800 |
| Denver | 34.0% | 39.2% | $810,700 |
| Bozeman, MT | 27.1% | 37.6% | $874,700 |
| Minneapolis | 35.0% | 33.6% | $493,700 |
| Dallas | 27.5% | 31.4% | $397,500 |
| Houston | 28.6% | 28.8% | $342,800 |
| Atlanta | 26.3% | 24.7% | $379,600 |
| St. Louis | 21.8% | 21.2% | $303,700 |

Source: https://www.fhfa.gov/document/land-prices_2024_20_june.xlsx (version 4.0, June 2024, Panel CBSAs and Panel Nation), method in FHFA WP 19-01. Standardized values are for a quarter-acre reference property, so they are not median sale prices.

### 8.3 Model: price effect of a 20% structure-cost cut (land_absorb.py)

| Metro | Land share | No land capture | Half captured where land share above 45% |
|---|---|---|---|
| San Jose | 68% | -6.3% | -3.2% |
| Los Angeles | 68% | -6.5% | -3.2% |
| San Francisco | 59% | -8.1% | -4.1% |
| Seattle | 52% | -9.7% | -4.8% |
| New York | 46% | -10.8% | -5.4% |
| Austin | 41% | -11.7% | -11.7% |
| US | 40% | -12.0% | -12.0% |
| Minneapolis | 34% | -13.3% | -13.3% |
| Houston | 29% | -14.2% | -14.2% |
| St. Louis | 21% | -15.8% | -15.8% |

### 8.4 Attention tolls vs producer prices (index 2019 = 100 unless a percent)

| Year | Meta price per ad | Google search CPC | Amazon ads as % of 3P seller services | PPI finished consumer goods less food and energy | PPI finished consumer goods |
|---|---|---|---|---|---|
| 2019 | 100.0 | 100.0 | 23.5% | 100.0 | 100.0 |
| 2020 | 90.0 | 94.0 | 24.6% | 101.1 | 101.3 |
| 2021 | 111.6 | 108.1 | 30.1% | 105.0 | 107.7 |
| 2022 | 93.7 | 107.0 | 32.1% | 114.2 | 123.0 |
| 2023 | 85.3 | 108.1 | 33.5% | 119.7 | 125.5 |
| 2024 | 93.8 | 115.7 | 36.0% | 122.9 | 129.6 |
| 2025 | 102.3 | 123.8 | 39.9% | 126.7 | 134.5 |
| 2026 YTD | about 115 (Q1 to Q3) | n/a | 41.9% (H1) | 131.1 (Jan to Sep) | 134.5 |

Etsy revenue take rate: 16.5% (2019) to 24.2% (2025). Sources: Meta 10-K FY2021 and FY2025, Meta 10-Q Q1 2026 and 8-K Q3 2026, Alphabet 10-K FY2020 to FY2025, Amazon 10-K FY2021, FY2022, FY2025 and 10-Q Q2 2026, Etsy 10-K FY2019 and FY2025, BLS PPI series WPSFD41312 and WPUFD4111 (annual averages of monthly values). Meta and Google figures are company-wide averages that mix regions and formats.

### 8.5 Model: Trump Accounts and the bottom-50% equity share in 2045 (real 2026 dollars)

| Case | Trump Account assets 2045 | Of which in bottom-50% households (DFA view) | B50 share, DFA view | B50 share, family-origin view |
|---|---|---|---|---|
| Baseline (no program effect) | n/a | n/a | 0.58% | 0.58% |
| A. Seed + Dell gift only | $37B | $28B | 0.60% | 0.59% |
| B. Base: + $10B a year family and employer money, 15% to bottom-half children | $364B | $207B | 0.70% | 0.62% |
| C. Heavy private: $30B a year | $1,019B | $564B | 0.92% | 0.68% |
| D. B + $25B AI equity (2027) | $423B | $254B | 0.73% | 0.64% |
| E. B + $100B AI equity (2027) | $601B | $396B | 0.82% | 0.69% |
| F. B + Connecticut-style $3,200 per Medicaid birth nationwide | $497B | $325B | 0.78% | 0.69% |
| G. B + $100B AI + baby bond | $733B | $514B | 0.89% | 0.76% |
| H. B + $500B AI equity (2027) | $1,547B | $1,153B | 1.27% | 0.95% |

Sensitivity on case B (DFA view): 0.68% if only 60% of account owners aged 18+ are in bottom-50% households, 0.72% at 95%, 0.71% with equal 90% take-up, 0.72% if 30% of family money reaches bottom-half children. A one-off 2027 grant aimed only at bottom-half children would need about $266B to lift the family-origin share to 1.00%. For scale: in case B the bottom half's 2045 equity holdings rise about 22% in the DFA view (from about $0.94T to $1.15T), a big change for them and a small one for the share.

Inputs and assumptions: DFA 2026 Q2 anchors ($64.64T total, $374.2B bottom 50%), 5% real equity return minus the 0.1% fee cap, total household equities growing 5% real (so the share is not driven by return differences), 3.6M births a year, $1,000 seed for 2025 to 2028 births, claim rates 65% (bottom-origin) and 90% (top-origin) because the seed needs a family claim, 55% of children in bottom-50%-wealth households (assumption), Dell $6.25B with 70% claimed and 60% to bottom-origin children, Connecticut-style bond at $3,200 for 40% of births with 95% take-up and 90% to bottom-origin children. "DFA view" counts owners aged 18+ in 2045 by their own household (80% assumed in the bottom half), "family-origin view" counts all balances by the family the child grew up in.

## 9. Model code (trump_b50_model.py)

```python
"""R3D model: how far could Trump Accounts move the bottom-50% share of
household-held corporate equities and mutual fund shares (Fed DFA) by 2045?
MODEL, not data. All values in real 2026 dollars. Inputs labeled."""
# ---- Data anchors (Fed DFA, file dated 2026-09-15, 2026 Q2) ----
TOTAL_EQ_2026 = 64.640e12   # all households, corporate equities + MF shares (excl. DC pensions)
B50_EQ_2026   = 0.3742e12   # bottom 50% by net worth (0.58%)
YEARS = 19                  # 2026 Q2 -> 2045 Q2
R = 0.05 - 0.001            # 5% real equity return minus 0.1% fee cap (530A)
G = 0.05                    # total household equity grows at 5% real (same as returns, so shares comparable)
# ---- Program anchors ----
BIRTHS = 3.6e6              # per year (US births ~3.6M, assumption held flat)
SEED = 1000                 # $1,000 Treasury seed, births 2025-2028 (statute)
DELL_TOTAL = 6.25e9         # $250 x 25M children <=10 in ZIPs with median income <= $150k (pledge)

def run(take_b=0.65, take_t=0.90, kid_b=0.55, priv_flow=10e9, priv_b=0.15,
        dell_claim=0.70, dell_b=0.60, ai_equity=0.0, baby_bond=0.0,
        young_b50=0.80, relabel=True):
    """take_b/take_t: share of bottom/top-origin families that claim the account (seed needs a claim)
    kid_b: share of children living in bottom-50%-wealth households
    priv_flow: family+employer+philanthropic contributions per year (real), priv_b: share reaching bottom-origin kids
    ai_equity: one-off public equity grant in 2027 spread over all claimed accounts of children <18
    baby_bond: $ per Medicaid-financed birth (~40% of births) per year from 2027, 90% to bottom-origin
    young_b50: share of account owners aged 18+ in 2045 who sit in bottom-50% households (DFA as measured)
    relabel: if True, owners 18+ are counted by their own household (DFA), else by family of origin"""
    bal = {}  # (cohort, origin) -> balance
    def add(c, o, amt):
        bal[(c, o)] = bal.get((c, o), 0.0) + amt
    for y in range(2026, 2046):
        # grow existing balances one year
        for k in bal: bal[k] *= (1 + R)
        kids = [c for c in range(y-17, y+1)]                 # cohorts aged 0-17 in year y
        nb = {'b': kid_b*take_b, 't': (1-kid_b)*take_t}      # claimed accounts per child of a cohort
        # seed: 2025 births paid in 2026 with 2026 births, then 2027, 2028
        for c in ([2025, 2026] if y == 2026 else [y] if y in (2027, 2028) else []):
            for o in 'bt': add(c, o, SEED*BIRTHS*nb[o])
        if y == 2026:   # Dell gift: children aged <=10 born 2015-2024 (not seeded)
            for c in range(2015, 2025):
                tot = DELL_TOTAL*dell_claim/10
                add(c, 'b', tot*dell_b)
                add(c, 't', tot*(1-dell_b))
        # private contributions spread per claimed account across cohorts 0-17
        for c in kids:
            if c < 2008: continue
            add(c, 'b', priv_flow*priv_b/len(kids))
            add(c, 't', priv_flow*(1-priv_b)/len(kids))
        if y == 2027 and ai_equity:
            n = sum(nb.values())
            for c in kids:
                for o in 'bt': add(c, o, ai_equity/len(kids)*nb[o]/n)
        if y >= 2027 and baby_bond:
            amt = baby_bond*BIRTHS*0.40*0.95   # 95% claim (state-run trust, auto)
            add(y, 'b', amt*0.90)
            add(y, 't', amt*0.10)
    total_ta = sum(bal.values())
    b50_ta = 0.0
    for (c, o), v in bal.items():
        adult = (2045 - c) >= 18
        if relabel and adult: b50_ta += v*young_b50
        else: b50_ta += v if o == 'b' else 0.0
    tot_eq = TOTAL_EQ_2026*(1+G)**YEARS
    b50_eq = B50_EQ_2026*(1+G)**YEARS
    share = (b50_eq + b50_ta)/(tot_eq + total_ta)
    return dict(total_ta=total_ta, b50_ta=b50_ta, share=share, base=b50_eq/tot_eq)

def fmt(name, r):
    print(f"{name:58s} TA total ${r['total_ta']/1e9:7.0f}B  to B50 ${r['b50_ta']/1e9:6.0f}B  "
          f"B50 share {100*r['base']:.2f}% -> {100*r['share']:.2f}%")

print("Real 2026 $, 2045. Baseline B50 share held at 2026 Q2 level.\n")
cases = [
 ("A. Seed + Dell only, no family money",                dict(priv_flow=0)),
 ("B. Base: + $10B/yr private, 15% reaches B50 kids",    dict()),
 ("C. Heavy private: $30B/yr, 15% to B50",               dict(priv_flow=30e9)),
 ("D. Base + $25B AI equity (2027)",                     dict(ai_equity=25e9)),
 ("E. Base + $100B AI equity (2027)",                    dict(ai_equity=100e9)),
 ("F. Base + CT-style $3,200 baby bond per Medicaid birth", dict(baby_bond=3200)),
 ("G. Base + $100B AI + baby bond",                      dict(ai_equity=100e9, baby_bond=3200)),
 ("H. Base + $500B AI equity (2027)",                    dict(ai_equity=500e9)),
]
for n, kw in cases:
    fmt(n+" [DFA view]", run(**kw))
print()
for n, kw in cases:
    fmt(n+" [family-origin view]", run(relabel=False, **kw))
print("\nSensitivity on base case B (DFA view):")
for lab, kw in [("young adults 18+ in B50 = 60%", dict(young_b50=0.6)),
                ("young adults 18+ in B50 = 95%", dict(young_b50=0.95)),
                ("equal take-up 90%/90%", dict(take_b=0.9)),
                ("private share to B50 kids 30%", dict(priv_b=0.30))]:
    fmt("B with "+lab, run(**kw))
# What one-off 2027 grant to bottom-origin kids only (family-origin view) lifts share to 1.0%?
lo, hi = 0, 5e12
for _ in range(60):
    mid = (lo+hi)/2
    r = run(relabel=False, ai_equity=0, baby_bond=0)
    # add targeted grant analytically: grows 18 years from 2027
    extra = mid*(1+R)**18
    tot_eq = TOTAL_EQ_2026*(1+G)**YEARS
    b50 = B50_EQ_2026*(1+G)**YEARS
    s = (b50 + r['b50_ta'] + extra)/(tot_eq + r['total_ta'] + extra)
    if s < 0.010:
        lo = mid
    else:
        hi = mid
print(f"\nOne-off 2027 grant to bottom-origin children needed to reach 1.00% (family view): ${lo/1e9:.0f}B")
```

## 10. Claims

| id | claim | tier | status | source (URL) | source date | as-of date | falsifier |
|---|---|---|---|---|---|---|---|
| R3D-01 | Bottom 50% hold 0.58% of directly held corporate equities and MF ($374.2B of $64.64T) in 2026 Q2 | T0 | confirmed | https://www.federalreserve.gov/releases/z1/dataviz/download/zips/dfa.zip | 2026-09-15 | 2026-10-22 | DFA revision |
| R3D-02 | Bottom-50% equity share peaked at 1.65% in 1996 and has stayed between 0.53% and 0.66% since 2010 | T0 | confirmed | same DFA zip | 2026-09-15 | 2026-10-22 | DFA revision |
| R3D-03 | Bottom-50% share of owner-occupied real estate fell from 15.1% (2009) to 9.7% (2026 Q2) | T0 | confirmed | same DFA zip | 2026-09-15 | 2026-10-22 | DFA revision |
| R3D-04 | Land is 68.4% (San Jose), 67.7% (Los Angeles), 59.3% (San Francisco) and 39.9% (US) of single-family property value in 2022 | T0 (agency appraisal-based, experimental) | confirmed | https://www.fhfa.gov/document/land-prices_2024_20_june.xlsx | 2024-06 | 2026-10-22 | Updated FHFA vintage with different shares |
| R3D-05 | US land share rose from 37.0% (2012) to 39.9% (2022), Los Angeles 58.9% to 67.7%, Austin 31.8% to 41.4%, Minneapolis fell 35.0% to 33.6% | T0 (experimental) | confirmed | same FHFA workbook, https://www.fhfa.gov/research/papers/wp1901 | 2024-06 | 2026-10-22 | Revised series |
| R3D-06 | Construction cost is 64.4% and the finished lot 13.7% of the average new-home sales price ($665,298) in 2024 | T4 (builder survey) | plausible | https://nahb.org/blog/2025/01/cost-of-construction-survey-2024 | 2025-01 | 2026-10-22 | Representative survey with different split |
| R3D-07 | A 20% structure-cost cut lowers prices about 6% in San Jose and about 16% in St. Louis, less with land capture | model | plausible | land_absorb.py on R3D-04 | 2026-10-22 | 2026-10-22 | Observed factory-built price discounts by metro |
| R3D-08 | Katerra received more than $2B from SoftBank's Vision Fund and filed for bankruptcy in June 2021 | T4 | confirmed | https://en.wikipedia.org/wiki/Katerra | 2021-06 | 2026-10-22 | Court record showing different sums |
| R3D-09 | Veev shut its US operation in November 2023 after more than 170 units when a funding round was canceled | T4 | confirmed | https://www.probuilder.com/construction/off-site-construction/article/55221208/modular-home-building-pioneer-veev-to-shut-down | 2023-11-28 | 2026-10-22 | n/a |
| R3D-10 | Reframe Systems raised $40M (2026-08-31), had 10 homes delivered and a factory rated up to 500 multifamily units a year starting 2026-10-05 | T4 | confirmed | https://www.implicator.ai/reframe-systems-raises-40m-for-homebuilding-microfactories.md | 2026-09-01 | 2026-10-22 | Company disclosures differ |
| R3D-11 | The 21st Century ROAD to Housing Act removed the permanent-chassis requirement and HUD issued a manufactured-housing action plan on 2026-10-07 | T1/T2 | confirmed | https://www.hud.gov/news/hud-no-26-082 | 2026-10-07 | 2026-10-22 | Statute text shows otherwise |
| R3D-12 | Auckland's upzoning doubled construction and left three-bedroom rents 22 to 35% below a synthetic control | T4 (working paper) | plausible | https://cayimby.org/on-sale-rental-housing-25-to-50-percent-off-some-upzoning-required/ | 2023 | 2026-10-22 | Peer-reviewed replication finds no effect |
| R3D-13 | Austin median rent fell from $1,546 (Dec 2021) to $1,296 (Jan 2026) after a supply wave, with the pipeline down to 4.6% of stock | T4 | plausible | https://www.realpage.com/analytics/austin-market-profile-october-2025/ , https://theclose.com/news-austin-rent-data-agents/ | 2025-10 / 2026 | 2026-10-22 | Rents rebound above peak with no demand change |
| R3D-14 | Minneapolis Fed: rents +25.7% 2019 to 2023, 3.2 points below peers, slow growth mainly from a 2020 demand shock | T2/T4 (Fed staff) | confirmed | https://minneapolisfed.org/article/2025/unpacking-supply-and-demand-in-rent-trends-since-the-minneapolis-2040-plan | 2025-08-25 | 2026-10-22 | Later Fed work attributes it to supply |
| R3D-15 | Only 47 homes used Minneapolis's triplex zoning change 2020 to 2025, multifamily permits down more than 90% since 2022, rent edge about $150 and shrinking | T4 (press on Fed work) | plausible | https://www.fox9.com/news/minneapolis-housing-fed-2040-affordability-gains-slipping-oct-8-2026 | 2026-10-08 | 2026-10-22 | Fed publication with different counts |
| R3D-16 | SB 9 rarely used: LA approved 38 of 211 unit applications and 0 of 28 lot splits in 2022 | T4 | confirmed | https://ternercenter.berkeley.edu/research-and-policy/sb-9-turns-one-applications/ | 2023 | 2026-10-22 | Later data show wide use |
| R3D-17 | SB 79 took effect 2026-07-01, San Diego deferred much eligible land to 2027 to 2031, LA seeks delay toward 2030 | T1/T4 | plausible | https://www.kpbs.org/news/kpbs/2026/07/01/heres-where-the-states-new-housing-law-will-and-wont-apply-in-san-diego , https://www.mondaq.com/unitedstates/real-estate/1801544/the-city-of-los-angeles-seeks-to-delay-implementation-of-senate-bill-79-sb-79-until-2030 | 2026-07-01 | 2026-10-22 | LA ordinance rejected by HCD |
| R3D-18 | Montana Supreme Court upheld SB 382 (MLUPA) on 2026-03-17 in DA 25-0200 | T1 (court ruling via law blog) | confirmed | https://www.inversecondemnation.com/?p=17884 | 2026-03-18 | 2026-10-22 | Opinion text differs |
| R3D-19 | Human-labeled art is rated higher on liking, beauty, profundity and worth than identical AI-labeled art | T4 (peer-reviewed experiment) | confirmed | https://doi.org/10.1186/s41235-023-00499-6 | 2023-07-04 | 2026-10-22 | Large replication with null result |
| R3D-20 | Handmade raises purchase intent for gifts to loved ones, driven by perceived love, not for distant recipients | T4 (peer-reviewed) | confirmed | https://doi.org/10.1509/jm.14.0018 | 2015-03 | 2026-10-22 | Field price data show no gift premium |
| R3D-21 | Bids for art and poetry fall as stated AI involvement rises (four preregistered auctions) | T4 (working paper via summary) | plausible | https://www.remio.ai/post/university-of-chicago-human-premium-study-finds-ai-can-lower-arts-value | 2026-10 | 2026-10-22 | Published version reports no effect |
| R3D-22 | AI-labeled stories get lower ratings but the same willingness to pay | T4 (discussion paper) | plausible | https://repec.iza.org/dp17646.pdf | 2025 | 2026-10-22 | Replication with a pay gap |
| R3D-23 | AI adopters on a large art platform produce 25% more and get about 50% more favorites per view | T4 (peer-reviewed) | confirmed | https://doi.org/10.1093/pnasnexus/pgae052 | 2024-02-29 | 2026-10-22 | Replication on other platforms |
| R3D-24 | No peer-reviewed transaction-based estimate of a cash premium for human-made consumer goods was found | T4 (search result) | plausible | this lane, section 2 item 9 and section 7 item 1 | 2026-10-22 | 2026-10-22 | Such a study exists |
| R3D-25 | Etsy take rate rose from 16.5% (2019) to 24.2% (2025), GMS fell 5.3% in 2025 to $11.92B | T0 | confirmed | https://www.sec.gov/Archives/edgar/data/1370637/000137063726000019/etsy-20251231.htm , https://www.sec.gov/Archives/edgar/data/1370637/000137063720000046/etsy1231201910k.htm | 2026-02-19 | 2026-10-22 | Restatement |
| R3D-26 | Meta average price per ad: -10% (2020), +24%, -16%, -9%, +10%, +9% (2025), +12%, +12%, +14% (Q1 to Q3 2026) | T0 | confirmed | https://www.sec.gov/Archives/edgar/data/1326801/000162828026003942/meta-20251231.htm , https://www.sec.gov/Archives/edgar/data/0001326801/000162828026066700/meta-09302026xexhibit991.htm | 2026-10-21 | 2026-10-22 | Restatement |
| R3D-27 | Google search cost per click: -6% (2020), +15%, -1%, +1%, +7%, +7% (2025) | T0 | confirmed | https://www.sec.gov/Archives/edgar/data/1652044/000165204426000018/goog-20251231.htm | 2026-02-05 | 2026-10-22 | Restatement |
| R3D-28 | Amazon ads rose from 23.5% (2019) to 41.9% (H1 2026) of third-party seller services revenue | T0 | confirmed | https://www.sec.gov/Archives/edgar/data/1018724/000101872426000004/amzn-20251231.htm , https://www.sec.gov/Archives/edgar/data/1018724/000101872426000026/amzn-20260630.htm | 2026-07-31 | 2026-10-22 | Segment reclassification |
| R3D-29 | PPI finished consumer goods less food and energy rose 26.7% (2019 to 2025) and 31.1% to 2026 year to date | T0 | confirmed | https://download.bls.gov/pub/time.series/wp/wp.data.0.Current (WPSFD41312) | 2026-10 | 2026-10-22 | BLS revision |
| R3D-30 | Since 2024 Meta and Google unit ad prices have risen faster than consumer-goods PPI, but over 2019 to 2025 Meta's lagged it by 19% | T0 plus arithmetic | confirmed | R3D-26, R3D-27, R3D-29 | 2026-10-22 | 2026-10-22 | Q4 2026 and 2027 price per ad below PPI inflation |
| R3D-31 | SEED OK: $1,000 automatic state-owned 529 deposit grew to about $2,300 by age 14 (end 2021) | T0 (program data) | confirmed | https://repository.library.washu.edu/csd_research/937 | 2022-06-06 | 2026-10-22 | n/a |
| R3D-32 | SEED OK raised the share of children of color with any OK 529 assets by 98 points (control 2%) | T0/T4 | confirmed | https://source.washu.edu/2021/04/child-development-accounts-generate-assets-parental-investments/ | 2021-04-09 | 2026-10-22 | n/a |
| R3D-33 | SEED OK lowered maternal depressive symptoms (CES-D 0.17 lower, p<.05), stronger for lower income, randomized n=2,704 | T4 (peer-reviewed RCT) | confirmed | https://doi.org/10.1016/j.socscimed.2014.04.023 | 2014-07 | 2026-10-22 | Later waves show fade-out |
| R3D-34 | SEED OK social-emotional effect at about age 4 is small and only marginally significant (unweighted -1.56, p=.06) | T4 (peer-reviewed RCT) | confirmed | https://doi.org/10.1001/jamapediatrics.2013.4643 | 2014-03 | 2026-10-22 | n/a |
| R3D-35 | Connecticut baby bonds: $3,200 per Medicaid-covered birth since 2023-07-01, about 15,000 to 16,000 a year, $600M over 12 years | T1/T2 | confirmed | https://portal.ct.gov/governor/news/press-releases/2023/05-2023/governor-lamont-treasurer-russell-legislative-leaders-announce-legislation-funding-ct-baby-bonds | 2023-05 | 2026-10-22 | Program defunded or changed |
| R3D-36 | Trump Account seed needs a family claim even after the 2026-10-01 auto accounts | T1/T4 | plausible | https://www.fennemorelaw.com/treasury-issues-temporary-regulations-on-trump-accounts-and-contributions/ | 2026-10 | 2026-10-22 | Treasury auto-deposits seeds |
| R3D-37 | Under current design the bottom-50% equity share moves from 0.58% to about 0.60 to 0.70% by 2045, about 0.82% with $100B AI equity, and needs about $500B of AI equity to pass 1.2% | model | plausible | trump_b50_model.py (section 9) | 2026-10-22 | 2026-10-22 | DFA 2045, or contributions by income far more progressive than assumed |
| R3D-38 | Much of any measured rise comes from young adults from richer families appearing as new low-wealth households (DFA view 0.70% vs family-origin 0.62% in the base case) | model | plausible | trump_b50_model.py | 2026-10-22 | 2026-10-22 | DFA by age shows otherwise |

## 11. Proposed changes to earlier rulings

1. **R1 RELOOP R-13 (bottom 50% hold 0.6% of equities, "unchanged for years").** Refine, not reverse: 0.58% in 2026 Q2, a floor of 0.53 to 0.66% since 2010 after a 30-year fall from a 1.65% peak (1996). Including DC pensions the share fell from 3.35% (1994) to 1.46%. Evidence: R3D-01, R3D-02.
2. **R2 M11 and Q6 (Trump Accounts are "the right pipe at the wrong size").** Strengthened with a number: under current design the bottom half's equity share rises only about 0.02 to 0.12 points by 2045 (R3D-37). Keep M11 confirmed 80. Add to the Q6 answer that automatic deposits, not auto-enrollment, are what SEED OK showed works (R3D-31, R3D-32, R3D-36).
3. **R2 M13 (ad prices).** Upgrade the evidence from T5 ("Meta CPMs up about 20%") to T0 (Meta price per ad +9% in 2025, +12 to 14% in 2026, Google CPC +7% in 2024 and 2025). But narrow the claim: over 2019 to 2025 Meta's unit price lagged producer prices by 19%, so "cheap AI creative raises auction prices" fits 2024 to 2026 only. The structural rise is in the toll share (Amazon ads 23.5% to 41.9% of seller services, Etsy take rate 16.5% to 24.2%). Keep M13 confirmed 75. Proposed new wording of the M13 driver: "platforms take a rising share of each sale, and since 2024 unit ad prices also outrun producer prices."
4. **R2 M15 (human-made premium, plausible 55).** Keep the status. Replace "No peer-reviewed study of a cash premium was found" with "peer-reviewed experiments show a label effect on ratings and purchase intent, and preregistered auctions show lower bids with AI involvement, but no transaction-based cash premium is measured, and platforms (Etsy) capture part of it." Close R2D gap 6 as "partly answered."
5. **R2 Q6 and C3 (housing rung broken, supply is the fix).** Add the land-share mechanism: in metros with land above about 50% of value, factory and robot savings reach buyers only with upzoning. Keep Q6 plausible 70. The supply route rates plausible 65 (R3-5).
6. **R2 C2 ruling (launch cost vs attention tolls).** Supported with T0 data. M10 stays 60.
7. **Scenario odds (S1 to S4).** No change proposed. These four questions decide who gains inside the dollar regime (distribution between owners and income-stream dependents), not which monetary regime holds. Nothing here moves the H0, H1 or H2 odds.
