# R2C: The 18-year-old entry route and the "permanent underclass"

Lane: R2C. Written 2026-10-22. Researcher: Claude (Round 2 lane agent).
Owner question: Q6. Moderator questions: M9, M10, M11, M12.
Builds on: R1 L4 (labor, AI, UHI), R1 L2 (Trump Accounts), R1 RELOOP section 4 (Fed DFA wealth shares), R1 Dd (tiers, credit, Dd-03 compounding gap). Round 1 numbers are cited as "R1 L4-06" etc. and not re-argued.

Method note: about 18 web searches and 20 direct fetches. Every model below is labeled "model" with inputs and formulas, run in python3 -I (script kept in the session scratchpad, reproduced in section 4). Figures from memory that I could not re-fetch are labeled "memory, not re-verified". FRED and the Census price files were down or bot-blocked this session, so two historical anchors come from search-result snippets of FRED tables (labeled).

---

## Answers

### Q6. When a child turns 18 in the new world, is the classic route (labor to cash, then collateralized income, group funding or a seed round) still possible?

Yes, but the route has changed shape. It is not closed. Rung by rung: the first job still exists (ages 20 to 24 unemployment was 8.0% in September 2026, down from 9.2% a year earlier, BLS T0). It is bending in AI-exposed white-collar entry roles: young workers in the most exposed jobs are 19% below peers (R1 L4-06) and recent grads have 5.6% unemployment against 4.2% overall (NY Fed). The housing-collateral rung is the one that has really broken. Median first-time buyer age is a record 40, first-time buyer share a record 21% (NAR 2025), and 49% of adults under 30 live with a parent, up 12 points since 2019 (Fed SHED). The launch rung has become much cheaper: an online store costs $39 a month (Shopify), a test brand costs a few hundred to a few thousand dollars (model), and solo founders are 36% of new Carta startups and 63% of Stripe Atlas C corps. But that rung pays out like a lottery: median first-six-month revenue for solo Atlas startups fell 23% in 2025 while the top decile rose 19%. So the honest picture is a ladder that has lost a middle rung (wage savings into a house before 35) and grown a steeper, cheaper, more skewed side ladder (build something, own equity early). The meme is right that ownership now decides outcomes, since the top 1% hold a record 32.5% of net worth and the bottom 50% hold 0.6% of directly held equities (R1 RELOOP R-11, R-13). It is wrong that the door is shut.
Status: Plausible (window narrowing and moving, not closing). Confidence 70. Horizon H0 to H1 (it hardens or reopens in H1 depending on housing supply and ownership grants).
Three views: Governance: the binding fix is supply and ownership, not credit: zoning and land release (the modern Homestead), plus seeding child accounts at a scale that matters. Business: young founders are cheap to start and cheap to hire as contractors, so firms will buy their output rather than train them, which shifts training costs back onto families. Ordinary person (wage or UHI): an 18-year-old's best moves are earn while learning in AI-complemented or physical-trust work, build a credit file early, live cheaply (often at home), and own diversified equity from the first paycheck. A UHI alone keeps you on the income side.

### M9. Entry-level labor data for young workers, 2025 to 2026

The aggregate youth market is soft but not collapsing. Unemployment for ages 20 to 24 was 8.0% in September 2026 (9.2% a year earlier) and 14.5% for ages 16 to 19 (13.3% a year earlier), against 4.2% overall (BLS T0). Recent college graduates (22 to 27) had 5.6% unemployment and 42% underemployment in 2026 Q2 (NY Fed), above the 4.2% all-worker rate, which used to be the other way round. The damage is concentrated: the entry-level share of postings in high-AI-exposure occupations fell from nearly 60% in 2020 to 44.7% in March 2026 (Lightcast via UMN Duluth). PwC finds entry-level roles in exposed fields are 7 times more likely to demand historically senior skills, traditional entry openings down 10% since 2019, "seniorized" ones up 35%. Pay for those who get in is fine: median full-time weekly pay for ages 20 to 24 is $802 (Q3 2026), and the oldest Gen Z earn a median $42,000 at 28, 25% above Millennials at that age (BCG, T4). Read: the first rung is not gone, it is being raised (more skill demanded at entry) in exactly the jobs that used to be the white-collar on-ramp.
Status: Confirmed (data). Confidence 80 on the facts, 55 on AI as the main cause (rates, post-2021 overhiring and remote work are rival explanations). Horizon H0.
Three views: Governance: watch the grad-vs-all unemployment gap and fund apprenticeships where entry hiring is thinning. Business: seniorized entry roles mean firms want trained juniors without paying to train them, a classic underinvestment problem. Ordinary person: an AI-exposed degree is no longer a safe default, AI-complemented and licensed physical work is the stronger first rung for now.

### M10. Does AI lower the capital needed to start a business enough to offset the meme?

