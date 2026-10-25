# R7A: Bonds for people. Material for rewriting Rulebook L2.1 "Bonds" (rb-bonds)

Tier: Standard (Round 7). Date: 2026-10-24. Lane R7A combines the framer's lanes A, B and C with light Data, Ledger and Sweep jobs. Questions: Q1, Q1a, Q1b, Q1c. Hidden hypotheses: H1 to H6 (FRAME_R7 section 2). General education, not financial advice. Scripts: scratchpad/scripts (lens_audit.py, blockwords.py, gauge_math.py). Tables: round7/lanes/R7A-tables.json.

## Pass checklist
- [ ] A. Government-lens audit with method, by blocks and words, verdict on H3
- [ ] B. Learning science grades with primary sources, use in chapter, one anchor analogy stress-tested (H1, H2)
- [ ] C. Secondary market: mechanics, who trades, spread, yield to maturity, daily volume US and Malaysia, retail routes and costs in Malaysia and the US (Q1a)
- [ ] D. Normal person's lens: touch points with Malaysia and US numbers, hidden risks, overcorrection guard, 2022 losses sourced (Q1b, H4)
- [ ] E. Personal gauge, tested on three made-up households (H6)
- [ ] F. Headline filter, applied to three real 2025 to 2026 headlines, including one alarm that was right (Q1c, H5)
- [ ] G. Ledger, light: four buyer cases, both floors
- [ ] H. Sweep: popular explainers, reach, verdicts
- [ ] I. 10 curiosity questions tagged to L1 chapters, 8 radiant rays
- [ ] J. Proposed outline for the rewritten chapter (about 12 parts)
- [ ] K. Claims table (R7A-01 onward) and dated tripwires
- [ ] Style audit: no em-dashes, en-dashes or semicolons, "to" for ranges

---

## A. Government-lens audit of the current rb-bonds chapter (H3)

### Method (stated before counting)
1. Source: site/rulebook.json, chapter id "rb-bonds" (index 21), read with python3 -I. 94 blocks. Words counted per block from every text field (labels, captions, table cells, quiz answers), excluding keys, ids and link targets. Script: scratchpad/scripts/blockwords.py and lens_audit.py.
2. Each block got a lens tag, split by fraction when a block mixes views:
   - S, state or issuer: why and how a government borrows, auctions, net interest, a country's borrowing cost.
   - C, central bank and system plumbing: the Fed, repo, banks as a system, holder tables, stablecoin backing, foreign reserves.
   - M, the instrument seen by a generic bondholder: the contract, price and yield, duration, the curve, the forces on yields as mechanics.
   - H, household life: an ordinary person's loans, savings, pension, deposits, prices, tax, job, or the currency at the till.
   - N, navigation (stop boxes, how-to-read lines), left out of the shares.
3. Verdict scale fixed by the framer before counting (FRAME_R7 3.9): "mostly government lens" if S plus C is above 60% of words and H is under 15%. "Partly" if H is 15% to 35%. "No" if H is above 35%.
4. The tagging is a judgement made by one reader. A second coder should repeat it. The sensitivity line below shows how far the result can move.

### Result
| Lens | Words | Share of words | Blocks (fractional) | Share of blocks |
|---|---|---|---|---|
| State or issuer (S) | 857 | 15.2% | 13.5 | 15.3% |
| Central bank and system (C) | 2,318 | 41.1% | 30.9 | 35.1% |
| Government plus system (S plus C) | 3,175 | 56.3% | 44.4 | 50.3% |
| Instrument, generic bondholder (M) | 1,970 | 34.9% | 34.2 | 38.9% |
| Household life (H) | 496 | 8.8% | 9.5 | 10.8% |
| Total, navigation excluded | 5,641 | 100% | 88.0 | 100% |

By part (share of words):
| Part | Words | S | C | M | H |
|---|---|---|---|---|---|
| Opening (TL;DR, bridge, map, five words) | 440 | 4% | 28% | 52% | 16% |
| Part 1, the bond itself | 1,224 | 10% | 10% | 81% | 0% |
| Part 2, size, owners, auctions, repo | 1,851 | 20% | 77% | 0% | 3% |
| Part 3, when bonds bite | 2,126 | 17% | 31% | 35% | 17% |

Which of the framer's ten household touch points appear at all:
| Touch point | In the chapter? |
|---|---|
| 1 Retirement savings (EPF, 401(k)) | Partial. EPF appears once, as "main domestic holder", not as the reader's own savings |
| 2 Bank deposits and deposit insurance | Partial. Only through SVB and the US $250,000 limit, told from the bank's side |
| 3 Home loans | US only ($400,000 mortgage, one paragraph). Malaysian floating loans absent |
| 4 Car loans and other borrowing | One word in a list |
| 5 Jobs and company borrowing | One phrase in the TL;DR |
| 6 The currency | Partial. "The ringgit weakens", told from Bank Negara's side |
| 7 Prices and inflation (real return) | Yes. Step 6 and the real-return widget, the strongest household section |
| 8 Taxes and public services | Partial. US net interest above defence, told as a verdict on government |
| 9 Insurance and takaful | No |
| 10 Islamic savings | No (GII named as a structure only) |
| Secondary market as a place a person can use | No. Resale appears only as "if you sold it early" |

### Verdict on H3: largely holds
- The household lens is 8.8% of words, well under the 15% line. This half of the test passes clearly.
- Government plus system is 56.3% of words, just under the framer's 60% line, and is the largest single lens. The rest (34.9%) is neutral bond mechanics written in the second person ("you hold a bond"), which reads as personal but describes a direct bond investor, which few 18-year-olds are.
- Part 2 is 97% government and system. It is 1,851 words, the longest part, and sits between the reader and the only household material in Part 3.
- Sensitivity (script output): moving every mixed block fully to its larger tag gives S plus C 59.3% and H 4.4%. The two extreme bounds are S plus C 36.5% (every mixed block pushed away from government) to 70.4% (every mixed block pushed toward it), with H between 5.1% and 15.0%. Even at the most generous extreme the household lens only touches the 15% line. The household half of the verdict is robust. The government share depends on how the mixed blocks are read, so "largest single lens" is the safe wording, and "mostly" should carry the 56% figure next to it. The owner's "maybe" was right, and their word "mostly" is accurate if read as "the system's view dominates and the household's view is nearly missing".
- Only 3 of 10 touch points are covered in full, and the secondary market is missing as something a person can use.
- Rewrite target (framer 3.9, kept): household lens at least 40% of words, government lens compressed into one part plus "go deeper" boxes.

---

## B. Learning science: what helps an 18-year-old absorb bonds (H1, H2)

### B1. The owner's "biohacking methods", graded
The owner asks for "biohacking methods" to help readers absorb. Learning science has tested many of them. The grades below follow the strongest reviews. Dunlosky, Rawson, Marsh, Nathan and Willingham (2013, Psychological Science in the Public Interest 14(1), "Improving students' learning with effective learning techniques") rated ten study techniques as high, moderate or low utility. That review is the anchor where it covers a technique. Grade key: Strong (replicated in reviews or meta-analyses across ages and subjects), Moderate (good evidence with limits), Weak (little or mixed evidence), Not supported (tested and failed).

