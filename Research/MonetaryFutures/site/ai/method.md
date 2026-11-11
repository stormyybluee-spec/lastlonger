# The method (from the Plan, version 5.1)

Stack: Fundamentals. How the desk turns a raw question into an answer. Built 2026-11-12. The full plan, with the origin cases and the agent architecture, is at https://neetmonetary.netlify.app/PLAN.md


### 4.1 Evidence ladder
| Tier | Type | Examples |
|---|---|---|
| T0 | Money actually moved | ESF statements, TIC holdings, Fed H.4.1, refunding sizes, buybacks, central bank gold purchases, stablecoin reserve reports |
| T1 | Law and binding rules | Statutes, executive orders, final rules |
| T2 | Officials' own on-record words | Speeches, testimony, minutes |
| T3 | Market prices | Yields, spreads, FX, gold, power prices |
| T4 | Specialist interpretation | Analysts, think tanks, podcasters with data |
| T5 | Commentary and social | Posts without data |

Status: Confirmed (T0 or T1 support), Plausible (T2 or T3 plus a coherent mechanism), Speculative (T4 or T5 only), Refuted (T0 to T3 contradict).

### 4.1b Decoded intent (added Round 3)
Politicians rarely state the plan, so analysts decode it, and some decodings surface as "conspiracy theories". This segment is sourced and graded, not dismissed. For each decoded claim record: the decoders (named) and their track record, convergence across independent decoders, action fit (T0 to T3 facts for and against), motive and capability, and the tell to watch with a date. Grades: D1 decoded-strong, D2 decoded-plausible, D3 folklore, D4 debunked, plus a probability. Always separate intent (what they want) from outcome (what will happen). Brief: round3/BRIEF_DECODE.md.

### 4.1c Market-odds rule (added Round 3)
Where a prediction market with more than $1M traded prices the same event, compare. If the desk's number differs by more than 15 points, write down why. Score the desk's calls on each resolution date. Public no-key sources: Polymarket Gamma API and Kalshi public market data.

### 4.2 Say/do gap
For every major actor record what they say, what they do, and the gap. The gap is the most valuable data in the project.