It lowers the entry cost a lot and the success odds not at all. Cost model: a print-on-demand or digital brand can launch for about $525 to $2,850 in its first three months, a small private-label physical brand for about $1,900 to $7,400 (model, section 4), which is 0.7 to 9 weeks of median pay for ages 20 to 24. Formation is booming: 534,947 business applications in September 2026 alone (Census BFS, about 6.4 million annualized, against roughly 3.5 million a year in 2019, memory). Solo founders rose from 23.7% of new Carta startups in 2019 to 36.3% in H1 2025, and are 63% of Stripe Atlas C corps in Q2 2026, an all-time high. But outcomes are spreading apart: the top-decile solo founder earned 34 times the median in 2021 and 61 times in 2025, and median six-month revenue fell 23% in 2025 (Stripe Atlas). Solo founders were 30% of 2024 startups but got 14.7% of priced-round cash (Carta). Crowdfunding is still tiny: Reg CF raised about $378M to $500M in 2025 across the whole country. So AI moves the launch rung down to almost any 18-year-old, but distribution, trust and working capital become the new gates (see R2D for brand economics).
Status: Plausible (offsets the meme for the top tail, not for the median). Confidence 65. Horizon H0 to H1.
Three views: Governance: reduce fixed costs that AI cannot cut (licensing, state LLC fees, health insurance tied to employers) and let young founders draw on child accounts for business start-up. Business: platforms (Shopify, Stripe, Amazon, app stores, AI model vendors) capture a toll on every attempt, so they win whether founders win or not. Ordinary person: launch cheaply and early, but treat it as a skills and equity lottery ticket, not as the only plan, and keep the wage or UHI floor.

### M11. Value of a Trump Account at 18, and credit and funding routes for an 18-year-old today

Model, net of a 0.1% fee, 18 years: the $1,000 seed alone is worth about $2,400 in today's dollars at 5% real ($1,700 at 3%, $3,300 at 7%). Add $50 a month and it reaches about $19,500 real. Add $100 a month: about $36,600. At the $5,000 yearly cap: about $145,000. A hypothetical $25B of government AI equity spread over 70 million accounts adds only about $357 per child (about $845 at 18). So the seed is a symbol and family contributions decide the outcome, which makes the program regressive unless public or employer money flows in. Two catches matter for Q6. First, today's 18-year-old (born 2008) gets no seed: the $1,000 covers births 2025 to 2028, so the first seeded cohort turns 18 in 2043 (H2). Second, at 18 the account becomes a traditional IRA: withdrawals are taxed and penalized before 59 and a half, except about $10,000 for a first home and qualified education. There is no exception for starting a business. Credit routes today: under-21 card applicants need independent income or a cosigner (CARD Act), so the realistic path is authorized-user status, a secured card or credit-builder loan, then a starter card. Funding routes are mostly personal savings and family, then SBA microloans (up to $50,000), revenue-based advances once sales exist, and small crowdfunding.
Status: Confirmed (rules), model for values. Confidence 80. Horizon H2 for the first seeded cohort, H0 for credit routes.
Three views: Governance: the cheapest high-impact fix is a business-start-up withdrawal exception and a progressive public top-up instead of a flat $1,000. Business: employers can contribute $2,500 a year tax-advantaged, a retention perk that will mostly reach children of well-paid staff. Ordinary person: open it, contribute even $25 a month if possible, and build a thin credit file early. The account is a down-payment helper in 2043, not a launch fund.

### M12. History: when mobility windows closed, what reopened them?

Each reopening gave non-owners a productive asset or a credential that was large relative to the economy of its time, and paired it with a credit channel. The Homestead Act (1862) gave about 270 million acres, roughly 10% of US land, to nearly four million settlers for a filing fee (NPS). The high school movement took the share of youths with a diploma from about 9% in 1910 to about half by 1940 (Goldin and Katz, memory, not re-verified). The GI Bill put 7.8 million of 16 million WWII veterans through education or training, veterans were 49% of college admissions in 1947, and VA backed nearly 2.4 million home loans from 1944 to 1952, with guarantees covering homes, farms or businesses (VA). All three were also exclusionary: they largely shut out Native nations, many Black Americans and many women. Then absolute mobility fell from about 90% for children born in 1940 to 50% for children born in the 1980s (Chetty et al.). Modern equivalents that match the mechanism: (1) a land and housing release (zoning, federal land, by-right building), the true Homestead analogue, (2) universal AI tutoring and credentials (the high school analogue, cheap now), (3) a GI-style bill for national service or apprenticeship with a loan guarantee for a home or a business, and (4) child equity accounts seeded at a scale relative to asset prices (Trump Accounts are the pipe, the amount is the problem).
Status: Confirmed (history), Plausible (that a modern equivalent would work). Confidence 70. Horizon H1 (any of these takes a decade to show up in data).
Three views: Governance: the precedent says grants must be large and paired with credit, and that exclusions in the design come back as the next underclass. Business: every past window created huge new demand (farm equipment, suburbs, mass higher ed), so a modern window is a growth program, not only a transfer. Ordinary person: the windows that worked were concrete (land, school, a loan guarantee), not cash, so press for asset-type programs, not only checks.

