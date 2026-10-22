# Monetary Futures Intelligence Core: Research Plan

Status: PLAN (Round 0). Nothing below is a conclusion yet. Execution starts when the owner says "go".
Plan date: 2026-10-22. Every fact in this project carries the date it was true.

---

## 1. The mission in one paragraph

Build a research engine that takes a raw, half-formed question (like a tweet or a hunch) and returns an answer at the level of an expert who has studied the mechanism, read the primary documents, and thought about who benefits. No human should need to paste in the expert transcript first. The first live question is:

> Will energy (watts, tonnage, compute) replace the value role that gold, then bonds, then fiat credit played? How, why, on what timeline, and what does that mean for governments, businesses, and people living on a Universal High Income (UHI)?

The engine must also run again later, as policy changes, and show what moved.

---

## 2. Diagnosis: why Grok gave noise, then agreed

You ran a natural experiment. Same model, same facts, two very different answers. The difference was not the facts. It was the reasoning frame.

### 2.1 What Grok did on the first pass (the "averaging" failure)

| Failure mode | What it looked like | Why it produces noise |
|---|---|---|
| Fact-check frame | "Is there public evidence Bessent said he sold France?" | Intent is never announced. Demanding an official statement guarantees the answer "unproven". |
| Wrong evidence ladder | Treated official statements as the top of the ladder | Actions (where money actually moved) outrank words. Grok ranked them backwards. |
| No anomaly detection | Mentioned the euro sale as a detail | The euro sale IS the story. The default move would have been printing dollars. Choosing euros is a deviation, and deviations carry intent. |
| No mechanism chain | Listed facts side by side | Never asked "if A, then what must happen to B and C?" |
| No incentive map | Never asked who gains | Bessent, Japan, Germany, France, hedge funds all have different payoffs. That map is where the thesis lives. |
| No falsifiable predictions | Ended with "would need clearer signals" | An expert says "if I am right, EUR/JPY falls, OAT-Bund spreads widen, French bank equity drops". Then checks. |

### 2.2 What Grok did on the second pass (the "anchoring" failure)

When you pasted the Mallers transcript, Grok adopted its structure. That is not verification either. It is anchoring: the model borrowed a frame instead of building one. Notice Grok still said "not established". It just organized the same facts around Mallers' story. So both answers were weak in different ways: the first had no frame, the second had a borrowed frame.

### 2.3 The 7 moves Mallers made (this is the "expert imprint")

These are what the engine must do on its own, from the raw question:

1. **Spot the anomaly.** "He sold euros, not dollars. Why?"
2. **Ask what the default would have been.** "Normally the US prints dollars and lends against Japan's Treasuries."
3. **Map incentives for every actor.** Japan must repatriate. US cannot let Japan dump Treasuries. Germany benefits from a shared weak euro. France cannot print.
4. **Read the speaker's own history.** Bessent is a macro trader who broke the Bank of England with Soros. He says "I have asymmetric information". Traders telegraph so the market trades with them.
5. **Build the mechanism chain.** Sell euros → Japan sells Europe not America → France (weakest, 60% foreign-held debt, no own central bank) cracks → euro strains → Germany loses its cheap shared currency → US can then weaken the dollar against a stronger Germany.
6. **Name observable tests.** EUR/JPY, France-Germany 10y spread, BNP equity.
7. **State the confidence honestly.** "I can't prove it, but parts are absolutely true." Then separate what is fact from what is inference.

**The engine's core rule:** never ask only "is this officially true?". Ask "what did they do, what would they normally have done, who benefits from the gap, and what would we see next if the story is right?"

### 2.4 Calibration test (Round 0, runs first)

Before trusting the engine on the energy question, we backtest it. Feed it ONLY your original X post. Do not give it the Mallers transcript. Score whether the output reaches Mallers-level depth on the 7 moves above. If it does, the engine works. If it does not, we fix the prompts before Round 1. This is how we "skip you".

---

## 3. The framework: Revealed Intent Engine

### 3.1 Evidence ladder (higher tier beats lower tier when they conflict)

