# R8A: STRC, the instrument, the law and the claims audit (Round 8, Standard tier)

Lane R8A, combining the framer's R8A (instrument and law) and R8B (claims audit), plus the standing Data and Sweep jobs. Date 2026-11-05. Questions covered: Q1, Q2 and Q5 of round8/FRAME_R8.md. Source of the talk claims: the paraphrased list in the scratchpad (saylor_claims.md, numbered S1 to S47). No transcript text is in this file. General research, not personal financial advice.

Chart-ready tables: round8/lanes/R8A-tables.json. Scripts (python3 -I, inputs in comments): scratchpad/scripts/r8a_returns.py, r8a_strc.py, r8a_coverage.py. Raw downloads: scratchpad/r8a_dl/.

## Pass checklist (Moves 2 to 6, plus Data and Sweep)
- [x] STRC contract terms taken from the issuer's own prospectus supplement of 2 November 2026 (T1) and the March 2026 STRC annex (T1), not from press
- [x] Vote result taken from the 8-K of 29 October 2026 (T0 or T1), daily dividends confirmed from 1 November 2026 (first payment 3 November)
- [x] Latest holdings, reserve and buybacks from the 8-K of 2 November 2026 and the Q3 2026 10-Q and results release (T0)
- [x] Delaware dividend law, bankruptcy priority, 40 Act section 18, GENIUS Act yield ban and reserve list quoted from statute (T1)
- [x] Balance sheet walk for one STRC purchase on every actor, both floors, with the final holder of the dollars named
- [x] Comparison table of eight instruments with worst historical loss
- [x] Claims audit: 26 claims graded, every priority claim covered (S12, S14 to S19, S23, S24, S28 to S33, S35, S41, S42, S44, S45)
- [x] Recomputations done on today's prices: coverage in Bitcoin and dollars, "six times", tax-equivalent yield, return table with start-date test, volatility, "one year of supply"
- [x] Malaysian reader section framed as questions, never advice, with US withholding, US estate tax, Malaysian foreign-income rule, PIDM, currency, access and yield traps
- [x] Sweep: pro and critic content with reach where found, and the strongest credit-analyst, hard-money and skeptic views
- [x] Data: every series has a source, unit, date range and checked label (Data table section)
- [x] Regime label on every finding. Stress regime checked: the June 2026 break below par (STRC close low $74.57 on 2026-06-26 with Bitcoin near $60,000)
- [x] Overcorrection guard on every "wrong" or "spin" verdict
- [x] Claims table R8A-01 onward with tiers, sources, dates and falsifiers, and dated tripwires
- [x] Word audit and style check: no em-dashes, no en-dashes, no semicolons, "to" for ranges, they/them for the owner

---

## Answers in brief

**Q1 (what STRC is).** STRC is preferred stock of Strategy Inc, a Delaware company. It has a $100 stated amount, no maturity and no right for the holder to be paid back, except at $100 plus unpaid dividends if a takeover-type "fundamental change" happens. Dividends are cumulative and cash only, accrue at a monthly rate the company sets at its "sole and absolute discretion" within limits, and are payable only "when, as and if declared by our board of directors, out of funds legally available". Since 1 November 2026 a dividend record date falls on every calendar day and declared dividends are paid each business day. The November rate is 12.00% a year ($1.00 a month per share). STRC ranks behind all debt (about $6.75 billion of convertible and secured notes) and behind STRF, and ahead of STRE, STRK, STRD and the common shares. Holders cannot elect directors if dividends are missed. "Digital credit" is a marketing name: in law it is equity, and in bankruptcy it is paid only after every creditor is paid in full.

**Q2 (the claims).** Of 26 claims graded: 10 hold (with a stated condition in most), 9 are spin, 4 are wrong and 3 cannot be checked. The numbers about the present are mostly right on the company's own method (holdings near 4% of all Bitcoin, about six times coverage of STRC on a net basis, about 46 years of all obligations covered in Bitcoin, about $156 million of trading a day, a spread near 700 basis points). The framing words are where it fails: "strongest credit in the world" (S&P rates the issuer B-, junk), "credit" (it is equity), "a bank account paying 24%" (true only for a top-bracket New York City taxpayer and only as a deferral), "illegal under the 1940 Act" (registered closed-end funds issue preferred stock on equity portfolios every day, at 200% asset coverage), "a Bitcoin-backed stablecoin paying 8%" (the GENIUS Act bans issuer yield and does not allow Bitcoin as a reserve asset) and "$10 billion of credit means you just made $10 billion" (raised money is not profit).

**Q5 (the Malaysian reader).** STRC is not a deposit and PIDM does not cover shares. There is no US income tax treaty with Malaysia, so any part treated as a dividend faces 30% US withholding, and a broker may withhold on the whole payment even though Strategy expects it to be return of capital. US estate tax can apply to US shares above $60,000 held by a non-resident at death. Malaysian resident individuals' foreign-sourced income is exempt when received through 31 December 2036 (reported gazette, to confirm per case). The ringgit moved 18% against the dollar between February 2024 and January 2026, larger than a year and a half of the 12% dividend. Section E lists the questions to ask.

---

## A. The instrument

### A1. STRC terms (primary: STRC Stock Annex, March 2026, and Supplement No. 2 dated 2 November 2026)

| Term | What the documents say | Source (T1 unless noted) |
|---|---|---|
| Legal form | Variable Rate Series A Perpetual Stretch Preferred Stock of Strategy Inc (Delaware), listed on Nasdaq Global Select as STRC | Supplement No. 2, 2026-11-02 |
| Stated amount | $100 per share. Dividends accrue on the stated amount | Same |
| Liquidation preference | Reset each business day to the greatest of $100, the last sale price before a day the company sold STRC, and the 10-day average sale price. Never below $100 | STRC Annex, 2026-03-23 |
| Maturity | None (perpetual). No holder right to redeem | Same |
| Dividend rate setting | Monthly rate per year. Stays the same unless the company gives notice by the 15th of the prior month. A new rate cannot be negative, cannot fall more than 25 basis points plus any fall in one-month SOFR from the prior month, and cannot be below one-month SOFR. No cut while any past dividend is unpaid | Supplement No. 2 |
| Current rate | 12.00% a year for November 2026 ($1.00 per share for the month) | Supplement No. 2 and Q3 results release, 2026-10-29 |
| Rate history | 9.00% at launch (July 2025), 10.00% September 2025, then +25 bp a month to 11.50% in March 2026, held to June, 12.00% from July 2026 | Results release 2026-10-29 (2026 months), Nasdaq dividend history (T3, implied from amounts) |
| Cumulative | Yes. Dividends accumulate "regardless of whether or not declared or funds are legally available". Unpaid amounts compound semi-monthly at the monthly rate. No step-up penalty rate | Supplement No. 2 |
| Cash or stock | "Payable solely in cash" | STRC Annex |
| Frequency | Record date every calendar day from 1 November 2026. Paid each business day. Weekend dividends share Friday's record date for DTC-cleared shares and are paid Monday. First payment 3 November 2026 | Supplement No. 2 and 8-K 2026-10-29 |
| Declaration | Board not required to declare even if funds are legally available | Supplement No. 2 |
| Ranking | Junior to all debt (convertible notes and secured debt, about $6.75 billion principal at 2026-09-30) and to STRF (dividend and liquidation senior). Senior to STRE, STRK, STRD, class A and class B common. Structurally junior to subsidiary liabilities | STRC Annex. 10-Q Q3 2026 for debt |
| Protection against juniors | No dividends or buybacks on junior stock unless STRC dividends to the last compounding date are paid in full | Supplement No. 2 |
| Voting | No general vote. No right to elect directors if dividends are missed. Votes as a class only on adverse charter changes and some mergers | STRC Annex |
| Company call | Any time at $101 (or more if announced) plus unpaid dividends, partial calls only if at least $250 million stays outstanding. Clean-up call below 25% of shares ever issued. Tax-event call | Supplement No. 2 |
| Holder put | Only on a fundamental change (a third party gets more than 50% of voting power, or a sale of substantially all assets), at $100 plus unpaid dividends. Saylor and affiliates are excluded from the change-of-control trigger | STRC Annex |
| Dividend funding | "We expect to fund any dividends paid in cash on the STRC Stock primarily through additional at-the-market offerings of our class A common stock", or the USD Reserve, or more preferred or debt | Supplement No. 2 |
| Tax (company view) | No accumulated earnings and profits and none expected, so distributions are not expected to be dividends for US tax. Q3 release: return of capital expected "for the foreseeable future (ten years or more)" | STRC Annex. Results release 2026-10-29 (T2) |
| Size | Program up to $21 billion. About $8.2 billion stated amount outstanding on 2026-11-01 (model: $9.972 billion on 2026-08-23 less buybacks, see D) | FWP 2026-08-24, 10-Q, 8-K 2026-11-02. Estimate is a model |