---

## 1. Key findings

1. **The ladder still exists, but one rung broke and one got cheaper.** The breaking rung is housing as the first collateral: first-time buyer age 40 and share 21% (NAR 2025 profile, both records), 49% of under-30s live with a parent (Fed SHED 2025). The cheaper rung is launching something: online stores at $39 a month, AI doing design, code and copy, solo founders at record shares (Carta, Stripe Atlas).
2. **The young-wage rung is weaker in AI-exposed white-collar roles, not in general.** Ages 20 to 24 unemployment fell from 9.2% to 8.0% year on year (BLS T0). Real pay at entry is up (Gen Z median $42k at 28, BCG T4). The damage is in the mix: exposed entry postings fell from about 60% to 44.7% of all entry postings (Lightcast via UMN Duluth), recent grads now have higher unemployment than all workers (NY Fed).
3. **The 1990 vs 2026 down payment test depends on the price series, and it shows a squeeze, not a wall.** For a 20 to 24-year-old full-time median earner saving 10% of gross pay, a 10% down payment on a median existing home took about 6.2 years in 1990 and about 10.0 years in 2026 (NAR series, 1990 price from memory). On Census new-home medians it went from 8.3 to 9.4 years. JCHS shows national price-to-income at about 5.0 in 2024 against 3.2 typical of the 1990s. The monthly payment burden is closer to 1990 than people think, because 1990 rates were about 10%. The down payment, not the payment, is the gate (model).
4. **AI flattens entry costs and steepens outcome dispersion.** Stripe Atlas: top-decile solo founders earned 34x the median in their first six months four years ago and 61x in 2025. Median down 23% in 2025, top decile up 19%. This is the "winner takes most" signature, the same shape as the wealth data.
5. **Credit access for an 18-year-old is a solvable rung.** CARD Act (under 21 needs own income or a cosigner), but secured cards, authorized-user status and credit-builder loans work. CFPB halved its credit-invisible estimate in 2025 (13.5M, 5.8% of adults in the 2010 data, down from 26M). Credit is a speed bump, consistent with R1 Dd-02.
6. **Group funding is the rung most dependent on family.** 47% of 18 to 29-year-olds got financial help from outside their household and half of under-30s live with parents (SHED). Formal group funding (Reg CF about $0.4B to $0.5B a year) is negligible next to US venture capital. Family money is the de facto seed round, which is the real "underclass" transmission channel.
7. **Trump Accounts are the right pipe at the wrong size for Q6.** The $1,000 seed is worth about $2,400 real at 18 (model). Family top-ups dominate. Today's 18-year-olds get nothing. The first seeded cohort reaches 18 in 2043. At 18 the money is IRA-locked, with no business exception.
8. **History says windows reopen through assets plus credit, at scale.** Homestead (10% of US land), high school (diploma share from about 9% to about half in 30 years), GI Bill (7.8M trained, 2.4M VA loans). Absolute mobility fell from 90% (1940 births) to 50% (1980s births). No current program is large relative to asset prices.
9. **Verdict on the meme:** "closing" is Refuted for H0, "narrowing" is Plausible, "moving to different rungs" is the best description. The window becomes "permanent" only if three things persist together into H1: asset returns beating wage growth (labor share 52.8%, R1 L4-05), housing supply stays blocked, and ownership grants stay token-sized.

---

## 2. The ladder, rung by rung (2026 data, H1 and H2 forecasts)

Forecast columns are inference, labeled with my probability where useful.

