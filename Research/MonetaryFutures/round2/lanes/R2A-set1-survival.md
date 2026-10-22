# R2A: Does Set 1 survive? Gold, T-bill backing, the petrodollar, and banks

Lane: R2A (Round 2). Written 2026-10-22. As-of date for all data: 2026-10-22 unless a row says otherwise.
Owner questions answered: Q1, Q2, Q3. Moderator questions answered: M1, M2, M3, M4.
Round 1 inputs reused (cited as R1 L1, R1 L2, R1 L5, R1 L7, R1 Db): round1/lanes/L1-fed-treasury.md, L2-law-regulation.md, L5-geo-reserves.md, L7-quant.md, round1/debates/Db-us-strategy-reserves.md. Also R1 L3 and R1 Da for petrodollar history.
Method: about 19 web searches and a handful of direct primary fetches (Circle Q2 2026 earnings release PDF, CEA April 2026 paper PDF, TBAC April 2025 charge PDF, Fed H.8, FDIC national rates, CoinGecko and DefiLlama APIs). Model script: `/tmp/claude-0/-home-user-lastlonger/41b7d58e-bedc-5a4f-859e-bd3e52b76ed8/scratchpad/scripts/r2a_model.py` (run with python3 -I). Everything labelled "model" is arithmetic on stated inputs, not data.

---

## Answers

### Q1. Will Set 1 (gold, bonds, credit) disappear as an irrelevant layer? What about gold as a scarce asset?

No. Set 1 is three different jobs, and each meets the robot, space and energy future differently. Gold's job (a neutral reserve with no counterparty) gets more important through 2050, because sanctions now reach dollar, digital and even gold rails, and central banks bought 863t in 2025 and 289t in Q2 2026 into a falling price. Treasuries' job (prime collateral) is being absorbed into the new rails, not replaced: every compliant stablecoin must hold bills of 93 days or less, so crypto growth is new demand for the bonds. The long-run risk to Treasuries is not robots as such. It is that Treasuries are a claim on future taxes, and taxes today come mostly from wages, so the state must learn to tax robot and energy output. Bank credit is the job most likely to change shape: payments and deposits leak to tokens, while banks move upstream as wholesale lenders to nonbank lenders (their loans to nondepository financial firms rose 19.9% in a year to $2.06T). Gold loses its scarcity only in an H3 world of cheap space mining, which has no evidence today.
Status: Plausible. Confidence: 70. Horizon: H0 to H2 (gold scarcity risk H3).
Three views. Governance: the state keeps Set 1 because it is where it collects seigniorage and sanctions power, so it absorbs new rails rather than letting them compete. Business: build on the new rails but expect the balance sheet behind them to be Treasuries and bank credit. Ordinary person (wage or UHI): your money will look new (a token in an app) but sit on old assets, and gold stays a hedge against the system rather than a tool inside it.

### Q2. Since stablecoins are backed by T-bills, is the old petrodollar backing gone once robots and space arrive? Will someone with $50,000 cash stop borrowing from a bank on traditional rails?

The petrodollar was never the dollar's backing. It had three separate parts: oil invoiced in dollars, Gulf surpluses recycled into Treasuries, and the post-1974 security deal. A solar and robot world erodes the first slowly (electric vehicles already displace about 1.7 million barrels a day, about 5 million by 2030 per the IEA), and the second is already small (Saudi Arabia holds $141B, 1.5% of foreign holdings) and in 2026 has even reversed, with Gulf states borrowing during the Hormuz closure. The third part, security, is the one that still binds. Stablecoins take over the recycling job: foreign savers who want dollars now buy T-bills through tokens instead of through Riyadh. For the person with $50,000: it may sit in a bank (0.38% average savings rate, insured), a government money fund or T-bill (about 4.25%), or a GENIUS stablecoin (0% from the issuer by law, 3.75% to 4.5% if an exchange pays a "reward" the OCC now judges case by case). Borrowing is different: DeFi only lends against collateral you already own, so a mortgage, car loan or first business loan still comes from a bank or a bank-funded lender through at least H1, even if it arrives as a token.
Status: Plausible. Confidence: 65. Horizon: H0 to H1 (oil-invoicing erosion H1 to H2).
Three views. Governance: the US swaps oil-backed foreign demand for regulation-backed token demand, and keeps the security lever. Business: deposits get dearer for banks, so loan pricing rises a little and nonbank lenders grow. Ordinary person: you hold money in new places and should demand the T-bill yield, but you still borrow from a regulated lender who checks your income.

### Q3. Does gold remain an individual store of value while the crypto set replaces the traditional rails?

Mostly yes, with two corrections. Crypto replaces the rails (how money moves and settles), not the balance sheet (what money is backed by), which stays Treasuries, bank deposits and bank credit under GENIUS and the OCC rule effective 2027-01-18. Gold stays a store of value, but its centre of gravity is states, not individuals: tokenized gold (XAUT $3.33B, PAXG $1.82B) is about 0.02% of the $29.5T gold stock, US tax treats every gold spend as a sale (collectibles rate up to 28%), and GENIUS does not allow gold in compliant stablecoin reserves. Individuals will hold gold, and increasingly Bitcoin, as insurance against the board, not as everyday money. The likely end state is a three-layer stack: token rails on top, Treasuries in the middle, gold underneath for nations.
Status: Plausible. Confidence: 65. Horizon: H0 to H2.
Three views. Governance: states hold gold at home and push citizens toward dollar tokens. Business: gold is a reserve and collateral product, not a payment product. Ordinary person: a small gold or Bitcoin slice is insurance, your spending money will be a dollar token.

