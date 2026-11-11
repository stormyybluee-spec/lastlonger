# R2B: UHI as collateral, UHI outside the US, and the nominal vs real math

Lane: Round 2, R2B. Facts as of 2026-10-22. Owner questions: Q4, Q5, Q7. Moderator questions: M5, M6, M7, M8.
Reused from Round 1: R1 L4 (labor, UHI, credit plumbing), R1 L7 (quant), R1 L2 (law), R1 L5 (reserves), R1 Dd (tiers, credit), R1 Dc (AI and debt).
Method: 24 web searches, primary pages where they loaded, World Bank API for every country series (CPI, FX, imports/GDP, broad money/GDP, GDP, population). Everything labelled "model" is a toy calculation run with `python3 -I`, with code and output printed below. Akleg.gov and Justia returned 403, so Alaska statute text is from search snippets (flagged).

---

## Answers

### Q4. If UHI arrives before any energy-watt system, can people use UHI as collateral to get more loans or credit?
Yes, but "use as collateral" means three different things, and the law treats them very differently. (a) **UHI counted as income** for a loan is already allowed and protected: ECOA bans discrimination against public-assistance income (15 USC 1691(a)(2)), and Fannie Mae counts such income if it will continue at least 3 years (B3-3.4-12, R1 L4). That gets you normal credit, capped by debt-to-income rules: $1,000 a month of UHI supports roughly a $69k mortgage (model). (b) **UHI pledged or assigned** to a lender (the lender gets paid straight from your future checks) is banned for Social Security by 42 USC 407 since 1935, and the Supreme Court calls it "a broad bar" (Philpott, 1973). The ban exists because every time a benefit stream became pledgeable, sellers bought it cheap: US pension-advance firms charged up to 183% APR (CFPB v. Future Income Payments, 2018), Minnesota found a veteran who got $1,500 for $18,000 of pension, South Africa's grant-payment contractor ran deductions from social grants, and Brazil's pension-deduction pipes let associations skim R$6.3 billion from about 6 million retirees (2019 to 2024). Brazil also shows the upside: legal payroll-deducted loans against INSS pensions are a huge, cheap market (rate cap 1.80% a month in 2025, up to 35% of the benefit plus 10% for cards). (c) **UHI paid in ownership units** (fund shares) can be borrowed against like a brokerage account, and it is the only form whose borrowing power grows over time: $12k a year of units for 10 years at 5% real is about $151k, supporting a $75k margin loan (model). Mongolia did a small version (1,072 Erdenes Tavan Tolgoi shares per citizen, sellable only back to the state).
- Status: Confirmed (law for a and b), Plausible (design c). Confidence 80. Horizon H0 to H1.
- Three views: Governance: keep the cash floor non-assignable, allow regulated borrowing only against an ownership slice (court-approval or rate-cap model). Business: the profitable product is payroll-deduction-style lending, and it is also where fraud happens, so expect licensing. Ordinary person: your UHI helps you qualify for a loan, it will not be something you can sell for a lump sum, and anyone offering to buy it is likely charging 100%+ a year.