| Rung | Classic route | 2026 evidence | Direction | H1 (2028 to 2035) forecast | H2 (2035 to 2050) forecast |
|---|---|---|---|---|---|
| 1. First job and wages | Entry job at 18 to 22, learn on the job | 20 to 24 unemployment 8.0% (Sep 2026, T0). Recent grads 5.6% vs 4.2% all (NY Fed). Exposed entry postings 60% to 44.7% (T4). Seniorization 7x (PwC, T4). 20 to 24 weekly pay $802, 65% of all-worker median vs 69% in 1990 (T0) | Bending (white-collar), stable (service, trades) | Entry white-collar hiring keeps shrinking in exposed occupations as agents mature. Physical-trust and AI-complemented work holds. Robot-hour cost starts to cap substitutable service wages (R1 Dd-05). Prob. grad unemployment above all-worker rate by 1.5 pp or more by 2030: about 40% | Wage route becomes one of several. Human-made premium work survives (Baumol). Many young adults are hybrids: some wage, some transfer, some equity |
| 2. Savings | Save part of pay for years | 49% of under-30s live with a parent, +12 pp since 2019 (SHED, T0 survey). That is partly a savings strategy | Harder (rent), offset by living at home | Depends on rent. If housing supply stays blocked, savings rates for renters stay low | If UHI exists, savings capacity depends on its size and inflation (R1 L4 Chain 3) |
| 3. Credit history | Card or car loan at 18 to 21 | CARD Act under-21 rule (T1). Credit invisibles revised down to 5.8% of adults (CFPB 2025). Rent reporting, secured cards available | Easier than 1990 (more data, more products) | Cash-flow underwriting (bank data) spreads, helping thin files | Bureau data merges with on-chain and income-stream data. A statutory UHI is underwritable (R1 Dd-02) |
| 4. Collateral (house) | First home in late 20s | First-time buyer age 40, share 21% (NAR 2025). Price to income 5.0 vs 3.2 in 1990s (JCHS). 10% down at 10% savings: 6.2 to 10.0 years (NAR series, model) | Broken for the median young earner | Hinges on supply. Prob. NAR first-time buyer median age back under 35 by 2035: about 20% | If robots cut construction cost and zoning opens, this rung can reopen. Land rent captures much of the gain otherwise (R1 L4 section 6) |
| 5. Group funding or family money | Family loan, rotating savings, partner, community lender | 47% of 18 to 29s got help (SHED). Reg CF about $378M to $500M in 2025 (T4) | Unequal, family-dependent | Child accounts and family transfers dominate. The "great wealth transfer" flows mostly to already-advantaged heirs | Inheritance and trusts dominate unless ownership grants scale (Trammell, R1 L4-27) |
| 6. Seed capital | Bank loan on collateral, angels, VC | Solo founders 36.3% of Carta starts (H1 2025), got 14.7% of priced-round cash in 2024. SBA microloans up to $50,000 (T1). Revenue-based advances on platforms | Easier to start, harder to raise | AI cuts the capital needed for software and media firms toward zero. Physical goods still need working capital. Revenue-based finance grows because platforms see sales data | Capital needs fall for many firms, but distribution and trust (brand) become the scarce inputs (R2D) |
| 7. Compounding | 401(k), index funds, home equity | Zero-commission fractional investing, index fees near 0.05% (memory). Trump Accounts for every child (R1 L2-19). But bottom 50% hold 0.6% of directly held equities (R1 R-13) | Mechanically easier, socially unequal | Trump Account balances grow. Gap closes only if public or employer contributions are large | First seeded cohort turns 18 in 2043 with about $2,400 real from the seed (model). Gap persists unless AI equity is routed in at large scale |

---

## 3. Historical windows and modern equivalents (M12)

| Window | What closed before | What it gave | Scale | Credit link | Who was excluded | Modern analogue |
|---|---|---|---|---|---|---|
| Homestead Act, 1862 | Land concentrated in speculators and railroad grants (memory) | 160 acres for a filing fee and residence plus improvement | About 270M acres, about 10% of US land, nearly 4M settlers (NPS) | Land became mortgageable collateral | Native nations (land taken), many Black Americans in practice, women unless head of household | Land and housing release: by-right zoning, federal land for housing, robot-built homes |
| High school movement, 1910 to 1940 | Child labor, apprenticeship-only paths | Free public secondary schooling | Diploma share about 9% (1910) to about half (1940) (Goldin and Katz, memory) | Higher wages made credit possible | Segregated and underfunded schools for Black students | Universal AI tutoring and credentials, cheap to deliver now |
| GI Bill, 1944 | Depression and war | Tuition, stipend, loan guarantee for homes, farms or businesses | 7.8M of 16M veterans trained, 49% of 1947 college admissions, about 2.4M VA home loans 1944 to 1952 (VA) | Government guarantee replaced the missing down payment | Black veterans largely denied in practice by local administration and redlining (memory, T4) | National service or apprenticeship bill with a home or business loan guarantee |
| Post-1980 closing | Labor share drift, housing restriction, rising asset prices | (no reopening yet) | Absolute mobility 90% (1940 births) to 50% (1980s births) (Chetty) | n/a | n/a | Child equity accounts at scale (Trump Accounts are the pipe) |

The common pattern: the grant was large relative to the economy, it was an asset or a credential (not cash), and it came with a credit channel. The common failure: exclusion in administration. Both lessons apply to any AI-era program.

---

## 4. Models (all labeled "model", python3 -I)

### 4.1 Down payment for a 20 to 24-year-old, 1990 vs 2026

Inputs:
- Earnings: median usual weekly earnings, full-time, ages 20 to 24. 1990: $285 (BLS Table 22, annual average, T0). 2026: $802 (BLS Q3 2026, T0). Annual = weekly x 52.
- Prices: Census new-home median 1990 $122,900 (FRED MSPNHSUSA via search snippet, T0 via snippet) and August 2026 $393,700 (Census, T0). NAR existing median 1990 $92,000 (memory, not re-verified) and September 2026 $417,500 (NAR, T3).
- Mortgage rates: 1990 10.13% (Freddie annual average, memory), September 2026 6.86% (Freddie via NAR).
- Formula: years = (price x down payment share) / (savings rate x annual earnings). Payment = standard 30-year amortization on 90% of price.

