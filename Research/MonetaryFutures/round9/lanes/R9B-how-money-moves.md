# R9B. How money moves: facts for a new Level 4 chapter (lane hand-in)

Lane R9B, written 2026-11-11 and 2026-11-12. Reader of the chapter: an 18-year-old. This file holds claims with numbers, sources and dates, not chapter prose. General education, not financial advice. Builds on Level 1 chapters rb-07 (musical chairs), rb-08 (seasons of money) and rb-buckets (when markets fall). Those chapters already teach: market cap as a price tag with a 1,000 share toy example, the six buckets, collateral chains, early versus late money, the five forces that move buckets, the seasons timeline from 1870 and the store-of-value-by-season table. This lane does not repeat them. It adds real 2026 numbers, the real effects of a listed price, the actor map with sizes, policy episodes, a season dashboard, a regime returns table, Cover's arithmetic and crash buyers.

Evidence ladder used: T0 money actually moved, T1 law, T2 officials' or companies' own words and data, T3 market prices, T4 specialists, T5 commentary. Status: V = verified from the source fetched this round. P = partly verified (secondary source or numbers differ between sources). M = from memory, unverified, must be checked before use. C = desk calculation from cited inputs (script in scratchpad, inputs listed).

Searches and fetches used: about 45 (over the 30 budget because the NVIDIA, watch and dashboard items needed fresh 2026 data). No email or personal identifier was sent in any request.

## Pass checklist

| Check | Result |
|---|---|
| Item 1 NVIDIA: dates, story, price, market value, volume, recovery, dollars traded versus "lost" | Done. The "cheating" story is real: an affair (marital infidelity) with a woman US officials reportedly called a Chinese intelligence asset. It is not cheating in a business or accounting sense. The fall was split across two different causes (see 1.4) |
| Item 1 rival causes and the same-day market (frame pre-mortem risk 2) | Done. Sector and index moves for each day in table 1.3 |
| Item 2 share versus watch, real effects of a listed price with sizes (frame pre-mortem risk 1) | Done. Watch index source found (WatchCharts via T4 and T5 reports). Peak-to-trough depth is P, not V |
| Item 3 actors with a verb and one size each | Done for 15 rows. PIF and GIC sizes are M |
| Item 4 policy levers with one episode each | Done. Several episode market moves are M (pre-2026 history not re-fetched), flagged |
| Item 5 dashboard with current readings | Done, 6 indicators, readings dated 28 Oct to 10 Nov 2026 |
| Item 5 regime returns table since 1970 | Done from Damodaran's published annual returns (1928 to 2025), with real returns from BLS CPI to 2024 |
| Item 6 Cover arithmetic checked with python3 -I, plus caveats in numbers (frame pre-mortem risk 3) | Done. Paper citations P (bibliographic records found, scanned PDF not machine-readable, the 4 times, 8 times and 75 times figures not checked against the paper) |
| Item 7 crash buyers with counter-evidence | Done. GAO figures P (abstract pages and summaries, PDFs not opened) |
| Claims table with falsifiers | Done, R9B-01 to R9B-62 |
| No em-dashes, en-dashes or semicolons in prose | Checked |
| Not committed | Yes |

Open gaps handed to the orchestrator: (a) US net equity issuance by year (Z.1 corporate equities) was not pulled. It is the key test of "money flows into stocks" (frame check B5-3). (b) NVIDIA 11 November close and any recovery after it. (c) Cover 1991 paper figures. (d) PIF and GIC current sizes. (e) A primary Morgan Stanley and WatchCharts report with the peak-to-date index change.

---

## 1. The NVIDIA fall, October and November 2026

### 1.1 The story, in order (all dates 2026)

