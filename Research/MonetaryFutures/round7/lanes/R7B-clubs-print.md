# R7B: the money clubs, printing power, Malaysia and the game board (Round 7, lane R7B)

Lane: R7B (framer's lanes D and E, plus light Data, Ledger and Sweep). Date: 2026-10-24. Tier: Standard. For the new Rulebook Level 2 chapter 4. General research, not personal financial advice.

## Pass checklist
- [ ] A. Clubs: membership, dates, what they do and cannot do, shares of output, people and trade
- [ ] B. G20 scorecard with verdict and the game theory reason
- [ ] C. Printing power matrix and ladder, three tests with real cases
- [ ] D. Malaysia as the outlier
- [ ] E. Game board: 5 to 7 games and the 5 curiosity questions
- [ ] F. Ledger, light: three balance-sheet walks
- [ ] G. Sweep: popular claims and schools
- [ ] H. Radiant map rays, bridge to Levels 1 and 2 (quoted), check questions
- [ ] I. Claims table and tripwires
- [ ] Data tables written to R7B-tables.json

(Work in progress. Sections are appended as they are finished.)

## Sources fetched this run (all on 2026-10-24)
World Bank WDI API (GDP, population, exports, CPI, reserves), BIS debt securities statistics API (WS_DEBT_SEC2_PUB), Chinn-Ito capital openness index 2023 edition, IMF COFER data brief (30 September 2026), G20 London communique (2 April 2009), BIS Basel Committee history page, Fed H.4.1 via DBnomics, US Treasury Debt to the Penny, ADB Asia Bond Monitor country summaries (September 2026), MOF Fiscal Outlook 2027 via The Vibes (10 October 2026), BNM release pages and press, LHDN guideline via search, vidIQ YouTube search. Scripts: scratchpad/scripts/clubs.py, fxbonds.py, rbtext.py. Tables: round7/lanes/R7B-tables.json.

Not opened (blocked or not found): g20.org (403), IMF eLibrary Article IV annex for Malaysia 2026 (403), the AREAER 2024 or 2025 regime count table (not found, the 2023 classification was read through a relay).

---

## Answers in one paragraph each (Level 1 headlines)

- **Clubs (Q2).** The G7 (1975, 7 countries, 44.5% of world output, 9.6% of people), the G10 (1962, really 11, 47.6% of output) and the G20 (1999, leaders from 2008, 19 countries plus the EU and the African Union, 86% of output with the EU, 79% of people with the EU and AU) are clubs, not governments. None has a treaty, a binding vote, its own money or a large permanent staff. They work through bodies they control: the IMF, the BIS committees, the Financial Stability Board and the OECD tax talks.
- **Playing around? (H8).** Partly true. The G20 delivered fast and big in 2008 to 2009 when every member feared the same collapse ($1.1 trillion package, the FSB, Basel III). It stalls in calm years and where it does not hold the levers: private creditors in debt relief (one private creditor joined the DSSI), Common Framework cases that took 2 to 5 years, a minimum tax diluted for US companies in January 2026, and a 2026 summit with one member (South Africa) shut out.
- **Who can print (Q2a, H7).** Printing power is a ladder, not a yes or no. Three tests: legal power to issue a currency, debt owed in that currency, and the market letting you print without a currency or inflation crisis. Only a handful pass all three with room to spare (the US most of all, then the euro area as a whole, Japan, the UK and other rich floaters). Euro members and dollarized countries fail the first test. Argentina, Turkey and Sri Lanka passed the first and failed the third.
- **Malaysia (Q2b, H9).** Outside all three clubs, but a rule-taker of their rules (Basel III, the 15% minimum tax from 2025). It sits on the third rung, near the top of it: own currency, 98.8% of federal debt at home in ringgit, Bank Negara holds only 3.8%, but foreigners hold about 21% of government bonds and its capital account is partly closed. It is typical of a class (small open economy with its own currency and a deep local bond market) and an outlier in four specific ways: the 1998 controls and 3.80 peg, the EPF as the biggest single holder, an Islamic share near half of government debt, and trade far bigger than its economy.
- **Game board (Q2c, H10).** Seven documented games explain a lot of what the clubs do and fail to do: coordination under a shared threat, free riding on debt relief, the prisoner's dilemma of devaluation and tariffs, the dollar as a focal point, self-insurance through reserves, the creditor run that decides who can print, and the tax race to the bottom. Game theory is a lens on incentives. It leaves out domestic politics, ideology, accident and plain error.

---

## A. The clubs

### A1. Who is in, and since when
| Club | Founded | Members | What started it | Status notes |
|---|---|---|---|---|
| G7 | 1975 (Rambouillet, six countries), Canada joined 1976 | US, Japan, Germany, UK, France, Italy, Canada. The EU attends | Oil shock and the end of fixed exchange rates | Russia joined in 1997 to 1998 (G8) and was suspended in 2014 after Crimea. Rotating presidency, no secretariat. Founding dates are standard history, T4, not re-fetched |
| G10 | 1962, when ten countries signed the IMF's General Arrangements to Borrow (GAB) | Belgium, Canada, France, Germany, Italy, Japan, Netherlands, Sweden, UK, US, plus Switzerland from 1964. So 11 countries | A standing credit line to the IMF | The GAB itself lapsed in December 2018 (T4, to verify on imf.org). The name lives on in BIS central bank meetings. Switzerland: GAB participant 1964, full participant 1983 (T4) |
| G20 | 1999 (finance ministers and central bank governors), leaders' summits from November 2008 | Argentina, Australia, Brazil, Canada, China, France, Germany, India, Indonesia, Italy, Japan, Korea, Mexico, Russia, Saudi Arabia, South Africa, Turkey, UK, US (19 countries) plus the EU and, from September 2023 (New Delhi), the African Union | The 1997 to 1998 Asian crisis showed the G7 could not manage crises alone. The 2008 crash lifted it to leaders' level | Rotating presidency, no permanent secretariat. 2025 South Africa (Johannesburg, the US boycotted). 2026 United States: summit 14 to 15 December 2026 at Trump National Doral, Miami. South Africa told on 4 December 2025 it was not welcome at any 2026 event. The US invited Poland. UK presidency in 2027 |

Overlap picture: the G7 sits inside both the G10 and the G20. The G10's extra four (Belgium, Netherlands, Sweden, Switzerland) are not G20 members in their own right (the first three sit inside it through the EU). China, India, Indonesia and the other emerging members are only in the G20. Malaysia is in none.

### A2. Shares of the world (World Bank WDI, 2024, computed by clubs.py)
| Group | World output (current US$) | World people | World exports of goods and services |
|---|---|---|---|
| G7 | 44.5% | 9.6% | 30.2% |
| G10 (11 countries) | 47.6% | 10.3% | 38.1% |
| G20, 19 countries only | 78.0% | 58.0% | 57.2% |
| G20 with the EU | 86.3% | 61.0% | 75.8% |
| G20 with the EU and the AU | 88.5% | 78.8% | 77.5% |
| Malaysia | 0.38% | 0.44% | 0.93% |

Inputs: world output $111.7T, people 8.14 billion, exports $32.5T. Exports count trade between EU members, which flatters the EU's share. The G20's own pages say about 85% of output, over 75% of trade and two thirds of people (press summaries, g20.org returned 403). Our numbers match on output and trade. Adding the African Union in 2023 lifted the people share from about 61% to about 79% but output by only about 2 points. The G7 and G10 rows match L2.3's table (G7 44% of output, 9.6% of people). For wealth and debt shares, link to L2.3 rather than repeating them.

Malaysia's exports are 0.93% of the world's while its output is 0.38%. Trade weighs about two and a half times more in Malaysia's share of the world than its economy does. That is the first measure of how exposed it is to rules it does not write.

### A3. What each club actually does (through others)
- **G7:** finance ministers' statements, sanctions coordination (the 2022 freeze of Russian central bank reserves was coordinated by G7 members), and side deals. In June 2025 the G7 agreed the "side-by-side" understanding that led to the January 2026 carve-out of US groups from parts of the 15% minimum tax (section B).
- **G10:** its central bank governors set up the Basel Committee at the end of 1974 after the Herstatt bank failure (BIS history page). The committee has grown to 45 institutions from 28 jurisdictions. Its standards bind no one by law. Members "agree to implement fully Basel standards for their internationally active banks" (BIS). The BCBS charter says it has no formal supranational authority and its decisions have no legal force (charter wording known, not re-fetched this run).
- **G20:** sets the agenda for the IMF (resources, the SDR allocations of 2009 and 2021), created the Financial Stability Board (April 2009 London communique: "to establish a new Financial Stability Board (FSB) with a strengthened mandate"), backs the OECD tax talks (BEPS, Pillar One and Two), and ran the DSSI and Common Framework through the Paris Club, the IMF and the World Bank.

### A4. What they cannot do
1. Bind anyone. A communique is a promise, not a law. Each member must pass its own laws (Basel III in the US is still a proposal in October 2026, section B).
2. Print money. None has a currency or a central bank. The nearest thing is an IMF SDR allocation, which the G20 can ask for but the IMF board decides.
3. Force a private creditor. The DSSI was voluntary for private lenders, and one took part.
4. Act without consensus. One member can block or walk out (the US boycotted Johannesburg in 2025 and the 2026 host shut out South Africa).

### A5. Membership is not the same as power (H11)
| Source of power | Who has it | Club link |
|---|---|---|
| Reserve currency share (COFER, 2026Q2) | US dollar 56.70%, euro 20.60%, yen 4.96%, renminbi 2.11%, others above 6% | The dollar's issuer is in every club. China is in the G20 only and has a small reserve share despite 17% of world output |
| Votes at the IMF | US alone can veto decisions needing 85% | Through IMF votes, not club seats |
| Swap lines | The Fed's standing lines go to five central banks (ECB, BoJ, BoE, SNB, Bank of Canada). PBoC has more than 40 swap lines (R4A-11) | G7 plus Switzerland on the Fed side |
| Capital account openness (Chinn-Ito 2023, 0 closed to 1 open) | 1.00 for the US, Japan, UK, euro members, Korea, Singapore, Hong Kong. 0.16 for China, India, Brazil, Russia, Turkey, Argentina, South Africa. 0.42 for Malaysia, Indonesia, Thailand | Openness, not membership, decides whether others want to hold your money |

Singapore and Switzerland show the gap. Neither is a G20 member, yet both run open, trusted money centres. China is a G20 member with capital controls, so its yuan is 2.11% of reserves.

---

## B. G20 scorecard: "the G20 are actually playing around"

| Pledge | When | What was promised | What happened | Grade | Evidence tier |
|---|---|---|---|---|---|
| Crisis package | London, 2 April 2009 | "an additional $1.1 trillion programme of support": IMF resources trebled to $750 billion, a new SDR allocation of $250 billion, at least $100 billion of extra development bank lending, $250 billion of trade finance. Fiscal expansion "by the end of next year, amount to $5 trillion" | The SDR allocation was made in August 2009 (about $250 billion). IMF borrowing lines were expanded. Stimulus was spent. World output fell in 2009 and grew again in 2010 | Delivered | T1 communique (fetched), T0 for the SDR allocation (IMF, not re-fetched) |
| No new protectionism | London 2009 | "refrain from raising new barriers to investment or to trade" | Members kept adding trade measures in later years (Global Trade Alert counts, not fetched), and the 2025 US tariff round broke the spirit outright | Not delivered | T4, to verify |
| Financial Stability Board | London 2009 | A new FSB "with a strengthened mandate" | Created April 2009, still running | Delivered | T1 |
| Basel III bank rules | Agreed December 2010 (BCBS), finalised 2017 | Higher and better bank capital, liquidity rules | First parts phased in 2013 to 2019. The final 2017 package: the US re-proposed it on 19 March 2026 (comments closed 18 June 2026), no final rule yet. EU and UK applied parts on later dates with the market-risk part delayed (dates to verify) | Partly delivered | T1 (BCBS page, Debevoise note) |
| Fossil fuel subsidies | Pittsburgh, September 2009 | "phase out and rationalize over the medium term inefficient fossil fuel subsidies" | Global consumption subsidies passed $1 trillion in 2022 (IEA estimate, not fetched) | Not delivered | T4, to verify |
| Debt Service Suspension Initiative (DSSI) | April 2020 | Pause poor countries' official debt payments, private creditors invited on comparable terms | $12.9 billion suspended May 2020 to December 2021, 48 of 73 eligible countries took part, one private creditor | Partly delivered (official lenders yes, private no) | T0 (World Bank page, framer fetch, estimates to 2022-02-28) |
| Common Framework | November 2020 | Case-by-case restructuring with all creditors, including China and private holders | Four first cases. Chad: requested January 2021, deal November 2022, creditor assurances took 11 months. Zambia: defaulted November 2020, bondholder deal mid 2024, about 1,300 days in all. Ghana: requested January 2023, official assurances in about 8 months, bond exchange October 2024 (to verify). Ethiopia: requested February 2021, official creditor MoU July 2025 ($3.5 billion relief), bondholder agreement in principle 29 June 2026, final exchange not confirmed. So 2 to 5 years per case | Partly delivered, slow | T2 (IMF progress report 2024), T4 press for Ethiopia 2026 |
| Global minimum tax (Pillar Two, 15%) | G20 and OECD deal October 2021 | 15% floor on big multinationals (revenue EUR 750 million or more) | In force in the EU, UK, Japan, Korea, Malaysia (from 1 January 2025) and others. The US never enacted it. After a June 2025 G7 understanding, the OECD Inclusive Framework issued the "side-by-side" package on 5 January 2026, shielding US-parented groups from the main top-up rules from 2026, while domestic top-up taxes still apply | Partly delivered, then diluted | T1 (LHDN guideline), T4 law-firm notes for the January 2026 package |
| 2025 and 2026 summits | Johannesburg November 2025, Miami December 2026 | Consensus declarations | The US boycotted Johannesburg. For 2026 the host shut South Africa out, dropped the troika format and narrowed the agenda (economic growth, deregulation, energy, technology per the White House, press reports of cuts to poverty, climate and gender language) | Stalled (consensus broken) | T2 (presidential statements via press), T4 |

### Verdict
"Playing around" is half right. Score across the nine items above: 2 delivered, 5 partly delivered, 2 not delivered (our grading, a model of the record, not a count from a source). The pattern is the regime split the framer predicted:
- **Crisis years (2008 to 2009, 2020):** fast, big, mostly delivered. Every member faced the same threat and each one's stimulus helped the others, so cooperation paid each player directly.
- **Calm years:** slow and diluted. Pledges that ask a member to give up something now for a shared gain later (subsidies, tariffs, tax) leak, because each member gains by letting the others carry the cost.
- **Where it holds no lever:** private creditors, a member's own parliament, a host who sets the guest list. A club without a treaty can only coordinate the willing.

### The game theory reason in one line
In a crisis the G20 plays a coordination game, where everyone's best move is to act together. In calm years it plays free-rider and prisoner's dilemma games, where each player's best move is to let the others pay. Clubs without enforcement deliver the first kind and struggle with the second.

### Which regime does the owner's impression come from?
The owner is writing in October 2026, in a calm year for markets and a year of open rupture inside the G20 (a member excluded, a host-driven agenda). Their impression fits the current regime. It would not have fitted April 2009.