What the vote changed (8-K, 2026-10-29, items 3.03, 5.03, 5.07): only the cadence. For 381,373,199 votes, against 2,236,551, abstain 444,753, about 99.3% of votes cast. The filing states the amendment does not change the total dividends payable, the rates or the company's overall dividend obligations. STRF, STRK and STRD move to daily dividends on 1 January 2027. The semi-monthly STRC dividend that would have been paid on 15 November (record date 31 October) was cancelled and replaced by the November daily dividends. Note: votes include class B shares, which carry 10 votes each (19,640,250 class B shares against 402,714,357 class A on 2026-10-25, 10-Q), so the 99.3% is weighted toward the founder's votes.

### A2. Delaware law on paying dividends and buying back shares
- Dividends may be paid only out of "surplus", or if there is none, out of net profits of the current or prior fiscal year (Delaware General Corporation Law section 170(a), T1). Surplus is net assets minus capital. Strategy's preferred and common have a par value of $0.001 (XBRL, 10-Q), so capital is tiny and the limit only bites if net assets turn negative. Directors may value assets at fair value in good faith (Klang v. Smith's Food and Drug Centers, Delaware Supreme Court, 1997, T1). Bitcoin is carried at fair value since 2025 (CryptoAssetFairValue, XBRL).
- A company may not buy back its own shares when its capital is impaired (section 160, T1).
- In practice the binding limits are cash and board choice, not Delaware law, while Bitcoin is worth more than the debt and preferred. At today's numbers that holds down to a Bitcoin price near $23,500 (gross, whole stack) or $17,700 (net of cash). Model in D.

### A3. What a holder gets in bankruptcy
- US bankruptcy pays creditors in full before any equity class gets anything (absolute priority rule, 11 U.S.C. section 1129(b)(2), T1). STRC is an equity interest, not a claim. Unpaid STRC dividends are not a debt of the company.
- Order today: secured debt, then convertible notes (about $6.71 billion principal, puts from September 2027 to June 2029, maturities 2028 to 2032, 10-Q Q3), then STRF (about $1.24 billion, model), then STRC (about $8.2 billion, model), then STRE, STRK, STRD, then common.
- Coverage of STRC at today's prices (model, D): about 6.1 times on the company's method (Bitcoin over debt plus STRF plus STRC, net of US dollar assets), 4.2 times gross. Losses to STRC start only if Bitcoin falls below about $13,000 on the company's method, if all the dollar reserve is still there. A Chapter 11 would add costs, time, and the risk that the reserve is spent first.
- Precedent for what a preferred holder gets in a failure: Lehman Brothers preferred got nothing. Fannie Mae and Freddie Mac preferred fell about 95% in 2008 without any bankruptcy (C).

### A4. The digital credit family in one table

Prices are Nasdaq or Yahoo closes on 2026-11-04 (T3). Effective yield = annual dividend divided by price. Outstanding amounts are models where marked.

| Series | Issuer | Rate | Cumulative | Cash or stock | Ranking (Strategy stack) | Price | Effective yield | Outstanding | Avg daily $ volume (60 days) |
|---|---|---|---|---|---|---|---|---|---|
| STRF "Strife" | Strategy | 10% fixed | Yes, compounding, with penalty step-up on missed dividends (reported) | Cash | Most senior preferred | $102.79 | 9.7% | about $1.24B (model) | $6.0M |
| STRC "Stretch" | Strategy | Variable, 12.00% now, set monthly | Yes, compounding at the monthly rate | Cash only | Second | $99.98 | 12.0% | about $8.2B (model) | $155.5M |
| STRE "Stream" | Strategy | 10% fixed, euro | Yes | Cash | Third (senior to STRK and STRD) | not retrieved | not retrieved | not retrieved | not retrieved |
| STRK "Strike" | Strategy | 8% fixed | Yes | Cash or class A stock. Converts at 0.1 common share per STRK | Fourth | $70.80 | 11.3% | not split out | $6.6M |
| STRD "Stride" | Strategy | 10% fixed | No (non-cumulative) | Cash | Most junior preferred | $71.48 | 14.0% | not split out | $6.5M |
| SATA | Strive Inc | Variable, 13.00% from 15 April 2026 (latest confirmed), SOFR-linked cut limit | Yes, compounded monthly, up to 20% | Cash | Strive's senior preferred | $98.00 | about 13.3% if still 13% | about $0.50B on 2026-05-12 (4,959,536 shares) | $48.6M |

Reading: the market already prices rank. The senior STRF trades above $100 at 9.7%, the junior non-cumulative STRD at 14.0%. STRC sits near $100 because the company sets the rate and buys back below par to put it there (A1, D: S15 and S23). Sources: Strategy filings as above. STRE ranking from press on the STRE offering (T4) and the STRC Annex. SATA: Strive 8-K 2026-04-15 (rate), 8-K 2026-05-14 (daily dividends from 16 June 2026, shares outstanding), 10-Q Q2 2026 (T1 and T0).

Issuer rating: S&P Global assigned Strategy a B- issuer credit rating, stable outlook, on 27 October 2025 (Strategy press release, T2 for the fact of the rating). S&P cited the dollar obligations against a Bitcoin balance sheet. No later S&P action found. Issue-level ratings on the preferreds not confirmed.

---

## B. Balance sheets, light: one STRC purchase walked through every book

Transaction: a saver moves $10,000 out of a US government money market fund, buys 100 STRC shares at $100 through a broker, Strategy sells them through its at-the-market program and spends the cash on Bitcoin bought from an existing holder. Two floors, as in Rulebook chapter 8: upstairs (Fed reserves, the Treasury account, reverse repo) and downstairs (deposits and cash with the public).

| Actor | Assets | Liabilities and equity | What changed |
|---|---|---|---|
| Saver | Money fund shares -$10,000. STRC +$10,000 (at market price) | none | Swapped a claim on T-bills for a claim on a company's equity |
| Money fund | Bills or reverse repo -$10,000 (paid out from its bank account) | Fund shares -$10,000 | Shrinks. If it drew down Fed reverse repo, reserves rise upstairs and a bank deposit appears downstairs. If it sold bills to a dealer or let them mature, the dealer or Treasury side moves instead |
| Saver's broker and the ATM sales agent | pass-through, fee about 1% to 2% (sales agent commission, ATM prospectus) | none | Earn a fee |
| Strategy (step 1, sale) | Cash +$10,000 | Mezzanine equity (redeemable preferred) +$10,000 | Equity raised, not debt. GAAP shows it as temporary equity (XBRL TemporaryEquity, $13.06B carrying amount at 2026-09-30) |
| Strategy (step 2, buys Bitcoin) | Cash -$10,000. Bitcoin +$10,000 at fair value | no change | Now owes about $1,200 a year in dividends it expects to pay from new common stock sales or the reserve |
| Bitcoin seller (miner, long-term holder, or an ETF only if its own holders redeem) | Bitcoin -$10,000. Bank deposit +$10,000 | none | Ends up holding the dollars |
| Banks | Reserves move between banks if accounts differ | Deposits move from the fund's custodian to Strategy's bank to the seller's bank | Total deposits unchanged unless reverse repo was drawn |

Who ends up holding the dollars: the person who sold the Bitcoin. Not Bitcoin, not Strategy. The dollars stay in Set 1 (a bank deposit, or a T-bill if the seller buys one). What moved into Set 2 is the saver's risk: they now own a claim whose value depends on Bitcoin and on Strategy's choices. Public money only moved in the base case. It rose only in the side case where the money fund was funded from Fed reverse repo.

Two variants that matter in 2026 data:
1. Strategy keeps the cash in its USD Reserve instead of buying Bitcoin. Then the dollars never leave Set 1 at all: they sit in T-bills or bank deposits. In Q3 2026 this was the main path. Strategy sold $5.41 billion of common stock, spent $0.59 billion on Bitcoin and sent most of the rest to the reserve and to STRC buybacks (results release 2026-10-29, XBRL CryptoAssetPurchase $588 million in Q3). No STRC was sold in Q3.
2. The dividend leg. Each month Strategy pays STRC holders about $82 million (about $8.2 billion times 1%). Its own words say the money comes "primarily" from selling common stock. So in steady state, new common shareholders' dollars pass through Strategy to STRC holders. In 2026 it also sold $431.8 million of Bitcoin to fund dividends and buybacks (XBRL CryptoAssetSale, nine months to 2026-09-30, T0). In that leg the pipe runs backward: Bitcoin goes out, dollars come in, to pay Set 1 savers.