### M1. Who earns the float on T-bill-backed stablecoins, and what if bill yields fall toward zero?

The issuer and its distributors earn it, the holder earns nothing by law (GENIUS Sec. 4(a)(11)). Circle's own Q2 2026 numbers show the split: $668M of reserve income on $76.5B average USDC (3.5% yield), of which $410M (61.5%) went to distribution partners, mainly Coinbase. Across the whole $305B market the float is worth about $12B a year at a 4.25% bill rate (model). If bills fall toward zero, the model breaks: at Circle's current size and payout, the bill yield where it stops covering costs is about 1.5% (model). Expect what money funds did under zero rates: fee waivers, consolidation into banks and payment networks that earn on transactions and data, and pressure to widen eligible reserves. In a robot economy rates are not obviously heading to zero soon: today AI capital demand is pushing real yields up (10y real 2.76%).
Status: Confirmed (who earns, T0/T1), Plausible (zero-rate effects, model). Confidence: 75. Horizon: H0 to H1.
Three views. Governance: the float is a tax on holders that funds Treasury demand. Business: distribution, not issuance, captures most of the margin. Ordinary person: holding idle stablecoins costs you the bill rate, about $2,125 a year on $50,000.

### M2. If deposits migrate to stablecoins (TBAC's $6.6T "at risk"), what replaces bank credit creation? Does money creation shift to Treasury bills?

Mostly the deposits do not leave the banking system, they change owner and price. TBAC's $6.6T is all US transactional deposits at end 2024 ($5.7T demand deposits plus $0.9T other) and its own slide rates the impact "highest" only for interest-bearing stablecoins, which GENIUS forbids. When an issuer buys a bill, the seller's bank gets the deposit back, so the White House CEA (April 2026) finds a yield ban adds only $2.1B of lending and $531B even under stacked worst cases. What does change is cost and composition: cheap retail deposits become wholesale money, and if $1T moved and banks paid about 4% instead of 0.38%, that is about $36B a year, roughly 0.26 points on the loan book (model). And yes, part of money creation shifts toward bills: a stablecoin dollar is a narrow-bank dollar backed by Treasury debt, so the deficit, not a private loan, becomes the origin of that slice of money, exactly the 1863 national bank note design.
Status: Plausible. Confidence: 60. Horizon: H1.
Three views. Governance: money creation tilts from bank loans to government bills, which hands Treasury more of the money stock and more rate sensitivity. Business: banks become wholesale funders of nonbank lenders. Ordinary person: deposit rates should rise as banks compete, loans get slightly dearer.

### M3. Gold's regulatory and on-chain status