| Tier | Type | Examples for this project |
|---|---|---|
| T0 | Money actually moved | ESF reports, TIC foreign holdings, Fed H.4.1 balance sheet, Treasury quarterly refunding sizes, buyback operations, central bank gold purchases (WGC, IMF COFER), stablecoin T-bill holdings |
| T1 | Law and binding rules | GENIUS Act text, CLARITY Act status, Strategic Bitcoin Reserve executive order, SLR / Basel changes, Fed and Treasury rulemaking |
| T2 | Officials' own words, on record | Bessent speeches, testimony, op-eds, pre-office writings. Miran's Nov 2024 "User's Guide to Restructuring the Global Trading System". FOMC minutes. Putin, Xi, Lagarde, Ueda statements |
| T3 | Market prices | Yields, spreads, MOVE, EUR/JPY, gold, BTC, TIPS breakevens, swap spreads, power prices |
| T4 | Specialist interpretation | Lyn Alden, Luke Gromen, Zoltan Pozsar, Ray Dalio, Arthur Hayes, Jack Mallers, Brent Johnson, think tanks, sell-side research |
| T5 | Commentary and social | X threads, podcasts without data |

Rule: a thesis is "Confirmed" only with T0 or T1 support. "Plausible" with T2 or T3 plus a coherent mechanism. "Speculative" when it rests on T4 or T5 alone. "Refuted" when T0 to T3 contradict it.

### 3.2 The say/do gap

For every major actor, the engine records: what they say, what they do, and the gap. The gap is the most valuable data in the project.

### 3.3 Time stamping

Every source gets a publish date and a "fact as of" date. My training knowledge ends mid 2026. Anything after that (for example the July 31, 2026 yen intervention, the Oct 2026 Musk interview) must come from fresh search, never from memory.

---

## 4. Your thesis: claims to audit honestly

Your newsletter thesis is strong in places. Some pieces will not survive scrutiny, and you asked for intelligence, not agreement. These go into the debate as test cases. My preliminary read is noted, but each one gets verified in Round 1.

| ID | Claim | Preliminary read (to be verified) |
|---|---|---|
| A1 | Gold (~$30-50T) is the collateral base, and x10 leverage = ~$500T world debt | Likely a coincidence of numbers, not a mechanism. Since 1971 gold does not back credit. The collateral that actually anchors the system is US Treasuries (repo, margin, bank reserves). Above-ground gold is about 216,000 tonnes. Its value depends on the live gold price, which we will fetch. |
| A2 | Fractional reserve banking multiplies money x10 | Your own thesis cites the Bank of England 2014 paper, which says the opposite: loans create deposits, there is no fixed multiplier. The real limits are capital rules, borrower demand, and profitability. This is an internal contradiction worth fixing in the newsletter. |
| A3 | Money creation is "maxed out" | There is no hard ceiling in a fiat system. The real constraint is the one Mallers described: real interest rate vs real growth (the treadmill), plus inflation tolerance and bond-market demand. Your own phrase "scarce settlement capacity" is the better framing. |
| A4 | Bitcoin: 21M coins x10 collateral = ~$300T | Inherits the A1 error. Will test what BTC as collateral actually looks like today (BTC-backed lending, ETF collateral, bank treatment). |
| A5 | Putin in 2026 said Trump uses Bitcoin to devalue US debt | Must be sourced with the exact quote and date. |
| A6 | Robots will lower food prices and kill small F&B businesses | Splits in two: goods (automation pushes prices down) vs scarce inputs (land, water, energy, fertilizer) and status goods (stay expensive). Small F&B may survive as the "human-made" premium tier, like Musk's gardening analogy. |
| A7 | "Permanent underclass": people on UHI lose access to credit | Real question. Today lenders already underwrite Social Security and pension income as qualifying income. Key test: will UHI be underwritable, pledgeable, or deliberately non-pledgeable? |
| A8 | Bessent sold France to help Japan (Mallers thesis) | Used as the Round 0 calibration case. |

Parked (out of scope this round): the borrow-at-6.19%, earn-13.6% spread math in the newsletter. It ignores volatility drag and sequence risk. Worth its own round later.

---

## 5. The question tree (what Round 1 must answer)

### 5.1 First, what Musk actually said (source: Isaacson interview, published Oct 20 2026)

Transcript pulled. Key lines, paraphrased with care:

- He concluded the deficit cannot be solved from inside government. "The only way we're going to solve the national debt is with AI and robots."
- Digital superintelligence alone: roughly 20-30% more output, about $30T a year. "Not transformative."
- Robots plus space (mass driver on the Moon): potentially "a million times the size of the Earth economy".
- "There will be still currency, but I think currency will be measured in fundamental physics metrics, like power, wattage, and tonnage, mass and energy." "Conventional currency will not matter in the future."
- People conflate "resource allocation and consumption". Wealth beyond a point is a resource-allocation job, not consumption.
- US solar manufacturing: "200 gigawatts a year of production capacity".