| Technique | Grade | Best evidence | What the evidence says, in one line | How the chapter uses it |
|---|---|---|---|---|
| Retrieval practice (quizzing yourself) | Strong | Dunlosky et al. 2013 (high utility). Roediger and Karpicke 2006, Psychological Science 17(3) | In Experiment 2, students who studied once and recalled three times kept 61% of a passage after one week. Students who reread it four times kept 40%. Rereaders scored higher at 5 minutes (83% vs 71%) and felt more confident | Three questions at the end of every part, answered before the reveal. A 10-question mixed quiz at the end |
| Spacing (coming back later) | Strong | Dunlosky et al. 2013 (high utility). Cepeda et al. 2006, Psychological Bulletin 132(3), a meta-analysis of distributed practice | The same study time spread over days beats one block | "Come back in 3 days" card at each stop box. The L2.4 chapter opens by re-asking three L2.1 questions |
| Worked examples, then faded examples | Strong for beginners | Sweller's cognitive load theory (Sweller 1988, Cognitive Science 12). Renkl and Atkinson on fading | Novices learn more from studying solved problems than from solving cold. The benefit fades as skill grows, so steps are removed one at a time | The RM100 ticket worked line by line, then the same with RM5 coupons and a blank for the price, then a third with only the question |
| Dual coding (words plus a picture that carries the mechanism) | Strong when the picture does work | Paivio's dual coding theory. Mayer, Multimedia Learning (multimedia, coherence and contiguity principles) | People learn more from words plus a relevant picture than from words alone. Decorative pictures and extra detail hurt | One picture per part: the ticket, the seesaw, the resale stall, the money-flow map, the dial board. Labels sit on the picture, not in a legend |
| Concrete examples | Strong | Dunlosky et al. 2013 discussion. Weinstein, Madan and Sumeracki 2018, "Teaching the science of learning" | Abstract ideas stick when tied to cases | Every rule shown in ringgit or dollars first, percent second |
| Analogies, with their limits stated | Moderate to strong | Gentner 1983, structure-mapping theory. Richland and Simms 2015 on analogy in teaching | An analogy transfers structure. It misleads where the structures differ unless the teacher says where it breaks | One anchor analogy for the whole chapter (B2), with a "where it breaks" box |
| Prediction before reveal (pretesting) | Moderate to strong | Richland, Kornell and Kao 2009, Journal of Experimental Psychology: Applied. Kornell, Hays and Bjork 2009 | A wrong guess before the answer still improves later recall of the answer | Each part opens with a guess question (the curiosity questions in section I) |
| Refutation text (state the myth, say why it is tempting, then correct it) | Moderate to strong for misconceptions | Tippett 2010, International Journal of Science and Mathematics Education. Guzzetti et al. 1993 meta-analysis | Plain correction often fails. Naming the myth and explaining why it feels true works better | Myth boxes: "Government bonds cannot lose money", "Yields up means the government is going broke", "Foreigners own our debt" |
| Elaborative interrogation and self-explanation ("why is that true?") | Moderate | Dunlosky et al. 2013 (moderate utility) | Helps when the reader has some prior knowledge | "Explain to a friend why the price fell" prompts after the seesaw |
| Interleaving (mixing problem types) | Moderate | Dunlosky et al. 2013 (moderate). Rohrer and Taylor 2007 (maths) | Mixed practice helps the reader choose the right tool | The end quiz mixes price, risk, gauge and headline questions |
| Story and characters | Moderate | Willingham 2004, "The privileged status of story", American Educator | Stories are remembered better than expository text of the same content | Three made-up households (section E) appear in every part. One ticket travels from auction to EPF to a foreign fund and back |
| Chunking and segmenting | Strong for working memory limits | Miller 1956. Cowan 2001 (about 4 chunks). Mayer's segmenting principle | Working memory holds about four chunks. Short segments with one idea each help | About 12 short parts, one idea each, about 300 to 600 words, one new term per paragraph |
| Mnemonics (acronyms, keyword method) | Weak for understanding, useful for a short list | Dunlosky et al. 2013 rated the keyword mnemonic low utility | Good for recalling a checklist, not for building a model | One mnemonic only: SCALES for the headline filter (section F) |
| Learning styles (visual, auditory, kinesthetic matching) | Not supported | Pashler, McDaniel, Rohrer and Bjork 2008, Psychological Science in the Public Interest 9(3) | No credible test found that matching teaching to a preferred style improves learning | Named once as a myth in the "how to learn this" box. Everyone gets words plus pictures |
| Highlighting and underlining | Weak | Dunlosky et al. 2013 (low utility) | Feels productive, adds little | The box tells readers to close the page and answer instead |
| Rereading | Weak | Dunlosky et al. 2013 (low utility). Roediger and Karpicke 2006 | Raises confidence more than memory (see the 40% vs 61% result) | Same box: one read, then quiz |
| Summarization | Weak to moderate | Dunlosky et al. 2013 (low utility, depends on training) | Helps only readers already trained to summarise | "Say it back in one sentence" is used only at the end |
| Sleep, exercise, breaks | Strong for memory in general, out of scope | General sleep and memory literature (not graded here) | Real but not a page design tool | One line in the box: "Stop at a stop box and sleep on it" |

Verdict on H2: partly true. The methods that work are not exotic "biohacks". They are quizzing, spacing, worked examples, pictures that carry the mechanism, concrete numbers, one analogy with stated limits, guess-first questions and myth boxes. Several popular "biohacks" (learning styles, highlighting, rereading) are weak or unsupported, and the chapter should say so in one short box.

Verdict on H1: plausible, to be tested. The current chapter already uses checks, stop boxes and one analogy (the locked-rent apartment), so it is not technique-free. Its problems are elsewhere: 1,851 words of plumbing before the household material, terms used before they are taught (repo, indirect bidders, convexity), and no prediction-first or worked-then-faded sequence. The court should run the cold-reader test (FRAME 3.10) on the draft.

### B2. One anchor analogy for the whole chapter: "the RM4 ticket"

**The analogy.** A bond is a ticket you buy for RM100. It pays you RM4 every year, and on a fixed end date the issuer buys it back for RM100. You can keep it to the end, or resell it to someone else on a resale market, like reselling a ticket on a second-hand app.

Why a ticket, not the current apartment: an 18-year-old has bought and resold tickets, vouchers or used phones. Few own a rented-out apartment. A ticket also carries the resale market, which the owner asked for, and a dealer who buys low and sells high.