### 4.3 Horizons
H0 now to 2028 (policy pipeline). H1 2028 to 2035 (AI productivity shows up or not, robots at scale). H2 2035 to 2050 (labor share shifts, transfers, reserve realignment). H3 post-scarcity (Musk's physics-denominated economy).

### 4.4 Scenarios
S1 dollar extension (stablecoins, tokenized Treasuries carry the dollar onto new rails). S2 neutral reserve layer (gold and possibly Bitcoin between nations). S3 energy or compute standard. S4 disorderly reset (fiscal dominance, inflation or yield caps or crisis first).

### 4.5 The intel flow: the 7 moves, upgraded (version 4.0, 2026-10-24)
This is the backend of the project. It is meant for the day the owner or a friend brings something nobody on the desk knows the answer to. There is no answer key then, so the flow has to reach the expert answer by construction: frame the question, source it wide, map it completely, test it against data, attack it, and only then write. Each move lists what to do, where to look and a pass test. A lane cannot hand in work that fails a pass test, and the court sends it back.

**Move 1. Frame the question and spot the anomaly**
- Restate the raw input as questions and give each a type: event or intent (who did what and why, Case 1), mechanism (how does X work, where does X come from, Case 2), forecast (what happens next and when), what-if (if X, then what), or belief audit (is a popular or owner belief true).
- Pull out the hidden hypotheses. Every question mark, and words such as "solely", "only", "really", "always" or "is it true", becomes a claim to falsify, not a request to restate the desk's view. Assume the asker may already know the answer and is testing the desk (question-mark rule).
- Write the answer spec before any research: what must an expert answer contain to be complete? For a mechanism question: all channels in both directions, every actor's balance sheet, sizes across regimes and where the result lands. For an event question: the anomaly, the default move, incentives, the chain and dated tests. For a forecast: base rates, the market price, the desk's number and the resolution rule.
- List the dimensions the answer could flip on (blind-spot list): normal years vs crisis years, stocks vs flows, gross vs net, levels vs changes, nominal vs real, upstairs (central bank) vs downstairs (public), banks vs nonbanks, domestic vs foreign holders, the US vs other countries, the law on paper vs practice.
- Look for the anomaly in numbers as well as events. Pull the two or three headline series for the topic and find where the popular story and the data disagree. Case 1: the euro was sold instead of dollars printed. Case 2: M2 rose nine times as much as bank loans in 2020 to 2021.
- Pass: questions typed, hidden hypotheses listed, answer spec written, blind-spot list written, at least one data check for an anomaly done.

**Move 2. State the default story and who tells it**
- For an event question, state the default move: what the actor would normally have done. For a mechanism question, state the default explanation from three places: the textbook, the official view (central bank, treasury, regulator) and the most-viewed popular view.
- Popular sweep: gather the three to five most-watched or most-shared explanations of the topic (YouTube playlists, X threads, Reddit, best-selling books) and list their claims as T5 hypotheses to test. The owner's friends will meet these. The playlist in Case 2 described the Fed buying bonds through primary dealers, so a sweep in Round 1 would have put the upstairs channel on the table.
- Scope every authority: what does the source cover and what does it leave out, given its mandate, country, year and audience? The Bank of England's 2014 paper explained commercial bank lending in normal times. It was never a full map of money creation.
- Pass: the default is named, at least three sources from different camps are listed, and each has its scope and blind spot written down.

**Move 3. Map every actor: incentives and balance sheets**
- For each actor: what they want, what they can do, what they say, what they do, and the gap (section 4.2).
- For anything touching money, credit, debt, reserves, deficits, QE, stablecoins or foreign flows, also draw each actor's balance sheet and walk the transaction through it (ledger test). Use two floors: upstairs (bank reserves, the Treasury General Account and reverse repo at the Fed) and downstairs (deposits and cash held by the public). Name the final counterparty: bank or nonbank, domestic or foreign.
- Pass: for every actor you can say which balance changed, and whether public money rose, fell or only moved.

**Move 4. Read history across regimes and the actors' own words**
- Read the actors' own documents: minutes, operating manuals, statements, laws and the Fed's or Treasury's own notes on their operations, not only commentary about them.
- Test the answer across time. The default window for money topics is 1971 to today, split by regime: 1971 to 1979, 1979 to 1982, 1983 to 2007, 2008 to 2014, 2015 to 2019, 2020 to 2021, 2022 to 2025 and the latest year. Other topics pick their own regimes, but always include at least one crisis.
- Find precedents: when did this happen before, and what happened next?
- Pass: the answer carries a regime label, and at least one stress regime has been checked.

**Move 5. Build the complete mechanism map**
- List every channel that can create the thing and every channel that can destroy or drain it. Use accounting to make the list exhaustive: sector balance sheets, sectoral balances and the flow of funds.
- Give each channel a sign, a size for the latest year and for a stress year, and a source. Put this channel table before any prose.
- Then build the chains: if A, what must happen to B and C, and who gains?
- Triangulate the map across at least three frames: the official view, the raw data and at least one critical school (post-Keynesian or MMT, Austrian or hard money, monetarist). Write down where they agree and where they differ.
- Pass: a reader can see which channel dominates in which regime, and no school's strongest objection points to a channel missing from the map.

**Move 6. Name tests and check them with data first**
- Pull the series before writing any word that implies a size ("most", "huge", "small", "rising", "record"). Registry in section 8.3.
- For each chain, name the price or series that would confirm or kill it, with a date. Pre-register forecasts in the ledger (round5/prereg.json is the model).
- Use markets where they exist (market-odds rule, section 4.1c).
- Pass: every size word is backed by a number with a source and a date, and every chain has at least one dated test.

**Move 7. Separate fact from inference, attack it, then state confidence**
- Tag every claim with a tier (T0 to T5), a status and a confidence. Mark models as models.
- Word audit: search the draft for only, solely, always, never, all, none, most, mostly, main, cannot, impossible, myth and wrong. Each one gets a number, a regime label or a rewrite.
- Overcorrection guard: when debunking a belief, write what it gets right as well as what it gets wrong. Do not replace one simple story with another.
- Red team before publishing. Nine voices each name the most important thing the draft misses or misstates: the New York Fed open market desk, a Treasury debt manager, a primary dealer or bond trader, a bank treasurer, an accountant, an economic historian, a post-Keynesian or MMT critic, a hard-money critic, and an ordinary reader who will take the headline literally. Swap in the right experts for non-money topics (for example an energy trader, a trade lawyer, a demographer). Every point is answered or fixed in writing.
- Depth ladder: write the answer so it reads at four levels. Level 1 headline (one sentence a teenager can repeat). Level 2 mechanism and balance sheets. Level 3 evidence across time, with a chart. Level 4 debates, edge cases and tripwires. An answer is not done until it reaches Level 3. The ladder is the template for the owner's planned Level 1 and Level 2 Rulebook dropdowns (section 5.7).
- State what is still unknown and what would change the answer.
- Pass: no unquantified absolute left, every red-team point answered, Level 3 reached.

**When nobody knows the answer (novelty mode)**
- If the topic is new or the evidence is thin, do not fill the gap with a confident story. Say which moves could not be completed and why.
- Still write the answer spec, the blind-spot list and the channel table with blanks. They tell the owner what to watch.
- Prefer competing hypotheses, each with the test that would separate them and a date. Promote one only when a T0 to T3 test lands.
- Check the flow itself before trusting it: run one test-bank question per round (section 4.6). If the flow fails a known case, it will fail an unknown one.

**Case 2 replayed through the upgraded flow (what Round 1 would have produced with no playlist)**
| Move | Output |
|---|---|
| 1 Frame | Typed as a mechanism question. "Banks create most money" listed as a hypothesis. Answer spec: all channels, both floors, regimes. Anomaly: in 2020 to 2021 M2 rose $6.15T and bank loans $0.68T |
| 2 Default | Bank of England 2014 scoped as a paper on bank lending in normal times. Popular sweep finds the claim that the Fed prints by buying bonds through primary dealers, listed as a hypothesis |
| 3 Actors | Balance sheets for a Fed purchase from a dealer bank vs from a pension fund. Reserves rise in both. Public deposits rise only in the second |
| 4 History | Regime split 1971 to 2026: Fed share 4% to 13% in normal decades, 75% in 2008 to 2014, 87% in 2020 to 2021, negative in 2022 to 2025 |
| 5 Map | Channel table: new loans, bank securities purchases, Fed purchases from nonbanks, deficit spending, minus loan repayments, taxes, auctions bought by nonbanks and QT |
| 6 Data | H.6, H.8, H.4.1 and Z.1 from DBnomics. Test: M2 should fall when QT runs and lending is weak. It fell in 2022 and 2023 |
| 7 Attack | Word audit turns "mostly wrong" into "wrong for normal years, right for 2008 to 2014 and 2020 to 2021". The open market desk voice adds the nonbank-seller rule. The overcorrection guard keeps both printers in the answer |
| Result | The chapter 8 answer in Round 1, with no prompt from the owner |

### 4.6 Scoring the flow: correction ledger, skip-me score and test bank
After each round record (a) the skip-me score: how many findings the owner had to trigger by pasting material or pushing back, and (b) every correction to an earlier ruling, with its cause taken from the failure modes in sections 2.7 and 2B.3. Goal: owner-triggered corrections fall toward zero while engine-found corrections keep coming.

Correction ledger so far:
| Date | What was corrected | Triggered by | Cause |
|---|---|---|---|
| 2026-10-22 | "Bessent sold France" reframed as the narrow euro-cost version | Owner pasted an expert transcript (Case 1) | Fact-check frame, no anomaly detection |
| 2026-10-24 | Money creation is not mostly bank loans in every regime. Two floors, nonbank-seller rule, deficit netting, 1971 to 2026 split | Owner's playlist and question marks (Case 2) | Wrong question type, authority anchoring, regime blindness, no ledger test |
| 2026-10-24 | Round 3 "flat producer prices" was a mislabelled series (consumer foods) | Engine (R5A), unprompted | Series label not checked |
| 2026-10-24 | Four sovereign fund sizes, a mission date and a Bund level | Engine (R5E memory audit), unprompted | Figures used from memory |
| 2026-10-24 | Owner's "wealth 300T+, debt 500T+": framed first as "swapped", then by the court as "both can be true depending on which debt" ($348T to $365T of loans and bonds, about $1,200T of all paper claims, $518T to $600T of net wealth) | Engine (cold framer, red team, court), unprompted | Framer and lane picked one definition. The red team caught the overcorrection |
| 2026-10-24 | Rulebook money chapter: deposits rose $4.7T not $5.45T in 2020 to 2021, bank securities $1.9T not $2.1T, M2 40% not 41%, reverse repo peak $2.4T | Engine (R6B lane, verifier), unprompted | Numbers written before the v4 pipeline |
| 2026-10-24 | Four Level 2 bridges claimed Level 1 taught things it did not (1942 to 1951 cap is in rb-08, not rb-03, and others) | Engine (red team, court), unprompted | Bridges written from memory of Level 1 |
| 2026-11-05 | Round 8 draft said digital credit dollars "never leave Set 1". True for trades, but it hid the creation channel (bank loans against Bitcoin, bank buyers). Rebuilt as three meters: dollars, ownership and risk, market value | Engine (blind red team), unprompted, before publication | Case 2 shape repeated: a true trade-level headline hiding the creation channel |
| 2026-11-12 | The base-rate checker removed the 1974 Saudi "outside the auctions" detail as unsupported. The Round 10 blind exam found the 1979 GAO audit that documents it, and the row was restored | Engine (blind exam), unprompted | One checker's search budget. A second independent search caught it |
| 2026-11-12 | The Round 10 court printed 46% for the alignment chain H4-02. The hole file computes 42% | Engine (orchestrator cross-check during cold-read fixes), unprompted | A court figure not recomputed from the hole file. Rule: chapter figures are copied from tools/check_chain.py output |

Owner test bank (held-out questions with known expert answers). The Scorekeeper runs one per round as a blind exam (section 6.3) and grades it pass, partial or fail. Add a case every time the owner catches the engine out. Keys for the held-out tests live in `engine/test_bank_keys.md`, which examinees never open. Cases 1 and 2 are public training cases, so their keys stay here.
| Case | Question | An expert answer must contain | Result |
|---|---|---|---|
| Case 1 (origin) | Did Bessent "sell France" to help Japan? | The euro sale as the anomaly, ESF accounting, the mechanism chain, who gains, dated tests | Failed before the transcript. Rebuilt unaided in Round 0 |
| Case 2 | Is money created only by bank loans, and where does Fed buying land? | All create and destroy channels with signs and sizes, both floors, the nonbank-seller rule, deficit netting, a 1971 to today split by regime | Failed until the owner prompted on 2026-10-24 |
| Test 3 | Where does a stablecoin dollar come from and where does it go, floor by floor? | Held out | Not yet run |
| Test 4 | Does a strong dollar export inflation, and to whom, by regime? | Held out | Not yet run |
| Test 5 | What actually limits US deficits: the debt ceiling, the bond market, the Fed or inflation? | Held out | Not yet run |
| Test 6 | When the Fed shrinks its balance sheet, whose money disappears? | Held out | Not yet run |
| Test 7 | Does buying a Bitcoin-backed preferred move money out of the dollar system? | Held out | Not yet run |
| Case 3 (origin of Unseen mode) | What is undisclosed in X, and how sure can the desk be? | A grade for every link, marks found and missing, at least four rival readings, a coordination level, reveal dates, the chain probability | Opened 2026-11-11. First run planned as Round 9 |
| Test 8 | Do the three largest index managers control American companies? | Held out | Not yet run |
| Test 9 | Was there a secret deal in 1974 to put Gulf oil dollars into US Treasuries, and has it ended? | Held out | Partial, 2026-11-12 (Round 10 blind exam, round10/EXAM_T9.md): 8 of 9 key items with sources, including the 1974 add-on window from the GAO 1979 audit that the base-rate checker had missed. Missing: the share of Gulf oil sold to Asia, as a number |

### 4.7 Unseen mode: reasoning past where the documents stop (version 5.0, 2026-11-11)
Built from Case 3 (section 2C). The seven moves stay. Unseen mode adds what they need when the answer is partly undisclosed.

**When it switches on.** A question about intent, a secret deal, ownership or control, covert funding, "who is really behind X", or any chain where the documents end before the question does. Triage says so in the round file. It can run inside a Standard or Full round.

**The honest ceiling.** The desk cannot know a secret. It can do four things with one: bound it (accounting says how big it can be), rank the explanations, name what would reveal it and when, and keep score of its own guesses. Anything more is storytelling.

**The inference ladder.** Tiers T0 to T5 grade sources. The ladder grades each link in a chain.
| Grade | Name | What supports the link | Starting cap on its probability |
|---|---|---|---|
| I0 | Documented | A source says it directly (T0 to T3) | 99% |
| I1 | Footprint | Nobody says it, but at least two of its required side effects are measured in independent public records | 80% |
| I2 | Structural | It follows from incentives, capability and accounting, and nothing found contradicts it | 60% |
| I3 | Pattern | It rests on a documented precedent of the same class (engine/BASE_RATES.md) | 45% |
| I4 | Conjecture | A coherent story with a test, and no check yet | 30% |
| IX | Untestable | No observation could contradict it | Not published. Logged only |
The caps are starting values. Reset them from the inference scorecard once 20 links have been scored.

**Footprints.** A hidden act has to leave marks somewhere: in money (balance sheets, flows, custody data), on paper (filings, contracts, court records), in the physical world (ships, flights, buildings, power use), in people (appointments, resignations, who met whom), in prices (moves before the news) and in silence (a data series that stops, a question nobody answers). Before searching, write down which marks the link would have to leave. Registry in section 8.4. A missing mark counts against a link only when the search was adequate and the mark would have been visible.

**The twelve lateral moves.** Apply two or three to any node to find the next candidate link. Each one produces a guess to test, never a finding.
| Move | Question |
|---|---|
| Counterparty | Every flow has another side. Who is on it? |
| Balance sheet | Where does this sit as an asset, and whose debt is it? |
| Cap table | Who is the legal owner, who gets the gains, who votes, who funds it, who guarantees it, who can fire the boss? |
| Upstream and downstream | What input does it need (energy, chips, dollars, permits) and who controls that? Who needs its output? |
| Chokepoint | Which strait, clearing house, custodian, payment rail or licence does it have to pass through? |
| Timing | What happened just before and just after? Who traded or filed ahead of the news? |
| Silence | Who should have reacted and did not? What stopped being published? |
| Same people | Which boards, advisers, funders or former officials appear on both sides? |
| Rule change | Which law, rule or accounting standard changed shortly before, and who lobbied for it? |
| Mirror | How do the other side's own records and press describe the same event, in their language? |
| Scale | Is the number big enough to matter against the pool it sits in? |
| Precedent | What is the closest case that was later documented, and what was true there? |

**The rabbit hole, on a rope.**
- Start from an anomaly or a claim, and from documented ground (I0).
- Each hop: apply a lateral move, write the candidate link, write the marks it should leave, run the cheapest check.
- Two-link rule: no more than two inferred links in a row without touching documented ground. No more than four inferred links in a hole.
- Chain arithmetic: multiply the link probabilities and show the product. Five links at 70% each are a 17% story. A chain under 10% is published as an open question, never as a finding.
- Every hole has a budget (default 15 searches) and ends in one of four exits: a finding, a dated test, a dead end, or a question for the owner. Dead ends go in the dead-end ledger (roundN/holes/DEAD.md) so the next agent does not dig them again.
- One hole is one JSON file. `python3 -I tools/check_chain.py roundN/holes/*.json` enforces every rule in this list before the court sees it.

**Patching a gap.** When a link is missing, write three patches: the most boring one, the most likely one by base rate, and the one that would matter most. Give each the marks it would leave. Test the cheapest first. Keep the surviving patch with its grade and its reveal date in the patch ledger (roundN/PATCHES.md). The scorekeeper reopens it when the date arrives.

**Rival readings.** Every inferred conclusion carries a table of at least four readings: the official story, coordination (they agreed), shared incentives (each acted alone and it looks the same), and accident or error. List the evidence in rows and mark each cell consistent, inconsistent or neutral. Evidence that fits every reading is worth nothing. Prefer the reading with the least inconsistent evidence, not the one with the most support.

**Coordination test.** A claim that two or more actors act together states a level.
| Level | Meaning | What must be shown |
|---|---|---|
| 0 | Their interests point the same way | The incentive of each |
| 1 | Tacit: each follows the same obvious cue with no contact | The cue (a focal point, Level 2 chapter 4) |
| 2 | A deal with deniability | The channel they used, what stops one side cheating, and the secrecy load: how many people must stay silent, for how long |
| 3 | One command structure | The same, plus the chain of command |
Most "they are all aligned" claims are level 0 or 1. The evidence required rises with the level.

**Actor rules.** Write the sentence with a named legal entity or office and a verb it can perform: vote shares, lend, lobby, sell, sign, appoint. "The asset managers control the firms" becomes who holds what share, who directs the votes, how they voted (Form N-PX) and whether they have ever removed a board. A bloc such as MIC, FIC or TIC is a label for firms with overlapping incentives, not an actor. A people or a faith is never an actor.

**Source capital card.** For every recurring source, friendly, hostile or official: who pays them (sales, sponsors, employer, holdings), what they sell, their record on dated calls, their known errors, and what they would never say. Stored once in engine/SOURCES.md and reused.

**Words.** State likelihood and confidence separately. Likelihood: almost certain (over 90%), likely (65 to 90), about even (40 to 65), unlikely (15 to 40), remote (under 15). Confidence is about the evidence: high (documents and footprints), medium (footprints or structure), low (pattern or conjecture).

**Publishing.** An inferred claim always shows its grade, the marks found and missing, the rival readings and the reveal date. Inferred claims belong to the Intelligence stack (section 1.1): the Desk and the Landscape carry them under an "Inferred" label. The Rulebook teaches what is documented. A Level 4 chapter may set out graded readings of a debate, each labelled, as Level 4 chapter 1 does.

**Inference scorecard.** At each reveal date score the link right or wrong, by grade. Brier score per grade, kept with section 4.6. This is how the desk learns how good its guesses are, and how the caps get reset.

**Case 3 replayed (what the flow does with one claim from the specimen, before any data is pulled)**
Claim: Gulf states no longer recycle oil dollars into US Treasuries. China's purchases now fund their sovereign funds, which buy US shares instead.
| Step | Output |
|---|---|
| Frame | Typed as mechanism plus intent. Hidden hypotheses: there was a binding Treasury deal, it ended, yuan settlement is large, the shift was agreed. Unseen mode on |
| Marks expected | Gulf crude exports by buyer (customs and tanker data). Gulf holdings in the Treasury's country tables and the Fed's custody data. Fund holdings in 13F filings and annual reports. Yuan share of settlement in SWIFT and CIPS data. Dollar peg reserves at the Gulf central banks |
| Lateral moves | Counterparty (who sold the Treasuries the Gulf did not buy). Mirror (Chinese customs against Gulf export data). Chokepoint (the dollar pegs need dollar reserves). Scale (fund purchases against the US share market) |
| Rival readings | Official (diversification for return). Coordination (a deal with US finance). Shared incentives (higher returns in shares, nobody agreed anything). Accident of measurement (holdings moved to custody in Belgium, Luxembourg or the Caymans and only look lower) |
| Coordination level | Claimed level 2. Needs a channel, an enforcement and a secrecy load, or it drops to level 0 |
| Grade | Each link graded after the data. The chain probability is shown. A dated test is written for each open link |
This is the first hole for Round 9 (section 10). No number here is a finding.