| Date | Event | Source | Tier |
|---|---|---|---|
| 29 Oct | The New York Times reported that US officials had concluded Alice Huang, an executive at Megaspeed (a cloud firm and NVIDIA customer), was a Chinese intelligence asset. The FT reported similar | CNBC, 9 and 10 Nov | T4 (press report of officials' conclusions) |
| 3 Nov | US midterm elections. Democrats won control of both chambers of Congress | CNBC 9 Nov, GPB/NPR 5 Nov | T2 (election result) |
| 5 Nov | Tech rout on fears of AI regulation and a slower data centre buildout. A bill from Sen. Sanders and Rep. Ocasio-Cortez would pause new US data centre projects. NPR put the global tech loss at about $2 trillion, the Nasdaq down more than 5% | GPB/NPR (Rafael Nam), 5 Nov. BeInCrypto on the bill | T3, T4 |
| 8 Nov (Sunday) | NVIDIA's board announced an independent investigation after reports that Jensen Huang was the target of a "foreign intelligence effort". Huang emailed staff that he had been "unfaithful" to his wife and had "fallen short" as CEO | CNBC, 9 and 10 Nov | T2 (company and CEO words as reported) |
| 9 Nov | NVIDIA closed down 4.27%. China's Foreign Ministry called the spy narrative unsubstantiated. President Trump said the FBI is investigating and that Huang would "be in good shape" | CNBC 9 Nov | T2, T3 |
| 10 Nov | NVIDIA fell another 5.47%. Market value briefly dipped below $4 trillion in the afternoon, closed above it | CNBC 10 Nov | T3 |
| By 10 Nov | Rosen Law Firm filed a class action in federal court in San Jose for buyers from 9 Oct to 8 Nov, alleging misleading statements about the affair and the Megaspeed relationship | CNBC 10 Nov, Engadget | T4 (a filing is an allegation, not a finding) |
| 17 Nov (scheduled) | NVIDIA third quarter results | CNBC 9 Nov | T2 |

Analyst view (T5): Dan Ives put the chance Huang is removed at about 15% and said a board probe could take four to six weeks (CNBC 10 Nov).

### 1.2 NVIDIA daily prices (stockanalysis.com history page, fetched 11 Nov 2026)

| Date | Open | High | Low | Close | Change | Shares traded |
|---|---|---|---|---|---|---|
| 29 Oct | 214.36 | 215.33 | 212.08 | 213.66 | -0.80% | 77.6 million |
| 30 Oct | 208.94 | 209.06 | 200.92 | 204.64 | -4.22% | 168.4 million |
| 2 Nov | 207.53 | 209.98 | 201.66 | 202.06 | -1.26% | 119.3 million |
| 3 Nov | 207.96 | 209.14 | 205.93 | 206.69 | +2.29% | 91.9 million |
| 4 Nov | 203.50 | 206.79 | 199.68 | 200.13 | -3.17% | 149.0 million |
| 5 Nov | 196.07 | 196.25 | 181.46 | 181.60 | -9.26% | 306.1 million |
| 6 Nov | 191.10 | 194.90 | 185.22 | 186.64 | +2.78% | 180.2 million |
| 9 Nov | 173.07 | 179.92 | 170.24 | 178.67 | -4.27% | 462.7 million |
| 10 Nov | 173.97 | 174.69 | 165.89 | 168.89 | -5.47% | 429.2 million |

Earlier context from the same page: close 239.24 on 6 Oct, the highest close in October. The 10 Nov close is 29.4% below it.

Market value on 10 Nov: $4.08 trillion (stockanalysis market cap page). Implied shares: 4.08 trillion / 168.89 = about 24.16 billion (desk calculation, not a filing figure. The 10-Q share count should replace it).

Recovery: not recovered as of the 10 Nov close. The 6 Nov bounce (+2.78%) was erased on 9 Nov. No 11 Nov close was available when fetched.

### 1.3 Same-day moves: NVIDIA against the chip sector and the market (stockanalysis ETF history pages, fetched 11 Nov)

| Date | NVIDIA | SMH (chip ETF) | QQQ (Nasdaq 100 ETF) | SPY (S&P 500 ETF) | Reading |
|---|---|---|---|---|---|
| 30 Oct | -4.22% | -6.98% | -3.47% | -1.77% | Sector-wide. NVIDIA fell less than its sector. Cause of the sector fall not researched |
| 5 Nov | -9.26% | -11.21% | -6.49% | -4.41% | Sector-wide, political (midterm result and data centre bill fears). NVIDIA fell less than its sector |
| 9 Nov | -4.27% | +5.05% | +3.54% | +2.37% | Company-specific. Chips rallied (CNBC: AMD +13.3%, Broadcom +8.8%) while NVIDIA fell |
| 10 Nov | -5.47% | -0.78% | -0.68% | -0.37% | Mostly company-specific |

Caution: Zacks gives S&P 500 index daily changes for 3 and 4 Nov (-0.5% and +0.4%) that do not match these SPY figures (+0.30% and +1.65%). Use the ETF figures for direction and rough size only, and pull index closes from S&P Dow Jones Indices before printing exact numbers.

### 1.4 What caused the fall: rival readings

| Reading | Evidence for | Evidence against | Verdict |
|---|---|---|---|
| The affair and spy story caused the whole fall | Timing of the 9 and 10 Nov drops. Peers rose on 9 Nov | Most of the fall from the October high came before 8 Nov. From 213.66 (29 Oct) to 186.64 (6 Nov) the stock fell 12.6%, mostly with its sector | Explains about the last 9.5% (186.64 to 168.89), not the whole fall |
| Politics and AI policy (midterms, data centre moratorium bill) | 5 Nov: chip ETF -11.2%, Nasdaq ETF -6.5% | No law has passed. The new Congress sits from 3 January | The largest single day (5 Nov) is this |
| Sector selling on AI spending worries | 30 Oct chip ETF -7.0% | Cause of 30 Oct not researched by this lane | Open |
| Money rotating from NVIDIA into rival chip makers | 9 Nov: AMD +13%, Broadcom +8.8 to 10% while NVIDIA fell | Rivals' gains in dollars not computed | Consistent with rotation inside the chip bucket, not money leaving it |

Teaching point (frame risk 2): the owner's "cheating story" is real, but it explains only the last two days. A headline gives one cause for a fall that had at least two.

### 1.5 Worked example: market value versus money actually traded (desk calculation)

Inputs: closes, volumes, highs and lows from table 1.2, 24.16 billion shares. Dollars traded is estimated as shares traded times the typical price ((high + low + close) / 3). The range uses the day's low and high, so the true figure must lie inside it.

| Day | Price change | Market value change | Dollars actually traded (estimate, range) | Market value change / dollars traded | Share of all NVIDIA shares that changed hands |
|---|---|---|---|---|---|
| 5 Nov | -9.26% | about -$448 billion | about $57 billion ($55.5 to $60.1 billion) | about 7.8 | 1.27% |
| 9 Nov | -4.27% | about -$193 billion | about $82 billion ($78.8 to $83.3 billion) | about 2.4 | 1.92% |
| 10 Nov | -5.47% | about -$236 billion | about $73 billion ($71.2 to $75.0 billion) | about 3.2 | 1.78% |
| 9 and 10 Nov together | -9.5% | about -$429 billion | about $155 billion | about 2.8 | 3.7% (some shares traded twice) |
| 29 Oct to 10 Nov | -21.0% | about -$1.08 trillion | not summed | | |

Notes on the numbers:
- A press figure of "more than $470 billion over two days" appeared in a search summary (CBS via Yahoo) but was not found in the fetched text. The desk's own figure from closes is about $429 billion. Use the desk figure with its method, or find the exact press line.
- Every dollar in the "dollars traded" column went from a buyer to a seller. None of it vanished. The buyer's cash fell and the seller's cash rose by the same amount.
- On the calmest of the three days (9 Nov), the market value change was still about 2.4 times all the cash that changed hands, and on 5 Nov it was about 7.8 times. On any day, about 98% of shares did not trade at all, yet all were re-marked at the new price.
- The overcorrection guard: the holders of the 98% of shares that did not trade really can sell for less today. Section 2.3 lists what follows from that.

## 2. Listed share versus vintage watch

### 2.1 How often each is priced

| Feature | NVIDIA share | Vintage or luxury watch |
|---|---|---|
| How often a price is set | Continuously in trading hours. 429 million shares changed hands on 10 Nov 2026 (T3) | Each model trades a few times a month in dealer and online sales. Big auction houses hold major watch sales a few times a year, for example Geneva in spring and autumn (M) |
| Who sees the price | Everyone, in real time, free | Dealers, auction catalogues and index providers such as WatchCharts, which build an index from listings and sales (method not confirmed this round) |
| Identical units | Yes, 24 billion interchangeable shares | No, each watch differs in condition, papers and history |
| In an index that others must follow | Yes, NVIDIA is the largest or near-largest weight in the S&P 500 and Nasdaq 100 (weight not pulled this round) | No investable index fund must buy watches |
| Pledged as collateral | Routinely, via margin loans ($1.48 trillion of US margin debt, September 2026) | Rarely, through specialist pawn or luxury lenders (size not researched) |
| Headline when it falls | "NVIDIA lost $X billion" | Rarely |

### 2.2 The watch market fell after 2022, with almost no headlines

| Fact | Source | Tier | Status |
|---|---|---|---|
| WatchCharts Overall Market Index peaked in spring 2022 (sources say March, April or May 2022) | WatchCharts articles and press, via search | T4 | P |
| Reported drops from the peak: 32% (early report), more than 35% by October 2023 (Axios), 37% (2024 piece) | Search summaries of Axios (14 Oct 2023) and others. Axios page returned 403 | T4 | P |
| The index fell 5.1% in the year to December 2024. Rolex -4.9%, Patek Philippe -6.5%, Audemars Piguet -7.4% | Quill & Pad, WatchCharts December 2024 update, about 24 Dec 2024 | T4 | V |
| Morgan Stanley and WatchCharts 1Q25: the index fell 0.4% in the quarter, the smallest quarterly fall since 2Q22 | Quill & Pad report summary via search | T4 | P |
| 2026 recovery: index level 37,289 on 19 June 2026, up about 9% over the trailing year. Monthly 2026: Jan +0.8%, Feb +0.6%, Mar +0.1%, Apr +2.1%, May -1.4% | 5dwatches.com, 24 June 2026, citing WatchCharts | T4/T5 | V (as reported) |
| Morgan Stanley and WatchCharts 2Q26: index up about 1.5% in the quarter. 3Q26: up 1.4% | Search summaries, July and October 2026 | T4 | P |
| Rolex is more than half of the overall index by transaction value | WatchCharts via search | T4 | P |
| The 2022 rate rise is commonly named as a main driver of the watch fall | Business Insider and others via search | T5 | P |

Contrast for the chapter: the watch index fell by roughly a third from 2022 to 2024 (P). No margin calls, no index funds forced to sell, no pension marks, no "$X lost" headlines. A watch owner who did not sell had a paper loss nobody recorded. That is the difference visibility and linkage make, not whether value changes.

### 2.3 Why a listed price matters beyond its owner (each with a size)

| Channel | What happens when the listed price falls | One size | Source and status |
|---|---|---|---|
| Margin loans and collateral | Lenders lend against the market price. A fall shrinks borrowing power and can force sales | US customer margin debit balances $1.480 trillion in September 2026. Record $1.502 trillion in June 2026. July fell about $85 billion, the largest monthly fall in a record that starts in 1997 | FINRA margin statistics page (V for levels). Record-drop claim from thetrading.tools via search (P) |
| Margin rules | Federal rules set how much you may borrow against shares | Initial margin 50% (Federal Reserve Regulation T). Maintenance at least 25% (FINRA Rule 4210) | T1, M (not re-fetched) |
| Index funds and passive holders | Index funds hold every member at its market value. Their holders' accounts fall the same day | Passive funds hold about $22 trillion against about $16.9 trillion active in US funds (Morningstar, date unclear). Passive passed active at end 2023, $13.29 trillion to $13.23 trillion | Morningstar via search, P |
| Pension and sovereign fund marks | Large funds report at market value every quarter | Norway's fund returned -0.5% in 3Q26, an accounting loss of about NOK 278 billion (about $29.7 billion), value NOK 22,014 billion at end September 2026 | europeanpensions.net and Benefits and Pensions Monitor, Oct 2026, P (NBIM release not fetched) |
| Wealth effect on spending | People who feel richer spend more, and the reverse | 3.2 cents of extra spending per year for each $1 of stock wealth (Chodorow-Reich, Nenov and Simsek, American Economic Review 2021, vol 111 no 5, pp 1613 to 1657). Earlier working paper said 2.8 cents | NBER and AER via search, V for the figure |
| Wealth effect, applied (desk illustration) | If the roughly $2 trillion tech loss of 5 Nov 2026 lasted a year and all of it were US household wealth, 3.2 cents per dollar implies about $64 billion less spending in a year. An upper bound, since foreign and institutional holders own a large share | C |
| Executive pay and share-based funding | Staff and executives are paid partly in shares. A lower price means more shares must be issued for the same pay, or less pay value. A firm that raises money by selling shares gets less per share | No 2026 size pulled | Mechanism only |
| Firm's cost of fresh capital | A lower price raises the cost of raising equity and can delay projects or acquisitions paid in shares | No size pulled | Mechanism only |
| Bank capital rules | Banks holding shares must hold capital against them. Under Basel rules equity exposures carry high risk weights (100% to 400% depending on type) | M |
| Founders' pledged shares | Founders who borrow against their shares can face margin calls | Not researched for NVIDIA | Open |
| Tax | Capital gains tax is due only when sold. A paper loss changes no tax until sale | Mechanism only | |

Overcorrection line for the chapter (frame risk 1): "No cash vanished" is true for the trades. "Nothing was lost" is false: borrowing power, spending, pension values and the firm's cost of capital all fell with the price.

## 3. Who moves money: actors with a verb and one size

Named institutions only. Industry "blocs" are labels for named firms, not actors with one will.

| Actor | Verb | One current size | As of | Source | Tier | Status |
|---|---|---|---|---|---|---|
| Federal Reserve (policy rate) | sets the price of overnight money | Target range 3.75% to 4.00% after a quarter point rise on 16 Sep 2026 (12-0 vote). Held on 28 Oct 2026 (10-2, Cook and Hammack wanted a rise). Interest on reserves 3.90% | 28 Oct 2026 | federalreserve.gov press release 28 Oct 2026, stockanalysis news | T1/T2 | V |
| Federal Reserve (balance sheet) | creates or retires bank reserves by buying or letting bonds run off | Total assets $6.748 trillion, up $175 billion on the year. Treasuries $4.579 trillion (+$386 billion), mortgage bonds $1.884 trillion (-$186 billion). Runoff (QT) ended 1 Dec 2025, then bill purchases to manage reserves | Wed 4 Nov 2026 | H.4.1 release 5 Nov 2026 | T0/T2 | V |
| Bank reserves at the Fed | the upstairs money banks settle with | $2.963 trillion | 4 Nov 2026 | H.4.1 | T0 | V |
| US Treasury (borrowing) | borrows from markets to cover the deficit | $618 billion of net marketable borrowing planned for Oct to Dec 2026, assuming $850 billion cash at end December. November refunding $125 billion | 2 and 4 Nov 2026 | Treasury press release 2 Nov 2026, primerates.com | T2 | V/P |
| US Treasury (cash account) | parks or releases cash at the Fed, which drains or adds reserves | Treasury General Account $936 billion, down $79 billion in the week | 4 Nov 2026 | H.4.1 | T0 | V |
| Commercial banks | create deposits when they lend | Loans and leases $14.10 trillion, up 7.6% on the year | Sep 2026 | Fed H.8 via DBnomics (B1020NCBAM) | T0 | V (C for growth) |
| Broad money (M2) | (result, not actor) | $23.41 trillion, up 5.7% on the year | Sep 2026 | Fed H.6 via DBnomics | T0 | V (C for growth) |
| BlackRock | gathers savings into funds and votes the shares | $15.49 trillion managed, record, net inflows about $205 billion in 3Q26 | 30 Sep 2026 | Advisor Perspectives on BlackRock 3Q26 results, 19 Oct 2026 | T2 via T4 | P |
| Vanguard and State Street | same | Vanguard about $11.6 trillion (1Q26). State Street about $5.7 trillion (end 2025). Top three combined at least $33.5 trillion (about end July 2026) | mixed | altss.com, Funds Society | T5 | P |
| Index and passive funds | buy and sell by rule as money flows in or out | About $22 trillion passive against $16.9 trillion active in US funds. Index ETFs 87.5% of ETF assets (June 2026) | 2026 | Morningstar | T4 | P |
| S&P 500 companies (buybacks) | retire their own shares with cash | $1.10 trillion repurchased in the 12 months to June 2026, a record (Bloomberg data). S&P DJI figure for 12 months to June 2025: $997.8 billion | Jun 2026 | Neuberger Berman Market Signals, S&P DJI press release Sep 2025 | T4 | P |
| Market makers (Citadel Securities) | quote buy and sell prices and hold stock briefly | About 35% of all US-listed retail volume (company claim) | 1H 2026 | Citadel Securities 1H 2026 Market Structure and Flows | T2 (self-reported) | V (as claimed) |
| Retail investors | buy and sell through brokers | Retail cash equity trading in May and June 2026 ran about 65% above the 2025 average. Robinhood margin book $21.5 billion (end Aug 2026) | 2026 | Citadel Securities 1H 2026, Robinhood via cryptobriefing | T2/T4 | P |
| Margin borrowers | borrow against shares to buy more | $1.480 trillion | Sep 2026 | FINRA | T0 | V |
| Foreign holders of Treasuries (official and private) | lend to the US government | $9.25 trillion total. Japan $1.104 trillion, China about $618 billion (custody basis) | about July 2026 TIC data | 247wallst 29 Sep 2026, Voronoi | T4 (on TIC T0) | P |
| Norway, Government Pension Fund Global | invests oil income in world shares and bonds | NOK 22,014 billion (about $2.3 trillion), 72% shares | 30 Sep 2026 | europeanpensions.net, oilprice.com | T4 | P |
| Saudi PIF | invests state wealth at home and abroad | Size not fetched (M: under $1 trillion in its last annual report) | | | | M |
| GIC (Singapore) | manages state reserves | Does not publish its size. Outside estimates near $800 billion (M) | | | | M |
| Finance (named firms) | gather and allocate savings | Top three asset managers at least $33.5 trillion combined (above) | 2026 | as above | | P |
| Technology (Amazon, Alphabet, Microsoft, Meta) | spend cash on data centres and AI chips | About $730 billion of 2026 capital spending guided: Amazon about $220 billion, Alphabet $195 to $205 billion, Microsoft about $170 billion (calendar, derived), Meta $135 to $145 billion | late Oct 2026 guidance | Walnut AI capex tracker, FourWeekMBA (aggregators of company guidance) | T2 via T5 | P |
| Defence (US Department of Defense, called Department of War in the request) | buys weapons and services from contractors | FY2027 request $1.5 trillion: $1.15 trillion base plus $350 billion hoped for from a reconciliation bill. Not enacted as far as found | Apr 2026 request | CSIS "Unpacking the $1.5 Trillion FY 2027 Defense Budget Topline", Breaking Defense | T2 | V (request), open (enactment) |

Scale against the pool (for the chapter): the four tech firms' 2026 capital spending (about $730 billion) is about 10 times the cash that changed hands in NVIDIA shares on 10 Nov (about $73 billion). That spending is real money moving to chip makers, builders and power firms. A share price fall moves no money at all.

## 4. Policy levers and how each moves money between buckets

| Lever | How it moves money between buckets | Documented episode | Market move | Status |
|---|---|---|---|---|
| Rate rises | Raises the reward on cash and bills, cuts the present value of distant profits and of bonds | Fed rises from March 2022 | 2022 calendar year: S&P 500 -18.0%, 10-year Treasury -17.8%, T-bills +2.1% (Damodaran annual returns) | V for returns, M for Fed dates |
| Rate rise, 2026 | Same | Quarter point rise 16 Sep 2026 to 3.75% to 4.00% | 10-year yield was near 5.17% in late September after a sell-off, 4.98% on 10 Nov 2026 | V (Fed), P (late Sept yield via Dow Jones summary), V (10 Nov from Treasury) |
| QE (buying bonds) | Fed creates reserves and buys bonds. Sellers get deposits and look for other assets | 23 Mar 2020 open-ended purchases | S&P 500 bottomed on 23 Mar 2020 and ended 2020 up 18.0% total return (Damodaran). Fed assets rose from about $4.2 trillion to about $7 trillion by mid 2020 | V (2020 return), M (date of low, Fed sizes) |
| QT (runoff) | Fed lets bonds mature without replacing them. Reserves shrink and private buyers must absorb more bonds | June 2022 to 1 Dec 2025 | Fed assets fell from about $9 trillion (2022 peak, M) to about $6.6 trillion, then rose to $6.75 trillion by Nov 2026 after runoff ended | M for peak, V for end date and current |
| Fiscal deficits | Government spending puts deposits in private hands. Borrowing adds bonds the market must buy | 2020 pandemic packages. 2023 heavier refunding | 2020: M2 grew about 25% (M). Aug to Oct 2023: 10-year yield rose to about 5% (M) | M |
| Tariffs | Raise import costs, cut expected profits of importers and exporters, shift money toward safe buckets | 2 Apr 2025 broad tariff announcement, 9 Apr 2025 pause | S&P 500 fell about 12% over the following days, then rose about 9.5% on 9 Apr 2025 (M) | M |
| Export rules (a form of trade policy) | Cut a firm's expected sales | April 2025 US curbs on NVIDIA H20 chip sales to China | About $266 billion of NVIDIA market value lost over two days (gurufocus via search) | P |
| Stablecoin law | Forces issuers to hold cash and short Treasury bills, so stablecoin growth fills the bill bucket by design | GENIUS Act, signed July 2025 (M date) | Already in Level 1 rb-buckets and chapter 15. No market move pulled | M |
| Bank rules (capital, leverage ratio) | Looser rules let banks hold more Treasuries and lend more. Tighter rules do the reverse | 2023 bank failures (Silicon Valley Bank, 10 Mar 2023) showed rate rises plus bank rules can move deposits fast | KBW bank index fell about 28% in March 2023 (M) | M |
| Proposed data centre moratorium (a bill, not law) | Expected cut in AI spending shifts money out of chip shares | Bill announced around 5 Nov 2026 | 5 Nov 2026: chip ETF -11.2%, NVIDIA -9.26%, Nasdaq 100 ETF -6.5% | V (prices), P (bill details) |

## 5. Seasons for investors

### 5.1 Dashboard: six readings that say which season we are in

| Indicator | Reading | As of | Source | Plain reading |
|---|---|---|---|---|
| Real interest rate: 10-year TIPS yield | 2.78% (5-year 2.56%) | 10 Nov 2026 | US Treasury daily real yield curve CSV | High. Cash and bonds pay well above inflation. Hard season for gold and long-duration growth shares |
| Inflation trend: CPI | 3.7% year on year in September, up from 3.4% in August. Core 2.6%. Gasoline was over half of the monthly rise | Sep 2026 (released 14 Oct) | Press reports of the BLS release (investinglive, AP via fox10tv) | Rising, energy-led |
| Credit spreads: ICE BofA US high yield option-adjusted spread | 3.14 points (314 basis points), from 2.63 in late August | 28 Oct 2026 | FRED series BAMLH0A0HYM2 via search summary | Calm but widening. Lenders are asking a bit more for risk |
| Yield curve: 10-year minus 2-year Treasury | 4.98% - 4.73% = +0.25 points. 10-year minus 3-month: +0.68 points | 10 Nov 2026 | US Treasury daily yield curve CSV | Positive, not inverted |
| Dollar index (DXY) | about 101.7 | 21 Oct 2026 | tradingeconomics via search | Middling, in a 100 to 102 range since summer |
| Money and credit growth | M2 +5.7%, bank loans +7.6% year on year | Sep 2026 | Fed H.6 and H.8 via DBnomics | Credit growing faster than prices. Banks are lending |

Desk reading (to be argued by the red team, not taught as fact): a warm season with high real rates. Inflation is rising but rates are well above it. That combination last held for long in 1980 to 1982 (see 5.2), when cash and bills paid well and gold fell.

### 5.2 How the buckets did in each season, 1971 to 2025

Source: Aswath Damodaran, "Historical Returns on Stocks, Bonds and Bills: 1928 to 2025", NYU Stern, updated 5 January 2026 (pages.stern.nyu.edu/~adamodar/New_Home_Page/datafile/histretSP.html). Columns: S&P 500 with dividends, 3-month T-bill, 10-year Treasury bond, gold, and US real estate (Damodaran's home price series, not property total return with rents). Each cell is the average yearly return over the period (geometric, compounded), nominal / real. Real uses BLS CPI December to December (DBnomics mirror, series CUUR0000SA0). Desk calculation (C).

| Season | Years | CPI per year | Shares | Cash (T-bills) | Bonds (10-year) | Gold | Property (home prices) |
|---|---|---|---|---|---|---|---|
| Great Inflation | 1971 to 1979 | 7.6% | 6.2 / -1.3 | 6.3 / -1.2 | 4.2 / -3.1 | 33.7 / 24.3 | 8.8 / 1.1 |
| Volcker squeeze, high real rates | 1980 to 1982 | 8.4% | 14.8 / 5.9 | 12.2 / 3.5 | 11.7 / 3.1 | -3.5 / -11.0 | 4.3 / -3.7 |
| Long bond summer | 1983 to 2007 | 3.1% | 12.6 / 9.2 | 5.2 / 2.0 | 8.5 / 5.3 | 2.4 / -0.7 | 5.2 / 2.0 |
| Crash year | 2008 | 0.1% | -36.5 / -36.6 | 1.4 / 1.3 | 20.1 / 20.0 | 4.3 / 4.2 | -12.0 / -12.1 |
| Zero rates and QE | 2008 to 2014 | 1.6% | 7.2 / 5.5 | 0.3 / -1.3 | 4.8 / 3.2 | 5.4 / 3.7 | -0.6 / -2.1 |
| Low inflation, slow rate rises | 2015 to 2019 | 1.8% | 11.6 / 9.6 | 1.1 / -0.7 | 2.8 / 1.0 | 4.8 / 2.9 | 5.0 / 3.1 |
| Pandemic money surge | 2020 to 2021 | 4.2% | 23.1 / 18.2 | 0.2 / -3.8 | 3.2 / -1.0 | 9.3 / 5.0 | 14.6 / 10.0 |
| Rate shock year | 2022 | 6.5% | -18.0 / -23.0 | 2.1 / -4.1 | -17.8 / -22.8 | 0.6 / -5.5 | 5.6 / -0.8 |
| Inflation surge and after | 2022 to 2024 | 4.2% | 8.9 / 4.5 | 4.2 / 0.0 | -5.7 / -9.5 | 12.8 / 8.2 | 5.1 / 0.8 |
| 2025 alone (nominal only) | 2025 | not in mirror | 17.8 | 4.2 | 7.8 | 66.2 | 1.6 |
| Whole period | 1970 to 2024 | 3.9% | 10.9 / 6.7 | 4.5 / 0.5 | 6.1 / 2.1 | 7.8 / 3.7 | 5.3 / 1.3 |

Caveats: 2025 real returns are missing because the CPI mirror ends at January 2025 (BLS December 2025 CPI should be added). Gold in 1971 to 1979 starts from a fixed official price, so the 33.7% partly reflects the end of the gold peg. Damodaran's 1928 to 2024 page title lags its own 2025 row. Property here is home prices without rent, so it understates the owner's total return and ignores leverage.

## 6. Cover's lecture: arithmetic checked with python3 -I

Script: scratchpad code/calc.py (inputs typed in, no downloads read).

### 6.1 The coin example

| Strategy | Each period wealth multiplies by | Growth per period (geometric) | After 20 periods (typical) |
|---|---|---|---|
| Cash only | 1 | 0% | 1 |
| Stock only (doubles or halves, equal odds) | 2 or 0.5 | 0% (square root of 2 x 0.5 = 1). Average gain is +25%, typical gain is 0 | median 1, mean about 81 (pulled up by rare lucky runs) |
| Half and half, rebalanced every period | 1.5 or 0.75 | +6.07% (square root of 1.125 = 1.0607) | 3.25 |
| Best fixed mix (Kelly) | | 50% stock is the best fixed mix, growth 6.07% | |

Simulation (100,000 runs of 20 periods): the rebalanced pot beat the stock alone in 74.8% of runs. The stock alone ended below where it started in 41% of runs. The rebalanced pot still ended below its start in 25% of runs. So "6% a period" is the typical rate over many periods, not a promise for any one person.

### 6.2 Volatility drag

| Fall | Rise needed to get back |
|---|---|
| 10% | 11.1% |
| 20% | 25% |
| 30% | 42.9% |
| 50% | 100% |
| 80% | 400% |

### 6.3 Margin and the Kelly ceiling (same coin stock, borrowing at 0%)

| Share of wealth in the stock | Factors | Growth per period |
|---|---|---|
| 50% | 1.5 or 0.75 | +6.07% |
| 100% | 2 or 0.5 | 0% |
| 150% (borrowing half) | 2.5 or 0.25 | -20.9% |
| 190% | 2.9 or 0.05 | -61.9% |
| 200% | 3 or 0 | ruin on the first halving |

### 6.4 Caveats in numbers (frame risk 3)

| Caveat | Number |
|---|---|
| Trading costs | Rebalancing trades about 16.7% of the pot every period. At 1% cost per dollar traded, growth falls from 6.07% to 5.89%. At 2%, to 5.71% |
| Taxes | Each up period sells winners and realises a gain, so taxes are due every year in a taxable account. Buy and hold defers them. Not modelled |
| A trending stock | If the stock goes up 60% or down 20% with equal odds, holding it alone grows 13.1% a period, half and half rebalanced grows only 8.2%. Rebalancing loses when one asset trends up |
| Mean reversion is assumed | The example needs a stock whose swings cancel out. Real shares have drift, fat tails and can go to zero (a share that halves and keeps halving) |
| Hindsight | The best fixed mix is only known afterwards. The lecture's two-stock example (one grew 4 times, one 8 times, a rebalanced mix about 75 times) picks the mix after the fact. Not checked against the paper (M) |
| Universal portfolio bound | It promises to come within a factor of roughly the square root of n of the best fixed mix chosen in hindsight. One standard form for two assets is at least 1 / (2 x square root of (n + 1)) of it. With n = 20 periods that is about 0.11, with n = 250 trading days about 0.032, with n = 5,000 days (20 years) about 0.007. The growth rate converges, but the money ratio can stay large for a long time |
| Side information | Raises the growth rate by at most its mutual information with the outcome. Most tips carry almost none |
| Cash in 2007 to 2008 | All cash was the best long-only choice in that window (lecture claim). In 2008, T-bills returned 1.4% and shares -36.5% (Damodaran). Over 1970 to 2024 cash returned only 0.5% a year after inflation |

### 6.5 Sources for the papers

| Paper | Citation | Where found | Status |
|---|---|---|---|
| Thomas M. Cover, "Universal Portfolios" | Mathematical Finance, vol 1, issue 1, January 1991, pp 1 to 29 | econpapers.repec.org record RePEc:bla:mathfi:v:1:y:1991:i:1:p:1-29. Scanned copy at gwern.net (not machine-readable) | P (bibliographic only) |
| John L. Kelly Jr., "A New Interpretation of Information Rate" | Bell System Technical Journal, vol 35, no 4, July 1956, pp 917 to 926, DOI 10.1002/j.1538-7305.1956.tb03809.x | Wikipedia citation and a PDF copy hosted by Scuola Normale Superiore (homepage.sns.it/marmi/esameIUE/kelly.pdf) | P |
| Cover and Thomas, Elements of Information Theory, chapter on gambling and portfolio theory | Textbook | not fetched | M |

## 7. Who buys after a crash

| Episode | Buyer and what they bought | Size | Source | Tier | Status |
|---|---|---|---|---|---|
| After 2008, US homes | Blackstone's Invitation Homes bought foreclosed single-family homes to rent | About $4 billion for 24,000 homes in 2012 | Benzinga via search (secondary) | T5 | P, needs filing |
| After 2008, US homes, totals | 32 institutional investors owned about 450,000 single-family homes by 2022. The five largest owned nearly 300,000 | GAO-24-106643 (May 2024), via summaries | T2 | P |
| Local concentration | Institutional share of single-family rentals: Atlanta 25%, Jacksonville 21%, Charlotte 18%, Tampa 15% (June 2022) | GAO-24-106643 | T2 | P |
| After 2008, banks | Berkshire Hathaway put $5 billion into Goldman Sachs preferred shares with warrants, September 2008 | M | M |
| 2020, the Fed as buyer | The Fed announced corporate bond buying in March 2020. Actual purchases were small (about $14 billion, M) but spreads fell on the announcement | M | M |
| 2020, firms as borrowers | US companies issued record bonds in 2020 to hold cash (size M, SIFMA has it) | M | M |
| 2020, retail | Record new brokerage accounts and retail buying in 2020 (size M). In 2026 Citadel Securities logged its largest ever day of retail net buying on 12 June 2026 (SpaceX listing) | Bloomberg Government via search | T4 | P |
| 2026, the NVIDIA days | Every share sold on 9 and 10 Nov had a buyer: about $155 billion of buying in two days | Section 1.5 | C | C |

Counter-evidence:
- Small share nationally: the five largest investors held nearly 2% of single-family rental homes nationally (GAO summary). GAO-26-108675 (March 2026), using a 5,000 home threshold, found these investors owned 4% (Seattle) to 22% (Jacksonville) of single-family rentals but under 1% to 3% of all single-family homes in six metros (P).
- Counts depend on definitions: an Urban Institute estimate put large-investor ownership at 574,000 homes in June 2022 (forum citation, T5, P).
- The famous long-term buyer did not buy in 2020: Berkshire Hathaway sold its airline stakes in spring 2020 rather than buying the dip (M).
- Most post-crash buying is by ordinary holders who keep buying through index funds and pensions on a schedule, not by a few rich buyers with a plan (mechanism, needs ICI flow data).

---

## Claims table

| id | claim | tier | status | source URL | source date | as-of date | falsifier |
|---|---|---|---|---|---|---|---|
| R9B-01 | The NYT reported on 29 Oct 2026 that US officials concluded Alice Huang of Megaspeed, an NVIDIA customer, was a Chinese intelligence asset | T4 | P | https://www.cnbc.com/2026/11/10/nvidia-nvda-jensen-huang-affair-chinese-spy.html | 2026-11-10 | 2026-10-29 | The NYT article is dated otherwise or says something different |
| R9B-02 | On 8 Nov 2026 NVIDIA's board opened an independent investigation and Huang emailed staff that he had been "unfaithful" and had "fallen short" | T2 | V | https://www.cnbc.com/2026/11/09/nvidia-jensen-huang-chinese-spy-investigation.html | 2026-11-09 | 2026-11-08 | An NVIDIA statement with a different date or wording |
| R9B-03 | The owner's "cheating" story is an affair, not cheating in business or accounts | T4 | V | https://www.cnbc.com/2026/11/09/nvidia-jensen-huang-chinese-spy-investigation.html | 2026-11-09 | 2026-11-11 | Reports of a separate fraud or accounting story |
| R9B-04 | NVIDIA closed at 178.67 on 9 Nov 2026, down 4.27%, on 462.7 million shares | T3 | V | https://stockanalysis.com/stocks/nvda/history/ | 2026-11-11 | 2026-11-09 | Exchange data shows a different close or volume |
| R9B-05 | NVIDIA closed at 168.89 on 10 Nov 2026, down 5.47%, on 429.2 million shares | T3 | V | https://stockanalysis.com/stocks/nvda/history/ | 2026-11-11 | 2026-11-10 | Exchange data differs |
| R9B-06 | NVIDIA fell 9.26% to 181.60 on 5 Nov 2026 on 306.1 million shares, its largest one-day fall in this window | T3 | V | https://stockanalysis.com/stocks/nvda/history/ | 2026-11-11 | 2026-11-05 | Exchange data differs |
| R9B-07 | NVIDIA's market value was $4.08 trillion at the 10 Nov 2026 close, implying about 24.16 billion shares | T3 | V (cap), C (shares) | https://stockanalysis.com/stocks/nvda/market-cap/ | 2026-11-11 | 2026-11-10 | NVIDIA's 10-Q share count differs by more than 1% |
| R9B-08 | NVIDIA's market value briefly fell below $4 trillion on 10 Nov and closed above it | T3 | V | https://www.cnbc.com/2026/11/10/nvidia-nvda-jensen-huang-affair-chinese-spy.html | 2026-11-10 | 2026-11-10 | Intraday data shows it stayed above |
| R9B-09 | NVIDIA lost about $193 billion of market value on 9 Nov and $236 billion on 10 Nov, about $429 billion over two days | T3 | C | https://stockanalysis.com/stocks/nvda/history/ | 2026-11-11 | 2026-11-10 | A press figure from closes and filed share count differs by more than 5% |
| R9B-10 | About $82 billion of NVIDIA shares changed hands on 9 Nov and $73 billion on 10 Nov (estimates from volume times typical price, bounded by day low and high) | T3 | C | https://stockanalysis.com/stocks/nvda/history/ | 2026-11-11 | 2026-11-10 | Exchange dollar volume outside the low-to-high range |
| R9B-11 | On 5 Nov the market value change (about $448 billion) was about 7.8 times the dollars traded (about $57 billion) | T3 | C | https://stockanalysis.com/stocks/nvda/history/ | 2026-11-11 | 2026-11-05 | Dollar volume data shows a ratio below 6 or above 9 |
| R9B-12 | On each of the three big days, under 2% of NVIDIA's shares traded | T3 | C | https://stockanalysis.com/stocks/nvda/history/ | 2026-11-11 | 2026-11-10 | Share count or volume differs enough to push above 2% |
| R9B-13 | On 9 Nov chip shares rose (chip ETF SMH +5.05%, AMD +13.3%, Broadcom +8.8%) while NVIDIA fell 4.27% | T3 | V | https://stockanalysis.com/etf/smh/history/ | 2026-11-11 | 2026-11-09 | Index data shows chips fell that day |
| R9B-14 | On 5 Nov the chip ETF fell 11.21% and the Nasdaq 100 ETF 6.49%, more or as much as NVIDIA, so that fall was sector-wide | T3 | V | https://stockanalysis.com/etf/qqq/history/ | 2026-11-11 | 2026-11-05 | Index data differs |
| R9B-15 | The 5 Nov rout followed the Democrats winning both chambers of Congress, with fears of AI regulation and a data centre moratorium bill. NPR put the tech loss at about $2 trillion | T4 | V | https://www.gpb.org/news/2026/11/05/fears-about-ai-crackdown-after-midterms-sparks-2-trillion-rout-in-tech-stocks | 2026-11-05 | 2026-11-05 | Election results or the bill differ |
| R9B-16 | Most of NVIDIA's fall from its October high came before the affair news: 239.24 on 6 Oct to 186.64 on 6 Nov is -22.0%, and the affair days took it to 168.89 | T3 | C | https://stockanalysis.com/stocks/nvda/history/ | 2026-11-11 | 2026-11-10 | Price data differs |
| R9B-17 | NVIDIA had not recovered by the 10 Nov close. Results are due 17 Nov 2026 | T3, T2 | V | https://www.cnbc.com/2026/11/09/nvidia-jensen-huang-chinese-spy-investigation.html | 2026-11-09 | 2026-11-10 | Later closes above 186.64 (recovered) |
| R9B-18 | A class action was filed in San Jose federal court for buyers from 9 Oct to 8 Nov 2026 | T4 | P | https://www.engadget.com/2312947/nvidia-shareholders-are-suing-the-company-and-ceo-jensen-huang/ | 2026-11-10 | 2026-11-10 | Court docket shows no such filing |
| R9B-19 | A press figure of "more than $470 billion lost in two days" was seen only in a search summary, not in fetched text | T5 | P | https://www.yahoo.com/news/videos/nvidia-stocks-fall-second-straight-015452942.html | 2026-11-11 | 2026-11-10 | The exact line is found in a named report |
| R9B-20 | The WatchCharts Overall Market Index peaked in spring 2022 and fell by roughly a third by 2023 to 2024 (reports of 32%, more than 35% and 37%) | T4 | P | https://www.axios.com/2023/10/14/watch-prices-down-market-collapse-2023 | 2023-10-14 | 2023 to 2024 | WatchCharts index data shows a peak-to-trough fall under 25% |
| R9B-21 | The WatchCharts index fell 5.1% in the year to December 2024 (Rolex -4.9%, Patek -6.5%, AP -7.4%) | T4 | V | https://quillandpad.com/2024/12/24/watchcharts-december-and-full-year-2024-watch-market-update/ | 2024-12-24 | 2024-12 | WatchCharts data differs |
| R9B-22 | The WatchCharts index stood at 37,289 on 19 June 2026, up about 9% over a year | T4/T5 | V (as reported) | https://5dwatches.com/blog/june-2026-watch-market-update-index-near-high | 2026-06-24 | 2026-06-19 | WatchCharts index page differs |
| R9B-23 | Rolex is more than half of the WatchCharts overall index by transaction value | T4 | P | https://watchcharts.com/watches/price_index/rolex | n/a | 2026 | WatchCharts method page says otherwise |
| R9B-24 | US customer margin debit balances were $1.480 trillion in September 2026, after a record $1.502 trillion in June | T0 | V | https://www.finra.org/rules-guidance/key-topics/margin-accounts/margin-statistics | 2026-10 | 2026-09 | FINRA revises the figures |
| R9B-25 | Margin debt fell about $85 billion in July 2026, the largest monthly fall since the series began in 1997 | T0 via T5 | P | https://www.thetrading.tools/chart-of-the-day/2026-08-19-margin-debt-record-monthly-drop | 2026-08-19 | 2026-07 | FINRA history shows a larger monthly fall |
| R9B-26 | Each $1 of stock wealth raises spending by about 3.2 cents a year | T4 | V | https://www.nber.org/system/files/working_papers/w25959/w25959.pdf | 2021 (AER) | sample to about 2017 | Later studies find a near-zero effect |
| R9B-27 | Passive US funds hold about $22 trillion against about $16.9 trillion active, and passive passed active at end 2023 | T4 | P | https://www.morningstar.com/business/insights/blog/asset-management-industry-trends | 2026 | 2026 (date unclear) | Morningstar's dated table differs |
| R9B-28 | Norway's fund lost about NOK 278 billion (about $29.7 billion) in 3Q26, value NOK 22,014 billion | T4 | P | https://europeanpensions.net/ep/Norways-GPFG-returns-neg-0-5pc-in-Q3.php | 2026-10 | 2026-09-30 | NBIM's own release differs |
| R9B-29 | Fed target range 3.75% to 4.00% after a quarter point rise on 16 Sep 2026, held on 28 Oct 2026 by 10 votes to 2 | T1/T2 | V | https://www.federalreserve.gov/newsevents/pressreleases/monetary20261028a.htm | 2026-10-28 | 2026-10-28 | Fed release says otherwise |
| R9B-30 | Fed total assets $6.748 trillion on 4 Nov 2026, up $175 billion on the year. Treasuries +$386 billion, mortgage bonds -$186 billion | T0 | V | https://www.federalreserve.gov/releases/h41/current/ | 2026-11-05 | 2026-11-04 | H.4.1 revision |
| R9B-31 | Fed balance sheet runoff (QT) ended on 1 Dec 2025, followed by bill purchases to manage reserves | T2 | P | https://www.federalreserve.gov/monetarypolicy/2026-07-mpr-part2.htm | 2026-07 | 2025-12-01 | FOMC statement gives a different end date |
| R9B-32 | Bank reserves at the Fed were $2.963 trillion, the Treasury cash account $936 billion, reverse repo $335 billion on 4 Nov 2026 | T0 | V | https://www.federalreserve.gov/releases/h41/current/ | 2026-11-05 | 2026-11-04 | H.4.1 revision |
| R9B-33 | Treasury plans $618 billion net marketable borrowing for Oct to Dec 2026, assuming $850 billion cash at end December | T2 | V | https://home.treasury.gov/news/press-releases/sb0675/ | 2026-11-02 | 2026-11-02 | Treasury revises |
| R9B-34 | The November 2026 refunding was $125 billion ($58bn 3-year, $42bn 10-year, $25bn 30-year) | T2 | P | https://primerates.com/?p=14054 | 2026-11-04 | 2026-11-04 | Treasury refunding statement differs |
| R9B-35 | US bank loans and leases were $14.10 trillion in September 2026, up 7.6% on the year | T0 | V/C | https://api.db.nomics.world/v22/series/FED/H8/B1020NCBAM | 2026-10 | 2026-09 | H.8 revision |
| R9B-36 | M2 was $23.41 trillion in September 2026, up 5.7% on the year | T0 | V/C | https://api.db.nomics.world/v22/series/FED/H6_H6_M2/M2.M | 2026-10 | 2026-09 | H.6 revision |
| R9B-37 | BlackRock managed a record $15.49 trillion at end 3Q26 with about $205 billion net inflows | T2 via T4 | P | https://www.advisorperspectives.com/commentaries/2026/10/19/205-billion-ishares-define-blackrocks-q3-results | 2026-10-19 | 2026-09-30 | BlackRock 3Q26 release differs |
| R9B-38 | BlackRock, Vanguard and State Street together manage at least $33.5 trillion | T5 | P | https://www.fundssociety.com/es/?p=306266 | 2026 | about 2026-07 | Company reports sum lower |
| R9B-39 | S&P 500 companies bought back a record $1.10 trillion in the 12 months to June 2026 | T4 | P | https://www.nb.com/insights/market-signals-equity-buybacks-shifting-buyer-base-drives-record-high-activity | 2026 | 2026-06 | S&P DJI series shows a lower total |
| R9B-40 | Citadel Securities executes about 35% of all US-listed retail volume (company claim) | T2 | V (as claimed) | https://www.citadelsecurities.com/news-and-insights/global-market-intelligence/1h-2026-market-structure-flows/ | 2026-06-17 | 1H 2026 | Rule 605 or SEC data shows a much lower share |
| R9B-41 | Retail cash equity trading in May and June 2026 ran about 65% above the 2025 average | T2 | P | https://www.citadelsecurities.com/news-and-insights/global-market-intelligence/1h-2026-market-structure-flows/ | 2026-06-17 | 2026-06 | Exchange retail data differs |
| R9B-42 | Foreign holdings of Treasuries were about $9.25 trillion, Japan $1.104 trillion, China about $618 billion | T4 on T0 | P | https://247wallst.com/investing/2026/09/29/china-holds-618-billion-of-u-s-debt-only-2-countries-hold-more/ | 2026-09-29 | about 2026-07 | TIC table differs |
| R9B-43 | Amazon, Alphabet, Microsoft and Meta guided about $730 billion of 2026 capital spending | T2 via T5 | P | https://walnutinvest.com/stats/ai-capex-statistics | 2026-10 | 2026 | Company filings sum outside $700 to $760 billion |
| R9B-44 | The FY2027 US defence request is $1.5 trillion: $1.15 trillion base plus $350 billion from reconciliation | T2 | V | https://www.csis.org/analysis/unpacking-15-trillion-fy-2027-defense-budget-topline | 2026-04 | FY2027 request | Enacted figure differs (enactment not checked) |
| R9B-45 | 10-year TIPS real yield 2.78% on 10 Nov 2026 | T3 | V | https://home.treasury.gov/resource-center/data-chart-center/interest-rates/TextView?type=daily_treasury_real_yield_curve | 2026-11-10 | 2026-11-10 | Treasury revises |
| R9B-46 | 10-year Treasury 4.98%, 2-year 4.73%, 3-month 4.30% on 10 Nov 2026 | T3 | V | https://home.treasury.gov/resource-center/data-chart-center/interest-rates/TextView?type=daily_treasury_yield_curve | 2026-11-10 | 2026-11-10 | Treasury revises |
| R9B-47 | US CPI rose 3.7% in the year to September 2026, core 2.6% | T2 via T4 | P | https://investinglive.com/news/us-september-cpi-vs-3-6-expected-0/ | 2026-10-14 | 2026-09 | BLS release says otherwise |
| R9B-48 | US high yield spread (ICE BofA OAS) was 3.14 points on 28 Oct 2026, from 2.63 in late August | T3 | P | https://fred.stlouisfed.org/series/BAMLH0A0HYM2 | 2026-10 | 2026-10-28 | FRED data differs |
| R9B-49 | The dollar index was about 101.7 on 21 Oct 2026, in a 100 to 102 range since summer | T3 via T4 | P | https://tradingeconomics.com/united-states/currency/news/571430 | 2026-10 | 2026-10-21 | Quote data differs |
| R9B-50 | 1971 to 1979: gold +33.7% a year nominal, shares -1.3% and bonds -3.1% a year real | T4 | C | https://pages.stern.nyu.edu/~adamodar/New_Home_Page/datafile/histretSP.html | 2026-01-05 | 1979 | Damodaran revises his series |
| R9B-51 | 1980 to 1982: T-bills earned 3.5% a year real while gold lost 11.0% a year real | T4 | C | https://pages.stern.nyu.edu/~adamodar/New_Home_Page/datafile/histretSP.html | 2026-01-05 | 1982 | As above |
| R9B-52 | 2022: S&P 500 -18.0%, 10-year Treasury -17.8%, T-bills +2.1% | T4 | V | https://pages.stern.nyu.edu/~adamodar/New_Home_Page/datafile/histretSP.html | 2026-01-05 | 2022 | As above |
| R9B-53 | 2025: S&P 500 +17.8%, 10-year Treasury +7.8%, gold +66.2% (nominal) | T4 | V | https://pages.stern.nyu.edu/~adamodar/New_Home_Page/datafile/histretSP.html | 2026-01-05 | 2025 | As above |
| R9B-54 | Cash plus a stock that doubles or halves, rebalanced half and half, grows 6.07% a period, while the stock alone has 0% typical growth and +25% average | math | C | (script, scratchpad code/calc.py) | 2026-11-11 | n/a | An arithmetic error in the script |
| R9B-55 | Half stock is the growth-best fixed mix for that coin, and 150% exposure shrinks wealth 20.9% a period | math | C | (script) | 2026-11-11 | n/a | As above |
| R9B-56 | Rebalancing trades about 16.7% of the pot per period, so a 1% cost cuts growth from 6.07% to 5.89% | math | C | (script) | 2026-11-11 | n/a | As above |
| R9B-57 | For a stock going up 60% or down 20%, buy and hold grows 13.1% a period against 8.2% for half and half rebalanced | math | C | (script) | 2026-11-11 | n/a | As above |
| R9B-58 | In 20-period simulations the rebalanced pot still ends below its start about 25% of the time | math | C | (script, 100,000 runs, seed 1) | 2026-11-11 | n/a | A rerun gives a share far from 25% |
| R9B-59 | Cover, "Universal Portfolios", Mathematical Finance 1(1), 1991, pp 1 to 29. Kelly, "A New Interpretation of Information Rate", Bell System Technical Journal 35(4), 1956, pp 917 to 926 | T4 | P | https://econpapers.repec.org/RePEc:bla:mathfi:v:1:y:1991:i:1:p:1-29 | 1991, 1956 | n/a | Journal records differ |
| R9B-60 | 32 institutional investors owned about 450,000 US single-family homes by 2022, the five largest nearly 300,000 | T2 | P | https://www.gao.gov/products/gao-24-106643 | 2024-05 | 2022-06 | GAO PDF gives different counts |
| R9B-61 | Invitation Homes spent about $4 billion on 24,000 homes in 2012 | T5 | P | https://benzinga.com/z/29582326 | n/a | 2012 | Invitation Homes S-11 filing gives other numbers |
| R9B-62 | In six metros, investors with 5,000 or more homes owned under 1% to 3% of all single-family homes | T2 | P | https://www.gao.gov/products/gao-26-108675 | 2026-03 | about 2024 | GAO PDF differs |

Memory items (M) not in the claims table as facts, listed for checking: Reg T 50% and FINRA 25% margin rules, Basel equity risk weights, 23 Mar 2020 QE date and S&P low, Fed assets about $9 trillion peak in 2022, 2020 M2 growth about 25%, April 2025 tariff fall about 12% and 9.5% rebound, GENIUS Act July 2025, KBW bank index March 2023, Berkshire's 2008 Goldman deal and 2020 airline sales, Fed corporate bond purchases about $14 billion, PIF and GIC sizes, the lecture's 4, 8 and 75 times figures.