Under Basel rules gold bullion is treated like cash for capital (0% risk weight) but is not a high-quality liquid asset for the liquidity ratio and carries an 85% stable-funding charge, so banks find it cheap to own and costly to fund. On-chain gold is tiny: XAUT plus PAXG are about $5.15B (CoinGecko, 2026-10-22). Tether held 146.2t ($18.8B at end June 2026) in USDT reserves, but GENIUS does not list gold as an eligible reserve, so compliant tokens (including Tether's own USAT) cannot hold it. As collateral, gold works at CME through approved depositories, the WGC's "pooled gold interests" pilot is still being built, and on Aave's main Ethereum market XAUT currently has a 0% loan-to-value (it cannot back a loan there). US secondary sanctions ("Economic Outcast") now cover gold as well as digital assets.
Status: Confirmed. Confidence: 80. Horizon: H0.
Three views. Governance: gold is a reserve asset for states, kept outside the new dollar rails. Business: tokenized gold is a niche until clearing houses accept it. Ordinary person: gold tokens are a way to own gold, not yet a way to borrow against it.

### M4. Does a robot-and-solar economy remove the need for an oil anchor, and what replaces petrodollar recycling?

It shrinks it. Crude is roughly 5% of world goods trade and all fuels about 12% (2023 values, rough), the US is a net energy exporter, and EVs plus home solar steadily cut oil imports for big buyers like China. So oil invoicing matters less each decade, but the dollar's role never depended on oil alone. Recycling is being replaced by three flows: foreign savers buying dollar stablecoins (and so T-bills), Gulf sovereign funds buying US AI infrastructure as equity (MGX and BlackRock's $40B Aligned Data Centers deal, MGX's $50B fundraise), and US private borrowing against power plants and data centers (the "watt-dollar" of R1 Da). The chokepoint lever remains: in 2026 Iran sought Hormuz tolls in yuan or stablecoins, showing that whoever controls passage can choose the currency.
Status: Plausible. Confidence: 60. Horizon: H1 to H2.
Three views. Governance: the US anchor moves from oil to chips, compute and security. Business: freight and energy still price in dollars, compute and power contracts too. Ordinary person: fewer oil shocks over time, but your currency's strength rests on US tech and tax capacity, not Gulf oil.

---

## 1. The frame: three jobs inside Set 1

| Job | Who does it now | Robots | Space | Cheap energy | Verdict by horizon |
|---|---|---|---|---|---|
| Neutral store of value and reserve (gold) | Central banks (about 36,000 to 39,000t, R1 L5/L7), Tether (146.2t), individuals, ETFs | Raise mining productivity at the margin. Supply is set by geology and ore grade, stock grows under 2% a year | Asteroid mining could break scarcity, but only in H3 and with no evidence today | Lowers mining cost, opens lower-grade ore, slow supply effect | More important H0 to H2 (sanctions, custody repatriation). Obsolete only in a speculative H3 |
| Prime collateral (Treasuries) | Banks, money funds, dealers, stablecoins (GENIUS 93-day rule), FIMA | Robots shift income from wages to capital, so the tax base behind Treasuries must move too | No direct effect | Energy and compute assets compete as collateral (watt-dollar) | Absorbed and more important H0 to H1. H2 risk: whether the state can tax robot output |
| Money creation and credit (bank deposits and loans) | Banks ($19.6T deposits, $14.1T loans, H.8 Sep 2026) | AI underwriting lowers the cost of nonbank lending | No direct effect | Capex for power and compute is the new credit demand | Unbundled H0 to H2: payments to tokens, deposits repriced, lending via bank-funded nonbanks |

The three jobs fail for different reasons, so "Set 1 disappears" is the wrong unit. The useful question is which job changes owner. Answer: payments change owner first, then deposit funding, then (much later and only partly) the reserve role.

---

## 2. Key findings

1. **Circle's own books show where the float goes.** Q2 2026: reserve income $667.7M, distribution and transaction costs $410.4M (61.5% of reserve income), average USDC $76.5B, reserve return rate 3.5%, net income $48M (Circle Q2 2026 release, T0). Holders received zero from Circle by law. Distributors kept most of the spread. [R2A-01]
2. **Stablecoin economics are rate-dependent.** Model: at Circle's current size, payout share and opex guidance ($570M to $585M adjusted opex for FY2026), the bill yield at which Circle stops covering costs is about 1.5%. The whole $305B market earns about $11.7B a year at 4.25%, about $2.7B at 1%. [R2A-02]
3. **TBAC's $6.6T is a ceiling built on a design GENIUS forbids.** The April 2025 TBAC charge shows $5.7T of demand deposits and $0.9T of other transactional deposits at end 2024, labelled "~$6.6tn". The same deck rates the impact "lowest" for non-interest-bearing stablecoins and "highest" for interest-bearing ones, noting the latter is "not currently contemplated under the GENIUS Act". It also says the shift "potentially generates no net change to the US money supply". It projected about $2T of stablecoins by 2028. [R2A-03]
4. **The White House CEA itself argues the yield ban barely protects bank lending.** April 2026 paper: banning yield adds $2.1B of lending (0.02%) at a net welfare cost of $800M, and even under stacked worst cases only $531B (4.4% of loans). Mechanism: when issuers buy bills, the deposit moves to the bill seller's bank, so aggregate deposits are unchanged. The loss of lending arises only if reserves sit as 100% reserved cash. [R2A-04]
5. **The real fight is over the deposit spread, not deposit volume.** FDIC national averages (2026-10-19): savings 0.38%, interest checking 0.07%, money market 0.63%, 12-month CD 1.76%. The 3-month bill is 4.25% (R1 L7). On $50,000 the spread a bank keeps over bills is about $1,935 a year (model). Stablecoin rewards (PayPal 4%, Coinbase One 3.75%, Kraken+ up to 4.5%, R1 L2) attack this spread. [R2A-05]
6. **Banks are already moving upstream.** H.8 (released 2026-10-16): loans to nondepository financial institutions $2,064.1B in Sep 2026, up 19.9% from $1,721.9B a year earlier. C&I loans +10.0%, real estate +2.7%, consumer +5.0%. Banks increasingly fund the lenders rather than lending directly. Nonbanks already originate about 64% of US home purchase mortgages (2025 HMDA via NCRC, T4). [R2A-06, R2A-07]
7. **DeFi lending is collateral-only and small.** Coinbase's Morpho-based crypto-backed USDC loans passed about $2.17B of originations by April 2026 (The Block, T4). All crypto-collateralised lending was $56B in Q2 2026 (R1 L7), about 0.4% of US bank loans. On Aave's main Ethereum market, USDT borrowing costs about 4.25% and USDC spiked to about 12.6% at high utilization (DefiLlama snapshot 2026-10-22). Max loan-to-value for BTC is 73% and for ETH 80.5% to 84%. [R2A-08, R2A-09]
8. **Gold under Basel: cheap to own, expensive to fund.** 0% risk weight like cash, not HQLA in US, EU or UK liquidity rules, 85% required stable funding under the NSFR (WGC and LBMA, 2025). The UK PRA has a narrow 0% RSF carve-out for metal balanced against customer metal deposits. [R2A-10]
9. **Tokenized gold is a rounding error, and compliant stablecoins cannot hold gold.** XAUT $3.33B, PAXG $1.82B, together $5.15B, 0.02% of the $29.5T stock (CoinGecko 2026-10-22 and model). Tether held 146.2t ($18.8B) at 2026-06-30 and reported a $1.5B Q2 profit. GENIUS eligible reserves (cash, deposits, bills of 93 days or less, bill repo, government money funds) exclude gold, so the US regime pushes gold out of compliant dollar tokens. On Aave Ethereum, XAUT has about $57M supplied and a 0% LTV. [R2A-11, R2A-12, R2A-13]
10. **Gold demand is investment- and state-driven, not use-driven.** WGC FY2025: record total demand 5,002t (value $555B), investment 2,175t (ETFs +801t, bars and coins 1,374t), central banks 863t, technology demand "stable", supported by AI applications. Gold is about $4,116 today, roughly 27% below the January 2026 high (R1 L5). [R2A-14]
11. **The petrodollar's three parts are moving at different speeds.** (a) Invoicing: crude imports were about $1.25T and all mineral fuels about $3.0T in 2023, roughly 5% and 12% of world goods trade (rough, mixed sources). EVs displaced about 1.7 mb/d in 2025 and about 5 mb/d by 2030 (IEA GEVO 2026). (b) Recycling: Saudi Treasuries $141.2B, 1.5% of foreign holdings (R1 L3/L5). In 2026 Gulf states borrowed: Saudi Arabia posted a $33.5B Q1 budget deficit and a Q2 current account deficit, Kuwait and Iraq went to debt markets. (c) Security: the 1974 arrangement was a secret Treasury-purchase and security deal, revealed by Bloomberg FOIA in 2016. The viral "50-year petrodollar pact expired in June 2024" story was false. [R2A-15 to R2A-19]
12. **Gulf money is being recycled into US AI equity instead of Treasuries.** MGX and BlackRock closed the $40B Aligned Data Centers buyout (first deal of a partnership targeting $30B equity, up to $100B with debt). MGX raised close to $50B in 2026 (Bloomberg via Enterprise, T4). [R2A-20]
13. **Chokepoints choose currencies.** Iran sought Hormuz tolls of about $1 a barrel payable in yuan or stablecoins, at least two vessels reportedly paid in yuan (Lloyd's List via press, T4), and an Iranian official later demanded rials. [R2A-21]
14. **Banks answer with their own tokens.** JPMorgan's JPMD deposit token went live for institutional clients on Base in November 2025 and is being issued on Canton in phases through 2026. It is a deposit claim on JPMorgan, not a reserve-backed stablecoin. [R2A-22]

---

## 3. Detail by job

### 3.1 Gold: the neutral reserve job

What gold does that nothing else does: it is an asset with no issuer. In 2026 that matters more, not less. The US "Economic Outcast" secondary sanctions (R1 L5) explicitly cover banking, digital assets and gold, France repatriated all 129t from New York, Poland targets 700t, and central banks bought most when the price fell (R1 L5, Q2 2026: 289t). Tether, a private dollar issuer, holds more gold than many central banks.

Robots: AI and robots improve exploration and mining productivity, but gold supply is bounded by ore grades and permitting, and the above-ground stock grows under 2% a year (WGC stock 216,265t end 2024 to about 222,600t mid 2026, R1 L7). A more productive mine changes cost, not scarcity.
Space: asteroid gold is the one route to breaking scarcity. No launch, capture or return of asteroid metal at scale exists. This belongs in H3 and is Speculative. If it happens, gold's store-of-value job is the first Set 1 job to die.
Energy: cheaper power lowers mining cost and makes lower-grade ore viable. This raises the long-run supply response at the margin but does not change the stock materially within decades.
Demand side in a robot world: industrial use is small (technology demand "stable", WGC FY2025), so gold's price depends on its role as a reserve and hedge. That role grows when rails are politicised. A solar-robot economy that is also a sanctions economy is good for gold.

Regulatory status (M3): Basel 0% risk weight, not HQLA, 85% NSFR charge. GENIUS excludes it from compliant stablecoin reserves. Texas legal tender (2026-09-01) and bullion-backed electronic payments from 2027-05-01 are the only state-level payment rail (R1 L2). Federal tax treats each spend as a sale. The US keeps 261.5M oz at $42.2222 book (R1 L1). On-chain: $5.15B tokenized, XAUT not usable as collateral on Aave's main market, WGC pooled gold interests still a pilot, CME accepts gold as margin only when bars sit in approved depositories (Ledger Insights and NCFA, T4).

### 3.2 Treasuries: the prime collateral job

The new rails are built on Treasuries by law. GENIUS reserves must be cash, deposits, bills of 93 days or less, or bill repo (R1 L2-01). Stablecoins hold "nearly $200 billion" of bills (R1 L1-17). Tokenized Treasuries are $14.7B to $15.4B and settle inside DTC (R1 L2). TBAC projected about $2T of stablecoins by 2028. At an 80% bill share that is $1.6T, about 22% of today's $7.12T bills (model).

Robots: the risk is not that robots replace bonds. It is that a Treasury is a claim on future federal taxes, and those taxes rest mainly on wages and salaries. If robots shrink the wage share, the state must move the tax base to capital, energy or compute (R1 L7: Musk-scale AI fixes the debt only if spending does not scale with it and real rates do not follow growth). If it cannot, the collateral loses quality. Watch the receipts mix.
Energy: power plants, PPAs, data centers and GPUs are entering as collateral behind dollar loans (R1 Da watt-dollar). They complement Treasuries as private collateral but cannot replace the risk-free benchmark, because they default.
Verdict: absorbed and more important in H0 to H1. The H2 question is fiscal, not technological.

### 3.3 Bank credit: the money creation job, and the $50,000 household

How money is created now: a bank makes a loan and credits a deposit (Bank of England 2014, R1 L7). A GENIUS stablecoin is different: it is a narrow-bank dollar. It cannot lend. Its backing is Treasury debt or reserved deposits.

What happens when $1 leaves a bank for a stablecoin (CEA April 2026, three cases):
1. Issuer buys a bill: the dealer who sold the bill deposits the dollar at another bank. Aggregate deposits unchanged. The new deposit is wholesale and pricier to hold under liquidity rules.
2. Issuer holds cash at a bank that must reserve it 100%: aggregate deposits unchanged, but that dollar no longer supports lending.
3. Issuer uses a money fund that parks cash at the Fed's reverse repo: the dollar leaves bank deposits and becomes a Fed liability.

So the stock of money barely changes (TBAC agrees: "no net change to the US money supply"). What changes:
- Price: retail deposits at 0.38% become wholesale funding near 4%. Model: $1T migrating costs banks about $36B a year (0.26 points on $14.1T of loans), $2T about $72B (0.51 points), the full $6.6T about $239B (1.69 points). This is an upper bound because some deposits stay retail and banks will raise retail rates instead.
- Origin: the slice of money held as stablecoins is created by Treasury bill issuance (the deficit) rather than by a private loan. This is the 1863 National Currency Act design that Bessent chose as his analogy (R1 L2, R1 Db).
- Who lends: banks move up the chain as wholesale funders. Loans to nondepository financial firms +19.9% in a year to $2.06T (H.8) shows this already happening without stablecoins.

The $50,000 household (Q2), as of October 2026:

| Where the cash sits | Return on $50,000 for a year (model) | Protection | Who earns the spread |
|---|---|---|---|
| Bank savings, national average 0.38% | $190 | FDIC to $250,000 | Bank keeps about $1,935 vs bills |
| 12-month CD, average 1.76% | $880 | FDIC | Bank |
| Government money fund or 3-month bill, about 4.25% | $2,125 | Backed by Treasuries, not FDIC | Holder (minus small fee) |
| GENIUS stablecoin, no reward | $0 | Reserve-backed, first priority in issuer bankruptcy (R1 L2), not FDIC | Issuer and distributor keep all |
| Stablecoin with exchange reward 3.75% | $1,875 | Same, plus exchange risk. Reward legality judged case by case by OCC from 2027-01-18 | Split |
| Tokenized Treasury fund | about bill rate | Fund structure, mostly institutional and two thirds held outside the US (R1 L2) | Holder |

Who lends to that person, and how:

| Need | Lender in H0 to H1 | Rails | Comment |
|---|---|---|---|
| Mortgage | Nonbank originator (64% of purchase loans) or bank, funded by Fannie/Freddie MBS | Traditional, possibly tokenized settlement later | Still Set 1 credit (agency MBS) |
| Car or personal loan | Bank, credit union, captive finance, fintech funded by bank warehouse lines | Traditional | Income-based underwriting needs a balance sheet that absorbs default |
| Loan against assets they already own | DeFi (Aave, Morpho via Coinbase) against crypto or tokenized assets, 4% to 13% borrow cost, 73% to 84% max LTV | On-chain | Only works if you already own the collateral. Pointless if your asset is cash |
| Small-business credit | Bank, SBA, platform credit (marketplace and payments firms lending against sales) | Mixed | Platform lenders usually fund via bank lines |

Conclusion for the owner: the $50,000 person may stop keeping all of it in a bank, and should, since the bank pays 0.38% against 4.25% bills. But the person will still borrow from a bank-shaped lender for anything that needs underwriting of future income, because DeFi only lends against collateral already owned and stablecoins cannot lend at all. The rails can be crypto. The credit decision stays with a regulated balance sheet through H1.

### 3.4 The petrodollar: three parts, three speeds

| Part | What it is | Status 2026 | What a solar-robot world does | Horizon |
|---|---|---|---|---|
| Oil invoicing | Crude priced and settled in dollars (Saudi moved to dollar-only pricing in late 1974, Nasdaq/UBS, T4) | Still dominant. Marginal challenges: Hormuz tolls in yuan or stablecoins, INE yuan futures (R1 L3) | Erodes slowly. EVs 1.7 mb/d displaced in 2025, about 5 mb/d by 2030 (IEA), about 1.6% and 4.8% of roughly 104 mb/d world demand (demand figure from memory). Domestic solar cuts import bills | H1 to H2 |
| Gulf surplus recycling into Treasuries | Saudi surpluses bought Treasuries secretly via "add-on" arrangements (Bloomberg 2016 FOIA) | Small: Saudi $141.2B, 1.5% of foreign holdings. Reversed in 2026: Gulf deficits and borrowing during the Hormuz closure | Shrinks the surplus that gets recycled. What is left goes to AI equity (MGX) | Already eroded |
| Security deal | US protection and arms in exchange for alignment and dollar use | Binding. Saudi Arabia reportedly left mBridge under US pressure (R1 L5, unverified) | Mutates: from "oil for security" to "capital and chips for security and AI access" | Durable into H1 |

What replaces recycling: (1) foreign private savers buying dollar stablecoins, which by law buy T-bills (the only "new demand" leg in R1 Db's accountant analysis), (2) Gulf and Asian sovereign capital into US AI infrastructure as equity, (3) private dollar credit against US energy and compute assets (watt-dollar). Only the first finances the Treasury directly.

### 3.5 Stablecoin float economics (M1)

Model inputs: Circle Q2 2026 reserve income $667.7M, distribution $410.4M, other revenue $33.6M per quarter, FY2026 adjusted opex guidance $570M to $585M, average USDC $76.5B. Formula: Circle net = USDC x y x (1 minus 0.615) + other revenue minus opex. Market float = $305B x 0.9 x y.

| Bill yield y | Market float income | Circle reserve income | Circle after distribution and opex |
|---|---|---|---|
| 4.25% | $11.7B | $3.25B | +$0.81B |
| 3.50% | $9.6B | $2.68B | +$0.59B |
| 2.00% | $5.5B | $1.53B | +$0.15B |
| 1.00% | $2.7B | $0.77B | minus $0.15B |
| 0.25% | $0.7B | $0.19B | minus $0.37B |

Breakeven about 1.5%. Tether's breakeven is far lower (tiny staff, reported $1.5B Q2 profit including gold and BTC gains). So a zero-rate world favours the low-cost offshore issuer over the compliant one unless compliant issuers are bank subsidiaries that earn elsewhere. Rates in the robot economy: in H0 to H1 AI raises demand for capital and real yields (10y real 2.76%, R1 L1). Only in an H2 to H3 abundance world with weak capital demand would bill yields plausibly sink toward zero.

---

## 4. Say/Do gaps

| Actor | Says | Does | Gap |
|---|---|---|---|
| White House CEA | (Administration line) stablecoins strengthen the dollar | April 2026 paper argues the yield ban banks lobbied for barely protects lending and costs consumers | The administration's own economists side against the bank lobby on yield, while the OCC rule keeps the ban "as enacted" |
| Banks (ABA lobby, BofA CEO) | $6.6T of deposits at risk | Cite a TBAC figure whose own slide says the large impact needs interest-bearing coins that GENIUS bans. JPMorgan launches its own deposit token | Use the ceiling as if it were the forecast |
| Circle | Open, interoperable dollar for everyone | Pays 61.5% of reserve income to distributors, holders get zero | The float is a distribution business |
| Tether | Dollar extension, US-compliant USAT | Offshore USDT holds 146.2t of gold and about 99k BTC, assets GENIUS bans for compliant tokens | Two balance sheets for two regimes |
| Gulf states | Diversification, mBridge, yuan openness | Kept Treasuries flat, borrowed in 2026, recycled into US AI equity | Rhetoric multipolar, money still US-bound |
| Iran | Rials for Hormuz tolls | Collected some tolls in yuan, floated stablecoins | Even an adversary reaches for dollar stablecoins as a toll currency |

---

## 5. Anomalies

1. **An adversary proposed dollar stablecoins as a Hormuz toll currency.** Default: a sanctioned state avoids dollar instruments entirely. Reading: USDT is already the dollar outside US reach, which is exactly why GENIUS gates offshore issuers.
2. **Gulf petro-states ran deficits with Brent near $110.** Default: high oil prices mean big surpluses to recycle. The 2026 war cut volumes more than prices rose. The recycling engine depends on shipping lanes, not just prices.
3. **The White House's own economists undercut the bank lobby's central number.** Default: the administration and banks align on deposit protection.
4. **Bank loans to nonbank lenders grew about 20% in a year**, twice C&I growth and seven times real estate. Banks are becoming wholesalers of credit before stablecoins have taken deposits at scale.
5. **XAUT has a 0% loan-to-value on Aave's main market.** The largest gold token cannot back a loan on the largest DeFi lender. Gold on-chain is a holding, not collateral.
6. **Circle's reserve yield (3.5%) sat below the bill rate** because rates were lower in Q2 and much of USDC sits in repo. The margin is thinner than headline bill rates suggest.

---

## 6. Mechanism chains

**Chain 1: deposit spread migration (Plausible).** Bank savings pay 0.38% while bills pay 4.25% → stablecoin rewards and money funds offer the gap to savers → some retail deposits move → deposits stay in the system but become wholesale → bank funding cost rises (about $36B a year per $1T, model) → loan rates up a fraction of a point and bank lending shifts to funding nonbanks → savers capture part of the old bank rent. Test: FDIC national savings rate, H.8 other deposits vs large time deposits, NDFI loan growth, OCC actions on rewards after 2027-01-18, CLARITY reintroduction with a rewards ban.

**Chain 2: money creation tilts to the deficit (Plausible).** Stablecoins grow toward TBAC's $2T → 80% in bills → $1.6T of the money stock is backed by Treasury bills, not private loans → Treasury issues more bills cheaply (captive demand, R1 Db-01) → federal interest becomes more sensitive to the policy rate → pressure on the Fed to keep bill rates low. Test: stablecoin share of bills (now 4.3%), bill share of debt (22.36%), Nov 4 refunding.

**Chain 3: zero-rate squeeze (Speculative, H2 to H3).** Abundance lowers real rates → bill yields fall below about 1.5% → compliant non-bank issuers lose money → consolidation into banks and payment networks, or lobbying to widen reserves (longer bills, gold, other assets) → reserve rules loosen exactly when stablecoins are biggest. Test: issuer profitability, any GENIUS amendment to Sec. 4.

**Chain 4: petrodollar to watt-dollar (Plausible).** EVs and solar cut oil import bills → Gulf surpluses shrink and get recycled into AI equity → Treasury loses a foreign official buyer (already small) → replaced by foreign private stablecoin demand and private energy-collateral credit → the security bargain shifts to chips and AI access. Test: Saudi and UAE TIC lines, Gulf sovereign deals in US data centers, IEA oil demand, any oil contract settled in a non-dollar stablecoin or yuan at scale.

**Chain 5: robot tax base (Speculative, H2).** Robots raise capital share → payroll and income tax base shrinks relative to output → Treasuries' backing weakens unless taxes move to capital, energy or compute → if they move, Treasuries stay prime collateral, if not, gold and real-asset collateral gain. Test: receipts mix (individual and payroll vs corporate and excise), labour share of income.

---

## 7. Tripwires to monitor

| Date / trigger | What | Meaning |
|---|---|---|
| Late Oct 2026 | WGC Q3 2026 Gold Demand Trends | Central bank buying above 200t at falling prices confirms the neutral-layer reading |
| About 31 Oct 2026 | Tether Q3 attestation | Gold tonnage above 160t, T-bill share direction |
| 2026-11-04 | Treasury refunding | Coupon increase weakens the bill-backed money story |
| Monthly | FDIC national savings rate | Rising above about 1% means banks are paying to keep deposits (Chain 1 live) |
| Weekly | H.8 loans to nondepository financial institutions | Sustained 15%+ growth confirms banks moving upstream |
| 2027-01-18 | GENIUS and OCC rule effective | First enforcement on exchange rewards decides holder yield |
| Jan 2027 | CLARITY reintroduction | Whether a rewards ban reaches the statute |
| Late 2026 | Basel targeted crypto review | Any change in bank capital cost for tokenized assets |
| 2027-05-01 | Texas bullion-backed payments | First state gold payment rail goes live or slips |
| Any | CME or LCH accepting tokenized gold or WGC pooled gold interests as margin | Gold becomes live collateral on new rails |
| Any | Aave or Morpho listing XAUT/PAXG with LTV above 0 at scale | On-chain gold collateral begins |
| Monthly TIC | Saudi and UAE Treasury holdings | Below $120B for Saudi Arabia means recycling eroding further |
| Annual | IEA oil demand and EV displacement | Displacement ahead of 5 mb/d by 2030 accelerates invoicing erosion |
| Any | Stablecoin supply above $500B, or above 10% of bills | Chain 2 becomes material |

---

## 8. Open questions and gaps

1. Mine production and technology tonnage for 2025 were not retrieved (WGC full report). The "stock grows under 2% a year" figure is derived from WGC stock estimates in R1 L7.
2. World merchandise trade for 2023 ($23.8T) and world oil demand (about 104 mb/d) are from memory, so the oil share figures are rough. A WTO or UNCTAD table should replace them.
3. Tether Q3 2026 attestation not yet published. Q2 Treasury split not re-read from the BDO report.
4. The nonbank mortgage share (64.2%) rests on a secondary summary of the NCRC HMDA analysis.
5. Coinbase/Morpho origination figure ($2.17B by April 2026) is from a press summary. No later figure found.
6. Saudi reserve and current-account figures for Q2 and August 2026 come from mixed secondary sources and conflict in detail.
7. No measure of how much stablecoin demand is net new foreign demand versus switching from US money funds (R1 Db gap persists).
8. No hard 2026 data on oil invoicing currency shares or yuan oil volumes.
9. Space mining: no evidence base exists to quantify H3 gold scarcity risk.
10. The Fed's December 2025 note on banks and stablecoins was only partly readable. Its quantitative conclusions were not extracted.

---

## 9. Claims

| id | claim | tier | status | source (URL) | source date | as-of date | falsifier |
|---|---|---|---|---|---|---|---|
| R2A-01 | Circle Q2 2026: reserve income $667.7M, distribution and transaction costs $410.4M (61.5%), average USDC $76.5B, reserve return 3.5%, net income $48M | T0 | Confirmed | https://s206.q4cdn.com/265218871/files/doc_news/2026/Aug/05/CIRCLE_Q2-2026.pdf | 2026-08-05 | 2026-06-30 | 10-Q restatement |
| R2A-02 | At Circle's current size and payout, it stops covering costs at a bill yield near 1.5%. Market float about $11.7B a year at 4.25% | model | Plausible | Circle release above, R1 L7 supply | 2026-10-22 | 2026-10-22 | Circle profitable below 1.5% yields, or payout terms change |
| R2A-03 | TBAC's ~$6.6T is US transactional deposits at end 2024 ($5.7T DDA + $0.9T other), with the largest impact tied to interest-bearing stablecoins not contemplated under GENIUS. TBAC projected ~$2T stablecoins by 2028 | T2 | Confirmed | https://home.treasury.gov/system/files/221/TBACCharge2Q22025.pdf | 2025-04 | 2024-12-31 | n/a (document) |
| R2A-04 | CEA: a yield ban raises lending by $2.1B (0.02%) at baseline, $531B (4.4%) under stacked worst cases. Deposits mostly recycle when issuers buy bills | T2 | Confirmed (statement), Plausible (model) | https://www.whitehouse.gov/wp-content/uploads/2026/04/Effects-of-Stablecoin-Yield-Prohibition-on-Bank-Lending.pdf | 2026-04 | 2026-02-16 | Observed deposit and lending declines after 2027 materially larger |
| R2A-05 | FDIC national averages: savings 0.38%, interest checking 0.07%, MMDA 0.63%, 12-month CD 1.76% | T0 | Confirmed | https://www.fdic.gov/national-rates-and-rate-caps | 2026-10-19 | 2026-09-30 | n/a |
| R2A-06 | Commercial bank loans to nondepository financial institutions $2,064.1B (Sep 2026), +19.9% y/y. Deposits $19.64T, loans $14.10T | T0 | Confirmed | https://www.federalreserve.gov/releases/h8/current/default.htm | 2026-10-16 | 2026-09 | H.8 revision |
| R2A-07 | Nonbanks originated 64.2% of US home purchase mortgages in 2025 (66.1% in 2024) | T4 | Plausible | https://tomo.com/blog/?p=8475 | 2026 | 2025 | NCRC or CFPB HMDA tables differ |
| R2A-08 | Coinbase's Morpho-based crypto-backed USDC loans passed about $2.17B of originations by April 2026 | T4 | Plausible | https://www.theblock.co/post/390403/coinbase-xrp-dogecoin-cardano-litecoin-loans-morpho | 2026-04 | 2026-04-14 | Coinbase disclosure differs |
| R2A-09 | Aave v3 Ethereum snapshot: USDT borrow about 4.25%, USDC up to about 12.6% at high utilization, BTC max LTV 73%, ETH 80.5% to 84% | T3 | Confirmed (snapshot) | https://yields.llama.fi/lendBorrow | 2026-10-22 | 2026-10-22 | n/a (price) |
| R2A-10 | Gold: 0% risk weight like cash, not HQLA in US/EU/UK LCR, 85% RSF under NSFR | T1 (via industry summaries) | Confirmed | https://www.gold.org/goldhub/gold-focus/2025/06/you-asked-we-answered-does-gold-qualify-hqla-under-basel-iii , https://www.lbma.org.uk/articles/gold-and-hqla-correcting-misleading-online-information | 2025-05/06 | 2026-10-22 | Basel or national rule change |
| R2A-11 | XAUT $3.33B and PAXG $1.82B market caps, together about 0.02% of a $29.5T gold stock | T3 | Confirmed | https://api.coingecko.com/api/v3/simple/price?ids=tether-gold,pax-gold&vs_currencies=usd&include_market_cap=true | 2026-10-22 | 2026-10-22 | n/a |
| R2A-12 | Tether held 146.2t of gold ($18.8B) at 2026-06-30 and reported about $1.5B Q2 profit | T0 via T4 | Confirmed (secondary) | https://decrypt.co/374796/tether-reports-1-5b-q2-profit-usdt-supply-grows | 2026-07-31 | 2026-06-30 | BDO report differs |
| R2A-13 | GENIUS eligible reserves exclude gold, so compliant tokens (incl. USAT) cannot hold it | T1 | Confirmed | https://www.govinfo.gov/content/pkg/PLAW-119publ27/html/PLAW-119publ27.htm | 2025-07-18 | 2026-10-22 | Amendment to Sec. 4 |
| R2A-14 | WGC FY2025: demand 5,002t ($555B), investment 2,175t, ETFs +801t, central banks 863t, technology stable | T0 | Confirmed | https://www.gold.org/news-and-events/press-releases/gold-investment-rockets-2025-setting-new-high-uncertainty-bites | 2026-01 | 2025-12-31 | WGC revision |
| R2A-15 | Crude imports about $1.25T and HS27 fuels about $3.0T in 2023, roughly 5% and 12% of world goods trade | T4 + memory denominator | Plausible (rough) | https://trendeconomy.com/data/commodity_h2/2709 , https://trendeconomy.com/data/commodity_h2/27 | 2024 | 2023 | WTO table gives materially different shares |
| R2A-16 | EVs displaced about 1.7 mb/d of oil in 2025, about 5 mb/d by 2030 (IEA STEPS/CPS) | T4 (IEA) | Confirmed | https://www.iea.org/reports/global-ev-outlook-2026/outlook-for-electric-mobility-chap-9-11 | 2026-05 | 2025 | IEA revision |
| R2A-17 | The 1974 arrangement was secret Saudi Treasury buying tied to security, revealed by Bloomberg FOIA in 2016. The "petrodollar pact expired June 2024" story is false | T2/T4 | Confirmed | https://historynewsnetwork.org/article/162993 , https://www.nasdaq.com/articles/truth-about-petrodollar-pact | 2016 / 2024-06 | 2026-10-22 | Archival text of a dated pricing pact |
| R2A-18 | Saudi Treasury holdings $141.2B, 1.5% of foreign holdings | T0 | Confirmed | https://ticdata.treasury.gov/resource-center/data-chart-center/tic/Documents/slt_table5.txt | 2026-10-16 | 2026-08 | TIC revision |
| R2A-19 | Gulf states borrowed in 2026 despite high oil prices: Saudi Q1 deficit $33.5B, Kuwait and Iraq to debt markets | T4 | Plausible | https://www.aljazeera.com/amp/economy/2026/5/6/saudi-arabia-posts-33-5bn-budget-deficit-amid-drop-in-oil-sales , https://www.agbi.com/markets/2026/05/kuwait-turns-to-debt-markets-as-hormuz-disruption-hits-revenue/ | 2026-05 | 2026-Q1 | Official MoF data show surplus |
| R2A-20 | MGX and BlackRock closed the $40B Aligned Data Centers buyout. MGX raised close to $50B in 2026 | T4 | Plausible | https://enterpriseam.com/menaplus/2026/07/22/gulf-sovereign-funds-pour-into-ai-and-infrastructure-while-trimming-non-core-assets-abroad/ , https://enterpriseam.com/logistics/2026/06/25/mgx-raises-nearly-usd-50-bn-to-accelerate-its-ai-investment-push/ | 2026-06/07 | 2026-07 | Deal unwound |
| R2A-21 | Iran sought Hormuz tolls in yuan or stablecoins, at least two vessels paid in yuan, an official later demanded rials | T4 | Plausible | https://www.intellinews.com/iran-pushes-to-denominate-hormuz-tolls-in-rials-435840/ | 2026-04 | 2026-04 | Shipping data show no toll payments |
| R2A-22 | JPMD deposit token live on Base for institutions (Nov 2025), Canton issuance phased through 2026, a deposit claim not a reserve-backed coin | T2/T4 | Confirmed | https://www.theblock.co/post/378493/jpmorgan-deposit-token-jpm-coin | 2025-11 | 2026-10-22 | Product withdrawn |
| R2A-23 | Moving $1T of retail deposits to wholesale funding costs banks about $36B a year, about 0.26 points on loans ($6.6T: about $239B, 1.69 points), upper bound | model | Plausible | inputs R2A-05, R2A-06, R1 L7 | 2026-10-22 | 2026-10-22 | Banks retain retail deposits by raising rates instead |
| R2A-24 | Set 1 does not disappear: gold's neutral job grows H0 to H2, Treasuries absorbed as collateral, bank credit unbundled | inference on T0/T1 | Plausible | this file, R1 Db | 2026-10-22 | 2026-10-22 | Two quarters of net official gold selling, stablecoin reserves allowed outside Treasuries, bank lending share rising again |
| R2A-25 | Petrodollar recycling is replaced by foreign stablecoin demand (direct to Treasuries) and Gulf AI equity (not to Treasuries) | inference | Plausible | R2A-18 to R2A-20, R1 Db accountant | 2026-10-22 | 2026-10-22 | Gulf Treasury holdings rise sharply, or stablecoin growth stalls below $500B through 2028 |