---

## C. Eight instruments compared

| Instrument | Legal form | What backs it | Who promises par | Liquidity | Yield (typical, dated) | Worst historical loss (dated) |
|---|---|---|---|---|---|---|
| STRC | Delaware perpetual preferred stock, Nasdaq listed | Strategy's Bitcoin (849,327 BTC, about $68.4B) and USD Reserve ($4.79B) after $6.75B debt and STRF. No collateral is pledged to STRC | Nobody. Company targets $100 by rate setting and buybacks. No holder redemption | High for a preferred: about $156M a day (60 days to 2026-11-04) | 12.0% at $99.98 (2026-11-04) | Close of $74.57 on 2026-06-26, 25% below par, with Bitcoin near $60,000 (Nasdaq and Yahoo, T3). Back near par by October after a rate rise to 12% and about $2.1B of buybacks |
| British consol (2.5% after 1903) | UK government perpetual bond | Taxing power of the UK state | Nobody had to repay. Government could redeem at par, which it did only in 2015 | Deep market in the 19th century | 3% at creation in 1751 to 1752, cut to 2.75% in 1888 and 2.5% in 1903 | Consol prices peaked near 108 to 113 in 1896 to 1897 (then the 2.75% stock). At the 1974 average consol yield of 15.2% a 2.5% consol is worth about 16 (model: 2.5 / 15.17 x 100), a fall of about 85% nominal and far more after inflation (FRED LTCYUKA, Hansard 1903 and 1907) |
| Gold-standard credit (gold clause bonds, convertible notes) | Government or bank debt payable in gold or gold-convertible money | Gold reserves plus the issuer's credit | The issuer, by law or contract | Varied | US Treasury gold clause bonds about 3% to 4% in the 1920s | US abrogated gold clauses in 1933 and moved gold from $20.67 to $35 an ounce in 1934, a 41% loss in gold terms, upheld in the Gold Clause Cases of 1935. Bank of England suspended gold payment from 1797 to 1821 |
| Bank ordinary preferred | Perpetual non-cumulative preferred of a bank holding company | Bank's assets after depositors and debt. Regulated capital | Nobody | Thin: JPMorgan preferred about $6M a day, Citigroup Capital XIII about $3M (60 days, Yahoo, T3) | About 5% to 7% in 2026 | Fannie Mae and Freddie Mac preferred lost about 95% after conservatorship in September 2008. Lehman preferred went to zero. Credit Suisse AT1 bonds (a debt cousin) written to zero in March 2023 |
| Closed-end fund preferred | Preferred stock of a fund registered under the Investment Company Act of 1940 | A diversified portfolio, by law at least 200% asset coverage at issue (section 18(a)(2)) | Nobody, but asset coverage tests force the fund to deleverage | Auction-rate versions froze in February 2008, term preferreds trade on exchanges | About 4% to 6% | Auction-rate preferred of closed-end funds froze in February 2008 (about $60B+ by common estimates, T4). Holders waited months to years but were mostly repaid at par. Principal losses rare because of the coverage rule |
| Money market fund | Registered fund under rule 2a-7 | Short T-bills, repo, commercial paper | Fund aims at $1 (government funds), no guarantee | Same day | About 4% (3-month bill 4.03%, 2026-11-04) | Reserve Primary Fund broke the buck in September 2008 at $0.97. Holders recovered about 99 cents. Treasury guarantee program followed |
| Payment stablecoin (GENIUS Act) | Token issued by a licensed issuer | By law: cash, Fed balances, insured deposits, T-bills of 93 days or less, overnight repo, government money funds (section 4(a)(1)(A)) | The issuer, 1 to 1 redemption | 24/7 on chain | Zero to holders by law (section 4(a)(11)). Issuer keeps the bill yield | USDC fell to about $0.87 on 11 March 2023 when $3.3B of reserves sat at Silicon Valley Bank, back to $1 in days. TerraUSD (algorithmic, not a reserve-backed coin) went to near zero in May 2022 |
| High-yield bond | Corporate debt with a maturity and covenants | Issuer's cash flow and assets. Creditor ahead of all equity | Issuer must repay at maturity, default if not | Dealer market | About 7% in 2026 (spread over Treasuries) | US high-yield index fell about 26% in 2008. Default rates peaked near 10% to 14% in 1991 and 2009. Average recovery in default about 40 cents (T4, rating agency studies) |

What STRC shares with each: with the consol, no maturity and a price set only by the yield the market demands. With gold-era credit, a promise in one unit (dollars) backed by a different asset (Bitcoin), which is the classic mismatch. With bank and fund preferred, its legal form. With money funds and stablecoins, the marketing language of a stable $100 or $1 but none of the legal promise. With high-yield bonds, its yield and a junk issuer rating, but behind the bondholders.

What STRC does better than most of the table (overcorrection guard): its backing is public weekly (8-K every Monday), large today relative to the claims ahead of it, and not pledged to anyone else. Its trading volume is higher than any other US preferred we checked. No maturity means no refinancing wall for the preferred itself.

---

## D. Claims audit

### D1. Recomputations (models, python3 -I, scratchpad/scripts/r8a_coverage.py and r8a_returns.py)