**Critical nuance:** Musk ties energy-as-currency to a post-scarcity economy many orders of magnitude bigger than today. It is a far-horizon unit-of-account claim, not a near-term monetary reform. The engine must keep horizons separate or it will produce the same noise Grok did.

### 5.2 Horizons

- **H0: now to 2028.** The policy pipeline. Stablecoins, tokenized Treasuries, Bitcoin reserve, debt refinancing, Fed independence, dollar strategy.
- **H1: 2028 to 2035.** AI productivity shows up (or not) in GDP. Robot deployment at scale. Energy becomes the binding input for compute.
- **H2: 2035 to 2050.** Labor share of income shifts. UHI or similar transfers. Reserve system realignment.
- **H3: post-scarcity.** Musk's physics-denominated economy.

### 5.3 The sub-questions

**Q1. Is energy becoming money, or becoming the collateral behind money?**
- History: Technocracy Inc. "energy certificates" (Howard Scott, M. King Hubbert, 1930s), Buckminster Fuller, the petrodollar (1974), Bitcoin as "energy converted to money".
- Present: compute as currency (Altman's "universal basic compute"), power purchase agreements as financial assets, data centers as the new collateral, energy-backed tokens.
- Mechanism test: a money needs unit of account, medium of exchange, store of value. Energy is perishable and location-bound. So the likely path is energy as the BACKING or the REFERENCE unit, not the thing you spend. Test this.

**Q2. What are the Fed and Treasury actually doing right now? (H0, revealed intent)**
- Treasury: bill vs coupon issuance mix, buybacks, stablecoin demand for T-bills (GENIUS Act), ESF use, Bessent's "3-3-3" and dollar statements, Mar-a-Lago Accord ideas.
- Fed: rate path, balance sheet, SLR reform, leadership (verify who chairs the Fed as of Oct 2026), independence fights.
- Gold: revaluation talk, central bank buying, US gold certificate value.
- Bitcoin: Strategic Bitcoin Reserve status, BITCOIN Act, budget-neutral acquisition paths.
- The question behind the question: are stablecoins + tokenized Treasuries the "new monopoly board" that extends dollar demand, the way the petrodollar did in 1974?

**Q3. How do AI and robots change the debt math?**
- If AI lifts real growth above the real rate, the treadmill reverses. Musk's bet. Test with numbers: debt $40.44T (Treasury, 2026-10-20), interest cost, real rates, required real growth.
- Deflationary productivity vs inflationary energy demand. Which wins?

**Q4. The three tiers (asset owners / UHI recipients / still working)**
- What does a worker get paid in, if labor competes with robots? Wage, equity, compute credits, energy allotment?
- Can UHI income be pledged for credit? Who designs that rule? (Precedents: Social Security cannot be garnished in most cases but is countable income for mortgages. Alaska Permanent Fund. Universal basic income pilots.)
- Do newborns get a starting asset? (Precedents: "Trump Accounts" / baby bonds proposals, sovereign wealth fund ideas. Verify status.)
- Is "permanent underclass" a real mechanism or a sales narrative? Who is pushing it on X and what are they selling?

**Q5. Robots and food (your question 1)**
- Robot deployment numbers, cost per robot, timeline (Optimus, Figure, Unitree, China's deployment).
- Food price structure: what share is labor vs land, energy, transport, margin.
- Fate of small F&B: automation of commodity food vs premium human-made food.

**Q6. Gold, bonds, credit as "Set 1" vs crypto/AI rails as "Set 2"**
- Your merger hypothesis ("both remain, new monopoly board") tested against the alternatives:
  - S1 Dollar extension: stablecoins and tokenized T-bills carry the dollar onto new rails. Fiat survives, rails change.
  - S2 Neutral reserve layer: gold and Bitcoin become the settlement layer between nations. Dollar stays for daily use.
  - S3 Energy / compute standard: a physics-referenced unit of account emerges for machine-to-machine commerce.
  - S4 Disorderly reset: fiscal dominance forces inflation and financial repression first. New system built after.
- These are not exclusive. The deliverable assigns probabilities by horizon.

---

## 6. Agent architecture: plan → source → debate → reloop → confirm

All lanes run in parallel. Debate starts as soon as the first lane returns.

```
                 ┌────────────── ORCHESTRATOR (main session) ──────────────┐
                 │ question tree, horizons, claims ledger, stop rules      │
                 └──────────────────────────┬──────────────────────────────┘
        ┌──────────┬──────────┬─────────────┼───────────┬───────────┬──────────┐
     L1 Fed &   L2 Law &   L3 Energy   L4 Labor, AI  L5 Geo &    L6 Expert  L7 Quant
     Treasury   regulation  money       robots, UHI   reserves    transcripts data
        └──────────┴──────────┴─────────────┼───────────┴───────────┴──────────┘
                                            ▼
                          DEBATE COURT (one panel per thesis cluster)
          Proponent · Skeptic · Accountant · Historian · Incentive mapper · Judge
                                            ▼
                     RELOOP: judge lists gaps → targeted re-search (max 2 loops)
                                            ▼
              CONFIRM: thesis cards + scenario matrix + tripwires + timeline
```

### 6.1 Source lanes (parallel)

| Lane | Job | Primary sources |
|---|---|---|
| L1 Fed & Treasury | Revealed intent of the US monetary authorities | treasury.gov (refunding statements, ESF, buybacks), fiscaldata API (live debt, works), federalreserve.gov (H.4.1, FOMC minutes, speeches), NY Fed, Bessent and Miran writings |
| L2 Law & regulation | What is binding now and what is in the pipeline | GENIUS Act, CLARITY Act, Strategic Bitcoin Reserve EO, BITCOIN Act, SEC tokenization rules, Basel crypto standards, SLR reform. congress.gov is blocked here, so use govinfo.gov, federalregister.gov, whitehouse.gov |
| L3 Energy money | Is energy becoming money, collateral, or unit of account | Musk interview, Technocracy archives, Hubbert, Altman on compute, IEA data center demand, Bitcoin mining economics, energy tokenization projects |
| L4 Labor, AI, robots, UHI | Tier structure and credit access | Musk UHI statements, Anthropic Economic Index, BLS, robot deployment data (IFR), food price composition (USDA ERS), UBI pilots, baby bond / child account laws |
| L5 Geopolitics & reserves | Who is building the alternative and why | IMF COFER, WGC central bank gold, BIS papers, mBridge, BRICS statements, Putin quote (A5), Japan MoF intervention data, ECB |
| L6 Expert transcripts | Extract mechanisms and predictions from the 5 videos plus key thinkers | vidIQ transcript tool (works). Mallers transcript (already provided). Alden "Broken Money", Gromen, Pozsar, Dalio |
| L7 Quant | Test numbers, run the arithmetic | Treasury API, market data via search, recompute A1, A3, A4, the treadmill math, the gold value, BTC collateral math |

Each lane returns: claims (with tier, date, URL), the say/do gaps it found, anomalies, and open questions.

### 6.2 Debate court (parallel, one panel per cluster)

Clusters: (a) energy as money, (b) US monetary strategy H0, (c) AI/robots and debt, (d) tiers and credit access, (e) robots and food.

Roles in every panel:
- **Proponent:** builds the strongest version of the thesis.
- **Skeptic:** builds the strongest case against, using base rates.
- **Accountant:** checks every claim balances (whose asset is whose liability, where the money comes from).
- **Historian:** finds the closest precedent (1933 gold confiscation, 1944 Bretton Woods, 1971, 1974 petrodollar, 1985 Plaza, 2008 QE, 2020).
- **Incentive mapper:** who gains, who loses, who decides.
- **Judge:** scores, assigns status (Confirmed / Plausible / Speculative / Refuted), lists gaps.

This borrows the "multi-perspective expert conversation" idea from Stanford's STORM project, without cloning its code. Claude Code's own parallel agents already do the fan-out.

### 6.3 Reloop rules

- The judge's gap list becomes targeted search tasks for the relevant lane.
- Maximum 2 reloops per round, to keep cost bounded.
- Stop early when every key claim is either T0/T1-backed or clearly marked Speculative.

### 6.4 Confirm: the outputs

1. **Thesis cards.** One per conclusion: claim, status, confidence %, evidence (tiered, dated), mechanism chain, falsifier, tripwire indicators.
2. **Scenario matrix.** S1 to S4 × horizons H0 to H3 with probabilities. Then the same matrix read three ways: governance view, business view, UHI-citizen view.
3. **Claims ledger** (`claims.json`). Every claim with id, source, date, tier, status, confidence, falsifier, last checked. This is what makes the project re-runnable.
4. **Timeline.** Dated events from 1944 to now, plus pending decisions ahead (votes, rulings, refunding dates, Fed meetings).
5. **Tripwire dashboard.** The indicators that would tell us which scenario is winning. Examples: stablecoin share of T-bill demand, central bank gold share of reserves, MOVE above 130, Fed balance sheet turning up, UHI bills introduced, robot unit costs.
6. **Thesis audit.** Verdicts on A1 to A8 with corrected wording for your newsletter.

---

## 7. Sources registry: the videos you gave

Metadata pulled 2026-10-22. Publish date matters because laws and data have moved since.

| Video | Speaker / channel | Published | Language | Transcript |
|---|---|---|---|---|
| 20LWKL-5-BU | Elon Musk with Walter Isaacson, "The Builders" (re-upload, official: AQnwQHMnCrE) | 2026-10-21 (podcast 2026-10-20) | English | Pulled |
| X7D5LmeFQ_I | David Tait (World Gold Council CEO), Bonnie Blockchain. Recorded 2026-05-05 | 2026-08-05 | Interview, Chinese captions likely | Pending |
| ibnptqcO-AM | Tom Staudt (ARK Invest President), Bonnie Blockchain | 2026-03-19 | Interview, Chinese captions likely | Pending |
| SoROeULO3Ck | Lyn Alden, Bonnie Blockchain | 2025-08-13 | Interview, Chinese captions likely | Pending |
| BQP28KH4VGw | Reeve Collins (stablecoin co-inventor, Tether), Bonnie Blockchain | 2026-01-30 | Interview, Chinese captions likely | Pending |
| (pasted) | Jack Mallers, "Europe is screwed" | about 2026-10-05 | English | Provided by owner |

Debate value of this set: it already contains a built-in fight. David Tait says Bitcoin goes to zero and gold is real money. ARK says Bitcoin is a core asset. Lyn Alden sits in the middle (Bitcoin as neutral money, fiscal deficits unstoppable). Reeve Collins says stablecoins are how the US debt gets financed. Musk says none of it matters long term because currency becomes physics. Each becomes a voice in the debate court.

The Lyn Alden video is 14 months old. Its claims get re-checked against 2026 data.

---

## 8. Tooling: what works in this environment

| Tool | Status | Use |
|---|---|---|
| Web search and fetch | Works | All lanes |
| vidIQ transcript tool | Works (5 credits per video) | L6 |
| Direct YouTube scraping (youtube-transcript-api) | Blocked by YouTube for cloud IPs | Not used |
| US Treasury fiscaldata API | Works, no key | L1, L7 (debt $40,439,546,016,039 on 2026-10-20) |
| FRED CSV | Blocked by bot challenge | Use fetch through search results or Treasury/Fed sources instead |
| congress.gov | Blocked (403) | Use govinfo.gov and federalregister.gov |
| Parallel sub-agents | Available | Lanes and debate panels |

On GitHub projects: frameworks like STORM (Stanford), GPT Researcher, and LangChain's open_deep_research implement the same plan/search/synthesize loop. Cloning them adds API keys and setup without adding capability here. We borrow their patterns (perspective-guided questioning, cited synthesis), not their code.

---

## 9. Continuous mode (after Round 1)

- The claims ledger and timeline live in this folder and get versioned in git. Every refresh is a diff you can read.
- A weekly scheduled refresh can re-run L1, L2, L5, and L7 (the lanes that change with policy and data), re-score affected thesis cards, and log what moved. I will ask before creating any schedule.
- A shareable web page (claude.ai artifact) for friends and family: thesis cards, scenario matrix, tripwire dashboard, timeline. Built after Round 1 so it shows real findings, not placeholders.

---

## 10. What happens when you say "go"

1. **Round 0 (calibration):** run the engine on your raw X post only. Score it against the Mallers 7 moves.
2. **Pull the 4 remaining transcripts** (20 vidIQ credits).
3. **Launch 7 source lanes in parallel.**
4. **Launch 5 debate panels** as lanes return.
5. **Up to 2 reloops** on the gaps.
6. **Write outputs:** report, thesis cards, scenario matrix (3 viewpoints), thesis audit A1 to A8, `claims.json`, `timeline.json`.
7. **Publish the artifact** and commit everything to this branch.

Expected size of Round 1: about 15 to 20 sub-agents. That is the price of depth.