**Carry test: the analogy at each part of the chapter**
| Idea | In the ticket world | Holds? |
|---|---|---|
| Face value, coupon, maturity | RM100 ticket, RM4 a year, bought back on the end date | Yes |
| Price and yield move opposite | New tickets pay RM5. Nobody pays RM100 for your RM4 ticket. With 10 years left it sells for about RM92.28 (model, scratchpad gauge_math.py). If new tickets pay RM3, yours sells for about RM108.53 | Yes |
| Duration (longer swings more) | A ticket with 30 years of RM4 left loses about 15.4% when new tickets pay RM5. A 2-year ticket loses about 1.9% (model) | Yes, the more years of "too little" you sell, the bigger the discount |
| Pull to par | As the end date nears, the price drifts back to RM100, because the buy-back is close | Holds, but unlike a concert ticket (see breaks) |
| Secondary market and dealers | A shop on the resale app buys at RM99.50 and sells at RM99.60. The gap is its fee (bid and ask spread) | Yes |
| Liquidity | A popular ticket sells in seconds at a fair price. A rare one may need a big discount | Yes |
| Yield to maturity | Buy a RM4 ticket with 8 years left for RM95: you get RM4 a year plus a RM5 gain at the end, about 4.77% a year in total (model) | Yes |
| Credit risk | The issuer might close down and never buy the ticket back | Yes |
| Inflation | RM4 buys less nasi lemak every year if prices rise faster than expected | Yes |
| Currency | A ticket priced in US dollars: you win or lose on the exchange rate too | Yes |
| Funds and EPF | EPF holds a giant drawer of tickets for you. You own a slice of the drawer, not a ticket | Yes, with a note that your slice's value moves daily even if you never see it |

**Where it breaks (say so in a box)**
1. Concert tickets usually become worthless after the event. A bond ticket ends with a RM100 buy-back. The chapter must say "a ticket the issuer promises to buy back".
2. Resale ticket prices swing on hype and scarcity. Bond prices swing mainly on what new tickets pay (interest rates) and on trust in the issuer. Hype exists in bonds but is not the main driver.
3. A ticket buyer is a customer. A bond buyer is a lender: the issuer owes them. That is why the government cares who holds its tickets.
4. Sukuk (Islamic bonds, about half of Malaysian government paper as GII) are not loans. The holder owns a share in an asset or its rent. The ticket picture still works for price and resale, but the "loan" label does not. Malaysia needs its own one-line note.
5. Bond prices are less visible than app prices. Most trading is between dealers over the counter, not on a public screen. Retail buyers often see only a quote.
6. A central bank can buy tickets by creating new money (Fed, Bank of England 2022). No ticket market has a buyer like that. This goes in a "go deeper" box.
7. The resale price matters only if you sell. A household that never sells (holds to the end) gets the RM4s and the RM100 regardless, default aside. The analogy can wrongly suggest every price move is a loss.

Pass: the analogy carries 11 of 11 core ideas tested and breaks in 7 named places, each with a fix.

---

## C. The secondary market: how a bond is resold (Q1a)