Inputs: 849,327 BTC on 2026-11-01 (8-K 2026-11-02, T0). Bitcoin $80,536 (CoinGecko, 2026-11-05, T3). USD Reserve $4.79B and USD cash $0.13B (8-K 2026-11-02). Debt $6.75B principal (10-Q Q3 2026). All preferred $14.11B liquidation preference on 2026-09-30 (XBRL, T0) less about $0.93B of STRC bought back in October, so about $13.18B. STRC about $8.19B (model: $9.972B on 2026-08-23 from the FWP, less the fall in total preferred to 2026-09-30, less October buybacks). STRF about $1.24B (model, backed out of the company's August "covered claims" of $11.28B). Annual dividends plus interest about $1.49B (model: STRC at 12%, other preferred at a blended 9.4%, interest $35M). The company's own figure of 3.4 years of cover from $5.07B of dollar assets on 2026-10-25 implies the same $1.49B.

| Measure | Result | What it means |
|---|---|---|
| Bitcoin value | $68.40B | Moves $0.85B for every $1,000 on the Bitcoin price |
| Years of all dividends and interest covered by Bitcoin | 46.0 years gross, 41.5 years after repaying debt principal | Talk said "about 48". Close at today's price, 48 needs about $84,000 |
| Years covered by the USD Reserve | 3.2 years (company: 3.4 years with all dollar assets) | This is the cover that pays without selling Bitcoin or stock |
| STRC coverage, company method (Bitcoin over debt plus STRF plus STRC, less dollar assets) | 6.1 times | Talk said "six times, $6.20 per $1". Holds on this method |
| STRC coverage gross, no netting of cash | 4.2 times | Cash is not set aside for STRC, so the gross number is the stricter one |
| Bitcoin per $1 of STRC after debt and STRF | $7.38 | Bitcoin only, before the dollar reserve |
| Whole stack (all debt and all preferred) | 3.4 times gross, 4.6 times net of cash | The ratio for the most junior preferred |
| Assets over all senior securities, 1940 Act style | 368% | Above the 200% a closed-end fund needs to issue preferred |
| Bitcoin price where STRC coverage hits 1 time (company method) | about $13,250 | 84% below today |
| Bitcoin price where the whole stack hits 1 time (net, gross) | about $17,670 and $23,470 | 71% to 78% below today |
| New Bitcoin a year after the 2024 halving | 164,250 BTC (3.125 x 144 x 365), $13.2B | |
| $10B of buying in years of new supply | 0.76 years (124,168 BTC) | "One year" holds near $61,000 |
| Share of all 21 million Bitcoin held | 4.04% | |
| Capital, Bitcoin plus dollars | $73.3B | Talk said about $75B |

Tax-equivalent yield of a 12% payment treated as return of capital (no current tax):

| Holder | Rate a fully taxed bank account must pay to net 12% | Note |
|---|---|---|
| New York City resident, top brackets, ordinary income (37% federal, 3.8% net investment tax, 10.9% New York State top rate, 3.876% New York City) | 27.0% | The talk's 24% is in this range for a top-bracket New Yorker |
| Same, if it were a qualified dividend (20% plus 3.8% federal) | 19.5% | The fair comparison for a dividend paying stock |
| US person in the 24% federal bracket, no state tax | 15.8% | |
| US tax-exempt account (IRA, pension) | 12.0% | No benefit |
| Malaysian non-resident if a broker withholds 30% on the full payment | 17.1% needed, and the 12% becomes 8.4% net until a refund | See E |

The deferral ends in three ways: (1) the holder sells, and the basis reduced by every distribution is taxed as a capital gain. (2) Basis reaches zero after about 8.3 years at 12% on $100, and later distributions are capital gain. (3) Strategy has current or accumulated earnings and profits, for example from selling Bitcoin above its tax cost or from operating profits, and distributions become taxable dividends to that extent (26 U.S.C. sections 301(c) and 316, T1). GAAP net income does not decide this: Strategy reported $19.53B of net income for Q3 2026 from unrealized Bitcoin gains, which do not create earnings and profits. The company expects return of capital "for the foreseeable future (ten years or more)" (results release 2026-10-29, T2). Holding to death gives US persons a basis step-up, which turns the deferral into an exemption for heirs.

Return table since August 2020 (total returns with dividends, Yahoo adjusted closes, compound annual rate to 2026-11-04, T3, model):

| Start date | Bills (BIL) | Bonds (AGG) | Long Treasuries (TLT) | Real estate (VNQ) | Gold (GLD) | S&P 500 (SPY) | Bitcoin | MSTR |
|---|---|---|---|---|---|---|---|---|
| 2020-08-11 (talk's start, Strategy's first purchase) | 2.9 | -0.4 | -8.0 | 7.0 | 12.4 | 15.9 | 36.8 | 46.0 |
| 2021-01-04 | 3.1 | -0.5 | -7.7 | 6.9 | 13.0 | 14.9 | 17.1 | 23.1 |
| 2021-11-10 (Bitcoin 2021 peak) | 3.6 | -0.3 | -8.1 | 1.7 | 16.6 | 12.1 | 4.4 | 11.8 |
| 2022-01-03 | 3.7 | -0.1 | -7.9 | 0.5 | 17.9 | 11.7 | 12.0 | 21.4 |
| 2022-11-21 (FTX low) | 4.3 | 3.4 | -1.2 | 7.7 | 23.5 | 19.9 | 50.9 | 74.7 |
| 2024-01-02 | 4.1 | 2.8 | -2.4 | 7.3 | 26.6 | 19.9 | 22.7 | 29.4 |
| 2025-01-02 | 3.6 | 3.3 | 0.3 | 9.8 | 25.5 | 17.1 | -9.7 | -33.3 |

Reading: from the talk's own start date his numbers reproduce within rounding (money funds 3, bonds negative, real estate 5 versus 7, gold 13 versus 12.4, S&P 15 versus 15.9, Bitcoin 37 versus 36.8, MSTR 51 versus 46). The order Bitcoin and MSTR on top holds for starts in 2020, early 2021, late 2022 and 2024. It flips for a start at the 2021 peak (gold and the S&P beat both) and for a start in January 2025 (MSTR is last at minus 33% a year). The start date is the claim.

Volatility (annualized standard deviation of daily log returns, Yahoo adjusted closes, model):

| Series | 12 months to 2026-11-04 | Last 90 days | Talk |
|---|---|---|---|
| Bitcoin (365-day basis) | 44.1 | 39.4 | "about 39" |
| MSTR | 80.8 | 85.1 | "about 87" |
| STRC | 22.2 | 9.0 | "under 8" |
| STRF | 23.7 | 9.5 | |
| US preferred index ETF (PFF) | 7.8 | 8.1 | |
| US bond index (AGG) | 4.1 | 4.8 | |

Reading: the talk's numbers match a recent window for Bitcoin and MSTR. For STRC the last 90 days give 9, not under 8, and the last 12 months give 22, nearly three times the preferred index, because of the June 2026 break. Volatility also misses gap risk: STRC's worst day-to-day path in June took it 25% below par within weeks.

### D2. Audit table (26 claims)

Verdicts: holds 10, spin 9, wrong 4, cannot check 3.

| # | Claim (paraphrase) | Verdict | Tier | Primary source, date | What it flips on | Honest version in one sentence |
|---|---|---|---|---|---|---|
| S6 | $10B of credit is one year of Bitcoin supply | Holds | T0 plus T3 | Protocol issuance 3.125 BTC a block. CoinGecko 2026-11-05 | Bitcoin price | At $80,536, $10B buys about 0.76 years of new coins, and one year exactly at about $61,000 |
| S12 | The Bank of England raised capital, bought gold and issued credit against it, gold-backed credit lasted about 300 years to 1971 | Spin | T2 (history) | Bank of England history pages. FRED consol yields. Hansard | Which country and which promise | The Bank was founded in 1694 to lend £1.2 million to the Crown for war, consols (1751) were tax-backed government debt, and Britain's legal gold standard ran from 1821 to 1931 with suspensions, while 1971 ended only official dollar convertibility |
| S14 | STRC is a perpetual preferred on Nasdaq, $100 target, 12%, paid twice a month, daily after the vote | Holds | T1 | Supplement No. 2, 2026-11-02. 8-K 2026-10-29 | none | Correct: daily record dates from 1 November 2026, paid each business day, 12% for November |
| S15 | Strategy sells STRC above $100 and buys back below | Holds | T0 | Results release 2026-10-29. 8-K 2026-11-02 | Policy, not contract | It is a stated policy with $2.04B spent at an average $97.39 this year, but no holder has a right to sell at $100 |
| S16 | About 48 years of dividends covered | Spin | T0 plus model | 8-K 2026-11-02. 10-Q Q3. Model D1 | Bitcoin versus dollars. Gross versus net of debt | About 46 years in Bitcoin on today's price (41 after debt), but only 3.2 to 3.4 years in dollars, and using the Bitcoin years means selling Bitcoin |
| S17 | About $8.8B outstanding, from zero to $10.5B in under 12 months, trades about $150M a day, most liquid preferred, SATA second | Holds | T0 plus T3 | XBRL preferred $15.46B on 2026-06-30. Nasdaq volume to 2026-11-04 | Date. Buybacks shrink it | STRC peaked near $10.5B around mid-2026 and is about $8.2B now after buybacks, trading about $156M a day, with SATA tied for second with Boeing's preferred at about $49M |
| S18 | Six times over-collateralized, $6.20 of Bitcoin per $1 of STRC | Holds | T0 plus model | Model D1. FWP 2026-08-24 for method | Netting of cash. Ranking. Price | 6.1 times on the company's net method, 4.2 times gross, and no collateral is pledged to STRC |
| S19a | Strongest credit in the world | Wrong | T2 | S&P B- issuer rating, 2025-10-27 | Legal form and rating | The issuer is rated junk and STRC is equity behind $8B of senior claims, so it is a well-covered junior claim on a junk-rated company |
| S19b | 12% as return of capital is like a 24% bank account for a New Yorker | Spin | T1 plus model | 26 U.S.C. 301(c). Results release 2026-10-29 | Holder's tax rate. Earnings and profits. Holding period | About 27% for a top-bracket New Yorker against ordinary interest and 19.5% against a qualified dividend, 12% for tax-exempt money, and it is a deferral repaid as capital gain at sale |
| S23 | Fell below par in early summer, Strategy built a three-year dollar reserve and bought back about $1.5B, now within cents of par | Spin | T0 plus T4 | Results release 2026-10-29. Price data. Press on the May reserve | What caused the fall | STRC closed as low as $74.57 on 26 June after the reserve was spent on converts in May (T4), and recovered after a rate rise to 12%, a reserve rebuilt from common stock and Bitcoin sales, and $2.10B of buybacks |
| S24 | Credit investors value three years of dollars over 30 years of Bitcoin, today about 3.5 years in cash, 70/30 holds, 98/2 buckles | Spin | T0 | 8-K 2026-11-02. Results release | Definition of the mix | 3.2 to 3.4 years of dollars is right, but the asset mix is about 93% Bitcoin and 7% dollars, not 70/30 |
| S28 | Strategy holds about 4% of all Bitcoin, about $75B of capital | Holds | T0 plus T3 | 8-K 2026-11-02 | Price | 4.04% of 21 million, $73.3B with dollars at today's price |
| S29 | Raised $21B this year, $25B and $24B in the two years before | Holds | T2 | Results release 2026-10-29 ($21.23B to 23 October) | Prior years not checked here | 2026 is confirmed, prior years were not recomputed in this lane |
| S30 | Since August 2020: bonds lost, money funds 3%, real estate 5%, gold 13%, S&P 15%, Bitcoin 37%, MSTR 51% a year | Spin | T3 plus model | Yahoo adjusted closes to 2026-11-04 | Start date | The figures reproduce from August 2020, but from the 2021 peak gold and the S&P beat Bitcoin and MSTR, and from January 2025 MSTR is last |
| S31 | Credit on an S&P index paying 7% would be illegal under the 1940 Act | Wrong | T1 | 15 U.S.C. 80a-18(a)(2)(A) | Registered fund versus operating company | Registered closed-end funds legally issue preferred on stock portfolios with 200% asset coverage, the Act limits leverage and forces registration, it does not ban it |
| S32 | Volatility: Bitcoin about 39, the strong credit under 8, the equity about 87, removed volatility goes to equity | Spin | T3 plus model | Yahoo, model D1 | Window | 39 and 85 hold on 90 days, STRC is 9 on 90 days and 22 on 12 months, and the risk-transfer idea is sound (Modigliani and Miller) but STRC's calm is partly bought with buybacks and rate rises |
| S33 | Selling $10B of credit and beating a 10% hurdle means you just made $10B | Wrong | Arithmetic | none needed | Present value assumptions | Raising $10B is not a gain, the equity gains only the yearly spread between Bitcoin's return and the 12% cost, which can be negative, as in 2026 to date (BTC Yield minus 3.7%) |
| S35 | Strategy alone can buy all Bitcoin mined forever | Spin | T0 | XBRL holdings 672,500 to 847,666 BTC in 2026 to 2026-09-30 | Funding access | True for January to September 2026 (175,166 BTC bought against about 123,000 mined), not in Q3 alone (about $588M bought and $349M sold, holdings up only about 1,700 BTC against about 41,000 mined), and "forever" depends on the premium and on credit buyers |
| S38 | Quarterly preferreds freeze trading for most of each quarter, monthly made STRC 20 times as liquid | Cannot check | T5 | none | Definition of "freeze" | Preferreds trade every day, monthly and daily pay cut the ex-dividend price drop, but the 20 times figure was not reproducible |
| S41 | Goal: a dollar stablecoin with zero volatility paying 6% to 8%, backed by digital credit | Wrong | T1 | GENIUS Act sections 4(a)(1)(A) and 4(a)(11), signed 2025-07-18 | US law versus offshore or a security | A US payment stablecoin cannot pay holders yield and cannot hold Bitcoin or preferred stock as reserves, so such a product would have to be a registered security or fund, or live outside US rules |
| S42 | STRC spread about 700 bp over the 10-year (near 5%), will compress to 400 to 500 bp | Holds | T3 | 10-year 4.89% (2026-11-04). STRC 12.0% | The forecast part is untested | 12.0% minus 4.89% is about 711 bp today, compression is a forecast with no date |
| S43 | Credit investors want three years of track record, this is the sophomore year | Holds | T1 | STRC listed 2025-07-29 | none | About 15 months of payments, with one break below par and no missed dividend |
| S44a | One third of all capital was preferred stock 100 years ago | Cannot check | T5 | none found | Definition of "capital" | Preferred was a much larger share of corporate finance in the 1920s, the one-third figure was not sourced |
| S44b | STRC and SATA are the two most liquid preferreds, ahead of JPMorgan, Citi and Boeing | Holds | T3 | Yahoo 60-day dollar volume to 2026-11-04 | Window. Universe of preferreds checked | STRC $155.5M a day, SATA $48.6M and Boeing's mandatory convertible $48.6M, JPMorgan $6.4M, Citigroup Capital XIII $2.9M |
| S45 | Most tax-efficient, liquid, transparent credit, STRF credit risk "like three basis points" against 500 to 600 bp spreads | Spin | T2 | S&P B- rating | Model versus market and rating | The 3 bp is the company's own Bitcoin-volatility model, a B- rating historically carries default odds of several percent a year (rating agency studies, T4), and the market price of STRD at 14% says investors do not believe 3 bp for the junior end |
| S36 | Today a $1.5T to $2T system that can scale to $10T to $100T | Cannot check | T5 | none | Forecast | A forecast with no mechanism or date, Bitcoin's total value is $1.62T today (CoinGecko) |

Overcorrection guard on the "wrong" verdicts:
- S19a: STRC is better covered than many junk instruments. Its coverage at 6 times is real and published weekly. "Strongest" is wrong, "well covered for now" is fair.
- S31: there is a real point inside the claim. A company that holds mainly securities (over 40% of assets, section 3(a)(1)(C)) must register as an investment company, and then leverage is capped. Bitcoin is not a security, which is why an operating company can do this with Bitcoin and not with an S&P basket.
- S33: if Bitcoin returns more than 12% a year for long enough, the present value of the spread can be large. The error is calling it made today.
- S41: yield-bearing dollar tokens exist as tokenized money funds and securities. The claim is wrong only as a "stablecoin" under US law.

---

## E. The Malaysian reader: questions to ask before believing "a bank account that pays 12%"

General education, not advice. Each question has the answer this lane could verify and what to check for a given case.

| # | Question to ask | What we found | Tier, source, date |
|---|---|---|---|
| 1 | Is it a deposit? | No. STRC is a share in a US company. A bank deposit is a debt of a licensed bank that must be repaid on the agreed terms. STRC has no repayment date and no holder right to be paid $100 | T1, STRC Annex 2026-03-23 |
| 2 | Is it covered by PIDM? | No. PIDM covers eligible deposits at member banks up to RM250,000 per depositor per bank. Its own FAQ lists "unit trusts, stocks and shares" as not eligible | T1, PIDM FAQ (pidm.gov.my), checked 2026-11-05 |
| 3 | Is it covered by anything else? | US SIPC protection (if the shares sit at a US broker) covers a broker's failure, not a fall in value. No guarantee covers the $100 | T1, general rule. Check the broker's custody chain |
| 4 | Can I get exactly $100 back, and from whom? | Only by selling to another investor at the market price. Close low $74.57 on 2026-06-26, $99.98 on 2026-11-04. The company calls at $101 if it chooses. Holders can demand $100 only after a takeover-type change | T1 and T3 |
| 5 | What US tax applies to a Malaysian non-resident? | Malaysia has no income tax treaty with the US (it is absent from the IRS treaty table), so the statutory 30% applies to any part that is a dividend. Strategy says distributions are return of capital, which is not a dividend. But a withholding agent may withhold 30% on the whole payment unless it applies a reasonable estimate that it is not a dividend (Treasury regulation 1.1441-3(c), T1). The STRC Annex itself warns that a withholding agent may withhold and that a refund needs a US return | T1, IRS Table 3 (Malaysia absent), STRC Annex. Ask the broker how it codes STRC payments on Form 1042-S |
| 6 | What happens to US shares if I die? | US shares are US-situated assets. A non-resident non-citizen's estate must file Form 706-NA if those assets exceed $60,000, with US estate tax rates up to 40% above the small credit | T1, IRS page on non-residents with US assets, checked 2026-11-05 |
| 7 | Is it taxed in Malaysia? | Foreign-sourced income received in Malaysia by resident individuals is exempt, extended to 31 December 2036 by an order reported as P.U.(A) 451/2024 (except income through a Malaysian partnership). Some summaries mention a condition that the income was taxed abroad. A return of capital may not be income at all. Check the latest LHDN guideline for the exact condition | T4, PwC Malaysian Tax Booklet 2025/2026, EY tax alerts. Gazette not fetched |
| 8 | What is my currency risk? | The dividend is in US dollars. USD/MYR went from 4.77 (February 2024, weakest ringgit in 10 years) to 3.93 (January 2026), an 18% loss in ringgit terms for a dollar holder, more than a year and a half of a 12% dividend. 4.05 on 2026-11-05 | T3, Yahoo USD/MYR monthly |
| 9 | Who sets the rate and can they cut it? | Strategy, every month, at its "sole and absolute discretion". It can cut up to 25 bp a month plus any fall in SOFR, never below SOFR (3.97% on 2026-11-03). A run of cuts from 12% to the floor would take about 32 months at 25 bp, faster if SOFR falls | T1 Supplement No. 2. SOFR from the New York Fed |
| 10 | Where does the 12% come from? | Not from the software business (Q3 revenue $125.4M against about $370M of dividends a quarter). The company says it pays "primarily" from selling new common stock, plus the USD Reserve. In 2026 it also sold $431.8M of Bitcoin | T0 and T1, results release 2026-10-29, XBRL |
| 11 | What happens if Bitcoin falls 60%? | At about $32,000, Bitcoin would be worth about $27B against about $20B of debt and preferred. STRC would still be covered about 2.4 times on the company's method, but common stock sales would get harder and the dollar reserve (3.2 years) becomes the main source of dividends | Model, D1 inputs |
| 12 | What do I rank behind? | All debt ($6.75B) and STRF, plus anything the company issues senior later if holders approve | T1 |
| 13 | How could I even buy it? | Through a broker licensed by the Securities Commission Malaysia that offers US market access, usually holding shares through a foreign custodian, or through tokenized versions on offshore platforms that are outside Malaysian investor protection. Check the SC's licensed list and its Investor Alert List | T1, SC Malaysia registers. Products not tested here |
| 14 | Who is selling it to me and what do they earn? | The ATM sales agents earn a commission on each share Strategy sells. Platforms and promoters may earn more. Strategy's own executives have called it a savings product | T1 prospectus. T4 Protos 2026-04-16 |

### Classic yield traps and how each answered these questions

| Case | Promised | What backed it | What happened | Which question would have caught it |
|---|---|---|---|---|
| Goldman Sachs Trading Corporation, 1928 to 1932 | Leveraged returns on a stock portfolio, stacked trusts | Other trusts' shares, bought with borrowed money and preferred stock | Shares fell from about $104 in 1929 to under $2 by 1932 (Galbraith, The Great Crash, T4) | 10 and 11: where does the return come from, what if the asset falls |
| UK split-capital trust "zeros", 2000 to 2002 | Low-risk fixed growth to a set date | Investment trusts that held each other's shares and borrowed | Many zeros lost most of their value. The regulator found cross-holdings and gearing that buyers were not told about (UK Treasury Committee inquiry 2002 to 2003, T2) | 12: what do I rank behind |
| Terra's Anchor, 2021 to 2022 | About 19.5% on a dollar stablecoin | Subsidies from a reserve and the value of a sister token | TerraUSD fell to near zero in May 2022 | 10: the yield had no business behind it |
| Celsius Network, 2020 to 2022 | Up to double-digit yields on crypto deposits | Loans and trading with customer coins | Froze withdrawals in June 2022 and filed for Chapter 11 in July 2022 | 1 and 2: it called itself a bank-like account but was neither a deposit nor insured |

What STRC is not, in fairness: it is not a hidden-leverage scheme. Its terms, holdings, reserve and dividend funding are disclosed in SEC filings every week. Its yield is high because its risk is real and the issuer says so in the prospectus.

---

## F. Sweep: what the public and rival schools believe

### F1. Popular content (reach where found)

| Source | Side | Reach | Date | Testable claims |
|---|---|---|---|---|
| Michael Saylor, the talk dissected here (video m1oXP7foM6E) | Pro | not measured (vidIQ not available this run) | October 2026 | The 47 claims in the scratchpad list |
| Coffeezilla, 18-minute STRC critique on his second channel | Critic | about 800,000 views in under 24 hours (Protos) | April 2026 | Not a bank account, no FDIC or SIPC value protection, dividends optional, no redemption right, junk issuer, compared with Anchor |
| Adam Livingston, 32-minute rebuttal | Pro | not found | April 2026 | "The greatest fixed income investment ever" |
| X debate the same week | Both | 6,536 posts in 17 hours, trended nationally (Protos) | April 2026 | Mixed |
| Peter Schiff, repeated posts and interviews | Critic (gold) | large following, counts not retrieved | 2025 to 2026 | "Classic centralized Ponzi", dividends need new share sales or Bitcoin sales, urged an SEC probe |
| Jim Chanos | Critic (short seller) | press coverage | 2026 | Junk debt trading at par is not stability. Closed his MSTR short in late 2025 calling it played out |
| Bloomberg's Eric Balchunas | Skeptic (ETF analyst) | press coverage | June 2026 | Urged Strategy to retire STRC |
| Benchmark and TD Cowen research | Pro (sell-side) | institutional | June 2026 | The death spiral story skips steps |

Testable claim from the critics: "dividends are paid from new money". Result: the issuer itself says dividends are funded "primarily" from common stock sales (T1), and Q3 common stock sales of $5.41B dwarfed Q3 dividends of $0.42B. So the funding source is disclosed and real. The Ponzi label fails on the legal test (the issuer holds a real asset worth about 6 times STRC and discloses its funding), but the dependence on continuing capital raising is real. Both parts must be said.

### F2. Strongest view from each school

| School | Best position | Who and source | Scope and blind spot |
|---|---|---|---|
| Credit analyst | Issuer B-: dollar obligations against a volatile, non-income asset, with liquidity from capital markets. STRC is infinite-duration junior paper whose only exit is the secondary market | S&P Global, 2025-10-27. Matt Dines (Build Markets), 2026 | Ratings look at cash flow and miss the size of the Bitcoin cushion. Strategy's own supporters say B- undervalues the collateral |
| Hard-money Bitcoiner | Treasury-company leverage brings fragility into a system meant to be anti-fragile, and promoting STRC to savers as safe is dishonest about risk | Susie Violet Ward (Bitcoin Policy UK), The Block. Mike Green (market strategist), Coinage 2026. Jack Mallers's dispute over how treasury companies fund buying | Speaks for Bitcoin's health, not for STRC holders' recovery odds |
| Gold hard money | A Ponzi structure that must keep issuing | Peter Schiff | Ignores that the asset exists and is disclosed. Strong on the funding dependence |
| Pro (issuer) | A transparent, liquid, over-collateralized dollar yield backed by the best collateral | Strategy filings and talks | Uses the company's own coverage method and a Bitcoin return assumption of about 30% a year |
| Neutral or skeptic press | The capital plan eases short-term stress but does not end reliance on capital markets | Cointelegraph feature, 2026-06-30 | Written at the June low |

---

## G. Curiosity questions (answers from verified numbers)

1. If Strategy stopped selling any new shares tomorrow, how long could it pay every dividend and interest bill from dollars alone? About 3.2 to 3.4 years ($4.79B to $5.07B of dollar assets against about $1.49B a year).
2. How far would Bitcoin have to fall before STRC is not covered at all on the company's own method? To about $13,250, 84% below $80,536.
3. Did the vote for daily dividends raise what STRC pays? No. The 8-K says the total dividends, the rates and the obligations are unchanged. Only the timing moved: a record date every calendar day, paid each business day.
4. Who held the dollars after Strategy bought Bitcoin with STRC money? Whoever sold the Bitcoin. In Q3 2026 most new money did not reach Bitcoin sellers at all: $5.41B of common stock was sold, $0.59B went into Bitcoin, and much of the rest went to the dollar reserve and to buying back STRC.
5. Can a US stablecoin pay you 8%? Not under the GENIUS Act: issuers may not pay "any form of interest or yield" for holding the coin, and reserves must be cash, insured deposits, short T-bills, overnight repo or similar. Bitcoin and preferred stock are not on the list.
6. How low did STRC go, and when? A close of $74.57 on 26 June 2026, 25% below par, with Bitcoin near $60,000. It took about three months, a rate rise to 12% and about $2.1B of buybacks to get back near $100.
7. Does the talk's return table change if you start a year later or at the 2021 peak? Yes. From November 2021, gold (16.6% a year) and the S&P 500 (12.1%) beat Bitcoin (4.4%) and MSTR (11.8%). From January 2025, MSTR is last at minus 33% a year.
8. Is a 12% payment tax-free? For a US holder it is a tax deferral while Strategy has no earnings and profits: each payment lowers the cost basis and comes back as a capital gain when sold. For a Malaysian holder it depends on how the broker withholds (0% or 30%) and on the Malaysian foreign-income exemption.

---

## Key findings
1. STRC is equity with a credit-style dividend. Its par is a target held by company policy (rate setting, at-the-market sales above $100, buybacks below $100), not a promise. T1. Regime: 2025 to 2026, one bull-to-bear cycle.
2. The vote changed timing only. Daily record dates from 1 November 2026, no change in rate or total obligations. T1.
3. Coverage is large in Bitcoin and small in dollars: 6.1 times on the company's method, about 46 years of all obligations in Bitcoin, but 3.2 to 3.4 years in dollars. Models on T0 inputs, price of 2026-11-05.
4. The stress regime already happened once. In May 2026 the dollar reserve was spent on retiring convertible notes (T4), and in June STRC closed at $74.57 with Bitcoin near $60,000. The repair cost a rate rise to 12%, a reserve rebuilt mainly from common stock sales, $431.8M of Bitcoin sales and about $2.1B of STRC buybacks. T0 and T3.
5. The pipe ran partly in reverse in 2026: Bitcoin sold to pay Set 1 savers, and Q3 equity proceeds parked mostly in dollars. T0.
6. The talk's present-tense numbers mostly reproduce on the company's method. Its framing words (strongest, credit, bank account, illegal, stablecoin paying 8%, "made $10 billion") do not.
7. For a Malaysian reader the main hidden costs are US withholding practice (0% or 30% depending on how the broker codes return of capital), US estate tax above $60,000, and currency swings larger than a year of dividends.

## Say/do gaps
| Actor | Says | Does | Gap |
|---|---|---|---|
| Strategy | STRC is digital credit, like a high-yield bank account | Prospectus: dividends only if declared, no repayment, no director rights on missed dividends | Marketing versus contract |
| Strategy | Three years of dollars protect the dividend | Spent most of the reserve on convertible notes in May 2026 before the June break (T4), then rebuilt it | Policy changed under stress |
| Strategy | Credit funds Bitcoin buying (the flywheel) | Q3 2026: no preferred sold, $5.41B of common sold, $0.59B to Bitcoin, $431.8M of Bitcoin sold in 2026 | The flywheel ran on common stock and partly in reverse |
| Saylor | 98% Bitcoin and 2% cash buckles, 70/30 holds | Today about 93% Bitcoin and 7% dollars | Stated ideal not yet reached |

## Anomalies (where story and data disagree)
1. STRC's 12-month volatility (22) is nearly three times the preferred index (8), while the talk says "under 8". Only the last 90 days give a calm number (9).
2. STRC was bought back at about $99.52 on average in the week to 1 November (2,092,035 shares for $208.2M, 8-K), after the vote and while trading near par. The buyback is now defending par at the edge, not only deep below it.
3. Q3 2026 GAAP net income was $19.53B, while the company tells holders it has no earnings and profits for tax. Both are true (unrealized gains are not tax earnings), but readers will meet the headline profit and assume taxable dividends.

## Mechanism chains (for R8C and R8D)
- Bitcoin falls, then MSTR premium falls, then common stock sales shrink, then dividends draw on the reserve, then the reserve runs down at about $124M a month, then the company must choose among STRC buybacks, Bitcoin sales and rate cuts. Test: months of reserve below 24 in any monthly update.
- STRC below par, then at-the-market STRC sales stop (the company does not sell below $100), then the credit leg of the flywheel stops. Test: STRC ATM sales of zero for a full quarter (Q3 2026 already had zero).
- SOFR falls, then the cut limit loosens (25 bp plus the SOFR fall), then STRC's rate can fall faster without breaking the contract. Test: the rate notice on or before the 15th of each month.

## Open questions
1. Exact STRC, STRF, STRK, STRD and STRE notional on 1 November 2026 (this lane's split is a model). Source: the next FWP dashboard or the strategy.com credit page.
2. Whether STRF and STRD carry director election rights on missed dividends (S&P summary suggests a governance consequence. STRC has none).
3. Issue-level ratings on the preferreds, if any.
4. How Malaysian-licensed brokers code STRC payments (withholding 0% or 30%).
5. The exact condition in the Malaysian individual foreign-income exemption to 2036.
6. Who sold the Bitcoin Strategy bought (miners, long-term holders, ETFs). Not visible in filings.

## Data table (standing Data job: every series with source, unit, range and checked label)
| Series | Source | Unit | Range | Label checked against source |
|---|---|---|---|---|
| STRC daily close and volume | Nasdaq historical API (api.nasdaq.com/api/quote/STRC/historical) | $ per share, shares | 2025-07-25 to 2026-11-04 | Yes, "Strategy Inc Variable Rate Series A Perpetual Stretch Preferred Stock" |
| STRC dividends by record date | Nasdaq dividend API | $ per share | 2025-08 to 2026-11 (declared) | Yes |
| Adjusted closes BIL, AGG, TLT, VNQ, GLD, SPY, MSTR, STRC, STRF, STRK, STRD, PFF, SATA, BA-PA, JPM-PD, C-PN | Yahoo Finance chart API (query2) | $ adjusted for dividends and splits | 2020-01 to 2026-11-04 | Yes, names in meta field |
| Bitcoin daily close | Coinbase Exchange candles, BTC-USD | $ | 2020-07-01 to 2026-11-05 | Yes |
| Bitcoin spot | CoinGecko simple price | $ | 2026-11-05 | Yes |
| Strategy holdings, reserve, buybacks | SEC 8-K 2026-11-02 | BTC, $ | week to 2026-11-01 | Yes |
| Strategy Bitcoin units, fair value, preferred liquidation preference, dividends, Bitcoin sales | SEC XBRL company facts (data.sec.gov) | BTC, $ | 2025-12-31 to 2026-09-30 | Yes, us-gaap tags named in text |
| 10-year Treasury yield, 3-month bill | Yahoo ^TNX, ^IRX | % | 2026-11-04 | Yes |
| SOFR | New York Fed markets API | % | 2026-11-03 | Yes |
| USD/MYR | Yahoo MYR=X monthly | ringgit per dollar | 2016-11 to 2026-11-05 | Yes |
| UK consol yield | FRED LTCYUKA (via search result) | % a year | 1974 annual | Partly, seen in search extract only |

## Proposed changes
- New Level 4 chapter: lead with "par is a target, not a promise", the coverage table in D1 (Bitcoin years against dollar years), and the June 2026 stress as the worked example.
- Rulebook rb-12 and rb-crypto say stablecoins cannot pay holders interest by law. Keep, and add the reserve list point: Bitcoin and preferred stock are not eligible reserves, so a "Bitcoin-backed stablecoin paying 8%" cannot be a US payment stablecoin.
- Level 2 rb-bonds bridge: STRC is a perpetual like a consol, so it carries the consol's rate risk (C, the 85% nominal fall from 1897 to 1974).

---

## H. Claims table

| id | claim | tier | status | source (URL) | source date | as-of date | falsifier |
|---|---|---|---|---|---|---|---|
| R8A-01 | STRC dividends are cumulative, cash only, payable only if declared out of legally available funds, and the board need not declare them | T1 | Confirmed | https://assets.contentstack.io/v3/assets/bltf8d808d9b8cebd37/blt242c99774eae697a/6ae8f9dbf0e9f2d3c7e1c369/form-424B2_11-02-2026_STRC-pro-supp_amendment-2.pdf | 2026-11-02 | 2026-11-05 | A later certificate of designations changing these terms |
| R8A-02 | STRC record dates fall on every calendar day from 1 November 2026, payments each business day, first payment 3 November 2026 | T1 | Confirmed | same | 2026-11-02 | 2026-11-05 | Company rescinds or amends the cadence |
| R8A-03 | Vote of 28 October 2026: 381,373,199 for, 2,236,551 against, 444,753 abstain (about 99.3% of votes cast) | T0 | Confirmed | https://www.sec.gov/Archives/edgar/data/1050446/000119312526437776/mstr-20261028.htm | 2026-10-29 | 2026-11-05 | An amended 8-K with different totals |
| R8A-04 | The daily dividend amendment does not change total dividends, rates or obligations | T1 | Confirmed | same | 2026-10-29 | 2026-11-05 | Any rate or obligation change tied to the amendment |
| R8A-05 | STRC rate is 12.00% for November 2026 | T1 | Confirmed | Supplement No. 2 (URL as R8A-01) | 2026-11-02 | 2026-11-05 | A rate notice for November different from 12% |
| R8A-06 | A monthly cut cannot exceed 25 bp plus any fall in one-month SOFR, and the rate cannot go below SOFR or be cut while dividends are unpaid | T1 | Confirmed | Supplement No. 2 | 2026-11-02 | 2026-11-05 | A cut larger than the formula allows |
| R8A-07 | STRC ranks junior to all debt and STRF, senior to STRE, STRK, STRD and common | T1 | Confirmed | https://www.sec.gov/Archives/edgar/data/1050446/000119312526118796/d101356d424b5.htm | 2026-03-23 | 2026-11-05 | Issuance of new parity or senior stock approved by holders |
| R8A-08 | STRC holders have no right to elect directors on missed dividends | T1 | Confirmed | same | 2026-03-23 | 2026-11-05 | Amendment adding such a right |
| R8A-09 | Company may call STRC at $101 plus unpaid dividends at any time. Holders can put at $100 only on a fundamental change | T1 | Confirmed | Supplement No. 2 | 2026-11-02 | 2026-11-05 | Amended redemption terms |
| R8A-10 | Strategy held 849,327 BTC on 2026-11-01, USD Reserve $4.79B, USD cash $132.7M | T0 | Confirmed | https://www.sec.gov/Archives/edgar/data/1050446/000119312526442707/mstr-20261102.htm | 2026-11-02 | 2026-11-01 | Next weekly 8-K |
| R8A-11 | Strategy bought back 2,092,035 STRC for $208.2M in the week to 1 November 2026 | T0 | Confirmed | same | 2026-11-02 | 2026-11-01 | none (historical) |
| R8A-12 | 2026 STRC buybacks to 25 October: 20,980,508 shares, $2.10B notional, about $2.04B paid, average $97.39 | T0 | Confirmed | https://www.sec.gov/Archives/edgar/data/1050446/000105044626000047/mstr-20261029x8kxex9912.htm | 2026-10-29 | 2026-10-25 | Restatement in the 10-K |
| R8A-13 | Strategy sold $431.8M of Bitcoin in the nine months to 2026-09-30 | T0 | Confirmed | https://data.sec.gov/api/xbrl/companyfacts/CIK0001050446.json (CryptoAssetSale) | 2026-11-02 | 2026-09-30 | none (historical) |
| R8A-14 | Bitcoin holdings rose from 672,500 (2025-12-31) to 847,666 (2026-09-30) | T0 | Confirmed | same (CryptoAssetNumberOfUnits) | 2026-11-02 | 2026-09-30 | none |
| R8A-15 | Preferred liquidation preference fell from $15.46B (2026-06-30) to $14.11B (2026-09-30) | T0 | Confirmed | same (TemporaryEquityLiquidationPreference) | 2026-11-02 | 2026-09-30 | none |
| R8A-16 | STRC outstanding is about $8.2B on 2026-11-01 | Model on T0 | Plausible | FWP 2026-08-24, XBRL, 8-K 2026-11-02 | 2026-11-02 | 2026-11-01 | Company dashboard showing a figure outside $7.9B to $8.5B |
| R8A-17 | STRC coverage on the company's net method is about 6.1 times at $80,536 Bitcoin, 4.2 times gross | Model | Plausible | scripts/r8a_coverage.py | 2026-11-05 | 2026-11-05 | Company "BTC Rating" for STRC outside 5.5 to 6.7 at a similar price |
| R8A-18 | All dividends and interest are covered about 46 years by Bitcoin and 3.2 to 3.4 years by dollars | Model plus T2 | Plausible | same, results release 2026-10-29 | 2026-11-05 | 2026-11-05 | Company states USD cover below 3 years or annual obligations above $1.6B |
| R8A-19 | STRC closed at $74.57 on 2026-06-26, its lowest close since listing | T3 | Confirmed | https://api.nasdaq.com/api/quote/STRC/historical | 2026-11-05 | 2026-11-04 | Exchange data showing a lower close |
| R8A-20 | STRC averaged about $156M of trading a day over the 60 sessions to 2026-11-04 | T3 | Confirmed | same | 2026-11-05 | 2026-11-04 | 60-day average below $100M |
| R8A-21 | STRC traded more dollar volume than SATA, Boeing's preferred, JPMorgan's Series DD and Citigroup Capital XIII over 60 days | T3 | Confirmed | Yahoo chart API | 2026-11-05 | 2026-11-04 | Another US preferred above $155M a day |
| R8A-22 | S&P rates Strategy B- (issuer), stable outlook | T2 | Confirmed | https://www.strategy.com/press/s-p-global-ratings-assigns-a-b--issuer-credit-rating-to-strategy_10-27-2025 | 2025-10-27 | 2026-11-05 | An S&P upgrade or downgrade |
| R8A-23 | The talk's return table reproduces from 2020-08-11 but the order flips for starts in November 2021 and January 2025 | T3 plus model | Confirmed | scripts/r8a_returns.py | 2026-11-05 | 2026-11-04 | none (method shown) |
| R8A-24 | STRC 12-month volatility is 22%, 90-day 9%, against 8% for the preferred index | T3 plus model | Confirmed | same | 2026-11-05 | 2026-11-04 | none |
| R8A-25 | $10B buys about 0.76 years of new Bitcoin at $80,536 | Model on T0 | Confirmed | protocol issuance, CoinGecko | 2026-11-05 | 2026-11-05 | Price change (one year at about $61,000) |
| R8A-26 | US payment stablecoin issuers may not pay holders any interest or yield, and reserves are limited to cash, deposits, short T-bills, repo and similar | T1 | Confirmed | https://www.govinfo.gov/content/pkg/PLAW-119publ27/html/PLAW-119publ27.htm | 2025-07-18 | 2026-11-05 | An amendment or the CLARITY bill changing section 4 |
| R8A-27 | Registered closed-end funds may issue preferred stock with 200% asset coverage (debt 300%) | T1 | Confirmed | https://www.law.cornell.edu/uscode/text/15/80a-18 | current code | 2026-11-05 | Change to section 18 |
| R8A-28 | The 12% is equivalent to about 27% fully taxed for a top-bracket New York City resident, 19.5% against a qualified dividend, 12% for tax-exempt money | Model on T1 | Plausible | 26 U.S.C. 301(c), state and city rate tables | 2026-11-05 | 2026-11-05 | Strategy reports earnings and profits, or rate changes |
| R8A-29 | Strategy expects distributions to be return of capital for ten years or more | T2 | Confirmed (as a statement) | results release 2026-10-29 | 2026-10-29 | 2026-11-05 | Form 8937 or 1099 showing a dividend portion |
| R8A-30 | Malaysia has no income tax treaty with the US | T1 | Confirmed | https://www.irs.gov/pub/irs-lbi/table-3-list-of-tax-treaties.pdf | latest table | 2026-11-05 | A signed and ratified treaty |
| R8A-31 | A non-resident non-citizen's estate must file Form 706-NA if US-situated assets exceed $60,000 | T1 | Confirmed | https://www.irs.gov/individuals/international-taxpayers/some-nonresidents-with-us-assets-must-file-estate-tax-returns | checked 2026-11-05 | 2026-11-05 | Change in the threshold |
| R8A-32 | PIDM does not cover stocks and shares | T1 | Confirmed | https://www.pidm.gov.my/general/faqs/deposit-insurance-system | checked 2026-11-05 | 2026-11-05 | PIDM Act change |
| R8A-33 | Malaysian resident individuals' foreign-sourced income received is exempt to 31 December 2036 | T4 | Plausible | https://www.pwc.com/my/en/publications/mtb/income-exempt-from-tax.html | 2025/2026 | 2026-11-05 | Gazette text with a narrower scope |
| R8A-34 | USD/MYR moved from 4.77 (Feb 2024) to 3.93 (Jan 2026), 4.05 on 2026-11-05 | T3 | Confirmed | Yahoo MYR=X | 2026-11-05 | 2026-11-05 | none (historical) |
| R8A-35 | SATA pays daily dividends since 16 June 2026 at 13% (last confirmed rate), about 4.96M shares on 2026-05-12 | T1 | Confirmed to May 2026 | https://www.sec.gov/Archives/edgar/data/0001920406/000162828026034804/asst-20260514.htm | 2026-05-14 | 2026-05-12 | Later Strive rate notice |
| R8A-36 | STRC spread over the 10-year is about 711 bp (12.0% minus 4.89%) | T3 | Confirmed | Yahoo ^TNX, Nasdaq | 2026-11-04 | 2026-11-04 | none (dated) |
| R8A-37 | The Bank of England was founded in 1694 to lend to the government, consols date from 1751, Britain's legal gold standard ran 1821 to 1931 | T2 | Confirmed (standard history) | https://www.bankofengland.co.uk/about/history | standing | 2026-11-05 | none |
| R8A-38 | Q3 2026 common stock sales of $5.41B funded $0.59B of Bitcoin, no preferred was sold in Q3 | T0 | Confirmed | results release 2026-10-29, XBRL | 2026-10-29 | 2026-09-30 | none |

## Tripwires (dated)
| Date | What to check | What it would mean |
|---|---|---|
| 2026-11-15 | STRC rate notice for December (on or before the 15th) | A cut means the company judges par safe. A rise means demand is weak at 12% |
| Every Monday | 8-K: STRC buybacks, STRC ATM sales, Bitcoin sales, USD Reserve | Buybacks plus zero sales means the credit leg is idle. Reserve below $3B (about 2 years) is a stress signal |
| 2026-12-15 | Next rate notice. SOFR level | SOFR falls widen the room to cut |
| 2027-01-01 | STRF, STRK, STRD move to daily dividends | Check the 8-K that it took effect |
| Early February 2027 | 10-K for 2026: earnings and profits statement, Form 8937 for 2026 distributions | Any dividend portion ends the "tax-free" claim for that year |
| 2027-09-15 | Holder put on the 2028 convertible notes ($1.01B) | A large put draws dollars ahead of preferred dividends |
| 2028-03-01 to 2028-09-15 | Puts on 2030B ($2.00B), 2029 ($1.50B), 2030A, 2031 notes | The convertible wall that ranks ahead of STRC |
| Any close below $95 | STRC price | Repeat of the June 2026 pattern |
| Bitcoin below $40,000 | Coverage | STRC coverage falls to about 3 times on the company's method and the reserve becomes the main dividend source |