| Series | Year | Price / young earnings | 10% down, years at 10% / 15% / 20% savings | 20% down, years at 10% / 15% / 20% | P&I with 10% down, share of young gross pay |
|---|---|---|---|---|---|
| NAR existing | 1990 | 6.2 | 6.2 / 4.1 / 3.1 | 12.4 / 8.3 / 6.2 | 59% |
| NAR existing | 2026 | 10.0 | 10.0 / 6.7 / 5.0 | 20.0 / 13.3 / 10.0 | 71% |
| Census new | 1990 | 8.3 | 8.3 / 5.5 / 4.1 | 16.6 / 11.1 / 8.3 | 79% |
| Census new | 2026 | 9.4 | 9.4 / 6.3 / 4.7 | 18.9 / 12.6 / 9.4 | 67% |

Reading: (a) No single 20 to 24-year-old could comfortably buy a median home in 1990 either. Ownership came in the late twenties, often on two incomes. (b) The existing-home series (closer to what first-time buyers buy) shows the years of saving up about 60%. The new-home series shows only about 14%, partly because 1990 new homes were priced far above existing ones. (c) The payment burden is not far from 1990 because 1990 rates were about 10%. (d) The broader JCHS series (all households) shows price to income rising from about 3.2 to about 5.0. Net: the down payment gate is the hard part, and it is worse, by roughly half again, not by multiples. The age-40 first-time buyer is the outcome.

### 4.2 Trump Account at 18

Inputs: $1,000 seed (births 2025 to 2028), contributions monthly, 18 years, fee 0.1% a year (statutory cap on expense ratio, R1 L2), returns 3%, 5% (central, real) and 7% (roughly nominal). Formula: monthly compounding at (r minus fee), plus contributions.

| Scenario | 3% real | 5% real | 7% | Paid in |
|---|---|---|---|---|
| Seed only | $1,673 | $2,366 | $3,324 | $1,000 |
| Seed + $25/mo | $8,726 | $10,913 | $13,741 | $6,400 |
| Seed + $50/mo | $15,780 | $19,461 | $24,159 | $11,800 |
| Seed + $100/mo | $29,886 | $36,556 | $44,995 | $22,600 |
| Seed + $2,500/yr (employer max) | $60,451 | $73,595 | $90,139 | $46,000 |
| Seed + $5,000/yr (cap) | $119,229 | $144,825 | $176,955 | $91,000 |
| Dell $250, child aged 8 (10 years) | n/a | $403 | n/a | $250 |
| Hypothetical AI equity: $10B / $25B / $100B over 70M children | n/a | $338 / $845 / $3,380 at 18 | n/a | $143 / $357 / $1,429 |

Benchmark: the seed alone covers about 6% of a 10% down payment on today's median existing home (real terms). $100 a month covers about 88%. Rules at 18: treated as a traditional IRA, taxable, 10% penalty before 59 and a half except qualified education and a $10,000 lifetime first-home exception (26 USC 72(t), T1). No business start-up exception.

### 4.3 Cost to launch a small online brand, first three months

| Item | Low | High | Basis |
|---|---|---|---|
| Shopify Basic (3 days free, then $1/mo for 3 months) | $3 | $3 | Shopify pricing page, fetched 2026-10-22 (Basic $39/mo after intro, 2.9% + 30 cents per card sale) |
| Domain | $12 | $25 | typical registrar range (assumption) |
| AI assistant subscriptions, 1 to 2 at $20/mo | $60 | $120 | list prices (assumption) |
| LLC formation | $50 | $500 | state fee range (assumption) |
| Print-on-demand or dropship samples | $100 | $400 | assumption |
| Private-label small minimum order (cosmetics or food) | $1,500 | $5,000 | assumption, see R2D for brand cost structure |
| Test ads | $300 | $1,500 | assumption |
| Creative and photos, AI-assisted | $0 | $300 | assumption |

Totals: digital or print-on-demand route $525 to $2,848, physical private-label route $1,925 to $7,448. That is 0.7 to 3.6 weeks, or 2.4 to 9.3 weeks, of median pay for ages 20 to 24. In the 1990s a comparable consumer brand needed a retail buyer, a warehouse, printed catalogs or a storefront lease (memory, qualitative). The fixed launch cost has collapsed. Customer acquisition (ads, platform fees) is now the main variable cost and it is paid to platforms.

---

## 5. Say/Do gaps

| Actor | Says | Does | Read |
|---|---|---|---|
| Administration on Trump Accounts | A financial head start for every child (R1 L2) | $1,000 seed for 2025 to 2028 births only, about $450 average deposit per funded account (R1 Dd-04), IRA lock at 18, no business exception | A real pipe with a token flow. The design favors long-term equity bid and home purchase over enterprise |
| AI labs (Amodei, Altman) | Warn of an underclass, back ownership or compute for all (R1 L4) | Sell the tools that thin entry hiring. No equity has moved into child accounts (R1 L2-20) | Words support a regulatory and brand position. Do is adoption revenue |
| Employers (PwC data) | "The story isn't that entry-level work is disappearing" | Traditional entry openings down 10% since 2019, seniorized ones up 35%, senior-skill demand in entry postings 52% in exposed fields | They still hire juniors, but want them pre-trained. The training cost moves to the worker |
| Platforms (Stripe, Shopify) | AI unleashes a founder boom | Median solo-founder revenue down 23% in 2025 while sign-ups surge. Platforms earn per attempt | The boom is real in attempts, the platform toll is collected either way |
| Housing policy (all levels) | Affordability is a top priority | New-home builders cutting prices (38% in August 2026, Census survey via press), but supply rules largely unchanged (memory, qualitative) | Demand-side help without supply keeps the collateral rung closed |