### C1. Primary and secondary in one picture
- Primary market: the first sale. The government sells new bonds at an auction (US Treasury auctions, Bank Negara's MGS and GII auctions). Money goes from buyers to the government.
- Secondary market: every sale after that. One investor sells to another, usually through a dealer. The government gets nothing from these trades. It only watches the price, because the price tells it what its next auction will cost.
- Picture for the chapter: a ticket booth (primary) on the left, and a busy resale stall (secondary) on the right, with a dealer in the middle holding two price boards, "I buy at" and "I sell at".

### C2. How a resale works
1. You want to sell. You call (or click) a dealer: a bank's trading desk or a broker.
2. The dealer quotes two prices: the bid (what it pays you) and the ask (what it charges a buyer). The gap is the bid and ask spread, the dealer's fee for standing ready. Worked example (model): bid RM99.50, ask RM99.60 per RM100. Buying and then selling RM10,000 of face value costs RM10, about 0.10%.
3. Most bond trading is over the counter (dealer to client or dealer to dealer), not on an exchange screen. Retail buyers see a quote, not the whole order book.
4. The price you see is usually the "clean price". The buyer also pays the seller the coupon earned since the last payment ("accrued interest"). One line in the chapter is enough.
5. Settlement: the bond moves to the buyer's account and cash moves to the seller, normally one business day later for US Treasuries.

### C3. Who trades
| Trader | US Treasuries | Malaysian government bonds (MGS and GII) |
|---|---|---|
| Dealers (market makers) | 25 primary dealers on the New York Fed list of 16 Oct 2026 (R6B-43). They must bid at auctions and quote prices | 20 principal dealers in 2025, including 7 Islamic principal dealers, appointed by Bank Negara. They bid at auctions and quote two-way prices (BNM Bond Market Report 2025) |
| Banks | Hold Treasuries as liquid reserves. 6.9% of Treasuries at end 2025 (Z.1, R6B-07) | 42.9% of resident-held government securities at end 2025, about 33.7% of the total if the 42.9% is a share of resident holdings (computed, see note) |
| Pension funds | US pensions and insurers about 6% of Treasuries in 2025 (Z.1) | Pension funds (EPF is the largest) 41.6% of resident holdings, about 32.7% of the total (computed) |
| Insurers | Inside the 6% above | 7.9% of resident holdings |
| Funds | Money funds 12.4%, mutual funds and ETFs 8.4% of Treasuries (end 2025, Z.1, R6B) | Asset managers 3.4% of resident holdings |
| Foreigners | 32.5% of Treasuries (end 2025, Z.1). $9.33T in August 2026 (TIC) | 21.5% of all government securities (RM279.2B, end 2025). Foreign central banks and governments are about 33.5% of that, global asset managers 31.4%, pensions and insurers 17.6%, banks, hedge funds and macro funds 17.5% |
| Central bank | Fed 12.7% (Z.1 basis, end 2025) | Bank Negara 1.3% of resident holdings |
| Individuals (retail) | Inside a residual "households and hedge funds" of about 9.5% (rough) | Inside "others" (corporates, individuals and agencies), 2.9% of resident holdings |
Note: the BNM report says pension funds and banks held "41.6% and 42.9% of outstanding government securities". Because the resident shares listed (41.6, 42.9, 7.9, 3.4, 1.3, 2.9) add to 100%, they are shares of resident holdings, and the total-market shares are computed by multiplying by 78.5%. The court should confirm against BNM's Monthly Highlights table.

### C4. Price and yield on resale, and yield to maturity in plain words
- The resale price moves so that the buyer earns today's going rate. RM100 ticket paying RM4 with 10 years left: if new tickets pay RM5, the resale price is about RM92.28. If new tickets pay RM3, about RM108.53 (model, annual coupons).
- Yield to maturity, in plain words: "the total return per year if you buy at today's price, keep every coupon and hold to the end". Example: buy the RM4 ticket with 8 years left for RM95. You get RM4 a year plus RM5 extra at the end. That works out to about 4.77% a year (model). The simple "current yield" (RM4 / RM95) is 4.21%, which ignores the RM5 gain.
- Rule of thumb, labelled as an approximation: price change is about minus duration times the yield change. A 10-year ticket's duration is about 8, so a 1 point rise in yields cuts its price by about 8%.

### C5. How much trades in a day
| Market | Daily trading | Date | Source |
|---|---|---|---|
| US Treasuries | about $1.21T a day, up 12.1% | January to July 2026 average | SIFMA statistics (R6B-44) |
| Malaysian government bonds (all government paper plus some corporate) | RM6.2B a day, from RM3.8B in 2024. MGS RM3.4B, GII RM2.8B. MGS plus GII are 87% of turnover | 2025 average | BNM Bond Market Report 2025 (Bond Market Sub-Committee, BNM data) |
| Comparison | RM6.2B is about US$1.5B at 4.08 ringgit per dollar, so the US market trades roughly 800 times more each day (computed, dates differ) | | |

### C6. Liquidity in stress: when even the safest bonds jam
- March 2020: indicative bid and ask spreads on the 10-year Treasury widened to about 6 basis points at the peak and fell back to about 2 by early April. Off-the-run (older) issues were much wider (Federal Reserve Financial Stability Report, May 2020). The Fed bought $1.27T of Treasuries in five weeks (R6B-27).
- April 2025: after the tariff announcements, bid and ask spreads on less liquid corporate bonds roughly doubled to about 0.2 percentage points (Apollo analysis via Bloomberg, reported by Treasury and Risk, 16 April 2025).
- Teaching point: the spread is the price of being able to leave. It is small in calm years and jumps exactly when everyone wants out.

### C7. How an ordinary person can buy or sell
**Malaysia**
| Route | What it is | Minimum and cost (sourced where possible) | Can you resell? | Notes |
|---|---|---|---|---|
| EPF (KWSP) | The route almost every worker already uses. 44.7% of EPF's RM1.41T was in fixed income at end 2025, mostly MGS (about RM630B, computed) | Automatic through salary contributions | Not directly. You own a share of the fund | Dividend 6.15% for 2025. Fixed income earned 4.3% and gave 33% of income (EPF via Bernama, 28 Feb 2026) |
| Bond and sukuk unit trusts | Funds that hold MGS, GII and corporate bonds | Fund-specific minimums and sales charges. Fixed income funds were 10.40% of unit trust NAV (RM55.95B of RM537.91B) in Q3 2021, the latest breakdown found. Unit trust NAV was RM546.08B at end 2024 | Yes, redeem units with the fund at the daily price | Price moves daily with bond yields |
| Seasoned corporate bonds and sukuk | Bonds first sold to institutions, later opened to retail under the SC's Guidelines on Seasoned Corporate Bonds and Sukuk (April 2018) | From about RM1,000 per the SC framework. Bought through eligible distributors (banks and platforms listed on BIX Malaysia) | Yes, through the distributor, at a quoted price that "could be higher or lower" than you paid (BIX, 7 Sep 2026) | In 2021 about 400 investors had traded seasoned bonds over two years, RM10M turnover (The Edge, 2021). Thin market |
| Exchange-traded bonds and sukuk (ETBS) on Bursa Malaysia | Bonds listed and traded like shares, since 2013. First listing DanaInfra, January 2013 | Around RM1,000 to start (several sources). Usual share-trading costs (brokerage, clearing fee, stamp duty) apply. Exact ETBS fee schedule not found | Yes, on Bursa through a stockbroker | "Trading activities are scant" (The Edge, 2021). Liquidity risk is the main cost |
| Retail government sukuk | Sukuk Prihatin (2020): two-year, 2% a year, paid quarterly, offered online through banks. Minimum RM500, multiples of RM100, citizens 18 and over. Target RM500M, plus RM166M more after demand | One-off issue, matured 2022. No current retail government sukuk found in this search | No, held to maturity | A sign that direct retail government paper in Malaysia is occasional, not standing |
| Direct MGS or GII | Standard primary lots are RM10M for government paper (The Edge, 2021). Private banks sell odd lots from about RM250,000 to wealthy clients | Out of reach for most | Yes, via the bank | The BIX "how to buy" guide (2026) lists no separate retail route for government bonds |
| US Treasuries from Malaysia | Through a broker that offers foreign bonds | Broker fees plus the cost of changing ringgit to dollars, plus currency risk | Yes | Bank Negara's foreign exchange policy: a resident with no domestic ringgit borrowing may invest any amount abroad. A resident with domestic ringgit borrowing may invest up to RM1M a year from ringgit (bank summaries of the FEP notices). Which loans count as "domestic ringgit borrowing" must be checked on the current BNM notice |

**United States**
| Route | Minimum and cost | Resale |
|---|---|---|
| TreasuryDirect (buy at auction from the Treasury) | $100 minimum, in $100 steps. No fees | Cannot sell inside TreasuryDirect. Transfer to a bank or broker first, after a 45-day hold from issue. 4-week bills cannot be transferred at all (TreasuryDirect user guide) |
| Brokerage account (new issue or secondary) | Many brokers sell Treasuries online. Commissions and markups vary by broker, check each | Sell any day at the dealer's bid |
| Bond ETFs and mutual funds | Two of the largest broad bond ETFs (iShares AGG and Vanguard BND) charge 0.03% a year (issuer data via comparison sites, 2026) | Sell on the exchange any trading day. The fund never matures, so there is no "hold to the end" |
| Savings bonds (I bonds, EE bonds) | Bought in TreasuryDirect | Cannot be resold to anyone. Redeem with the Treasury instead |
| Money market funds | Mostly hold Treasury bills and repo | Redeem daily |
| 401(k) and pensions | Through target-date and bond funds | Inside the plan |

Pass test (FRAME 3.4.7): a reader can trace a ticket from auction to their EPF statement (C3 and section G) and knows the three cheapest legal routes in Malaysia (EPF, a bond or sukuk unit trust, a seasoned bond or ETBS from about RM1,000) and in the US (TreasuryDirect, a low-cost bond ETF, a broker).

---

## D. The normal person's lens (Q1b, H4)

### D1. Every way bonds touch an ordinary person
"If yields rise" means the 10-year government yield goes up. The last two columns answer the most useful question for an 18-year-old: does it help or hurt me?

| # | Touch point | Mechanism in one line | Malaysia number | US number | If yields rise: helps or hurts? |
|---|---|---|---|---|---|
| 1 | Retirement savings | Pension funds hold government bonds to pay you later | EPF: RM1.41T of investment assets, 44.7% fixed income, mostly MGS (end 2025). Fixed income earned 4.3%. 2025 dividend 6.15% (EPF via Bernama, 28 Feb 2026). Pension funds hold about a third of all government securities (computed from BNM) | Pensions and insurers about 6% of Treasuries, mutual funds and ETFs 8.4% (Z.1, end 2025). Many 401(k) plans hold bond funds | Hurts the value of bonds already held (paper loss), helps new money: every new ringgit EPF lends earns more. Young members gain over time, members near withdrawal feel the dip more |
| 2 | Bank deposits | Banks hold government bonds as safe, sellable assets. Deposit insurance covers you if a bank fails | Banks hold about a third of government securities (computed). PIDM covers RM250,000 per depositor per member bank, with separate cover for Islamic and conventional accounts (PIDM FAQ). PIDM says 97% of retail depositors are fully covered | FDIC covers $250,000. SVB (2023) failed after bond losses of about $15.1B. US banks carried $620B of unrealised losses at end 2022 (R6B-28) | Mostly neutral for an insured depositor. A risk for the bank, and for deposits above the limit |
| 3 | Fixed deposits and savings rates | FD rates follow the policy rate (OPR), not the 10-year bond | Maybank 12-month FD board rate 2.45% (page effective 19 Mar 2025). Promotional eFD rates 3.58% to 3.93% (to 31 Oct 2026) with RM5,000 minimums. OPR 2.75% since July 2025, held on 3 Sep 2026 | Money fund yields follow the Fed's rate. Interest on reserves 3.90% since 17 Sep 2026 (R6B-38) | Helps savers when the policy rate rises. A 10-year move alone changes little |
| 4 | Home loans | Malaysia: floating. Since 1 Aug 2022 new retail loans use a Standardised Base Rate that changes only when the OPR changes (BNM Reference Rate Framework, 2021). US: 30-year fixed, priced off the 10-year Treasury | RM400,000 over 35 years: about RM1,771 a month at 4.00%. One OPR step of 0.25 point adds about RM60 a month. One full point adds about RM248 (model, illustrative rate) | 30-year fixed 7.40% (Freddie Mac PMMS, 15 Oct 2026). $400,000 at 6.40% costs $2,502 a month, at 7.40% $2,770 (model, chapter) | Malaysia: the 10-year matters only through the OPR. US: hurts new buyers and refinancers directly. Existing fixed borrowers are protected |
| 5 | Car loans, student loans, cards | Fixed or administered rates | Hire purchase is mostly fixed rate, and the SBR framework does not apply to fixed-rate hire purchase (BNM RRF). PTPTN charges a fixed fee | Auto loans fixed at signing. Federal student loans fixed per year. Cards follow the Fed's rate | Little effect on loans already signed |
| 6 | Jobs and company borrowing | Companies borrow at the government yield plus a margin. Dearer money slows hiring | Corporate bonds are 42.4% of Malaysia's RM2.3T bond market (BNM Bond Market Report 2025) | Company bond yields are priced as a spread over Treasuries | Hurts slowly, through fewer projects and jobs if high yields last |
| 7 | The currency | Foreigners own about a fifth of Malaysian government bonds. When they sell, they sell ringgit too | Foreign share 21.5% (RM279.2B, end 2025). 2022: US 10-year rose from 1.52% to 3.88% and the ringgit fell about 12% (4.17 to 4.75 per dollar, Fed H.10 noon rates). 2026: US 10-year rose 1.12 points to 5.31% (2 Jan to 5 Oct) but the ringgit held between 3.89 and 4.15 and was about 4.08 in October | The dollar is the other side | Can hurt through import prices (fuel, phones, food) and overseas study costs. 2026 shows it is not automatic |
| 8 | Prices and inflation | A fixed coupon loses buying power when inflation rises | Inflation 1.8% (July 2026). 10-year MGS about 3.95% (October 2026), so the real yield is about 2.1 points (computed) | 10-year inflation-linked Treasury yield 2.64% (22 Oct 2026, H.15) | Rising inflation hurts holders of fixed coupons. A positive real yield means savers are being paid for waiting |
| 9 | Taxes and public services | Government interest bills compete with schools, health and subsidies | Debt service charges RM53.7B (2025), RM57.3B (2026 estimate, 15.8% of revenue), RM61.01B (2027 projection, about 16% of revenue of RM380.82B). Federal debt RM1.38T, 98.8% domestic, 63.1% of GDP (end June 2026, MOF Fiscal Outlook 2027) | Net interest $1,051.8B in FY2026, more than defence (chapter figure) | Hurts slowly: higher yields raise the bill as old debt is refinanced |
| 10 | Insurance and takaful | Insurers hold bonds to pay future claims | Insurers 7.9% of resident-held government securities (BNM, end 2025) | Life insurers and annuities hold long bonds | Helps new policy pricing, hurts insurers' existing bond values |
| 11 | Islamic savings | Islamic funds, takaful and Tabung Haji hold sukuk | GII is about RM625B of RM1.309T government paper (March 2026, BIX via R6B). Foreigners hold 8.4% of GII against 33.7% of MGS (end 2025) | Not applicable | Same price and yield seesaw as conventional bonds |
| 12 | The secondary market itself | A person can own bonds directly or through funds | Seasoned bonds and ETBS from about RM1,000. Sukuk Prihatin 2020 from RM500 (one-off) | TreasuryDirect from $100. Bond ETFs at 0.03% a year | New buyers get higher yields, sellers of old bonds take the price hit |

The single most useful insight: the same rise in yields hurts people who already hold long bonds or need to borrow now, and helps people who will save for years. An 18-year-old with an EPF account is mostly on the winning side of higher yields over a working life, even while headlines call it a crash.

### D2. Hidden risks a normal person carries
| Risk | How it reaches a person | Real episode with a number | What protects them |
|---|---|---|---|
| Interest-rate (price) risk | The price of bonds you already own, or your bond fund, falls when yields rise | 2022: the Bloomberg US Aggregate bond index returned -13.01%, its worst year since it started in 1976. The prior worst was -2.92% in 1994 (index data in fund factsheets and Bloomberg index reports). A 10-year Treasury bought at par in 2021 lost about 24% in price by 2023, about 21% with coupons (model, R6B) | Holding a government bond to maturity (you get every coupon and the face value). Shorter bonds (a 2-year swings about 1.9% per point, a 30-year about 15%) |
| Inflation risk | Fixed coupons buy less | A 10-year Treasury bought at the record low 0.52% (August 2020) paid about half a percent while US inflation peaked at 9.1% (June 2022) | Inflation-linked bonds (US TIPS). A positive real yield. Short maturities that reset quickly |
| Default or credit risk | The issuer cannot pay | Very low for a government borrowing in its own currency: Malaysia's federal debt is 98.8% domestic (end June 2026). Higher for companies and for governments that borrow in a foreign currency (L2.4) | Diversified funds, ratings, government over corporate |
| Liquidity risk | You cannot sell fast at a fair price | ETBS trading "scant" (The Edge, 2021). March 2020: even Treasury spreads widened (Fed FSR) | Funds that redeem daily, government bonds over small corporate issues, an emergency cash buffer so you are never a forced seller |
| Currency risk | A foreign bond pays in another currency | A Malaysian holding US Treasuries in 2026 earned about 5% in dollars, but the ringgit moved between 3.89 and 4.15 per dollar in the same year (Fed H.10) | Matching the currency of savings to the currency of future spending |
| Reinvestment risk | When yields fall, maturing money must be reinvested at lower rates | US 10-year yield 4.98% on 19 Oct 2023, 4.24% on 23 Oct 2024, 4.01% on 23 Oct 2025 (H.15). Someone whose 5% bond matured in 2025 had to reinvest about a point lower | Longer bonds lock rates in. This is the mirror of price risk |
| Concentration and linkage | One fund holds most of a nation's savings, and that fund holds much of the nation's debt. Banks hold their own government's bonds | EPF plus banks hold about two thirds of Malaysian government securities (computed from BNM, end 2025) | A government that borrows in its own currency, a central bank, deposit insurance. This is a system risk more than a personal one |
| Forced-seller risk | Leverage or a run forces a sale at the worst price | UK, September 2022: the 30-year gilt yield rose 67 basis points in one day and swung 127 basis points intraday on 28 September. LDI pension funds faced margin calls and the Bank of England bought £19.3bn of gilts (BoE letter to the Treasury Committee, 5 Oct 2022, and BoE, 12 Jan 2023) | Not borrowing to hold bonds. Keeping cash for emergencies |

### D3. Overcorrection guard: what bonds protect
The chapter must not leave the reader thinking bonds are dangerous.
- 2008: the Bloomberg Barclays US Aggregate returned +5.24% while the S&P 500 lost 37.0% (Vanguard and other fund filings for 2008). A 10-year Treasury bought at the 2008 high yield rose about 20% in price (model, R6B). Bonds cushioned portfolios when shares crashed.
- EPF's fixed income earned 4.3% in 2025 and gave a third of its income (EPF, 28 Feb 2026). Bonds are a steady engine of Malaysian retirement income.
- Deposits are safer because banks hold government bonds they can sell or pledge, and PIDM and the FDIC stand behind ordinary depositors.
- 2022 was the exception that proves the rule: inflation hit both shares and bonds at once. When the shock is a recession, bonds usually rise. When the shock is inflation, both can fall.
- Higher yields today mean higher income tomorrow. The 2022 loss bought a 10-year real yield of about 2.6 to 2.8 points in October 2026, against about minus 1 point at the end of 2021 (H.15 inflation-indexed 10-year: -1.04% on 31 Dec 2021, 2.64% on 22 Oct 2026).

Verdict on H4: true with a guard. Ordinary people do carry bond risk, mostly price risk inside funds and EPF, inflation risk and, in Malaysia, currency risk through import prices. But the risk to a person who holds to maturity, keeps an emergency buffer and saves for decades is mostly timing, not loss, and bonds protected portfolios in recessions such as 2008.

---

## E. A personal gauge: the monthly bond weather check (H6)

General education, not advice. The gauge asks questions. It never says buy or sell. It takes about 10 minutes once a month. "Look closer if" levels are a model chosen by this lane to prompt a question, not a signal to act. They should be tested and may be changed by the court.

### E1. Six public dials
| # | Dial | Where to look (free) | Reading, October 2026 | Question it asks | Look closer if (model) |
|---|---|---|---|---|---|
| 1 | 10-year government yield, US and Malaysia, and its change over 12 months | US Treasury daily yield curve page. BIX Malaysia or BNM for MGS | US 4.96% (22 Oct 2026), up 0.95 point from 4.01% a year earlier (H.15). MGS 10-year about 3.95% (Oct 2026, Kenanga via press) | Is the price of long-term money rising or falling, and how fast? | It moved more than 1 point in 12 months |
| 2 | Inflation and the real yield (10-year minus inflation, or the US inflation-linked yield) | DOSM (Malaysia CPI). US Treasury real yield curve | Malaysia CPI 1.8% (July 2026), real 10-year about 2.1 points (computed). US 10-year inflation-linked 2.64% | Are savers paid for waiting, after prices rise? | The real yield is below zero |
| 3 | Policy rate: OPR and the Fed's rate | BNM Monetary Policy Statements (next meeting November 2026). Federal Reserve statements | OPR 2.75%, unchanged since July 2025 (held 3 Sep 2026). Fed hiked in September 2026, interest on reserves 3.90% | Will my floating loan and my FD rate change? | The OPR changed, or the gap between the 10-year and the policy rate turned negative (curve inverted) |
| 4 | Ringgit per US dollar | BNM exchange rates page | About 4.08 (16 Oct 2026, Fed H.10). Range in 2026: 3.89 to 4.15 | Will imports, fuel, overseas fees or a US-dollar bond cost me more? | The ringgit moved more than 5% in 3 months |
| 5 | Foreign holdings of Malaysian government bonds | BNM Monthly Highlights and Statistics | 21.5% of government securities (end 2025). Monthly flows swing by a few RM billion (July 2026 net sales RM5.6B, Kenanga) | Is foreign money leaving faster than locals can absorb? | The share fell more than 1 point in a quarter and the ringgit fell at the same time |
| 6 | Auction demand | US: TreasuryDirect auction results (bid-to-cover, dealer share). Malaysia: BNM auction results via BIX | US 10-year on 7 Oct 2026: cover 2.77, dealers kept 2.5% (R6B-11) | Are buyers still showing up at the price? | Cover at its lowest in a year, or dealers left holding a large share |

### E2. Five self-check questions (the part that makes it personal)
1. My loans: which are fixed and which float? For each floating loan, how much does my monthly payment change for one OPR step of 0.25 point? (RM400,000 over 35 years: about RM60.)
2. My time horizon: when will I need each pot of savings? Money needed within 2 years should not depend on a long bond's price.
3. What my funds hold: does my unit trust, ETF or pension hold short or long bonds, government or corporate, ringgit or foreign currency? (Duration of about 6 means about 6% down for a 1 point rise in yields.)
4. My currency match: do I save in the currency I will spend in (school fees abroad, travel, retirement)?
5. Am I a forced seller? Do I have an emergency buffer so I never sell a bond or fund at the worst moment?

### E3. Test on three made-up households
| | Aisyah, 23, fresh graduate in Kuala Lumpur (made up) | The Rahman family, Penang (made up) | Linda, 68, US retiree (made up) |
|---|---|---|---|
| Situation | First job, RM3,800 a month. EPF about RM15,000. RM5,000 in a 12-month FD. PTPTN loan and a fixed-rate car hire purchase. Hopes to do a master's abroad in 3 years | Floating home loan RM400,000 over 35 years at about 4.00% (SBR-linked, taken after August 2022). Combined EPF about RM250,000. RM20,000 in a bond and sukuk unit trust | $600,000 savings: $240,000 in a broad bond fund (duration about 6), $300,000 in shares, $60,000 in Treasury bills. Owns her home. Social Security income |
| Dials that matter most | 2 (inflation vs her FD), 3 (OPR sets her FD rate), 4 (ringgit, for study abroad) | 3 (OPR sets the loan payment), 5 and 4 (ringgit and import prices), 1 for the unit trust | 1 (10-year sets her fund's price), 2 (real yield and Social Security's inflation adjustment), 3 (T-bill income) |
| What the gauge shows in October 2026 | FD 2.45% minus inflation 1.8% leaves about RM33 a year of real gain on RM5,000. EPF lends new money at higher yields than in 2020 to 2021. No floating loans | Their payment moves only with the OPR: about RM60 a month per 0.25 step, about RM248 per full point. A 1 point rise in yields would cut the unit trust by about 5% (about RM1,000, paper loss, duration assumed 5) | A 1 point rise in yields would cut the bond fund by about $14,400 before coupons. But the real yield of 2.64% means new money earns well above inflation. Her T-bills reset within weeks |
| Questions the gauge prompts (not actions) | Is my FD beating inflation? If the ringgit fell 10% before I study abroad, what would that do to my plan? Do I understand that EPF's bond prices can dip without hurting me if I do not withdraw for decades? | Could our budget take two OPR steps (about RM120 a month)? When do we need the unit trust money? Does the fund hold mostly MGS and GII, or corporate bonds? | Will I need to sell bonds within 2 years? Does my fund's duration fit that? What share of my income is fixed in dollars and what share rises with inflation? |
| Is a "bond crash" headline about her or them? | Mostly no. Her exposure runs through EPF over decades | Partly. Only if it moves the OPR or the ringgit | Yes. Her fund price moves with the 10-year every day |

Pass: the gauge gives three different answers. Aisyah watches inflation, the OPR and the ringgit. The Rahman family watches the OPR. Linda watches the 10-year and the real yield. Every dial has a free public source.

---

## F. The headline filter: weigh it on the SCALES (Q1c, H5)

One mnemonic, because a short checklist is the one place mnemonics help (section B).

| Letter | Question | Why it matters |
|---|---|---|
| S | Size: compared with what? Per GDP, per revenue, per the total stock, per person | RM5.6B sounds big until you see it is 0.43% of RM1.309T |
| C | Change or level? How many basis points, over what period? | "Yields soar" can mean 0.05 point in a day or 1 point in a year |
| A | Adjusted? Nominal or real? | Nominal debt sets a "record" almost every year by arithmetic. The real yield tells you if savers are paid |
| L | Long view: since when? Is the base date chosen to look dramatic? | "Highest since 2007" is also "normal for 1977 to 2007" |
| E | Exposure: who holds it, in what currency, and what does it do to me? | A US yield jump changes a US mortgage directly, a Malaysian floating loan only through the OPR |
| S | Source and stake: who says it, what do they gain from me believing it, and what is left out? | Clicks, a product to sell, a political side, or an honest warning |

The guard against cynicism: real alarms leave tracks. Take a headline seriously when one or more of these is present: forced sellers (leverage, margin calls, a run on deposits), a central bank emergency operation, bid and ask spreads jumping, auctions failing or dealers left with most of an auction, and the currency and the bonds falling together. The UK in 2022 and SVB in 2023 had several of these at once.

### F1. Three real headlines, plus one alarm that was right
| Headline | SCALES applied | Verdict |
|---|---|---|
| "Why Foreign Investors Disposed RM5.6 Billion In Malaysian Govt Bonds In July" (Business Today, 10 Aug 2026, citing Kenanga) | S: 0.43% of RM1.309T of MGS plus GII. C: one month. The next month brought about RM15.9B of foreign inflows into Malaysian bonds (Kenanga via Business Today, 8 Oct 2026). L: the foreign share was 24.4% in early 2020 and 21.6% at end 2025 (BNM), a slow drift, not a flight. E: the ringgit was 4.09 per dollar on 1 July and 4.08 on 31 July (Fed H.10). No change for a household. S: a research house report, factual, blamed external factors (US-Iran tension, oil, US yields) | Accurate, missing scale. No alarm tracks |
| "30-year Treasury bond yield rises to highest level since 2007" (Bloomberg data via The Korea Herald business desk, 18 Aug 2026. H.15 close 5.31% on 17 Aug 2026) | S: 5.31% against a 2007 high close of 5.35% (H.15, 12 June 2007. The Herald quotes 5.44%, likely intraday or another source). C: up 0.45 point since 2 January 2026 (4.86%). A: the 10-year real yield was about 2.6 to 2.8 points, a real reward. L: the 30-year averaged above 5.31% in 26 of the 31 years from 1977 to 2007 (H.15, computed). E: the US 30-year mortgage rate reached 7.40% by October. Each point costs a $400,000 borrower about $268 a month. For a Malaysian household the ringgit held near 4.08. S: a wire report, factual | Accurate, and it got worse: the 30-year closed at 5.67% on 7 Oct 2026, the highest since 2002. The alarm about long rates was right for US borrowers. "Since 2007" made a return to pre-2008 normal sound unprecedented |
| April 2025: "China dumping Treasuries" and "the bond market forced the tariff pause" (commentary and rumours reported by BNP Paribas Asset Management and others, April 2025) | S and C: the 10-year rose from 4.01% (4 Apr) to 4.48% (11 Apr), 0.47 point in a week. The 30-year rose from 4.41% to 4.86% (H.15). A 90-day pause on most tariffs came on 9 April, and the President said people were getting "yippy" about bonds. E: the ringgit moved from 4.45 to 4.49 and back to 4.42 (H.10). S: China's selling was never shown. UniSuper's head of fixed interest pointed to forced unwinding by hedge funds. TIC data later showed China's holdings falling gradually, $109B in the year to August 2026 (R6B-09) | Half right. The bond alarm was real (policy changed within days, and spreads on less liquid bonds doubled). The named cause ("China dumps") was unproven |
| The alarm that was right: "Bank of England intervenes to end bond market panic" (interactive investor, 28 Sep 2022) | Tracks present: forced sellers (LDI pension funds facing negative net asset values), a central bank emergency operation (£19.3bn of gilts bought from 28 Sep to 14 Oct 2022), spreads and ranges exploding (the 30-year gilt yield rose 67 basis points in one day and swung 127 basis points on 28 September, more than the annual range in all but 4 of the previous 27 years. BoE letter, 5 Oct 2022) | Accurate and urgent. The filter flags it as a real alarm, not rage-bait. SVB in March 2023 is the second example: deposits above the insurance limit plus long bonds bought at low yields |

Verdict on H5: partly true. Of the three 2025 to 2026 headlines, none was false. Two were accurate but missing scale or a fair base date, and one named an unproven cause for a real event. The main problem is missing context, not lies. "Rage-bait" fits the framing (the cause, the base date, the size word) more than the facts. Real alarms exist and leave tracks, so the filter teaches checking, not dismissing.

---

## G. Ledger, light: four buyer cases

Two floors, as in Case 2 and L2.2. Upstairs: banks' reserve accounts at the central bank and the government's own account there (the Treasury General Account at the Fed, the government's account at Bank Negara). Downstairs: deposits and cash held by the public. Public money means downstairs deposits and cash.

| Case | Buyer side | Seller side | Banks and upstairs | Public money | Ringgit or dollar |
|---|---|---|---|---|---|
| 1. A person buys a new bond at auction (Sukuk Prihatin in 2020, or a US saver in TreasuryDirect) | Deposit falls by the price. Owns a new government bond | The government gets cash in its account at the central bank. Owes the bond | The person's bank loses reserves equal to the payment, which move up into the government's account | Falls, until the government spends it. When it spends (salaries, subsidies), deposits come back downstairs | No change |
| 2. A person buys from another person on the resale market (for example through a dealer, a seasoned bond distributor or Bursa ETBS) | Deposit falls, owns the bond | Deposit rises, no longer owns the bond. Gains or loses against what they paid | If the two banks differ, reserves move between them. The dealer earns the spread. The government is not involved | Only moves from one person to another. Nothing created or destroyed | No change |
| 3. A fund (EPF or a unit trust) buys a bond from a bank | The fund's deposit falls, it owns the bond | The bank's bond holding falls, and so does the deposit it owed the fund | If the fund banks at the same bank, the bank simply cancels the deposit against the bond. If at another bank, reserves move | Falls. A bank selling a security to a nonbank destroys a deposit, the mirror of a bank buying one, which creates a deposit (L2.2, Case 2) | No change |
| 4. A foreign fund sells Malaysian bonds and takes its money home | Buyer (say EPF or a local bank) pays ringgit and owns the bond. If EPF buys, its deposit moves to the foreign fund's custodian account. If a local bank buys, new ringgit deposits are created for the foreigner | The foreign fund receives ringgit, then sells them for dollars at a local bank | The local bank pays dollars from its foreign accounts and takes the ringgit deposit. If Bank Negara steps in to steady the ringgit, it sells dollars from reserves and receives ringgit, so banks' ringgit reserves at Bank Negara fall unless it adds them back | Resident ringgit deposits fall (if a resident nonbank bought) or stay level (if a bank bought) while ringgit leaves foreign hands. The sale itself does not change the government's debt | Ringgit weakens, or Bank Negara's dollar reserves fall, or yields rise until a local buyer steps in. Usually a mix of the three |

Final counterparty check: case 1, the government (upstairs). Case 2, another household (downstairs). Case 3, a bank (the deposit is extinguished). Case 4, a resident bank or nonbank buys the bond, and a resident bank or Bank Negara takes the ringgit for dollars.

Pass: for every actor the table says which balance changed and whether public money rose, fell or only moved.

---

## H. Sweep: the most-watched popular bond explainers

Reach read from the vidIQ YouTube search on 24 Oct 2026, plus Round 6's sweep (R6B section C1) where marked. Transcripts were not pulled. Claims are taken from titles, descriptions and chapter lists, and tested as T5 hypotheses.

| Explainer | Reach | Testable claim | Test | Verdict |
|---|---|---|---|---|
| Ray Dalio, "How The Economic Machine Works" (2013) | 131.8M views, 720K likes | Credit cycles drive the economy. Debt burdens become a crisis when debt service rises faster than incomes, and are eased by "beautiful deleveraging" (printing plus austerity plus restructuring) | Malaysia's debt service: 16% of revenue in 2025, 15.8% in 2026, about 16% in 2027 (MOF). US net interest above defence in FY2026 | Useful frame, not a bond explainer. The data show slowly rising interest burdens, not a spiral, in both countries in 2026 |
| Lock Stock Finance, "If You Don't Understand Bonds, You Don't Understand Money" (7 Aug 2025) | 2.97M views, 67K likes | The bond market is larger than the stock market. Covers primary and secondary markets | SIFMA: $160.7T of bonds against $157.8T of shares at end 2025 (R6B-01) | True but narrow. The gap is about 2% and flips with prices. One of the few popular videos that covers the secondary market |
| Explains 101, "Why Every Country Is in Debt? And Who Do They Owe?" (15 Mar 2025) | 2.69M views, 52K likes | Countries owe mostly bond holders, IMF and World Bank. Debt is not always dangerous | BNM: Malaysia's government debt is 98.8% domestic and 78.5% resident-held | Broadly right. Misses that who holds the debt and in what currency is what decides the danger (bridge to L2.4) |
| Andrei Jikh, "Every Bond Market In The World Is Breaking. China and Japan Are Dumping US Bonds" (26 May 2026) | 2.60M views, 50.6K likes | Foreign selling is breaking the US bond market | TIC: foreign holdings $9.33T in August 2026, near the $9.49T record. Japan down $171B Feb to Aug 2026, UK up $108B in a year (R6B-08, R6B-09) | Half true. Rising long yields were real. "Dumping" and "breaking" were not supported by holdings or auction data |
| FT Film on bond vigilantes and a debt "death spiral" (27 Mar 2025, R6B sweep) | 3.31M views | Bond vigilantes are back and debt risks a spiral | 10-year up 1.12 points in 2026 to 5.31%. UK 2022 rescue. Auctions clear (cover 2.77 on 7 Oct 2026) | Vigilantes real, spiral not in the data |
| Patrick Boyle, "US 30-year yields just hit 5.2%, the highest since July 2007" (29 May 2026, R6B sweep) | 1.69M views | Long yields at a 19-year high | H.15 | Confirmed for the date, then overtaken (5.67% on 7 Oct 2026) |
| Financial Faiz, "Unit Trust vs Bond vs Shares" (Malay, KAF Investment Bank collaboration, 24 Mar 2022) | 45K views | How Malaysians buy bonds (through funds and banks), bond risks, sukuk versus bonds | BIX and SC routes in C7 | Broadly right. Malaysian popular reach on bonds is under 1% of the global explainers. The gap is an opening for the chapter |
| Dr Adam Zubir, "Apa dia Bon dan Sukuk ni?" (Malay, 13 Sep 2023) | 17.8K views | Bonds are loans, sukuk are asset-backed Islamic certificates | Shariah structure of GII | Right in outline |

Schools, scoped (one line each, for the court):
- Official view (central banks, treasuries): government bonds in own currency are default-free in nominal terms. Price and inflation risk are real. Scope: written for stability, says little about household exposure.
- Post-Keynesian and MMT: a government that borrows in its own currency cannot be forced to default. Bonds are a policy choice that sets an interest rate floor. Scope: strong on solvency, weaker on inflation and currency limits for smaller economies like Malaysia.
- Hard money and Austrian: governments will inflate debts away, so long bonds are a trap ("financial repression"). Scope: right for 1945 to 1950s and 2021 to 2022 holders, wrong for 2008 and for 2026 buyers with positive real yields.
- Personal finance mainstream (60/40 portfolios): bonds cushion shares. Scope: right in 2008 (+5.24% vs -37.0%), wrong in 2022 when both fell.

Hypothesis table
| Claim | Who says it | Reach | School | How to test it |
|---|---|---|---|---|
| Bonds are bigger than stocks | Lock Stock Finance | 2.97M | Mainstream | SIFMA yearly totals |
| Foreigners are dumping and the market is breaking | Andrei Jikh | 2.60M | Hard money leaning | TIC holdings, auction cover, dealer share |
| Debt spiral is coming | FT Film, Dalio frame | 3.31M, 131.8M | Mainstream press, macro | Interest as share of revenue over time, average rate on debt versus new issue rates |
| Government bonds are risk-free | Textbooks | Khan Academy lessons 1.88M (R6B) | Official | 2022 index loss, 1979 to 1981 and 2021 to 2023 models |
| Bonds always rise when shares fall | 60/40 lore | not measured | Mainstream | 2008 versus 2022 |
| Sukuk are just bonds with another name | Malaysian forum lore | not measured | Popular | Shariah structure: ownership of an asset or its usufruct versus a loan |