### Q5. UHI mostly applies to the US, right? Do other nations have to compete on their own and give their citizens a different "UHI" value?
The loud UHI talk is American (Musk's federal checks, R1 L4), but cash paid to every citizen is already a global practice, and every country pays it from its own budget, in its own currency, at its own value. Hong Kong paid HK$10,000 to about 7 million adults in 2020 (2.7% of GDP, from reserves), Macau pays MOP 10,000 a year (about 1.7% of GDP per person), Alaska paid $1,000 plus $200 in 2026, Mongolia paid 21,000 tugrik a month to everyone in 2010 to 2012, and Iran paid 455,000 rials a month from December 2010. The value each can pay is set by tax capacity plus resource or fund income plus the small amount of money its own people and foreigners are willing to hold. The US can stretch further than others because foreigners hold its money (dollar 56.7% of reserves, R1 L5), and only it gets imported energy and chips priced in its own currency. A country that imports its robots and chips has to earn or own its share of the robot income, which points to sovereign funds holding foreign AI and energy equity, not printing. They do compete: residency rules tighten (Macau added a 183-day rule for 2025), and if a US UHI is paid in dollar stablecoins, citizens of weak-currency countries will want those tokens, which is dollarization pressure.
- Status: Plausible. Confidence 70. Horizon H1.
- Three views: Governance: non-reserve countries should fund transfers from taxes or fund income and own foreign capital, never from the printing press. Business: expect very different UHI levels, so price products per market, and expect capital controls and stablecoin limits in emerging markets. Ordinary person: a UHI number means nothing until you check what it buys, especially in imported goods.

### Q7. If each country must subsidize its own citizens' UHI, how will the value be set? Show the math, nominal vs real. Does a new digital value change this?
The sustainable real UHI per person is roughly (extra taxes + fund income + non-inflationary money creation) divided by population, and anything paid above that is clawed back by inflation. Nominal is the number on the check, real is what it buys: real = nominal / (1 + inflation). In the toy model (UHI = 10% of GDP, money-financed, only 30% of extra demand met by extra output), real value after 2 to 3 years is about 96% of nominal in local goods in the US, 99% in imported goods, but about 78% in local goods and 64% in imported goods in an Argentina-like economy where the currency falls 56%. History matches: Iran's fixed transfer lost about 58% of its real value in five years (CPI 121 to 285) and fell from about $45 to about $13 at the market rate, and Mongolia's lost about 19% in two years. Paying from a sovereign fund protects the currency but not the domestic price level: if output cannot respond, local inflation is about the same as with printing. A digital token does not change any of this, because the budget constraint is about goods, not ledgers. It changes three things: distribution (direct to wallets), programmability (expiry, merchant lists, as in Shenzhen's 2020 e-CNY lottery), and pledgeability (a smart contract can make the stream assignable or lock it).
- Status: Confirmed (arithmetic and precedents), Plausible (model calibration). Confidence 70. Horizon H1.
- Three views: Governance: index the UHI to prices and cap money finance at the growth of money demand, or the check becomes Iran's. Business: in money-financed countries, expect wage and price indexation and dollar pricing of imports. Ordinary person: judge any UHI by what it buys after a year, and keep part of your savings in something that is not the local currency.

### M5. Precedents for national cash transfers, especially in non-reserve-currency countries
The precedents split cleanly by financing. Funded from reserves or resource income in a pegged or reserve currency (Hong Kong 2020 at 2.7% of GDP, Macau about 1.7% of GDP per person, Alaska about 1.4% of US GDP per person): inflation stayed low (Hong Kong 0.3% in 2020, Macau 0.7% in 2024), helped by small size and recession slack. Financed by deficits or money in a floating non-reserve currency (Mongolia HDF about 6% of GDP, Iran about 6% of GDP): poverty fell sharply at first (Mongolia 38.8% to 27.4% in 2010 to 2012, Iran 22.5% to 10.6% per Enami and Lustig), then inflation ate the fixed nominal amount (Mongolia CPI 10.0%, 8.4%, 14.3% in 2010 to 2012, Iran real value cut nearly in half in five years, poverty effect down about 40%). Mongolia's HDF spent up to 18% of government revenue in 2012 against mining revenue about half that, and Iran set transfers above the revenue from price rises and printed the gap (Salehi-Isfahani and co-authors). Kenya (GiveDirectly, donor dollars, about 17% of local GDP at peak) produced a 2.5 local multiplier and only 0.1% average local inflation, because there was slack and the money came from outside.
- Status: Confirmed. Confidence 80. Horizon H0 (evidence base).
- Three views: Governance: small and funded is safe, large and printed is eroded within 2 to 5 years. Business: a funded transfer in a slack economy is a demand boost with little price risk, a printed one is a currency risk. Ordinary person: the first year of a printed handout feels great, the third year depends on whether it was indexed.

### M6. Toy model: three country types, money-financed UHI, nominal vs real
With a UHI of 10% of GDP printed, the outcome depends on how much new money people at home and abroad will hold, how much of imports are priced in dollars, and whether output responds. Baseline (30% of extra demand met by output): US CPI +3.9%, dollar -2.2%, imported goods only +1.0% (pass-through 0.44, Gopinath). Japan-like +0.7% (huge domestic money demand, broad money 247% of GDP, but the real yen has its own rate-gap risk). Philippines-like +7.5% with the peso -8.3%. Argentina-like +32% with the peso -56%. In a robot-abundance case (80% met by output) the US, Japan and the Philippines stay under about 3%, but the Argentina-like case is still +28% because its money base is tiny (26% of GDP). Over five years, an Argentina-like printed UHI that is indexed to nominal GDP keeps its local-goods value but loses about 74% of its value in imported goods (energy, chips). A Musk-scale US UHI (about 24% of GDP) printed in the baseline case gives about 9.5% CPI.
- Status: Plausible (model, not forecast). Confidence 60. Horizon H1.
- Three views: Governance: the exorbitant privilege is real but worth roughly the foreign demand for new dollars, not the whole UHI. Business: imported inputs are the first casualty in emerging markets. Ordinary person: in a weak-currency country, a printed UHI buys rent and food for longer than it buys phones and fuel.

### M7. Can benefit streams be pledged?
Not in the US for Social Security: 42 USC 407 makes future payments non-transferable and immune from "execution, levy, attachment, garnishment, or other legal process", with exceptions for child support and alimony (42 USC 659). The courts read it broadly (Philpott v. Essex County, 1973, unanimous). The abuse history is the reason: pension advances were sold as "purchases" to dodge lending law, at APRs the CFPB put at up to 183% and Minnesota at over 200%, mostly to veterans. Alaska's PFD is only partly protected: 20% is exempt from creditors, and child support, restitution, defaulted student loans, fines and state debts can take the rest (AS 43.23.140). Historically some Alaska lenders wrote notes secured by assignment of future dividends (legislative committee file, late 1990s, seen only as a search snippet, not verified). Abroad, pledging is normal: Brazil allows up to 45% of a pension to be deducted for loans and cards over up to 108 months, which made the INSS payroll-loan book over R$268 billion (2025, secondary source), and it also enabled the R$6.3 billion deduction fraud.
- Status: Confirmed. Confidence 85. Horizon H0.
- Three views: Governance: if UHI is made pledgeable, copy the guardrails (rate cap, share cap, court approval, consent logs), not the free market. Business: a pledgeable UHI creates a large, cheap, low-loss lending market and a fraud surface. Ordinary person: a pledge lowers your interest rate but locks part of your floor for years.

### M8. If UHI is paid as a stablecoin or programmable token, can it be pledged in DeFi?
Two different things get confused. The balance you have already received can be pledged in DeFi today, exactly like pledging savings: crypto-collateralised lending was $56.2 billion in Q2 2026 (Galaxy, R1 L7). The future stream can only be pledged if the payer agrees to redirect payments, because a smart contract cannot seize money that has not been sent yet. So pledgeability is a design choice of the issuer: it can make the stream a transferable token (pledgeable), or lock it to a verified wallet with expiry and merchant rules (non-pledgeable). China has already shown the restrictive version: Shenzhen's 2020 e-CNY lottery gave 50,000 people 200 yuan each, spendable only at 3,389 local merchants, not transferable, with unspent money recovered (8.76 million of 10 million yuan used). In the US the Fed cannot issue a retail CBDC (statutory ban, R1 L2), so a token UHI would ride on private stablecoins, which cannot pay holders yield under GENIUS (Sec. 4(a)(11), R1 L2).
- Status: Plausible. Confidence 65. Horizon H1.
- Three views: Governance: programmability lets you choose a non-pledgeable floor plus a pledgeable ownership slice in one wallet. Business: DeFi lenders will accept received balances but not unsecured future streams without an issuer redirect. Ordinary person: a "programmable" UHI can also be a UHI that expires or only works in approved shops, so read the rules.

---

## Key findings

1. **Three meanings of "UHI as collateral" with three legal answers.** Income for underwriting: allowed and protected (ECOA, Fannie 3-year rule). Pledge or assignment of the stream: banned for Social Security (42 USC 407), partly allowed for Alaska PFD (only 20% exempt), legal and large in Brazil. Ownership units: borrowable like any brokerage account, unless locked like Trump Accounts until 18 (R1 L2).
2. **The credit size of $1,000 a month differs by design (model).** As income: about $69k mortgage (43% DTI, 30 years, 6.3%). As a pledged stream: PV about $181k at 6%, but buyers historically pay 30 to 60 cents, so $54k to $108k up front and the floor is gone. As fund units for 10 years: about $151k of assets, a $75k margin loan, and the assets keep compounding.
3. **Benefit-stream lending has a documented abuse pattern on three continents.** US pension advances (CFPB 2018: up to 183% APR, Minnesota 2017: over 200%), South Africa grant deductions (Constitutional Court struck the SASSA-CPS contract in 2013, SASSA banned deductions in 2016), Brazil INSS associative deductions (R$6.3 billion, about 6 million beneficiaries, 2019 to 2024). The common mechanism: whoever controls the payment pipe can take money before the recipient sees it.
4. **Real value of a printed transfer decays at the inflation rate, faster in imported goods.** Iran's 455,000 rials lost about 58% of its real value in five years (CPI 121 to 285) and fell from about $44 to $25 at the official rate (about $13 at the market rate per ESMAP). Mongolia's 21,000 tugrik lost about 19% from 2010 to 2012.
5. **Precedent outcomes sort by funding, not by generosity.** Reserve or fund financed (Hong Kong, Macau, Alaska) saw low inflation at 1.4% to 2.8% of GDP per person. Deficit or money financed (Mongolia, Iran) at about 6% of GDP saw 8% to 36% inflation. Kenya, externally funded at about 17% of local GDP, saw 0.1% average local inflation and a 2.5 multiplier.
6. **The toy model says the room to print is "how much of your money people will hold".** Non-inflationary money finance is roughly (real growth + target inflation) x money/GDP, plus foreign demand. That is about 4% of GDP a year in the US, about 10% in Japan, about 3.4% in the Philippines and about 1.1% in Argentina, and only if banks stop creating that money themselves (model).
7. **The exorbitant privilege is real and bounded.** The US runs a net international investment position of -$22.42 trillion (BEA, Q2 2026) and still borrows in its own currency. Dollar depreciation passes only 0.44 into US import prices vs about 1.0 in a Turkey-like economy (Gopinath). But the privilege covers only the new money foreigners choose to hold: in the model even at 15% foreign absorption the US gets 3.9% CPI from a printed 10% of GDP UHI, and 9.5% from a Musk-scale one. The 2021 to 2022 test (US CPI 8.0% in 2022, World Bank) shows the limit.
8. **Sovereign-fund finance protects the currency, not the price level.** In the model a fund-paid UHI gives the same or higher local inflation as printing when output cannot respond, while the currency appreciates. To pay 10% of GDP at a 4% payout rule a country needs a fund of 2.5 times GDP.
9. **A digital token changes distribution, programmability and pledgeability, not the budget constraint.** China (e-CNY with expiry and merchant limits) and the US (private stablecoins, CBDC ban, issuer yield ban) have already picked opposite designs (R1 L2).
10. **Outside the US, the robot dividend accrues where the robot owners are.** A country that imports robots and chips can fund a UHI only from taxing domestic activity, resource rents, or owning foreign capital. That points non-issuers to sovereign funds and equity stakes (Mongolia's ETT shares are a crude early version, paying MNT 285,000 per citizen for 2024).

---

## Section 1. Q4 and M7: UHI as collateral

### 1.1 The three channels

| Channel | What it means | US law today | Real-world example | Credit size from $1,000/mo (model) |
|---|---|---|---|---|
| (a) Income for underwriting | Lender counts UHI as income, you repay from it | Allowed. ECOA 15 USC 1691(a)(2). Fannie B3-3.4-12: 3-year continuance, no minimum history. Own-account Social Security needs no continuance check (B3-3.4-15) (R1 L4) | Every Social Security recipient with a mortgage | About $69k (43% DTI, 30y, 6.3%) |
| (b) Pledge or assignment of the stream | Lender is paid directly from future checks, or buys them | Banned for Social Security (42 USC 407). VA benefits have a similar anti-assignment rule (38 USC 5301, memory, not re-verified). Structured settlements: 40% excise tax unless a court approves (26 USC 5891, R1 L4) | Brazil INSS payroll loans (legal), US pension advances (illegal or unlicensed), Alaska dividend-secured notes (historical, unverified) | PV about $181k, sold for $54k to $108k at historic factoring prices |
| (c) Ownership units | UHI paid as fund shares that can be margined | Brokerage accounts can be pledged. Trump Accounts are locked until 18 then IRA-like (R1 L2), and pledging an IRA is treated as a distribution (memory, IRC 408(e)(4)) | Mongolia ETT shares (sell-back only), Trump Accounts (locked) | $151k of units after 10y, $75k loan at 50% |

Model (python3 -I):

```python
# Q4: how much credit $1,000 a month of UHI can support under three legal designs. MODEL, inputs stated.
uhi_m = 1000.0
# (a) income for underwriting: 43% back-end DTI on a 30-year mortgage at 6.3% (R1 L4 rate), no other debts
r = 0.063 / 12
n = 360
pay = 0.43 * uhi_m
loan_a = pay * (1 - (1 + r) ** -n) / r
print(f"(a) counted as income, 43% DTI, 30y at 6.3%: payment ${pay:.0f}/mo supports a loan of about ${loan_a:,.0f}")
# (b) stream pledged or sold: present value of 40 years of $12,000 at a 6% discount rate, then what buyers actually pay
pv = sum(12000 / 1.06 ** t for t in range(1, 41))
print(f"(b) stream pledged: PV of 40y x $12,000 at 6% = ${pv:,.0f}. Factoring at 30 to 60 cents (settlement history) = ${0.3*pv:,.0f} to ${0.6*pv:,.0f}")
# Minnesota AG example: $1,500 now for $18,000 over 5 years (60 x $300). Solve monthly IRR.
lo, hi = 0.0, 1.0
for _ in range(200):
    mid = (lo + hi) / 2
    pv_mid = sum(300 / (1 + mid) ** t for t in range(1, 61))
    lo, hi = (mid, hi) if pv_mid > 1500 else (lo, mid)
print(f"    Minnesota AG pension-advance example: $1,500 for 60 x $300 -> monthly IRR {mid:.1%}, nominal APR {mid*12:.0%}")
# (c) paid in ownership units: $12,000 a year of index-fund units for 10 years at 5% real, then a 50% margin loan
units = 0.0
for t in range(10):
    units = units * 1.05 + 12000
print(f"(c) paid as fund units for 10y at 5% real: account ${units:,.0f}. 50% securities-based loan = ${0.5*units:,.0f}, and the units keep compounding")
```

Output:

```text
(a) counted as income, 43% DTI, 30y at 6.3%: payment $430/mo supports a loan of about $69,470
(b) stream pledged: PV of 40y x $12,000 at 6% = $180,556. Factoring at 30 to 60 cents (settlement history) = $54,167 to $108,333
    Minnesota AG pension-advance example: $1,500 for 60 x $300 -> monthly IRR 20.0%, nominal APR 240%
(c) paid as fund units for 10y at 5% real: account $150,935. 50% securities-based loan = $75,467, and the units keep compounding
```

### 1.2 Why 42 USC 407 exists: the abuse history
- **Text (T1).** Future Social Security payments "shall not be transferable or assignable, at law or in equity", and are not subject to "execution, levy, attachment, garnishment, or other legal process" (R1 L4, L4-20). Child support and alimony are carved out by 42 USC 659.
- **Courts (T1).** Philpott v. Essex County Welfare Board, 409 U.S. 413 (1973), unanimous: section 407 "imposes a broad bar against the use of any legal process to reach all social security benefits", and benefits keep their protected character after deposit in a bank account.
- **US pension advances (T1/T2).** CFPB sued Future Income Payments in September 2018 for selling "cash advances" on future pensions that were really loans at rates up to 183% (no APR disclosed, a Truth in Lending violation). Minnesota's attorney general sued the same firm in August 2017: one veteran got $1,500 in exchange for $18,000 of pension payments over five years, which the state put at about 200% APR (my level-payment check gives about 240%, so the structure may differ). In October 2019 the CFPB and South Carolina sued Performance Arbitrage and Life Funding Options, where most deals involved veterans' disability pensions.
- **South Africa (T1/T4).** The Constitutional Court declared the SASSA contract with Net1's Cash Paymaster Services invalid in 2013. Black Sash ran the "hands off our grants" campaign against debit deductions from social grants, and SASSA decreed in 2016 that deductions may no longer be made from grant payments, while Net1 group firms sold microloans and funeral cover to grant recipients.
- **Brazil (T0/T4).** Legal channel: INSS beneficiaries can commit up to 45% of the benefit (35% for loans, 5% consigned credit card, 5% benefit card), terms up to 108 months, after MP 1.355/2026 lapsed in August 2026 (Metropoles, September 2026). The rate cap was raised from 1.66% to 1.80% a month in 2025 (secondary). The INSS payroll-loan book was reported above R$268 billion, about 40% of all payroll lending (2025, secondary). Illegal channel: Operation Sem Desconto (Federal Police and CGU) found associations deducting R$6.3 billion from retirees' benefits in 2019 to 2024 with forged authorizations, about 6 million beneficiaries affected, and the INSS president and the social security minister left office.
- **Alaska (T1 via snippet, T4).** AS 43.23.140(a) exempts only 20% of a dividend from creditors, and (b) lets child support, restitution, defaulted education loans, fines and state debts defeat even that. A late-1990s loan form in Alaska Legislature committee files shows a note secured by assignment of future dividends, and in 1998 the Alaska Credit Union League supported a PFD garnishment bill to recover loan losses (search snippets of akleg.gov files, which returned 403 to direct fetch). So "PFD loans" existed in some form, but I could not verify a current product.

**What the record says:** pledging a benefit stream does two things at once. It lowers the price of credit (Brazil's consigned rate cap of 1.80% a month is far below unsecured consumer credit), and it moves control of the payment pipe to whoever holds the deduction right, which is where every documented abuse happened.

### 1.3 Ownership units: the third path
- Mongolia (2011): 20% of Erdenes Tavan Tolgoi privatized to the public, 1,072 shares per citizen. Citizens could not sell except back to the government, a third could be swapped for MNT 300,426 in cash, students could use half for MNT 491,960 of tuition (NRGI, 2020). Dividends for 2024: MNT 285,000 per holder (MNT 256,000 after tax), with 243,000 of 256,000 early voters choosing cash over savings (Mongolia Weekly, 2025). No evidence the shares could be pledged.
- Trump Accounts: about 70 million children auto-enrolled, $4.5B deposited by 2026-10-07, locked until 18, US equity index only (R1 L2). Weak collateral by design.
- Alaska Permanent Fund: citizens own a dividend right, not units, so nothing to margin.
- Inference: the design that gives an 18-year-old real borrowing power is units that vest, can be margined through regulated brokers at a capped loan-to-value, and cannot be sold below a floor. Nobody has built it at national scale.

---

## Section 2. Q5, Q7, M5: UHI outside the US

### 2.1 Precedent table (computed from public inputs, see model output)

| Program | Years | Amount | Size | Financing | Inflation | Outcome | Source |
|---|---|---|---|---|---|---|---|
| Mongolia Human Development Fund | 2010 to 2012 | MNT 21,000 per person per month (about $15.5 to $16.6) | 5.3% of GDP per capita per person, 2011 total MNT 805bn = 6.1% of GDP | Mining revenue covered about half, the rest deficits. $1.5B sovereign bond 2012 (not tied directly) | CPI 10.0%, 8.4%, 14.3% (2010 to 2012). Real value -19% by 2012 | Poverty 38.8% to 27.4% (2010 to 2012) in a boom (real growth 17.3% in 2011). Payments stopped after the 2012 election | NRGI, Eurasianet, World Bank, WB API |
| Iran unconditional cash transfer | From Dec 2010 | IRR 455,000 per person per month (about $40 to $45) | 6.2% of GDP per capita per person, about 5.9% of GDP total | Set above revenue from energy price rises, gap printed (ERF, Salehi-Isfahani et al.) | CPI 26.3%, 27.3%, 36.6% (2011 to 2013). Real value about -58% in 5 yrs | Poverty 22.5% to 10.6% at first, then the effect fell about 40% | Enami and Lustig ERF PB 37 (2018), ESMAP |
| Hong Kong Cash Payout | 2020 | HK$10,000 per adult permanent resident, about 7 million | HK$71bn = 2.7% of GDP | Fiscal reserves (over HK$1 trillion), currency board | 0.3% (2020), 1.6% (2021) | Recession relief, record deficit HK$139bn | HKFP, Arab News/Reuters, WB API |
| Macau Wealth Partaking | Annual since 2008 | MOP 10,000 permanent, MOP 6,000 non-permanent (2025, 2026) | 1.7% of GDP per capita per person | Gaming tax surpluses and reserves, pataca pegged | 0.7% (2024), 0.3% (2025) | 183-day residency rule added for 2025 | Macao Business, The Standard |
| Alaska PFD | Annual since 1982 | $1,000 + $200 energy relief (2026) | About 1.4% of US GDP per capita | Permanent Fund earnings, USD | US-wide | Amount set by legislature, not formula (R1 L4) | R1 L4 |
| Kenya GiveDirectly GE study | 2014 to 2017 | About $1,000 per household, one-off | About 17% of local GDP in peak 12 months, 75% of annual household spending | Donor dollars | 0.1% average, under 1% at peak | Local multiplier 2.5, large spillovers to non-recipients | Egger et al., Econometrica 2022 (NBER w26600) |
| US pandemic checks | 2020 to 2021 | $1,200, $600, $1,400 (memory) | Several % of GDP with other transfers | Deficits plus Fed purchases | CPI 4.7% (2021), 8.0% (2022) | Nearest test of "issue dollars to people" (R1 Dc) | WB API, R1 Dc |

### 2.2 Why the reserve issuer has an exorbitant privilege, and its limits
- **The privilege (T0/T4).** Foreign central banks hold 56.7% of allocated reserves in dollars (COFER Q2 2026, R1 L5). The US net international investment position is -$22.42 trillion (assets $46.97T, liabilities $69.39T, BEA 2026-09-24), yet the US borrows in its own currency. Most world trade, including oil and chips, is invoiced in dollars, so a 10% dollar fall raises US import prices only 3.4% after one quarter and 4.4% after two years, while Turkey, which invoices 3% of imports in lira, sees 9.3% then 10% (Gopinath, NBER digest). In the model this shows up as h (foreigners absorb some new money) and rho = 0.44.
- **Limit 1: it only covers what foreigners will absorb.** Foreign demand for new dollars is a flow of a few hundred billion a year at most. Stablecoins, the newest source, total $304.9B (R1 L7), so even $100B a year of growth is 0.3% of GDP, against 10% to 24% of GDP for a UHI.
- **Limit 2: domestic goods still inflate.** Rent, services and electricity are local. The model gives the US 4.4% local inflation vs 1.0% on imports for a printed 10%-of-GDP UHI. PJM wholesale power rose 41% (R1 L3), a local price no privilege fixes.
- **Limit 3: reserves pay interest.** Printing does not escape the debt math because bank reserves earn IORB (3.90%, R1 Dc-08).
- **Limit 4: overuse erodes it.** The dollar share of reserves slipped 0.47 pp in Q2 2026 (R1 L5). A visible policy of monetizing a UHI would be the strongest argument for reserve diversification.

### 2.3 How each country's UHI value gets set (Q7 formula)
Real UHI per person (per year) is bounded by:

real UHI x N <= (extra tax take) + (fund or resource income) + (non-inflationary money creation) + (net goods foreigners supply for your money)

- Extra tax take: a transfer, so the average person gains nothing in resources, only the median gains through progressivity (model: avg real gain 0.9% of GDP vs 10% paid).
- Fund income: needs assets of about 2.5x GDP to pay 10% of GDP at a 4% payout rule.
- Non-inflationary money creation: about (real growth + target inflation) x money/GDP, which is 4.0% of GDP in the US, 9.9% in Japan, 3.4% in the Philippines, 1.1% in Argentina, and only if that money is not also being created by bank lending (model).
- Foreign supply of goods for your money: material only for the US.
- Anything paid above the bound comes back as inflation, which lowers the real UHI and also taxes everyone's cash and lagging wages.

---

## Section 3. M6: the toy model (model, not forecast)

Inputs and formulas are in the code. Key assumptions: UHI = 10% of GDP a year, 80% of new money ends up chasing goods within 2 to 3 years, quantity-theory price response (velocity of active money constant), depreciation = psi x excess money, import inflation = rho x depreciation, CPI weighted by import share. sigma is the share of extra demand met by extra real output (0.3 baseline, 0.8 "robot abundance"). Country inputs: imports/GDP and broad money/GDP from the World Bank API (latest year), rho from Gopinath (US) and the 2022 yen episode (Japan: yen-basis import prices +49.5% in July 2022 vs about +7% in contract currency), h and psi are assumptions.

```python
# R2B toy model: a UHI worth 10% of GDP, paid three ways, in four country types.
# MODEL, not data. Every parameter is printed. Medium run (about 2 to 3 years).
import math

U = 0.10      # UHI size, share of GDP per year
M_SPEND = 0.80  # share of new money that ends up chasing goods within the horizon (rest is saved / hoarded)

# Country parameters
# theta: imports / GDP (World Bank NE.IMP.GNFS.ZS, latest)
# MY: broad money / GDP (World Bank FM.LBL.BMNY.GD.ZS, latest)
# h: share of newly created money that foreigners absorb and hold (reserve, stablecoin, invoicing demand). ASSUMPTION
# psi: % currency depreciation per 1% excess money (1 = PPP, >1 = overshoot / flight to dollars). ASSUMPTION
# rho: pass-through of depreciation into local-currency import prices (US 0.44 from Gopinath: 10% fall -> 4.4% after 2 yrs,
#      Turkey-like 1.0, Japan 0.9 given 2022 yen import prices +49.5% vs about +7% in contract currency). PARTLY CALIBRATED
countries = {
    "US (reserve issuer)":           dict(theta=0.14, MY=0.997, h=0.15, psi=0.5, rho=0.44),
    "Japan-like (hard, non-issuer)":  dict(theta=0.23, MY=2.468, h=0.03, psi=1.0, rho=0.90),
    "Philippines-like (EM)":          dict(theta=0.40, MY=0.859, h=0.00, psi=1.2, rho=1.00),
    "Argentina-like (fragile EM)":    dict(theta=0.15, MY=0.263, h=0.00, psi=2.0, rho=1.00),
}

def money_finance(c, sigma):
    """sigma = share of the extra demand met by extra real output (slack, robots)."""
    gM = U / c["MY"]                          # money stock growth from paying the UHI with new money
    y = sigma * M_SPEND * U                   # real output response (share of GDP = % growth)
    excess = M_SPEND * (1 - c["h"]) * gM - y  # quantity-theory price pressure: %P = %M_active - %Y
    excess = max(excess, 0.0)
    piN = excess                              # domestic (local goods) inflation
    dep = c["psi"] * excess                   # currency depreciation vs USD
    piM = c["rho"] * dep                      # imported-goods inflation (energy, chips priced in USD)
    cpi = (1 - c["theta"]) * piN + c["theta"] * piM
    return dict(gM=gM, piN=piN, dep=dep, piM=piM, cpi=cpi)

def tax_finance(c, sigma):
    impulse = 0.30 * U                        # recipients spend 0.8, taxpayers cut spending 0.5: net 0.3 of U
    piN = (1 - sigma) * impulse
    return dict(gM=0.0, piN=piN, dep=0.0, piM=0.0, cpi=(1 - c["theta"]) * piN)

def fund_finance(c, sigma):
    # Dividend paid from foreign-asset income. Spending is new demand (nobody is taxed), the import share is
    # paid with the fund's own foreign currency, so only the domestic share presses on local prices.
    impulse = M_SPEND * U * (1 - c["theta"])
    piN = (1 - sigma) * impulse
    dep = -0.2 * M_SPEND * U                  # mild appreciation from converting fund income (Dutch disease). ASSUMPTION
    piM = c["rho"] * dep
    return dict(gM=0.0, piN=piN, dep=dep, piM=piM, cpi=(1 - c["theta"]) * piN + c["theta"] * piM)

def real(r):
    return 1 / (1 + r["piN"]), 1 / (1 + r["piM"]), 1 / (1 + r["cpi"])

def avg_gain(c, sigma, fin):
    # Resource check: the AVERAGE person can only gain what is newly produced at home or supplied by foreigners.
    # money: extra output + goods foreigners give in exchange for new money they choose to hold (h)
    # tax:   extra output from the small net demand impulse (the rest is a transfer from taxpayers to recipients)
    # fund:  imports bought with fund income + extra domestic output on the domestic share
    if fin == "money":
        return sigma * M_SPEND * U + c["h"] * M_SPEND * U
    if fin == "tax":
        return sigma * 0.30 * U
    return M_SPEND * U * (c["theta"] + (1 - c["theta"]) * sigma)

print(f"UHI = {U:.0%} of GDP per person per year. Spend share of new money = {M_SPEND}. Medium run.\n")
for sigma in (0.3, 0.8):
    label = "baseline: 30% of extra demand met by extra output" if sigma == 0.3 else "robot-abundance: 80% met by extra output"
    print(f"=== sigma = {sigma} ({label}) ===")
    hdr = f"{'country':32s} {'finance':6s} {'money+':>7s} {'dom.inf':>8s} {'FX dep':>7s} {'imp.inf':>8s} {'CPI':>6s} | {'real UHI local':>14s} {'real UHI import':>15s} {'avg real gain':>13s}"
    print(hdr)
    for name, c in countries.items():
        for fin, f in (("money", money_finance), ("tax", tax_finance), ("fund", fund_finance)):
            r = f(c, sigma)
            rl, rm, rc = real(r)
            mn = avg_gain(c, sigma, fin)
            print(f"{name:32s} {fin:6s} {r['gM']:7.1%} {r['piN']:8.1%} {r['dep']:7.1%} {r['piM']:8.1%} {r['cpi']:6.1%} | "
                  f"{rl*U:13.2%}  {rm*U:14.2%}  {mn:12.2%}")
    print()

# US sensitivity: Musk-scale UHI, $30k per adult = about 24% of GDP (R1 Dc-08), money-financed
for uu in (0.24,):
    U_save = U
    U = uu
    for sigma in (0.3, 0.8):
        r = money_finance(countries["US (reserve issuer)"], sigma)
        print(f"US money-financed UHI at {uu:.0%} of GDP, sigma={sigma}: money+ {r['gM']:.1%}, dom.inf {r['piN']:.1%}, FX dep {r['dep']:.1%}, imp.inf {r['piM']:.1%}, CPI {r['cpi']:.1%}")
    U = U_save
print()
# Fund size needed
print("Sovereign fund needed to pay a UHI of 10% of GDP at a 4% payout rule: F = U / 0.04 =", f"{U/0.04:.1f}x GDP")
# Non-inflationary money-finance room: growth in money demand = (real growth + target inflation) x M/Y, plus foreign absorption
print("\nNon-inflationary money-finance room per year = (g_real + pi_target) x M/Y  [+ foreign demand for the currency]")
for name, c in countries.items():
    room = (0.02 + 0.02) * c["MY"]
    print(f"  {name:32s} M/Y={c['MY']:.2f} -> {room:.1%} of GDP (only if banks create NO new money themselves)")
print("  US extra from foreign demand: stablecoin float $304.9B (R1 L7). If it grew $100B/yr on $32.6T GDP ->",
      f"{100/32563:.2%} of GDP")

# Dynamic: 5 years of money-financed UHI, fixed-nominal vs GDP-indexed, Argentina-like and US
print("\n=== 5-year dynamic, money finance, sigma = 0.3 ===")
for name in ("US (reserve issuer)", "Argentina-like (fragile EM)"):
    c = countries[name]
    for mode in ("fixed nominal", "indexed to nominal GDP"):
        M, Yr, P = c["MY"], 1.0, 1.0        # money, real GDP, price level (normalised, start nominal GDP = 1)
        M_active = M
        uhi0 = U * Yr * P
        line = []
        for t in range(1, 6):
            uhi_nom = uhi0 if mode == "fixed nominal" else U * Yr * P
            M_active += M_SPEND * (1 - c["h"]) * uhi_nom
            Yr *= (1 + 0.02 + 0.3 * M_SPEND * U if t == 1 else 1.02)   # one-time level boost then 2% trend
            P = (M_active / c["MY"]) / Yr                                # velocity of active money constant
            FX = P ** c["psi"]
            PM = FX ** c["rho"]
            line.append(f"y{t}: P={P:5.2f} FX={FX:5.2f} realUHI(local)={uhi_nom/P:5.3f} realUHI(imports)={uhi_nom/PM:5.3f}")
        print(f"{name} | {mode}")
        for l in line:
            print("   ", l)

# Precedent sizing (computed from public inputs)
print("\n=== Precedent sizing (computed) ===")
mng = 21000 * 12 / 4728020.3
irn = 455000 * 12 / 87977585.6
print(f"Mongolia HDF 2011: 21,000 MNT x 12 / GDP pc 4.728M MNT = {mng:.1%} of GDP per capita")
print(f"   real value end-2012 vs 2010 (CPI 2011 8.4%, 2012 14.3%): {1/(1.084*1.143):.2f}")
print(f"   USD value: 2010 ${21000/1357.1:.1f}, 2011 ${21000/1265.5:.1f}, 2012 ${21000/1357.6:.1f}")
print(f"Iran UCT 2011: 455,000 IRR x 12 / GDP pc 87.98M IRR = {irn:.1%} of GDP per capita")
print(f"   real value after 5 yrs (CPI 121 -> 285): {121/285:.2f}")
print(f"   USD value at official rate: 2010 ${455000/10254.2:.1f}, 2013 ${455000/18414.4:.1f} (market rate lower, ESMAP cites about $13)")
print(f"Macau 2024/25: MOP 10,000 / GDP pc 578,690 = {10000/578690:.1%} of GDP per capita")
print(f"Hong Kong 2020: HK$10,000 / GDP pc 357,679 = {10000/357679:.1%} of GDP per capita (adults only)")
print(f"Alaska 2026: $1,200 / US GDP pc 2024 $86,170 = {1200/86170:.1%} (US average used, Alaska GDP pc not fetched)")
print(f"Kenya GiveDirectly: about $1,000 per household, about 17% of local GDP in the peak 12 months, local inflation 0.1% avg, <1% peak, multiplier 2.5")
print(f"Mongolia HDF 2011 total (805bn MNT, Eurasianet) / GDP 13.17T MNT = {805e9/13.17e12:.1%} of GDP")
print(f"Iran UCT total, about 95% of 78.4M people x 455,000 x 12 / GDP 2011 6.896e15 IRR = {0.95*78.38e6*455000*12/6.896e15:.1%} of GDP")
print(f"Hong Kong 2020 total HK$71bn / GDP 2020 HK$2.676T = {71e9/2.676e12:.1%} of GDP")
print(f"Musk-scale US UHI $30k x 262M adults = ${30e3*262e6/1e12:.2f}T vs 2025 GDP $30.77T (WB) = {30e3*262e6/30.77e12:.0%}")
```

Output:

```text
UHI = 10% of GDP per person per year. Spend share of new money = 0.8. Medium run.

=== sigma = 0.3 (baseline: 30% of extra demand met by extra output) ===
country                          finance  money+  dom.inf  FX dep  imp.inf    CPI | real UHI local real UHI import avg real gain
US (reserve issuer)              money    10.0%     4.4%    2.2%     1.0%   3.9% |         9.58%           9.90%         3.60%
US (reserve issuer)              tax       0.0%     2.1%    0.0%     0.0%   1.8% |         9.79%          10.00%         0.90%
US (reserve issuer)              fund      0.0%     4.8%   -1.6%    -0.7%   4.0% |         9.54%          10.07%         3.18%
Japan-like (hard, non-issuer)    money     4.1%     0.7%    0.7%     0.7%   0.7% |         9.93%           9.93%         2.64%
Japan-like (hard, non-issuer)    tax       0.0%     2.1%    0.0%     0.0%   1.6% |         9.79%          10.00%         0.90%
Japan-like (hard, non-issuer)    fund      0.0%     4.3%   -1.6%    -1.4%   3.0% |         9.59%          10.15%         3.69%
Philippines-like (EM)            money    11.6%     6.9%    8.3%     8.3%   7.5% |         9.35%           9.23%         2.40%
Philippines-like (EM)            tax       0.0%     2.1%    0.0%     0.0%   1.3% |         9.79%          10.00%         0.90%
Philippines-like (EM)            fund      0.0%     3.4%   -1.6%    -1.6%   1.4% |         9.67%          10.16%         4.64%
Argentina-like (fragile EM)      money    38.0%    28.0%   56.0%    56.0%  32.2% |         7.81%           6.41%         2.40%
Argentina-like (fragile EM)      tax       0.0%     2.1%    0.0%     0.0%   1.8% |         9.79%          10.00%         0.90%
Argentina-like (fragile EM)      fund      0.0%     4.8%   -1.6%    -1.6%   3.8% |         9.55%          10.16%         3.24%

=== sigma = 0.8 (robot-abundance: 80% met by extra output) ===
country                          finance  money+  dom.inf  FX dep  imp.inf    CPI | real UHI local real UHI import avg real gain
US (reserve issuer)              money    10.0%     0.4%    0.2%     0.1%   0.4% |         9.96%           9.99%         7.60%
US (reserve issuer)              tax       0.0%     0.6%    0.0%     0.0%   0.5% |         9.94%          10.00%         2.40%
US (reserve issuer)              fund      0.0%     1.4%   -1.6%    -0.7%   1.1% |         9.86%          10.07%         6.62%
Japan-like (hard, non-issuer)    money     4.1%     0.0%    0.0%     0.0%   0.0% |        10.00%          10.00%         6.64%
Japan-like (hard, non-issuer)    tax       0.0%     0.6%    0.0%     0.0%   0.5% |         9.94%          10.00%         2.40%
Japan-like (hard, non-issuer)    fund      0.0%     1.2%   -1.6%    -1.4%   0.6% |         9.88%          10.15%         6.77%
Philippines-like (EM)            money    11.6%     2.9%    3.5%     3.5%   3.1% |         9.72%           9.66%         6.40%
Philippines-like (EM)            tax       0.0%     0.6%    0.0%     0.0%   0.4% |         9.94%          10.00%         2.40%
Philippines-like (EM)            fund      0.0%     1.0%   -1.6%    -1.6%  -0.1% |         9.90%          10.16%         7.04%
Argentina-like (fragile EM)      money    38.0%    24.0%   48.0%    48.0%  27.6% |         8.06%           6.76%         6.40%
Argentina-like (fragile EM)      tax       0.0%     0.6%    0.0%     0.0%   0.5% |         9.94%          10.00%         2.40%
Argentina-like (fragile EM)      fund      0.0%     1.4%   -1.6%    -1.6%   0.9% |         9.87%          10.16%         6.64%

US money-financed UHI at 24% of GDP, sigma=0.3: money+ 24.1%, dom.inf 10.6%, FX dep 5.3%, imp.inf 2.3%, CPI 9.5%
US money-financed UHI at 24% of GDP, sigma=0.8: money+ 24.1%, dom.inf 1.0%, FX dep 0.5%, imp.inf 0.2%, CPI 0.9%

Sovereign fund needed to pay a UHI of 10% of GDP at a 4% payout rule: F = U / 0.04 = 2.5x GDP

Non-inflationary money-finance room per year = (g_real + pi_target) x M/Y  [+ foreign demand for the currency]
  US (reserve issuer)              M/Y=1.00 -> 4.0% of GDP (only if banks create NO new money themselves)
  Japan-like (hard, non-issuer)    M/Y=2.47 -> 9.9% of GDP (only if banks create NO new money themselves)
  Philippines-like (EM)            M/Y=0.86 -> 3.4% of GDP (only if banks create NO new money themselves)
  Argentina-like (fragile EM)      M/Y=0.26 -> 1.1% of GDP (only if banks create NO new money themselves)
  US extra from foreign demand: stablecoin float $304.9B (R1 L7). If it grew $100B/yr on $32.6T GDP -> 0.31% of GDP

=== 5-year dynamic, money finance, sigma = 0.3 ===
US (reserve issuer) | fixed nominal
    y1: P= 1.02 FX= 1.01 realUHI(local)=0.098 realUHI(imports)=0.099
    y2: P= 1.07 FX= 1.03 realUHI(local)=0.094 realUHI(imports)=0.099
    y3: P= 1.11 FX= 1.05 realUHI(local)=0.090 realUHI(imports)=0.098
    y4: P= 1.15 FX= 1.07 realUHI(local)=0.087 realUHI(imports)=0.097
    y5: P= 1.19 FX= 1.09 realUHI(local)=0.084 realUHI(imports)=0.096
US (reserve issuer) | indexed to nominal GDP
    y1: P= 1.02 FX= 1.01 realUHI(local)=0.098 realUHI(imports)=0.099
    y2: P= 1.07 FX= 1.04 realUHI(local)=0.100 realUHI(imports)=0.105
    y3: P= 1.12 FX= 1.06 realUHI(local)=0.102 realUHI(imports)=0.111
    y4: P= 1.18 FX= 1.08 realUHI(local)=0.104 realUHI(imports)=0.118
    y5: P= 1.23 FX= 1.11 realUHI(local)=0.106 realUHI(imports)=0.124
Argentina-like (fragile EM) | fixed nominal
    y1: P= 1.25 FX= 1.56 realUHI(local)=0.080 realUHI(imports)=0.064
    y2: P= 1.51 FX= 2.28 realUHI(local)=0.066 realUHI(imports)=0.044
    y3: P= 1.76 FX= 3.10 realUHI(local)=0.057 realUHI(imports)=0.032
    y4: P= 2.00 FX= 4.00 realUHI(local)=0.050 realUHI(imports)=0.025
    y5: P= 2.23 FX= 4.98 realUHI(local)=0.045 realUHI(imports)=0.020
Argentina-like (fragile EM) | indexed to nominal GDP
    y1: P= 1.25 FX= 1.56 realUHI(local)=0.080 realUHI(imports)=0.064
    y2: P= 1.60 FX= 2.55 realUHI(local)=0.082 realUHI(imports)=0.051
    y3: P= 2.04 FX= 4.17 realUHI(local)=0.083 realUHI(imports)=0.041
    y4: P= 2.61 FX= 6.82 realUHI(local)=0.085 realUHI(imports)=0.033
    y5: P= 3.34 FX=11.15 realUHI(local)=0.087 realUHI(imports)=0.026

=== Precedent sizing (computed) ===
Mongolia HDF 2011: 21,000 MNT x 12 / GDP pc 4.728M MNT = 5.3% of GDP per capita
   real value end-2012 vs 2010 (CPI 2011 8.4%, 2012 14.3%): 0.81
   USD value: 2010 $15.5, 2011 $16.6, 2012 $15.5
Iran UCT 2011: 455,000 IRR x 12 / GDP pc 87.98M IRR = 6.2% of GDP per capita
   real value after 5 yrs (CPI 121 -> 285): 0.42
   USD value at official rate: 2010 $44.4, 2013 $24.7 (market rate lower, ESMAP cites about $13)
Macau 2024/25: MOP 10,000 / GDP pc 578,690 = 1.7% of GDP per capita
Hong Kong 2020: HK$10,000 / GDP pc 357,679 = 2.8% of GDP per capita (adults only)
Alaska 2026: $1,200 / US GDP pc 2024 $86,170 = 1.4% (US average used, Alaska GDP pc not fetched)
Kenya GiveDirectly: about $1,000 per household, about 17% of local GDP in the peak 12 months, local inflation 0.1% avg, <1% peak, multiplier 2.5
Mongolia HDF 2011 total (805bn MNT, Eurasianet) / GDP 13.17T MNT = 6.1% of GDP
Iran UCT total, about 95% of 78.4M people x 455,000 x 12 / GDP 2011 6.896e15 IRR = 5.9% of GDP
Hong Kong 2020 total HK$71bn / GDP 2020 HK$2.676T = 2.7% of GDP
Musk-scale US UHI $30k x 262M adults = $7.86T vs 2025 GDP $30.77T (WB) = 26%
```

**How to read it.**
- "real UHI local" and "real UHI import" are the 10% UHI deflated by local-goods and imported-goods inflation. "avg real gain" is the resource check: what the average person actually gains, which can only be new output or goods foreigners supply. The gap between 10% and that number is a transfer from someone (taxpayers, or holders of cash and lagging wages through inflation).
- Money finance looks almost free in the US and Japan only because their money stocks are large relative to GDP. Japan's result is a quantity-theory artifact that ignores the interest-rate gap that took USD/JPY from about 110 (2021) to about 158 now (R1 L5). Treat it as "large domestic savings give room", not "Japan can print a UHI".
- The fund route has the strongest currency and best import value, but local inflation as high as printing when sigma is low. Funding source protects the currency, output protects the price level.
- In the fragile EM, even robot abundance does not save a printed UHI: money/GDP of 26% means a 10%-of-GDP transfer is 38% money growth.
- Musk's claim that printed checks absorb "massive disinflation" (R1 L4) corresponds to sigma near 1. The model gives 0.9% CPI for a 24%-of-GDP US UHI at sigma 0.8, and 9.5% at sigma 0.3. The robot supply curve, not the printing, decides.

**Calibration check against precedents.** Mongolia and Iran (about 6% of GDP, deficit or money financed, floating currencies, low money/GDP) saw 8% to 36% inflation, the same range as the model's Philippines-like to Argentina-like rows scaled to 6%. Kenya (17% of local GDP, external money, slack) saw 0.1%, close to the model's high-sigma fund row. Hong Kong and Macau (2% to 3% of GDP, reserves, pegs) saw under 2%, consistent with the fund row scaled down.

---

## Section 4. Nominal vs real, for an 18-year-old

**Nominal** is the number on the check. **Real** is how much stuff it buys. Real value = nominal / (price level now vs before).

Say your UHI is 1,000 a month. Last year 700 went on rent and food (made locally) and 300 on your phone plan, fuel and saving for a laptop (imported, priced in dollars). Now the government prints money to pay everyone.
- In a US-like economy, local prices rise 4.4% and imported prices 1.0%. Your basket now costs 1,034. Your 1,000 buys what 967 bought last year. You lost about 3%.
- In an Argentina-like economy, local prices rise 28% and the peso falls 56%, so imported prices rise 56%. Your basket costs 1,364. Your 1,000 buys what 733 bought. A 600 phone used to take 0.6 months of UHI, now it takes 0.94.
- Even if the government raises the check 28% to match local inflation, you still lose on the imported part: 1,280 buys what 938 bought.

Model (python3 -I):

```python
# Worked example for an 18-year-old. MODEL numbers taken from uhi_model.py (sigma = 0.3, money finance).
uhi = 1000.0                     # monthly UHI, local currency units
local0, imp0 = 700.0, 300.0      # what the basket costs at the start: rent+food (local), phone+fuel+laptop share (imported)
for name, piN, piM, raise_ in (("US-like", 0.044, 0.010, 0.00), ("Argentina-like", 0.280, 0.560, 0.00), ("Argentina-like, UHI raised 28%", 0.280, 0.560, 0.28)):
    nominal = uhi * (1 + raise_)
    cost = local0 * (1 + piN) + imp0 * (1 + piM)
    print(f"{name:32s} nominal UHI {nominal:7.0f} | basket now costs {cost:7.0f} | real UHI = {nominal/cost*1000:6.0f} in start-year money"
          f" | phones affordable per year: {12*nominal/(600*(1+piM)):4.1f} (phone price 600 at start)")
```

Output:

```text
US-like                          nominal UHI    1000 | basket now costs    1034 | real UHI =    967 in start-year money | phones affordable per year: 19.8 (phone price 600 at start)
Argentina-like                   nominal UHI    1000 | basket now costs    1364 | real UHI =    733 in start-year money | phones affordable per year: 12.8 (phone price 600 at start)
Argentina-like, UHI raised 28%   nominal UHI    1280 | basket now costs    1364 | real UHI =    938 in start-year money | phones affordable per year: 16.4 (phone price 600 at start)
```

The rule of thumb: a raise smaller than inflation is a pay cut. In a weak-currency country, the things made abroad (fuel, chips, phones, medicine inputs) get dearer fastest, so a printed UHI holds its value in rice longer than in electricity.

---

## Section 5. M8: tokens, DeFi and programmability
- **Received balances are already pledgeable.** Crypto-collateralised lending was $56.16B in Q2 2026 (Galaxy via R1 L7). A UHI paid as a stablecoin and left in a wallet can be posted to a DeFi lender like any savings.
- **Future streams need the payer's cooperation.** A lender can only be paid from future UHI if the issuer redirects payments (the Brazilian consignado model) or makes the stream a transferable claim. Streaming-payment tokens that can be transferred exist in DeFi (memory, not re-verified), but a government issuer can block transfer with a whitelist.
- **Programmable restriction is a live design.** Shenzhen October 2020: 10 million yuan in 200-yuan e-CNY red packets to 50,000 lottery winners from nearly 2 million applicants, valid only at 3,389 Luohu merchants, not transferable, not redeemable to bank accounts, unspent funds recovered. 47,573 people used 8.76 million yuan in 62,788 transactions.
- **US constraint.** No retail CBDC (statutory ban, R1 L2), so a token UHI would be a Treasury payment into private stablecoin wallets. GENIUS bans issuers from paying yield "solely in connection with holding" (Sec. 4(a)(11)), so the UHI balance itself earns nothing unless platforms pay "rewards" (R1 L2-03).
- **Cross-border effect.** A dollar-token UHI can be held by anyone. That raises foreign absorption of dollars (good for the US privilege) and raises dollarization pressure in weak-currency countries (bad for their monetary control). China already blocks private RMB stablecoins and pushes e-CNY (R1 L2).

---

## Say/Do gaps

| Actor | Say | Do | Gap |
|---|---|---|---|
| Musk | Federal checks for UHI, "MUST issue dollars or massive disinflation" (R1 L4) | No funding line. 2020 to 2022 checks plus Fed buying preceded 8.0% CPI (2022) | The claim holds only if robot output arrives first (sigma near 1) |
| Mongolia government (2009 to 2012) | Agreed with the IMF in 2009 to replace universal transfers with targeted ones | Paid universal HDF cash to every citizen 2010 to 2012, up to 18% of revenue, half covered by mining income | Election promise beat the program |
| Iran government (2010) | Cash transfers to be paid from savings on removed subsidies | Transfers set above new revenue, gap printed (Salehi-Isfahani et al.), nominal kept flat as CPI rose 121 to 285 | Real value halved by inaction on indexing |
| Brazil INSS | Protect retirees' benefits | Deduction pipes open to associations, R$6.3bn taken | Plumbing, not law, decided outcomes |
| Macau | Universal "wealth partaking" | Added a 183-day residency test for 2025 | Universal in name, rationed by residency when costs rise |
| Alaska | Formula-based dividend | Legislature set $1,000 vs about $3,600 proposed (R1 L4), only 20% exempt from creditors | A resource dividend is a political number, which hurts underwriting |

## Anomalies
1. **Mongolia's poverty fell 11 points while inflation ran 8% to 14%.** Default expectation: printed handouts plus inflation hurt the poor. Explanation: 17.3% real growth in 2011 (coal boom) meant output did respond. The transfer worked because sigma was high for two years, then the money ran out.
2. **Kenya's transfer was 17% of local GDP with 0.1% inflation.** Larger relative to the economy than any national program, yet no inflation, because there was idle labor and the money came from abroad. It is the best evidence for Musk's view, and it is a slack, externally funded case.
3. **A fund-paid UHI can be as inflationary as a printed one at home.** The funding source decides the currency, not the price level of haircuts and rent.
4. **Brazil runs the largest legal benefit-collateral market found, and the largest benefit-deduction fraud.** Same pipe.
5. **Japan's toy-model room.** High money/GDP gives large printing room in a quantity model, yet the yen fell from about 110 to about 158 through rate gaps. The model misses the interest-rate channel.

## Mechanism chains
1. **Printed UHI in a non-reserve country:** new money, more than local money demand, currency falls, import prices rise one-for-one (dollar invoicing), CPI rises, fixed nominal UHI loses real value, government indexes, more money, faster depreciation (model: Argentina-like FX x11 in five years if indexed). Test: transfer-to-GDP above (g + pi*) x M/Y.
2. **Pledgeable UHI:** stream made assignable, payroll-style lenders enter, rates fall vs unsecured, borrowing rises, deduction rights concentrate, fraud and over-indebtedness follow unless consent and caps are enforced. Test: deduction complaints, share of benefit committed.
3. **Ownership UHI:** units credited, compound with the capital share, margin loans available, credit capacity grows with age. Test: whether accounts allow regulated borrowing before 18 or retirement.
4. **Dollar-token UHI abroad:** US UHI in stablecoins, foreign citizens acquire them, local currency demand drops, EM central banks lose control, they respond with capital controls or CBDCs. Test: stablecoin holdings by country, EM stablecoin restrictions.
5. **Exorbitant privilege under a printed UHI:** foreigners absorb part, imports stay cheap, domestic services inflate, reserve managers diversify, privilege shrinks. Test: COFER dollar share, 10y breakeven above 2.75%.

## Tripwires to monitor
| Indicator | Now | Threshold | Source |
|---|---|---|---|
| Any US UHI or AI-dividend bill with a CBO score | None (R1 L2) | Introduced with financing line | govinfo, CBO |
| Pledgeability language in any UHI or AI dividend bill | None found | Any assignment or deduction clause | govinfo |
| Brazil INSS margin and rate cap | 45% total, 1.80%/mo (2025) | Margin above 45% or cap rising | INSS, CNPS |
| Alaska PFD amount vs formula | $1,000 + $200 (2026) | Formula restored or statutory floor | Alaska DOR |
| COFER dollar share | 56.70% (Q2 2026) | Below 55% | IMF COFER |
| Stablecoin supply | $304.9B (R1 L7) | Above $500B, or EM restrictions | DefiLlama |
| Mongolia ETT dividend and share policy | MNT 285,000 for 2024 | Allowing pledge or sale of shares | ETT, Mongolian govt |
| Programmable-transfer rules (e-CNY expiry, merchant lists) | Pilots | National transfer with expiry | PBOC |

## Open questions / gaps
1. Alaska statute AS 43.23.140 full text and any current "PFD loan" product: akleg.gov and Justia returned 403. Verify directly.
2. Whether Fannie Mae counts the Alaska PFD as qualifying income (R1 L4 gap 9, still open).
3. Iran "yaraneh-backed loans" repaid from subsidy deductions: not found in English sources. A Persian-language search is needed.
4. Brazil INSS payroll-loan balance for 2026 from the central bank (the R$268bn figure is a 2025 secondary report).
5. Total cost of Macau's 2025 scheme (not published in the sources found).
6. The model's h and psi are assumptions. A proper calibration would use EM pass-through panels (IMF) and estimates of foreign demand for US safe assets.
7. UK Universal Credit advances and Australia Centrelink advances (state lending against its own benefit) were not checked this round.

## Claims

| id | claim | tier | status | source (URL) | source date | as-of date | falsifier |
|---|---|---|---|---|---|---|---|
| R2B-01 | Social Security payments are non-assignable and immune from legal process (42 USC 407), with child support and alimony exceptions (42 USC 659) | T1 | Confirmed | https://www.law.cornell.edu/uscode/text/42/407 | statute | 2026-10-22 | Amendment |
| R2B-02 | Supreme Court reads 407 as "a broad bar against the use of any legal process to reach all social security benefits" (Philpott, 1973) | T1 | Confirmed | https://supreme.justia.com/cases/federal/us/409/413/ | 1973-01-10 | 2026-10-22 | Later contrary holding |
| R2B-03 | CFPB sued Future Income Payments (Sept 2018) over pension "advances" that were loans at rates up to 183% | T1/T2 | Confirmed | https://www.pymnts.com/legal/2018/lawsuit-consumer-loans-future-pension-payments/ | 2018-09 | 2026-10-22 | Court finding the deals were sales |
| R2B-04 | Minnesota AG: a veteran got $1,500 for $18,000 of pension over 5 years, about 200% APR | T2 | Confirmed (as allegation) | https://www.courthousenews.com/minnesota-accuses-lending-firm-preying-veterans/ | 2017-08 | 2026-10-22 | Court rejects |
| R2B-05 | Brazil INSS beneficiaries can commit up to 45% of benefits to loans and cards (35/5/5), up to 108 months, after MP 1.355/2026 lapsed | T1 via press | Confirmed (secondary) | https://www.metropoles.com/brasil/economia-br/limite-de-credito-consignado-a-aposentados-do-inss-aumenta-para-45 | 2026-09 | 2026-10-22 | New MP or law |
| R2B-06 | Brazil INSS associative-deduction fraud: R$6.3bn, 2019 to 2024, about 6 million beneficiaries | T0/T2 | Confirmed (secondary) | https://meutudo.com.br/blog/noticias/2025/06/25/entenda-em-que-ano-comecou-a-fraude-do-inss-cronologia-completa/ | 2025-06-25 | 2026-10-22 | PF/CGU final figures differ |
| R2B-07 | South Africa: Constitutional Court invalidated the SASSA-CPS contract (2013), SASSA banned deductions from grants (2016) | T1/T4 | Confirmed (secondary) | https://www.dailymaverick.co.za/article/2017-10-17-groundup-black-sash-raises-red-flag-over-future-of-sassa-accounts/ | 2017-10-17 | 2026-10-22 | n/a |
| R2B-08 | Alaska PFD: 20% exempt from creditors, child support, restitution, defaulted student loans, fines and state debts can take it | T1 | Confirmed (snippet) | https://law.justia.com/codes/alaska/title-43/chapter-23/article-3/section-43-23-140 | 2024 code | 2026-10-22 | Statute amendment |
| R2B-09 | Historical Alaska notes secured by assignment of future PFDs existed (late 1990s committee file) | T4 | Speculative (snippet only) | https://www.akleg.gov/pdf/billfiles/Committee%20Bill%20Files/Finance%20Bill%20Files%20Set%202/Finance%20Set%202-1708.pdf | c. 1998 | 2026-10-22 | Document says otherwise |
| R2B-10 | Mongolia HDF paid MNT 21,000 per person per month 2010 to 2012, spent up to 18% of revenue in 2012, mining revenue covered about half | T0/T4 | Confirmed | https://resourcegovernance.org/blog/mining-lessons-mongolia-revenue-sharing-experiments | 2020-06-22 | 2026-10-22 | Official HDF accounts differ |
| R2B-11 | Mongolia poverty fell from 38.8% (2010) to 27.4% (2012), CPI 10.0%, 8.4%, 14.3% | T0 | Confirmed | https://www.worldbank.org/en/news/press-release/2013/05/21/poverty-rate-came-down-to-27-4-percent-in-2012 , https://api.worldbank.org/v2/country/MNG/indicator/FP.CPI.TOTL.ZG | 2013-05-21 | 2026-10-22 | NSO revision |
| R2B-12 | Each Mongolian citizen received 1,072 ETT shares, sellable only to the government, a third swappable for MNT 300,426. 2024 dividend MNT 285,000 | T0/T4 | Confirmed | https://resourcegovernance.org/blog/mining-lessons-mongolia-revenue-sharing-experiments , https://www.mongoliaweekly.org/post/erdenes-tavan-tolgoi-cash-payout-aims-to-address-public-discontent-over-air-pollution-in-mongolia | 2020 / 2025 | 2026-10-22 | n/a |
| R2B-13 | Iran's 455,000 rial transfer cut poverty from 22.5% to 10.6%, then lost nearly half its real value in 5 years (CPI 121 to 285), cutting the poverty effect about 40% | T4 | Confirmed (research) | https://erf.org.eg/app/uploads/2018/06/PB_37-Final.pdf | 2018-06 | 2026-10-22 | Other estimates |
| R2B-14 | Iran set transfers above revenue from price rises and printed money to cover the gap | T4 | Plausible | https://erf.org.eg/?p=9949 | n.d. | 2026-10-22 | CBI data showing no monetization |
| R2B-15 | Hong Kong 2020: HK$10,000 to about 7 million adults, HK$71bn (2.7% of GDP), from reserves | T0/T2 | Confirmed | https://www.hongkongfp.com/2020/02/26/hong-kong-budget-2020-hk10000-cash-handouts-permanent-residents-18/ | 2020-02-26 | 2026-10-22 | n/a |
| R2B-16 | Macau pays MOP 10,000 (permanent) and 6,000 (non-permanent) in 2025 and 2026, with a new 183-day residency test | T1/T2 | Confirmed | https://www.thestandard.com.hk/news/article/303559/Macau-tightens-cash-handout-rules-by-adding-183-day-residency-requirement | 2025 | 2026-10-22 | n/a |
| R2B-17 | Kenya GE study: transfers about 17% of local GDP at peak, local multiplier 2.5, average price inflation 0.1%, under 1% at peak | T4 (peer-reviewed) | Confirmed | https://www.nber.org/papers/w26600 (Econometrica 90(6) 2022) | 2022-11 | 2026-10-22 | Replication failure |
| R2B-18 | US import prices rise 4.4% after 2 years per 10% dollar fall vs 10% for Turkey (dollar invoicing) | T4 | Confirmed (research) | https://www.nber.org/index%2ephp/digest/jan16/cross-country-differences-exchange-rate-effects-inflation | 2016-01 | 2026-10-22 | New estimates |
| R2B-19 | US NIIP -$22.42T at end Q2 2026 (assets $46.97T, liabilities $69.39T) | T0 | Confirmed | https://bea.gov/news/2026/us-international-transactions-and-investment-position-2nd-quarter-2026 | 2026-09-24 | 2026-10-22 | Revision 2026-12-18 |
| R2B-20 | Japan yen-basis import prices rose 49.5% y/y in July 2022, far above the contract-currency rise | T0 via press | Confirmed | https://www.cmegroup.com/education/events/econoday/2024/04/feed588811.html | 2024-04 | 2026-10-22 | BOJ revision |
| R2B-21 | Shenzhen 2020 e-CNY lottery: 200 yuan x 50,000, 3,389 merchants, non-transferable, unspent recovered, 8.76m yuan used | T0/T2 | Confirmed | https://techcrunch.com/2020/10/11/china-digital-yuan-shenzhen/ | 2020-10-11 | 2026-10-22 | n/a |
| R2B-22 | A printed UHI of 10% of GDP gives about 4% CPI in a US-like economy and about 32% with a 56% currency fall in an Argentina-like one (sigma 0.3) | model | Plausible (model) | this file, Section 3 | 2026-10-22 | 2026-10-22 | Real episodes outside the range |
| R2B-23 | Non-inflationary money-finance room is about (g + pi*) x M/Y: 4% of GDP US, 1.1% Argentina | model + T0 inputs | Plausible | World Bank FM.LBL.BMNY.GD.ZS | 2026-10 | 2026-10-22 | Large printed transfers without inflation in low-M/Y countries |
| R2B-24 | Sovereign-fund finance protects the currency but not the domestic price level when output cannot respond | model + precedent | Plausible | this file, Section 3 | 2026-10-22 | 2026-10-22 | Fund-paid transfers with no local inflation in tight economies |
| R2B-25 | $1,000/mo of UHI supports about $69k of mortgage as income, about $54k to $108k as a sold stream, about $75k as margin on 10 years of units | model | Plausible | this file, Section 1 | 2026-10-22 | 2026-10-22 | Lender practice differs |
| R2B-26 | A digital token does not change the UHI budget constraint, it changes distribution, programmability and pledgeability | inference | Plausible | Sections 2 to 5 | 2026-10-22 | 2026-10-22 | A token design that raises real output |

Sources (additional): [Eurasianet on HDF inflation](https://eurasianet.org/mongolia-economic-boom-brings-inflation-woes), [ESMAP Iran slides](https://esmap.org/sites/esmap.org/files/DocumentLibrary/Session%202%20-%20Iran_energy%20subsidies-Hassanzadeh_ESMAP_KEF.pdf), [Development Pathways on Mongolia HDF](https://www.developmentpathways.co.uk/?p=803), [Gopinath et al. Dominant Currency Paradigm](https://www.nber.org/papers/w22943), [Mail and Guardian on Net1](https://mg.co.za/article/2017-03-10-00-net1s-tentacles-everywhere/), [Brazil consignado 2025 rate cap](https://jornalcontabil.com.br/noticia/aposentados-do-inss-novo-teto-do-emprestimo-consignado-ja-esta-valendo/), [Macau 2025 amounts](https://www.humanresourcesonline.net/macao-s-2025-policy-address-each-permanent-resident-will-receive-mop-10-000), World Bank API series FP.CPI.TOTL.ZG, PA.NUS.FCRF, NE.IMP.GNFS.ZS, FM.LBL.BMNY.GD.ZS, NY.GDP.MKTP.CN, NY.GDP.PCAP.CN, SP.POP.TOTL (fetched 2026-10-22).