---

## 6. Anomalies

1. **Recent grads have higher unemployment than all workers.** Default for decades: a degree lowered unemployment even at entry. Now 5.6% vs 4.2%. This is the clearest sign that the white-collar first rung is the one moving.
2. **Youth unemployment fell year on year while AI hiring anxiety peaked.** Ages 20 to 24: 9.2% to 8.0%. The aggregate young labor market is not in an AI collapse. The change is compositional.
3. **Gen Z earns more at 28 than Millennials did, yet half of under-30s live with parents.** Income is up, collateral access is down. That combination isolates housing, not wages, as the broken rung.
4. **Solo founding hits record shares while median solo revenue falls.** Entry is easier and the average entrant does worse. More tickets, same or fewer prizes.
5. **The payment burden at 1990's 10% rates was similar to today's.** The popular claim that housing was "easy" in 1990 is overstated for a single young earner. The down payment, the age of first purchase and the two-income requirement are what changed.
6. **A universal child account was built with no business-start exception.** The law allows a home and education, the two classic rungs, and leaves out the rung AI is making cheaper.

---

## 7. Mechanism chains

**Chain A: seniorization of the entry rung.** AI agents do junior tasks (drafting, coding, research) → firms hire fewer pure juniors in exposed occupations and demand senior skills at entry (PwC 7x) → the training ladder thins → young workers shift to AI-complemented, physical-trust or founder paths, or wait longer (underemployment 42%) → wage-based savings start later → first collateral comes later (age 40 first-time buyer). Test: NY Fed grad-vs-all gap, Stanford canaries gap above 25% (R1 L4 tripwire), entry posting shares.

**Chain B: cheap launch, skewed payoff.** AI and platforms cut fixed launch costs to weeks of pay → attempts surge (BFS about 535k a month) → attention and distribution become the scarce input → returns concentrate in the top decile (Stripe 34x to 61x) → founders who already have family money can make more attempts and survive longer → the side ladder favors those with a cushion. Test: Stripe Atlas median vs top-decile revenue, BFS high-propensity applications vs actual employer formations.

**Chain C: collateral gate and the family channel.** Price to income about 5.0 and a 6 to 10 year down payment horizon → parental housing and gifts become the de facto seed round (49% live with a parent, 47% get help) → those without family help rent longer and miss home-equity compounding → the R1 Dd-03 gap widens across generations, not only within them. Test: NAR first-time buyer age and share, SHED living-with-parents share, JCHS ratio.

**Chain D: ownership grant at scale reopens the window.** If government AI equity or a progressive top-up flows into 530A accounts at thousands of dollars per child → every 18-year-old in 2043 holds a meaningful equity stake → with a business or home exception it becomes a first collateral or seed. If the grant stays at $1,000 → it is a symbol and family contributions widen the gap. Test: any statute or deal moving AI equity into Trump Accounts (R1 L2 tripwire), contribution distribution by income.

---

## 8. Tripwires

| Indicator | Source | Threshold that matters |
|---|---|---|
| Recent grad unemployment minus all-worker rate | NY Fed quarterly | Gap above 1.5 pp (now about 1.4 pp) |
| Ages 20 to 24 unemployment | BLS Table A-10 | Above 10% outside a recession |
| Entry share of postings in high-exposure occupations | Lightcast, Burning Glass | Below 40% |
| First-time buyer median age and share | NAR annual profile (November) | Age above 40 or share below 20% |
| Under-30s living with a parent | Fed SHED (May) | Above 50% |
| Price to income | JCHS (June) | Back below 4.5 would show the rung reopening |
| Solo-founder share and revenue dispersion | Carta, Stripe Atlas | Top-decile to median ratio above 75x |
| Business applications | Census BFS monthly | Sustained above 500k a month with rising employer formations |
| Trump Account contributions by income and any AI equity seed | Treasury, White House | Any public top-up above $1,000 or any equity routed in |
| Section 530A amendments | Federal Register, statute | A business start-up or apprenticeship withdrawal exception |
| Housing supply bills | Federal and state | By-right zoning at state level in large states |

---

## 9. Open questions and gaps

1. 1990 NAR existing-home median ($92,000) and the 1990 Freddie rate (10.13%) are from memory. FRED was down. Verify both.
2. No primary Stanford canaries paper opened (carried from R1 L4).
3. Carta primary page returned 403. Figures come from search summaries of the Carta report and its 2026 Founder Ownership report, which conflict slightly (31% vs 35% for 2024).
4. Share of first-time buyers using family gifts (NAR 2025) not retrieved.
5. Goldin and Katz high school figures and the Homestead filing fee are from memory.
6. No hard data on the share of 18 to 24-year-olds running a business today. The last SCF series found (WSJ 2015) shows under-30 business ownership fell from 10.6% (1989) to 3.6% (2013). A 2022 SCF update is needed.
7. Revenue-based finance volumes (Shopify Capital, Stripe Capital) not verified this session.
8. No forecast from an official body for entry-level hiring by 2030 was verified. H1 and H2 probabilities above are my inference.
9. CPI deflator for real young-worker pay 1990 to 2026 not fetched. The nominal ratio (2.8x) and house price ratio (3.2x new, 4.5x existing) are enough for the comparison.

---

## 10. Claims

| id | claim | tier | status | source (URL) | source date | as-of date | falsifier |
|---|---|---|---|---|---|---|---|
| R2C-01 | Unemployment ages 20 to 24 was 8.0% in Sept 2026 (9.2% Sept 2025), ages 16 to 19 14.5%, total 4.2% | T0 | Confirmed | https://www.bls.gov/news.release/empsit.t10.htm | 2026-10-02 | 2026-10-22 | Revision or next release above 10% for 20 to 24 |
| R2C-02 | Recent college grads (22 to 27) had 5.6% unemployment and 42% underemployment in 2026 Q2 | T0 (Fed statistics) | Confirmed | https://www.newyorkfed.org/research/college-labor-market | 2026 Q2 | 2026-10-22 | Next quarterly update below the all-worker rate |
| R2C-03 | Entry-level share of postings in high-AI-exposure occupations fell from nearly 60% (2020) to 44.7% (March 2026) | T4 | Plausible | https://lsbe.d.umn.edu/articles/aiexposure | 2026-06-25 | 2026-10-22 | Burning Glass or Indeed series show no decline |
| R2C-04 | PwC 2026: entry roles in exposed occupations 7x more likely to require senior skills, traditional entry openings down 10% since 2019, seniorized up 35% | T4 | Plausible | https://www.fortune.com/2026/06/18/entry-level-work-ai-pwc-seniorization-report/ | 2026-06-18 | 2026-10-22 | Primary PwC data differ |
| R2C-05 | Median weekly full-time earnings ages 20 to 24: $285 in 1990, $802 in Q3 2026. Ratio to all workers fell from 69% to 65% | T0 | Confirmed | https://www.bls.gov/opub/reports/womens-earnings/2022/home.htm and https://www.bls.gov/news.release/wkyeng.t03.htm | 2023 / 2026-10 | 2026-10-22 | BLS revision |
| R2C-06 | First-time buyer share 21% and median age 40, both records (NAR 2025 profile) | T3/T4 (trade survey) | Confirmed (as survey) | https://www.nar.realtor/newsroom/first-time-home-buyer-share-falls-to-historic-low-of-21-median-age-rises-to-40 | 2025-11-04 | 2026-10-22 | 2026 profile shows reversal |
| R2C-07 | Median existing-home price $417,500 in Sept 2026, 30-year rate 6.86% | T3 | Confirmed | https://www.nar.realtor/newsroom/existing-home-sales-increased-1-5-in-september-according-to-nar-report | 2026-10-13 | 2026-10-22 | n/a |
| R2C-08 | Census new-home median $393,700 (Aug 2026) vs $122,900 (1990 annual) | T0 | Confirmed (1990 via FRED table snippet) | https://www.census.gov/construction/nrs/pdf/newressales_202608.pdf and https://fred.stlouisfed.org/data/MSPNHSUSA | 2026-09-24 | 2026-10-22 | FRED value differs |
| R2C-09 | Years for a 20 to 24 median earner saving 10% of gross to reach a 10% down payment: about 6.2 (1990) to 10.0 (2026) on existing homes, 8.3 to 9.4 on new homes | model | Plausible (1990 existing price from memory) | section 4.1 | 2026-10-22 | 2026-10-22 | Verified 1990 NAR price far from $92,000 |
| R2C-10 | National price to income about 5.0 in 2024 vs 3.2 typical of the 1990s, 2026 report says "near record highs" | T4 | Plausible | https://jchs.harvard.edu/blog/home-prices-surge-five-times-median-income-nearing-historic-highs | 2025 | 2026-10-22 | JCHS 2026 data below 4.5 |
| R2C-11 | 49% of adults under 30 lived with a parent in 2025, +12 pp since 2019. 47% of 18 to 29s got outside financial help | T0 (Fed survey) | Confirmed | https://www.federalreserve.gov/publications/2026-economic-well-being-of-us-households-in-2025-executive-summary.htm | 2026-05 | 2026-10-22 | n/a |
| R2C-12 | Oldest Gen Z earn a median $42,000 at 28 in constant dollars, 25% above Millennials at 28 | T4 | Plausible | https://fortune.com/2026/09/22/gen-z-wealth-income-vs-boomers-millennials-richest-generation-great-expectations/ | 2026-09-22 | 2026-10-22 | CPS-based replication shows otherwise |
| R2C-13 | Solo founders rose from 23.7% of new Carta startups (2019) to 36.3% (H1 2025). Solo firms got 14.7% of 2024 priced-round cash while being 30% of starts | T4 (Carta via secondary) | Plausible | https://carta.com/data/solo-founders-report | 2025-12-09 | 2026-10-22 | Carta primary data differ |
| R2C-14 | Solo founders were 63% of Stripe Atlas C corps in Q2 2026 (record). Median six-month revenue down 23% in 2025, top decile up 19%. Top-to-median ratio 34x to 61x | T2/T4 (company data) | Confirmed (as company data) | https://stripe.com/blog/top-solo-founder-traits | 2026-05-28 | 2026-10-22 | Later Atlas data reverse the dispersion |
| R2C-15 | Business applications 534,947 in Sept 2026 (seasonally adjusted) | T0 | Confirmed | https://www.census.gov/econ/bfs/current/index.html | 2026-10-14 | 2026-10-22 | Revision |
| R2C-16 | A small online brand can launch for about $525 to $2,850 (digital or print-on-demand) or $1,900 to $7,400 (private label) in three months | model | Plausible | section 4.3, https://www.shopify.com/pricing | 2026-10-22 | 2026-10-22 | Platform price hikes or ad costs doubling |
| R2C-17 | Reg CF raised about $378M (KingsCrowd) to almost $500M (CCA) in 2025 | T4 | Plausible | https://angelinvestorsnetwork.com/startups/reg-cf-vs-reg-a-plus-2025-scorecard-924-million-crowdfunding-data | 2026 | 2026-10-22 | SEC totals differ widely |
| R2C-18 | Trump Account $1,000 seed is worth about $2,400 real at 18 (5% real, 0.1% fee). $100 a month brings it to about $36,600 real | model | Confirmed (arithmetic) | section 4.2 | 2026-10-22 | 2026-10-22 | Different return assumptions |
| R2C-19 | At 18 a Trump Account is treated as a traditional IRA: taxable, early-withdrawal penalty with education and $10,000 first-home exceptions, no business exception | T1 (IRS notice via press) | Confirmed | https://www.journalofaccountancy.com/news/2025/dec/irs-outlines-details-for-trump-accounts/ and https://www.law.cornell.edu/uscode/text/26/72 | 2025-12 | 2026-10-22 | Amendment adding exceptions |
| R2C-20 | Dell $250 gift targets children 10 and under not covered by the seed, in ZIPs with median income under $150,000 | T2 | Confirmed (as pledge) | https://www.bostonglobe.com/2025/12/02/business/trump-accounts-children-dell-government | 2025-12-02 | 2026-10-22 | Pledge terms change |
| R2C-21 | Card applicants under 21 need independent ability to pay or a cosigner (CARD Act) | T1 | Confirmed | https://www.law.cornell.edu/uscode/text/15/1637 | statute | 2026-10-22 | Amendment |
| R2C-22 | CFPB revised credit invisibles to 13.5M (5.8% of adults) in its 2010 data, from 26M | T2 | Confirmed | https://files.consumerfinance.gov/f/documents/cfpb_update-credit-invisibles-estimate_2025-06.pdf | 2025-06 | 2026-10-22 | n/a |
| R2C-23 | Homestead Act: about 270M acres, about 10% of US land, nearly 4M settlers | T2 (NPS) | Confirmed | https://www.nps.gov/home/learn/historyculture/abouthomesteadactlaw.htm | current | 2026-10-22 | n/a |
| R2C-24 | GI Bill: 7.8M of 16M WWII veterans trained, 49% of 1947 college admissions, nearly 2.4M VA home loans 1944 to 1952, guarantees for homes, farms or businesses | T2 (VA) | Confirmed | https://www.va.gov/opa/publications/celebrate/gi-bill.pdf | 2009 | 2026-10-22 | n/a |
| R2C-25 | Absolute mobility fell from about 90% (1940 births) to 50% (1980s births) | T4 (peer-reviewed) | Confirmed | https://opportunityinsights.org/paper/the-fading-american-dream/ | 2017 | 2026-10-22 | n/a |
| R2C-26 | Under-30 household business ownership fell from 10.6% (1989) to 3.6% (2013) | T4 (WSJ analysis of SCF) | Plausible (dated) | https://scsbc.org/endangered-species-young-u-s-entrepreneurs/ | 2015 | 2026-10-22 | SCF 2022 shows recovery |
| R2C-27 | Verdict: the entry window is narrowing and moving to different rungs (housing broken, launch cheaper but skewed), not closing | inference | Plausible | this file | 2026-10-22 | 2026-10-22 | By 2030: grad gap above 3 pp, first-time buyer age above 42 and median solo revenue falling again would move it toward "closing" |
