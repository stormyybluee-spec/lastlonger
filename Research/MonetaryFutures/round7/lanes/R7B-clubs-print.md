# R7B: the money clubs, printing power, Malaysia and the game board (Round 7, lane R7B)

Lane: R7B (framer's lanes D and E, plus light Data, Ledger and Sweep). Date: 2026-10-24. Tier: Standard. For the new Rulebook Level 2 chapter 4. General research, not personal financial advice.

## Pass checklist
- [x] A. Clubs: membership, dates, what they do and cannot do, shares of output, people and trade
- [x] B. G20 scorecard with verdict and the game theory reason
- [x] C. Printing power matrix and ladder, three tests with real cases
- [x] D. Malaysia as the outlier
- [x] E. Game board: 5 to 7 games and the 5 curiosity questions
- [x] F. Ledger, light: three balance-sheet walks
- [x] G. Sweep: popular claims and schools
- [x] H. Radiant map rays, bridge to Levels 1 and 2 (quoted), check questions
- [x] I. Claims table and tripwires
- [x] Data tables written to R7B-tables.json

All sections complete (2026-10-25). Tables: R7B-tables.json.

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
"Playing around" is half right. Score across the nine items above: 2 delivered, 4 partly delivered, 2 not delivered, 1 stalled (our grading, a model of the record, not a count from a source). The pattern is the regime split the framer predicted:
- **Crisis years (2008 to 2009, 2020):** fast, big, mostly delivered. Every member faced the same threat and each one's stimulus helped the others, so cooperation paid each player directly.
- **Calm years:** slow and diluted. Pledges that ask a member to give up something now for a shared gain later (subsidies, tariffs, tax) leak, because each member gains by letting the others carry the cost.
- **Where it holds no lever:** private creditors, a member's own parliament, a host who sets the guest list. A club without a treaty can only coordinate the willing.

### The game theory reason in one line
In a crisis the G20 plays a coordination game, where everyone's best move is to act together. In calm years it plays free-rider and prisoner's dilemma games, where each player's best move is to let the others pay. Clubs without enforcement deliver the first kind and struggle with the second.

### Which regime does the owner's impression come from?
The owner is writing in October 2026, in a calm year for markets and a year of open rupture inside the G20 (a member excluded, a host-driven agenda). Their impression fits the current regime. It would not have fitted April 2009.

---

## C. Printing power: a ladder, not a yes or no (H7)

Here "printing" means the state and its central bank creating the money that the state's debts are owed in. Bank lending is the other printer and is covered in L2.2.

### C1. The three tests
1. **Legal power.** Does the country issue its own currency through its own central bank? Euro members, Ecuador and Panama fail. Saudi Arabia and Hong Kong pass on paper but have promised to tie the printer to the dollar.
2. **Debt in its own money.** Is the state's debt owed in the currency it can create, and held mostly at home? A state that owes dollars cannot print dollars. This is what Eichengreen and Hausmann called "original sin". Carstens and Shin (BIS, 2019) added "original sin redux": even local-currency debt can bite when foreigners hold a big slice and sell it in a panic, pushing the currency down.
3. **The market's permission.** Can it print a lot, in a crisis, without the currency crashing or inflation taking off? This depends on whether the world wants to hold its money (reserve status), how open and trusted its markets are, and its inflation record.

Each test is necessary, none is enough on its own. Passing test 1 means a state can always pay a debt in its own currency. It does not mean the payment will be worth much.

### C2. The matrix (28 rows: all G20 members, the euro area as a whole, Malaysia, and the edge cases)
| Country | Test 1 own currency | IMF de facto (2023) | FX govt bonds sold abroad, % of GDP | Central bank holds of govt debt | Reserve share | Capital openness (0 to 1) | Inflation latest (peak 2021 to 2025) | Rung |
|---|---|---|---|---|---|---|---|---|
| United States | Yes | Free floating | 0.0% ($0.5bn) | 14.0% (Fed $4.57T of $32.6T held by public, Oct 2026) | USD 56.70% | 1.0 | 2.9% in 2024 (8.0%) | 1 Reserve issuer |
| Euro area as a whole (ECB) | Yes, at area level | Free floating | n.a. | not checked | EUR 20.60% | n.a. | n.a. | 1 Reserve issuer |
| Japan | Yes | Free floating | 0.1% ($4.1bn) | about 41% (June 2026, L2.3) | JPY 4.96% | 1.0 | 3.2% in 2025 (3.3%) | 1 Reserve issuer |
| United Kingdom | Yes | Free floating | 0.0% ($0.1bn) | not checked | GBP, share not given in the brief | 1.0 | 3.9% in 2025 (7.9%) | 1 Reserve issuer |
| Canada | Yes | Free floating | 9.6% ($217.3bn) | not checked | CAD, small | 1.0 | 2.1% in 2025 (6.8%) | 2 Sovereign printer |
| Australia | Yes | Free floating | 0.1% ($2.0bn) | not checked | AUD, small | 1.0 | 2.9% in 2025 (6.6%) | 2 Sovereign printer |
| Switzerland (G10 only) | Yes | Floating (to verify) | n.a. | not checked | CHF, small | 1.0 | 0.2% in 2025 (2.8%) | 2 Sovereign printer |
| Korea | Yes | Floating | 0.7% ($13.9bn) | not checked | none | 1.0 | 2.1% in 2025 (5.1%) | 2 Sovereign printer |
| China | Yes | Other managed | 0.2% ($33.2bn) | not checked | CNY 2.11% | 0.16 | 0.1% in 2025 (2.0%) | 3 Constrained printer (controls) |
| India | Yes | Floating | n.a. | not checked | none | 0.16 | 2.4% in 2025 (6.7%) | 3 Constrained printer |
| Brazil | Yes | Floating | 3.0% ($65.0bn) | not checked | none | 0.16 | 5.0% in 2025 (9.3%) | 3 Constrained printer |
| Mexico | Yes | Free floating | 8.4% ($154.2bn) | not checked | none | 0.7 | 3.8% in 2025 (7.9%) | 3 Constrained printer |
| Indonesia | Yes | Floating | 6.3% ($88.0bn) | 29.4% (Bank Indonesia, June 2026, ADB) | none | 0.42 | 1.9% in 2025 (4.2%) | 3 Constrained printer |
| South Africa | Yes | Floating | 6.2% ($24.8bn) | not checked | none | 0.16 | 3.2% in 2025 (7.0%) | 3 Constrained printer |
| Russia | Yes | Free floating | 2.2% ($47.7bn) | not checked | none (reserves frozen 2022) | 0.16 | 8.7% in 2025 (13.7%) | 3 Constrained printer (sanctioned) |
| Malaysia (outlier, no club) | Yes | Floating | 0.8% ($3.5bn) | 3.8% (BNM, June 2026, MOF) | none | 0.42 | 1.4% in 2025 (3.4%) | 3 Constrained printer, upper end |
| Turkey | Yes | Crawl-like | 7.4% ($100.4bn) | not checked | none | 0.16 | 34.9% in 2025 (72.3%) | 4 Fragile printer |
| Argentina | Yes | Crawling peg (2023, regime changed since) | 9.8% ($62.7bn) | not checked | none | 0.16 | 219.9% in 2024 (219.9%) | 4 Fragile printer |
| Sri Lanka | Yes | Crawl-like | 7.0% ($7.0bn) | not checked | none | 0.0 | -4.8% in 2025 (49.7%) | 4 Fragile printer (defaulted 2022) |
| Zimbabwe | Yes since April 2024 (ZiG), to verify | Other managed | n.a. | not checked | none | 0.42 | 104.7% in 2022 (104.7%) | 4 Fragile printer |
| Saudi Arabia | Yes, but pegged | Conventional peg | 11.7% ($147.2bn) | not checked | none | 0.7 | 2.0% in 2025 (3.1%) | 5a Tied by choice (peg) |
| Hong Kong | Yes, but currency board | Currency board | 6.0% ($24.3bn) | not checked | none | 1.0 | 1.4% in 2025 (2.1%) | 5a Tied by choice (board) |
| Germany | No (euro member) | Euro, free floating at area level | 0.3% ($16.4bn) | ECB, not split | part of EUR | 1.0 | 2.2% in 2025 (6.9%) | 5b No printer of its own |
| France | No (euro member) | Euro | 1.2% ($37.9bn) | ECB, not split | part of EUR | 1.0 | 0.9% in 2025 (5.2%) | 5b No printer of its own |
| Italy | No (euro member) | Euro | 0.5% ($12.5bn) | ECB, not split | part of EUR | 1.0 | 1.5% in 2025 (8.2%) | 5b No printer of its own |
| Greece | No (euro member) | Euro | 0.0% ($0.0bn) | ECB, not split | part of EUR | 1.0 | 2.5% in 2025 (9.6%) | 5b No printer of its own |
| Ecuador | No (US dollar since 2000) | No separate legal tender | 16.1% ($19.9bn) | n.a. | n.a. | 0.7 | 0.7% in 2025 (3.5%) | 5b No printer of its own |
| Panama | No (US dollar since 1904) | No separate legal tender | 41.7% ($36.1bn) | n.a. | n.a. | 1.0 | -0.2% in 2025 (2.9%) | 5b No printer of its own |

Sources and how to read it:
- Regime: IMF "De Facto Classification of Exchange Rate Arrangements and Monetary Policy Frameworks" for 2023, read through the Wikipedia relay (T4 relay of a T1 classification). Regimes have moved since for some (Argentina moved to a band in 2025, to verify). The 2023 counts: 17 no separate legal tender, 12 currency boards, 43 conventional pegs, 22 stabilised, 3 crawling pegs, 24 crawl-like, 1 band, 12 other managed, 32 floating, 33 free floating. So about two thirds of the IMF's members do not let their currency float in the IMF's sense.
- FX government bonds sold abroad: BIS debt securities statistics, general government, international market, foreign currency, amounts outstanding at 2026Q2, divided by 2024 GDP (fxbonds.py, a rough indicator with mixed years). It misses foreign-currency loans (IMF, China, banks) and domestic dollar bonds, so it understates Argentina's and Sri Lanka's real foreign-currency exposure. For euro members the BIS counts the euro as their own currency, which hides that they cannot print it. Canada's 9.6% is mostly provinces and reserve funding, borrowed by choice and hedged, not a sign of weakness.
- Central bank holdings: Fed H.4.1 (21 October 2026) over Treasury Debt to the Penny (22 October 2026), L2.3 for Japan, MOF Fiscal Outlook 2027 for Malaysia, ADB Asia Bond Monitor September 2026 for Indonesia.
- Capital openness: Chinn-Ito index, 2023 edition (0 most closed, 1 most open).
- Inflation: World Bank consumer prices, annual. Argentina 2025 and US 2025 were not yet in the release. Zimbabwe after 2022 missing.

### C3. The ladder
| Rung | Name | What it means | Members in the matrix |
|---|---|---|---|
| 1 | Reserve issuer | Passes all three tests with room. The world wants to hold its money, so a crisis brings buyers, not sellers | US (by far), the euro area as a whole, Japan, UK |
| 2 | Sovereign printer | Passes all three, but the world holds little of its money. Can print in a crisis, as Canada and Australia did in 2020, at the cost of some inflation and a weaker currency | Canada, Australia, Switzerland, Korea |
| 3 | Constrained printer | Passes tests 1 and 2, partly passes 3. Printing quickly shows up in the currency, foreign holders or capital controls | China (controls), India, Brazil, Mexico, Indonesia, South Africa, Russia (sanctions), Malaysia |
| 4 | Fragile printer | Passes test 1, fails 2 or 3 or both in recent memory. Printing led to a currency crash, high inflation or default | Turkey, Argentina, Sri Lanka, Zimbabwe |
| 5a | Tied by choice | Legal printer that promised not to print freely (peg or currency board). Can leave the promise, at a cost | Saudi Arabia (peg), Hong Kong (currency board) |
| 5b | No printer of its own | Fails test 1. Must earn, tax or borrow the money its debts are owed in | Euro members one by one (Germany, France, Italy, Greece), Ecuador, Panama |

The rung is our grading of the evidence in the matrix (a model). Two rows show the edges. Indonesia's central bank holds 29.4% of government debt, after the 2020 to 2022 "burden sharing" purchases, and inflation stayed at 1.9% in 2025. So a rung 3 printer can print for the state for a while if markets trust the brake. Germany sits on rung 5b with the lowest risk premium in Europe, because markets trust its budget. Rung 5b is a constraint, not a verdict on quality.

### C4. The real cases behind the tests
- **Japan (passes all three).** Government debt about twice output, Bank of Japan held about 41% of it in June 2026 and foreigners about 13% (L2.3). Inflation 2.5% to 3.3% in 2022 to 2025 (World Bank). The pressure shows up as a weak yen, not as a debt crisis.
- **The euro area and Greece, 2010 to 2015 (fails test 1 as a member).** Greece borrowed in a currency it could not print, much of it from foreigners (L2.3). It needed bailouts from 2010, imposed a loss on private bondholders in 2012, and closed its banks with capital controls in June 2015 after deposits fell about EUR 41 billion (R4B-31, T4). The euro area as a whole can print: the ECB's July 2012 "whatever it takes" pledge and its 2022 Transmission Protection Instrument are the area's printer lending its credibility to members, with conditions (T4, standard history, not re-fetched). So "no member can print its way out" (L2.3) is right for a member alone and incomplete for the area.
- **Argentina (fails test 2 and 3).** Owns a printer, owes much of its debt in dollars ($62.7 billion of foreign-currency bonds abroad alone, BIS 2026Q2). Inflation 133.5% in 2023 and 219.9% in 2024 (World Bank). Printing pesos cannot pay dollar debts, and printing for the budget fed the inflation.
- **Turkey (fails test 3).** Kept rates low while inflation rose in 2021 to 2023. Inflation reached 72.3% for 2022 as a yearly average (World Bank). The lira fell sharply (not fetched). It had $100.4 billion of foreign-currency bonds abroad in 2026Q2 (BIS).
- **Sri Lanka 2022 (fails test 2).** Suspended most foreign debt payments on 12 April 2022, with usable reserves near zero (about $1.9 billion at end March, much of it a swap line, T4). Inflation 49.7% in 2022. A printer in rupees could not pay creditors owed in dollars.
- **Zimbabwe (fails test 3, then test 1).** Hyperinflation in 2007 to 2008 ended with the country using the US dollar and other currencies from 2009 (T4). Inflation was still 104.7% in 2022 (World Bank). A new gold-linked currency, the ZiG, began in April 2024 (to verify).

### C5. Where the old Rulebook wording stands (H12)
The site never says "some countries can't print" as a flat rule. The nearest lines: "Greece borrowed in a currency it could not print, much of it from foreigners" (L2.3, right, test 1), "None of the three can print euros" (L2.3 on Germany, Italy and France, right, test 1), "where no member can print its way out" (L2.3 tripwire, right for a member, incomplete for the euro area's ECB backstop), and "The US owes dollars it can create" (L1 rb-09, right on tests 1 and 2, silent on test 3). The owner's "some can't" is a fair one-line summary of test 1. The chapter should add that most countries that can print legally still face tests 2 and 3.

---

## D. Malaysia as the outlier (Q2b, H9)

### D1. Outside the clubs, inside other rooms
- Not in the G7, G10 or G20. Indonesia is the only ASEAN member of the G20.
- Seats it does hold: ASEAN (founding member, 1967, chair in 2025), ASEAN Plus Three and its reserve-pooling deal, the Chiang Mai Initiative Multilateralisation (USD 240 billion size, T4, to verify on AMRO), APEC (founding member, 1989), IMF member, host of the Islamic Financial Services Board in Kuala Lumpur. BRICS partner country: announced on 24 October 2024 (Kazan summit, one of 13 partners, MIDA and Bernama). Partner, not full member. Brazil's president said in October 2025 that Brazil would support full membership (press).
- Rule-taker: it applies rules made in rooms it is not in. The 15% global minimum tax took effect in Malaysia for financial years from 1 January 2025 (Domestic Top-up Tax and Multinational Top-up Tax, Part XI of the Income Tax Act 1967, added by the Finance (No. 2) Act 2023, groups with revenue of EUR 750 million or more, LHDN guideline). The US, which helped write the deal, won a carve-out in January 2026. Basel standards apply to Malaysian banks through Bank Negara's rules (not checked in detail this run).

### D2. The regime: "floating" and "managed float" are both true
- Bank Negara's own words since 21 July 2005: a "managed float", with the ringgit monitored against a basket of currencies (BNM statement, 21 July 2005).
- IMF: the Article IV informational annexes for 2022, 2023, 2024 and 2026 give "floating" both de jure and de facto. The 2010 to 2012 annexes gave "other managed" (framer's anomaly check, read through a search summary, annex not opened because the IMF site returned 403). The IMF 2023 classification list also gives Malaysia "floating".
- Why both are true: the IMF's "floating" is not "free floating". It allows intervention to smooth moves, which is what Bank Negara calls managing. Free floating means intervention is rare.
- The ringgit is also partly fenced. Offshore ringgit trading is not allowed, and since December 2016 Bank Negara's "FX market development measures" have pushed hedging onshore. The IMF classifies these as capital flow management measures and the authorities disagreed with the advice to phase them out (The Edge on the 2022 Article IV). Chinn-Ito openness: 0.66 in 1996, 0.54 in 1998, 0.16 in 2010, 0.42 from 2016 to 2023.

### D3. 1997 to 2005 in five dates
| Date | Event | Source |
|---|---|---|
| Early 1997 | About 2.50 ringgit per US dollar | L1 rb-em |
| January 1998 | Worst point, about 4.885 | R5E-06 (T3, confirmed) |
| 1 September 1998 | Selective exchange controls | BNM milestones page |
| 2 September 1998 | Ringgit fixed at 3.80 per dollar | BNM milestones page |
| 21 July 2005 | Peg ends, managed float against a basket | BNM statement |

Malaysia did not take an IMF programme. Thailand, Indonesia and Korea did (standard history). Reserves fell from $27.9 billion in 1996 to $21.5 billion in 1997, then rose to $134.9 billion by 2013 (World Bank). They were $132.6 billion at the end of June 2026, enough for 4.7 months of imports and 0.9 times short-term external debt (BNM release). Under BNM's older import measure the same reserves cover 5.9 months of retained imports.

### D4. Who holds Malaysia's government debt
Federal government debt was RM1.38 trillion at the end of June 2026, 63.1% of GDP, above the 60% medium-term target in the Public Finance and Fiscal Responsibility Act 2023 (Act 850). 98.8% of it is domestic debt. Offshore loans are RM16.7 billion, mainly in dollars and yen (MOF Fiscal Outlook 2027, via The Vibes, 10 October 2026).

| Holder (share of federal debt, end June 2026, MOF) | Share |
|---|---|
| Employees Provident Fund (EPF) | 30.5% |
| Banking institutions | 28.5% |
| Insurance companies | 5.2% |
| Bank Negara Malaysia | 3.8% |
| Retirement Fund Inc (KWAP) | 2.2% |
| Development financial institutions | 2.1% |
| Other domestic investors | 6.2% |
| Domestic institutions together | 78.5% |
| Rest, mostly non-residents (implied) | about 21.5% |

Cross-check: Bank Negara data via the ADB put foreigners at 21.4% of local-currency government securities at the end of March 2026, social security funds at 32.6% and financial institutions at 29.5%. The framer's division gave 21.6% (RM283.10 billion of RM1.309 trillion). L2.3 says 20.1% of MGS alone in July 2026. All of these say "about a fifth". L1 rb-em says EPF holds "about 28%" (December 2023 fund statement). The newer MOF figure is 30.5%, a propagation note.

Islamic paper: RM660.6 billion, 47.9% of federal debt, is in Islamic instruments (mainly GII sukuk). Debt service: RM57.3 billion in 2026, 15.8% of revenue. The legal ceiling on MGS, GII and Treasury bills is 65% of GDP (to verify, not found in this run's sources).

### D5. Peers: where Malaysia is typical and where it is the outlier
| Measure | Malaysia | Indonesia | Thailand | Singapore |
|---|---|---|---|---|
| Club seat | none | G20 | none | none (frequent G20 guest, T4) |
| IMF regime (2023) | Floating | Floating | Floating | Crawl-like (exchange-rate-based policy) |
| Capital openness (Chinn-Ito 2023) | 0.42 | 0.42 | 0.42 | 1.00 |
| Foreign share of government bonds | 21.4% (Mar 2026) | 12.8% (Jun 2026) | not given in the summary | not checked |
| Central bank share of government bonds | 3.8% (Jun 2026) | 29.4% (Jun 2026) | 8.0% (Jun 2026) | not checked |
| FX government bonds abroad, % of GDP (BIS 2026Q2) | 0.8% | 6.3% | none reported | none reported |
| Reserves, 2024, $bn (World Bank) | 116.2 | 155.7 | 236.9 | 383.9 |
| Inflation 2025 (World Bank) | 1.4% | 1.9% | -0.1% | 0.9% |
| Exports share of world vs output share | 0.93% vs 0.38% | not computed | not computed | not computed |

Typical: own currency, a float with smoothing, debt in local currency, inflation low, capital account partly managed. On those Malaysia, Indonesia and Thailand look alike.
Outlier in five ways:
1. The 1998 choice: capital controls and a fixed rate instead of an IMF programme.
2. The highest foreign share of the three ASEAN peers (about a fifth), so it feels US rate moves through its bond market faster.
3. A compulsory pension fund (EPF) as the biggest single holder.
4. Nearly half of government debt in Islamic form, the largest sukuk market in the world (T4, standard claim, to verify).
5. Its central bank holds very little government debt (3.8%) compared with Indonesia (29.4%). Malaysia has not used the printer for the budget.

### D6. Where Malaysia sits on the ladder, and why
**Rung 3, near the top.** It passes test 1 (own currency, own central bank). It passes test 2 strongly (98.8% of federal debt is domestic, almost all in ringgit, mostly held by its own institutions). It partly passes test 3: a fifth of its bonds are held abroad, the ringgit is not a reserve currency, the capital account is partly closed, and reserves are about equal to short-term foreign debt (0.9 times). In 1997 to 1998 the market test failed hard, although the debt then was mostly private and in dollars. Malaysia's real brake on printing is the ringgit. If Bank Negara printed for the budget, foreign holders and savers could leave, and the ringgit would fall, raising import prices.

---

## E. The game board (Q2c, H10)

L1 rb-leader already teaches four games: a coordination game (the dollar), a prisoner's dilemma (currency wars and tariffs), a repeated game (reputation) and a war of exhaustion. This chapter must build on them, not restate them. So each game below adds a real case with numbers, a payoff box and a dated tripwire.

### E0. Primer: five shapes of game (one page)
- **Coordination (stag hunt):** both gain most if both act, and acting alone is costly. Payoff box: both act 3,3. One acts alone 0,2. Neither acts 2,2. Two stable outcomes. Fear decides which one happens.
- **Prisoner's dilemma:** each gains by defecting whatever the other does, so both defect and both lose. Box: both cooperate 3,3. One defects 5,0. Both defect 1,1.
- **Free rider:** a shared good is paid for by some and enjoyed by all. The best move for each small player is to let others pay.
- **Focal point:** when many equally good choices exist, players pick the one everyone expects others to pick.
- **Chicken:** two players drive at each other. The one who swerves loses face, a crash costs both the most. Each tries to look committed.
- **Run (bank-run game):** creditors who expect others to stay, stay. Creditors who expect others to leave, leave first. The same borrower can be safe or bust depending on beliefs.

What game theory leaves out: domestic politics (a leader facing an election may choose the worse national outcome), ideology, accidents, and plain error. Treat the games as a lens on incentives, not as proof that every move was planned.

### E1. Coordination under a shared threat: London 2009
- Players: G20 governments and central banks.
- Moves: stimulate and support credit, or hold back.
- Payoffs: a country that stimulates alone leaks part of its stimulus abroad through imports and carries the debt. If all stimulate, the leaks come back as exports. In 2008 to 2009 the threat of a 1930s-style collapse made "all act" each member's best move.
- Case: $1.1 trillion package and a $5 trillion fiscal push announced 2 April 2009, the FSB created, SDR allocation of about $250 billion in August 2009 (section B).
- What the game misses: the same leaders were also bailing out their own banks for domestic reasons.
- Tripwire: Miami summit, 14 to 15 December 2026. Does it end with a leaders' declaration signed by all members present? A G20 with no common statement in a calm year is the base rate getting worse. Resolution: the summit outcome document.

### E2. Free riders on debt relief: the DSSI and the Common Framework
- Players: official bilateral lenders (Paris Club, China), private bondholders, the borrowing country, the IMF.
- Moves: grant relief, or hold out and keep collecting.
- Payoffs: if official lenders suspend and private lenders do not, the freed cash pays the private lenders in full. The holdout earns the most. Relief that frees cash for others is a public good.
- Case: DSSI suspended $12.9 billion from 48 of 73 eligible countries, with one private creditor taking part (World Bank). Common Framework cases took about 2 years (Chad) to more than 5 years (Ethiopia, requested February 2021, bondholder agreement in principle June 2026, official creditors had rejected an earlier January 2026 deal as not comparable).
- What the game misses: China's lenders also faced internal rules on haircuts, and many debtors feared a rating downgrade if they asked.
- Tripwire: Ethiopia's bond exchange formally settles by 31 March 2027 (press and Ethiopian Ministry of Finance). A miss means more than 6 years for one case.

### E3. The prisoner's dilemma of devaluation and tariffs, and its chicken variant
- Players: big trading economies.
- Moves: weaken your currency or raise tariffs, or hold steady.
- Payoffs: one country that defects gains exports. If all defect, trade shrinks and all lose (the 1930s round of devaluations and tariffs, L1 rb-leader). When two big players face off with threats, the game turns into chicken: each tries to look more committed so the other swerves.
- Cases: Brazil's finance minister Guido Mantega, 27 September 2010: "We're in the midst of an international currency war" (Reuters via the FT). The 1985 Plaza Accord, where five rich countries agreed to push the dollar down together, is the coordinated exit (standard history). The 2025 US tariff round and China's rare earth controls, paused after the October 2025 leaders' meeting in South Korea, are chicken.
- What the game misses: tariffs also serve domestic aims (revenue, jobs, security) that a trade payoff box does not show.
- Tripwire: whether the US and China extend their one-year truce around 10 November 2026 (date to verify). Resolution: White House and MOFCOM statements.

### E4. The exorbitant privilege as a focal point
- Players: central banks, exporters, borrowers, commodity traders around the world.
- Moves: hold and invoice in dollars, or switch.
- Payoffs: a currency is useful because others use it. Switching alone costs a lot (thin markets, harder hedging). Switching pays only if many switch together.
- Case: the dollar was 56.70% of allocated reserves in 2026Q2, the euro 20.60%, the yen 4.96%, the renminbi 2.11% (IMF COFER, 30 September 2026). The dollar share drifts down slowly, while the euro gained most in 2026Q2 mainly through active buying (IMF). The renminbi is 2.11% even though China is 17% of world output, because capital controls make it a poor place to park savings.
- What the game misses: security ties and sanctions risk. Freezing Russia's reserves in 2022 raised the cost of holding dollars for some, which a pure network game does not price.
- Tripwire: IMF COFER for 2026Q3 (due about end December 2026). Dollar share below 56.0% would be a new low in that series (to verify the series low before using).

### E5. Insurance by self-help: Asia's reserve piles after 1998
- Players: Asian central banks, the IMF, global investors.
- Moves: hold large dollar reserves, or rely on the IMF and pooled funds.
- Payoffs: reserves cost money (they earn less than the country pays to borrow), but they deter speculative attacks and avoid IMF conditions. After 1997 to 1998 many chose to pay the insurance premium themselves. L1 rb-leader: "Buy insurance: after the 1997 Asian crisis, countries that ran short of dollars were forced into painful IMF programs."
- Case (World Bank reserves, $ billion, 1997 to 2024): Malaysia 21.5 to 116.2, Thailand 26.9 to 236.9, Korea 20.5 to 418.2, Indonesia 17.5 to 155.7. The pooled insurance, the Chiang Mai Initiative, has never been drawn (T4, to verify on AMRO). That is the tell: countries trust their own pile more than the shared pool.
- What the game misses: some reserve building was also a by-product of keeping the currency cheap for exporters.
- Tripwire: Bank Negara's reserves against short-term external debt. A fall below 0.8 times in any 2027 release would weaken Malaysia's insurance (BNM fortnightly release).

### E6. The creditor run: who holds the debt decides who can print
- Players: holders of a government's debt (domestic pension funds and banks, the central bank, foreign funds) and the government.
- Moves: roll over, or sell and leave.
- Payoffs: if holders expect others to stay, staying pays. If they expect a crash, leaving first pays. A foreign holder can leave the currency, a domestic pension fund mostly cannot. A government that owes its own money to its own citizens can always pay, so the run, if any, hits the currency, not the debt.
- Cases: Japan (debt about twice output, central bank about 41%, foreigners about 13%) borrows cheaply. Sri Lanka (debt owed in dollars to foreigners) suspended payments on 12 April 2022. Greece (euro debt, foreign holders, no printer) needed bailouts from 2010. Malaysia (98.8% domestic, foreigners about 21%) sits between.
- What the game misses: politics of who pays the loss (savers through inflation, or creditors through default).
- Tripwire: Malaysia's foreign share of government bonds. Above 25% in any 2027 BNM monthly release would raise its run risk, below 18% would lower it.

### E7. The prisoner's dilemma of tax competition: the 15% minimum tax
- Players: governments competing for multinational profits.
- Moves: keep a low rate to attract profits, or agree a floor.
- Payoffs: each country gains by undercutting, all lose revenue if all undercut. The floor works only if enough big players sign and enforce it.
- Case: the October 2021 deal set 15%. Malaysia applied it from 1 January 2025. The US did not enact it and, after the G7's June 2025 understanding, the OECD's 5 January 2026 side-by-side package shielded US-parented groups from the main top-up rules. The largest player took the defector's payoff and the others accepted it to keep the rest of the deal.
- What the game misses: the US argues its own minimum taxes do a similar job, which is a real policy debate, not only defection.
- Tripwire: whether the EU writes the side-by-side package into its Pillar Two directive by 31 December 2026 (Commission notice issued, directive change not confirmed).

### E8. The 5 curiosity questions (each opens one game, each answered with facts)
1. **Why did the G20 move within months in 2008 to 2009, but take years on poor countries' debts?** (E1 then E2) Because in 2008 every member faced the same collapse, so acting together was each one's best move: $1.1 trillion and a $5 trillion fiscal push in one communique. Debt relief is different: relief given by one lender frees cash for the others. The DSSI suspended $12.9 billion, but only one private creditor joined, and Ethiopia's case took more than five years.
2. **If every country wants a cheaper currency or a tariff edge, what happens when they all try at once?** (E3) Each gains alone and all lose together, as in the 1930s. In 2010 Brazil's finance minister called it "an international currency war". The exits have been deals like the 1985 Plaza Accord or truces like the October 2025 US and China pause, which can lapse.
3. **Why does the world keep saving in US dollars even while complaining about the US?** (E4) Because money is useful when others use it. The dollar is still 56.7% of reserves, three times the euro, and the yuan is 2.1% because China keeps capital controls. Switching only pays if many switch at once.
4. **Why did Malaysia and its neighbours pile up dollars after 1998 instead of spending them?** (E5) Because in 1997 to 1998 the ringgit fell from about 2.50 to about 4.88 and Thailand, Indonesia and Korea had to accept IMF conditions. Malaysia chose controls and a 3.80 peg instead. Since then its reserves rose from $21.5 billion (1997) to $132.6 billion (June 2026). Self-insurance is expensive but it is yours.
5. **Why can Japan owe about twice its economy and borrow cheaply, while Sri Lanka defaulted, and where does Malaysia sit?** (E6) Who holds the debt and in which money decides it. Japan owes yen mostly to itself (central bank about 41%, foreigners about 13%). Sri Lanka owed dollars to foreigners and stopped paying on 12 April 2022. Malaysia owes ringgit, 98.8% at home, but a fifth is held by foreigners, so its brake is the currency, not default.

Pass test from the frame: five questions, five distinct games (coordination, free rider, prisoner's dilemma, focal point, self-insurance, run), Malaysia directly in questions 4 and 5, each with a T0 to T2 case and a dated tripwire.

---

## F. Ledger, light: three balance-sheet walks

Two floors as in L2.2: upstairs is central bank money (bank reserves, the government's account at the central bank), downstairs is deposits and cash held by the public.

### F1. The US runs a deficit and the world holds the dollars
Chain: a US household buys Malaysian-made chips. A Malaysian exporter sells the dollars to its bank, which sells them to Bank Negara. Bank Negara buys US Treasury bills.
| Actor | Asset change | Liability change | Floor |
|---|---|---|---|
| US household | Deposit at US bank down | | US downstairs, moved to a foreign holder |
| Malaysian exporter | Ringgit deposit up | | Malaysia downstairs, created |
| Malaysian bank | Ringgit reserves up (from BNM), dollar balance passed to BNM | Exporter's ringgit deposit up | Both |
| Bank Negara | Dollar deposit (at a US bank or the Fed) up, then Treasury bills up | New ringgit reserves up | Malaysia upstairs, created (the "currency door", L2.2) |
| US Treasury | Account at the Fed up when the bill is sold | Bills owed to BNM up | US upstairs |
| Fed | | Reserves move from the selling bank to the Treasury account and back out when the Treasury spends | US upstairs, moved |
Result: no dollars were created by anyone abroad. Dollars moved from a US household to a foreign central bank, which lent them back to the US government. The US got goods for IOUs in its own money. That is the exorbitant privilege in one table. Ringgit were created by Bank Negara and are usually soaked back up later through its money market operations (L2.2). Size: foreign official holdings of Treasuries in custody at the New York Fed fell about $254 billion from February to October 2026 (L1 rb-09), so this channel can also run in reverse.

### F2. Bank Negara defends the ringgit
Chain: a foreign fund sells MGS to a local bank and wants dollars to leave. Bank Negara sells dollars to stop the ringgit falling too fast.
| Actor | Asset change | Liability change | Floor |
|---|---|---|---|
| Foreign fund | MGS down, ringgit deposit up, then ringgit down and dollars up | | Malaysia downstairs: deposit created then destroyed |
| Local bank (buys the MGS) | MGS up, reserves down | Foreign fund's deposit up then down | Both |
| Bank Negara | Dollar reserves down | Ringgit reserves of banks down | Malaysia upstairs, destroyed |
| Banks as a group | Reserves down, so overnight rates would rise | | Upstairs |
| Bank Negara (second step) | Lends ringgit back or lets its deposits run off, so the policy rate stays at 2.75% | Reserves restored | Upstairs, recreated |
Result: the ringgit money stock first shrinks by what the fund took out, then Bank Negara usually refills the upstairs floor to keep its interest rate. Dollar reserves are the cost, which is why the 0.9 times short-term foreign debt ratio matters. If the defence is too long, reserves run down. That was 1997 to 1998.

### F3. A euro member cannot print and must borrow
Chain: Italy spends more than it taxes.
| Actor | Asset change | Liability change | Floor |
|---|---|---|---|
| Italian Treasury | Account at the Bank of Italy (euro system) up when it sells bonds, down when it spends | BTP bonds owed up | Euro upstairs |
| Buyers (banks, funds, households, foreigners) | BTPs up, deposits or reserves down | | Moved, not created, if a nonbank buys. Created if a bank buys with reserves |
| Bank of Italy and ECB | May buy BTPs only on the secondary market (EU Treaty Article 123 bans direct purchase, L2.2). Purchases create reserves | Reserves up | Upstairs, created, but only by a decision taken for the whole euro area |
| Public | Deposits up when the state spends | | Downstairs |
Result: Italy can only spend what it taxes or borrows. The euro system can create the money, but on its own terms and for the whole area. In a panic, deposits can move to banks in another euro country, draining the Italian banks' reserves. That happened in Greece, where deposits fell about EUR 41 billion before the June 2015 controls (R4B-31).

### Channel table (who can create the money a state's debt is owed in)
| Channel | Sign | Who can use it | Sizes | Source |
|---|---|---|---|---|
| Central bank buys government debt | Creates | Rungs 1 to 4 | Fed holds 14.0% of US debt held by the public (Oct 2026). BoJ about 41% (Jun 2026). Bank Indonesia 29.4% (Jun 2026). BNM 3.8% (Jun 2026) | H.4.1, Treasury, L2.3, ADB, MOF |
| Central bank buys foreign currency | Creates local money | Rungs 2 to 5a | BNM reserves $132.6bn (Jun 2026) | BNM |
| Central bank sells foreign currency | Destroys local money | Rungs 2 to 5a | Stress year 1997: Malaysia reserves fell $27.9bn to $21.5bn | World Bank |
| Foreigners buy local bonds | Moves (brings in reserves) | All | Malaysia foreign holdings RM283.10bn (Mar 2026) | BIX via frame |
| Borrowing in foreign currency | Moves, adds FX debt | All | Turkey $100.4bn, Argentina $62.7bn of FX bonds abroad (2026Q2) | BIS |
| Area-wide central bank backstop | Creates, with conditions | Euro members | ECB TPI since 2022 (no use found) | T4 |
| Pooled insurance | Moves | ASEAN Plus Three | CMIM never drawn (to verify) | T4 |

---

## G. Sweep: what the public and the schools believe

### G1. Popular claims (YouTube reach through vidIQ search, 2026-10-24, T5 hypotheses)
| Claim | Who says it | Reach | School | How to test it | Verdict |
|---|---|---|---|---|---|
| "Why can't we print unlimited money": printing more just raises prices | FactoHolic short, 2025-11-01 | 74.8M views, 2.3M likes | Popular quantity theory | Compare printers by rung: US Fed holdings rose $4.52T in 2020 to 2021 (L2.2) with 8.0% inflation in 2022, Argentina printed with 219.9% in 2024 | Half true. Printing beyond what people want to hold raises prices. How much depends on the rung |
| "Why can't governments print unlimited money", the dollar is accepted worldwide | Nitish Rajput, 2022-04-02 | 4.47M views | Popular | COFER 56.70% dollar share | Right that the dollar is special. Misses that most countries also face test 2 |
| "Why can't we just print money to pay off debt", and Japan's debt over 150% is "bad" | WonderWhy, 2013-08-31 | 4.20M views | Popular | Japan 2013 to 2026: no debt crisis, inflation 2.5% to 3.3% in 2022 to 2025 | Wrong on Japan. A country owing its own money to itself is not Greece |
| "Why every country is in debt and who do they owe", why governments borrow instead of printing | Explains 101, 2025-03-15 | 2.69M views | Popular | Holder tables (MOF, BNM) | Mostly right. Good starting point for test 2 |
| "The G20 summit, what is it exactly" | Dhruv Rathee, 2023-09-08 | 8.27M views | Popular explainer | Scorecard in section B | Description, not a verdict |
| "The G20 is a useless talking shop" | Common press frame, reach not measured | n.a. | Realist and populist commentary | Scorecard in section B | Half true: true in calm years, false for 2008 to 2009 |
| "Any country can print its way out" | Popular reading of MMT | n.a. | MMT, misread | Tests 2 and 3: Sri Lanka 2022, Argentina, Turkey | False for rungs 4 and 5. MMT itself limits the claim to monetary sovereigns |
| "The US can print forever" | Popular, both admirers and critics | n.a. | MMT and hard money, opposite signs | US: rung 1, but net interest $1,052bn in fiscal 2026, above defence (L1 rb-09), and the 10-year yield near 5% (L2.2) | Partly true. It can always pay in dollars. It cannot choose what those dollars buy or what rate markets demand |

Transcripts were not pulled (direct downloads are blocked, PLAN 8.3). Claims come from titles and descriptions only.

### G2. The strongest view of each school on who can print
- **MMT (Stephanie Kelton, The Deficit Myth, 2020, T4. Warren Mosler, L. Randall Wray):** a government that issues a floating currency and borrows only in it cannot be forced to default. Its limit is inflation and real resources, not money. Best evidence: Japan. Scope: MMT writers themselves call monetary sovereignty a spectrum and exclude euro members, pegs and foreign-currency borrowers. That matches tests 1 and 2 of the ladder. Blind spot: test 3 for open economies whose currency falls when they print.
- **Hard money (Austrian school, Peter Schiff, Saifedean Ammous, T4):** every fiat printer debases. The privilege ends in inflation, and the only real limit is the market's loss of trust. Best evidence: the long fall of every paper currency against gold, L1 rb-09's empires. Blind spot: timing. The dollar has kept rung 1 for 55 years since 1971, and the euro and yen have joined it.
- **Mainstream (IMF, Eichengreen and Hausmann on "original sin", Carstens and Shin at the BIS 2019 on "original sin redux", Blanchard on interest rates versus growth, T4):** fiscal space depends on the currency of the debt, who holds it, the interest rate against growth, and credibility. Emerging economies "redeemed" original sin by borrowing at home in local money, then found foreign holders of local bonds can still trigger currency runs. Best evidence: taper tantrum 2013, 2022 outflows. Blind spot: it underweights politics and the geopolitical side of reserve choice.
Where they agree: all three accept test 1 and test 2. They differ on test 3: MMT says the limit is inflation, hard money says trust, the mainstream says the price of borrowing.

---

## H. Radiant map, bridge and check questions

### H1. Eight rays for "Who can make money, and who writes the rules" (centre: a game board)
1. **The clubs:** three circles, G7 inside G20, G10 overlapping, sized by output (44.5%, 47.6%, 86.3%). Question: who is in the room?
2. **What clubs cannot do:** no treaty, no money, no force. Icon: an empty gavel. Question: why can a club only ask?
3. **The scorecard:** green for crisis years, amber for calm years. Question: when do clubs deliver?
4. **The three tests:** three locks on a printing press (law, debt, market). Question: which locks does your country open?
5. **The ladder:** six steps from reserve issuer to no printer, flags on each. Question: where is your country?
6. **Malaysia:** a bright node outside the circles with lines to ASEAN, Chiang Mai, BRICS partner, IMF, and arrows of rules flowing in (15% tax, Basel). Question: how does a rule-taker play?
7. **The games:** seven small 2 by 2 boxes with their real case. Question: which game is being played in today's headline?
8. **Tripwires:** a calendar with the dated tests (section I). Question: what would change the picture?
Dotted cross-links: "owes in its own money" (ray 4) to "creditor run" (ray 7) to "Malaysia's foreign fifth" (ray 6). "Crisis" (ray 3) to "coordination" (ray 7).

### H2. Built on Levels 1 and 2 (only claims the chapters make, quoted)
- From L2.3 (rb-worldbs): "The G10 is, confusingly, eleven countries: the G7 plus Belgium, the Netherlands, Sweden and Switzerland." This chapter adds the G20, the dates and what each club does.
- From L2.3: "Greece borrowed in a currency it could not print, much of it from foreigners." This chapter turns that into test 1 and test 2 of the ladder.
- From L2.3: "Foreigners hold about a fifth of Malaysian Government Securities (20.1% in July 2026)". This chapter adds the full holder table and the creditor-run game.
- From L2.2 (rb-moneymake): "The currency door: buying dollars creates ringgit, selling dollars destroys it". This chapter uses it in the ledger walks F1 and F2.
- From L2.2: "Banks are the everyday printer. The government plus the Fed is the emergency printer." This chapter asks which countries own an emergency printer that the market lets them use.
- From L1 rb-em: "Malaysia in September 1998 chose differently: it imposed capital controls and pegged the ringgit at 3.80 to the dollar, keeping control of its rates. The peg lasted until July 2005." This chapter dates it to 1 and 2 September 1998 and 21 July 2005 from Bank Negara and adds the reserve rebuild.
- From L1 rb-leader: "A coordination game: everyone uses the dollar because everyone else does." and "A prisoner's dilemma: each country gains by weakening its currency or adding tariffs, but if all do it, trade shrinks and all lose." This chapter adds cases with numbers, payoff boxes and tripwires.
- From L1 rb-09: "US debt is in its own currency. Spain owed its bankers in silver it could not create. The US owes dollars it can create." This chapter generalises it into the ladder and adds test 3.

### H3. Three check questions
1. Italy and Japan both owe more than their yearly output. Which test does Italy fail that Japan passes, and what does the euro area do about it? (Answer: test 1, Italy cannot issue euros. The ECB can act for the whole area, on conditions, through secondary purchases and its 2022 instrument.)
2. In the DSSI, official lenders paused $12.9 billion of payments. Why did one private creditor join, and what game is that? (Answer: relief by others freed cash to pay the private lenders in full, so holding out paid more. A free-rider game.)
3. Malaysia owes 98.8% of its federal debt at home, yet a sell-off by foreigners can still weaken the ringgit. Why, and which rung is Malaysia on? (Answer: foreigners hold about a fifth of government bonds and can leave the currency, so test 3 is only partly passed. Rung 3, near the top.)

---

## I. Claims table, tripwires and hand-in items

### I1. Claims
| id | claim | tier | status | source (URL) | source date | as-of date | falsifier |
|---|---|---|---|---|---|---|---|
| R7B-01 | G7 countries are 44.5% of world output, 9.6% of people and 30.2% of world exports of goods and services | T0 | Confirmed | https://api.worldbank.org/v2/country/all/indicator/NY.GDP.MKTP.CD (clubs.py) | 2026-10-08 release | 2024 | WDI revision moving any share by more than 1 point |
| R7B-02 | The G10 (11 countries) is 47.6% of world output and 10.3% of people | T0 | Confirmed | World Bank WDI (clubs.py) | 2026-10-08 | 2024 | as above |
| R7B-03 | The G20 with the EU is 86.3% of world output and 61.0% of people. Adding the African Union lifts people to 78.8% and output to 88.5% | T0 | Confirmed | World Bank WDI (clubs.py) | 2026-10-08 | 2024 | as above |
| R7B-04 | Malaysia is 0.38% of world output and 0.93% of world exports | T0 | Confirmed | World Bank WDI | 2026-10-08 | 2024 | as above |
| R7B-05 | The G10 began in 1962 with the IMF's General Arrangements to Borrow. Switzerland joined in 1964, making 11 | T4 | Plausible | https://nbb.be/en/glossary/definition?id=t000102 | n.d. | 1964 | IMF archive showing a different date |
| R7B-06 | The African Union became a G20 member in September 2023 | T4 | Plausible | press and G20 summaries (g20.org 403) | 2023-09 | 2023 | G20 official page stating otherwise |
| R7B-07 | The 2026 G20 summit is set for 14 to 15 December 2026 at Trump National Doral, and South Africa was told on 4 December 2025 it was not welcome at any 2026 G20 event | T2 | Confirmed | https://www.ewn.co.za/2025/12/15/first-meeting-of-g20-sherpas-under-us-presidency-to-get-underway-without-sa | 2025-12-15 | 2026-10-24 | South Africa attends the Miami summit |
| R7B-08 | The Basel Committee was set up at the end of 1974 by G10 central bank governors and now has 45 institutions from 28 jurisdictions. Members agree to implement its standards, which have no force of law by themselves | T1 | Confirmed | https://www.bis.org/bcbs/history.htm | n.d. | 2026-10-24 | BIS page change |
| R7B-09 | The April 2009 London communique announced "an additional $1.1 trillion programme of support", IMF resources trebled to $750 billion, a $250 billion SDR allocation, $100 billion of development bank lending, $250 billion of trade finance, and a $5 trillion fiscal expansion by end 2010 | T1 | Confirmed | http://www.g20.utoronto.ca/2009/2009communique0402.html | 2009-04-02 | 2009 | none (historical text) |
| R7B-10 | The same communique created the Financial Stability Board | T1 | Confirmed | as R7B-09 | 2009-04-02 | 2009 | none |
| R7B-11 | The DSSI suspended $12.9 billion of payments from May 2020 to December 2021. 48 of 73 eligible countries took part, and one private creditor | T0 | Confirmed | https://www.worldbank.org/en/topic/debt/brief/covid-19-debt-service-suspension-initiative | 2022-02-28 estimates | 2021 | World Bank revision |
| R7B-12 | Common Framework cases took about 2 years (Chad) to more than 5 years (Ethiopia). Zambia's took about 1,300 days. Creditor assurances took 11 months for Chad and about 8 months for Ghana | T2 and T4 | Plausible | https://www.imf.org/-/media/files/miscellaneous/gsdr-cochairs-progress-report-april-2024.pdf.md and https://www.businessday.co.za/bd/world/africa/2024-06-04-zambias-slow-debt-restructuring-a-lesson-for-other-nations/ | 2024-04-17, 2024-06-04 | 2026-06 | An official G20 count with different durations |
| R7B-13 | Ethiopia reached an agreement in principle with bondholders on 29 June 2026, after official creditors rejected a January 2026 deal as inconsistent with the July 2025 MoU | T4 | Plausible | https://worldview.ranenetwork.com/content/situational-report/2026-06-29/ethiopian-government-announces-debt-restructuring-deal-with-eurobond-committee | 2026-06-29 | 2026-08 | Ministry of Finance statement saying otherwise |
| R7B-14 | The OECD Inclusive Framework issued the side-by-side package on 5 January 2026, shielding US-parented groups from the income inclusion and undertaxed profits rules for years from 1 January 2026. Domestic top-up taxes still apply | T4 | Plausible | https://rsmus.com/insights/tax-alerts/2026/oecd-package-offers-path-for-us-multinational-enterprises.html | 2026-01 | 2026-01 | OECD text with different scope |
| R7B-15 | Malaysia applied the 15% global minimum tax from 1 January 2025 to groups with revenue of EUR 750 million or more | T1 | Confirmed | https://www.hasil.gov.my/wp-content/uploads/domestic-topup-tax-guidelines.pdf | 2024-12 and 2025-09 | 2026-10-24 | Repeal or deferral notice |
| R7B-16 | US regulators re-proposed the final Basel III rules on 19 March 2026, comments due 18 June 2026, with no final rule as of October 2026 | T1 | Confirmed | https://debevoise.com/-/media/files/insights/publications/2026/03/federal-banking-agencies-basel-iii-endgame-mullig.pdf | 2026-03-20 | 2026-10-24 | A final rule published before the chapter ships |
| R7B-17 | Our grading of nine G20 pledges: 2 delivered, 4 partly, 2 not delivered, 1 stalled. Delivery is concentrated in crisis years | Model | Plausible | section B of this file | 2026-10-24 | 2026-10-24 | A pledge regraded with T0 or T1 evidence |
| R7B-18 | In 2026Q2 the dollar was 56.70% of allocated reserves, the euro 20.60%, the yen 4.96%, the renminbi 2.11%. Total reserves $13.22 trillion | T0 | Confirmed | https://data.imf.org/en/news/imf%20data%20brief%20september%2030 | 2026-09-30 | 2026Q2 | COFER revision |
| R7B-19 | In the IMF's 2023 de facto classification, 32 economies were floating and 33 free floating, out of about 199 entries, with 43 conventional pegs, 12 currency boards and 17 with no separate legal tender | T4 relay of T1 | Plausible | https://en.wikipedia.org/wiki/List_of_countries_by_exchange_rate_regime | n.d. | 2023 | AREAER table with different counts |
| R7B-20 | The IMF classes the ringgit as "floating" de jure and de facto (2022 to 2026 annexes), and "other managed" de facto in 2010 to 2012. Bank Negara calls it a managed float | T1 via search summary | Plausible | https://www.elibrary.imf.org/view/journals/002/2024/073/article-A002-en.xml | 2024 | 2026 | Annex text read directly showing another class |
| R7B-21 | Malaysia imposed selective exchange controls on 1 September 1998, fixed the ringgit at 3.80 per dollar on 2 September 1998, and moved to a managed float against a basket on 21 July 2005 | T1 | Confirmed | https://www.bnm.gov.my/-/malaysia-adopts-a-managed-float-for-the-ringgit-exchange-rate and https://www.bnm.gov.my/significant-milestones-in-the-malaysian-foreign-exchange-market | 2005-07-21 | 2005 | none |
| R7B-22 | Bank Negara's reserves were $132.6 billion at end June 2026, 4.7 months of imports and 0.9 times short-term external debt | T0 | Confirmed | https://www.bnm.gov.my/-/international-reserves-of-bank-negara-malaysia-as-at-30-june-2026 | 2026-07 | 2026-06-30 | Later release |
| R7B-23 | Malaysia's federal debt was RM1.38 trillion, 63.1% of GDP, at end June 2026. 98.8% is domestic | T1 via press | Confirmed | https://www.thevibes.com/articles/news/128170/debt-servicing-bill-hits-rm57.3b-as-malaysias-federal-debt-climbs-to-rm1.38-trillion-mof | 2026-10-10 | 2026-06-30 | MOF Fiscal Outlook text differs |
| R7B-24 | Holders of Malaysia's federal debt at end June 2026: EPF 30.5%, banks 28.5%, insurers 5.2%, Bank Negara 3.8%, KWAP 2.2%, development institutions 2.1%, other domestic 6.2% (domestic institutions 78.5%) | T1 via press | Confirmed | as R7B-23 | 2026-10-10 | 2026-06-30 | as above |
| R7B-25 | Foreign holders had 21.4% of Malaysia's local-currency government securities at end March 2026, social security funds 32.6% | T0 relayed by ADB | Confirmed | https://asianbondsonline.adb.org/malaysia/market_summary/my_market_summary_202609.pdf | 2026-09 | 2026-03-31 | BNM data differ |
| R7B-26 | Islamic instruments are 47.9% (RM660.6 billion) of Malaysia's federal debt. Debt service is 15.8% of revenue in 2026 | T1 via press | Confirmed | as R7B-23 | 2026-10-10 | 2026 | as above |
| R7B-27 | Bank Indonesia held 29.4% of Indonesian government debt securities at end June 2026, foreigners 12.8%. The Bank of Thailand held 8.0% | T0 relayed by ADB | Confirmed | https://asianbondsonline.adb.org/indonesia/market_summary/id_market_summary_202609.pdf and th_market_summary_202609.pdf | 2026-09 | 2026-06-30 | Central bank data differ |
| R7B-28 | Malaysia was named one of 13 BRICS partner countries on 24 October 2024. It is not a full member | T2 | Confirmed | https://www.mida.gov.my/mida-news/malaysia-officially-a-brics-partner-country/ | 2024-10-24 | 2026-10-24 | BRICS announcement of full membership |
| R7B-29 | Foreign-currency international bonds of general government at 2026Q2: Turkey $100.4bn, Argentina $62.7bn, Indonesia $88.0bn, Saudi Arabia $147.2bn, Mexico $154.2bn, Malaysia $3.5bn, US $0.5bn | T0 | Confirmed | https://stats.bis.org/api/v1/data/WS_DEBT_SEC2_PUB/ (fxbonds.py) | 2026 release | 2026Q2 | BIS revision |
| R7B-30 | The Fed held $4.57 trillion of Treasuries on 21 October 2026, about 14.0% of the $32.6 trillion of debt held by the public | T0 | Confirmed | https://api.db.nomics.world/v22/series/FED/H41/RESPPALGUM_N.WW and https://api.fiscaldata.treasury.gov/services/api/fiscal_service/v2/accounting/od/debt_to_penny | 2026-10-22 | 2026-10-21 | none (dated stock) |
| R7B-31 | Consumer inflation: Argentina 219.9% (2024), Turkey 72.3% (2022) and 34.9% (2025), Sri Lanka 49.7% (2022), Zimbabwe 104.7% (2022), Malaysia 1.4% (2025), Japan 3.2% (2025) | T0 | Confirmed | https://api.worldbank.org/v2/country/ARG/indicator/FP.CPI.TOTL.ZG | 2026-10-08 | 2025 | WDI revision |
| R7B-32 | Capital openness (Chinn-Ito 2023): 1.00 for the US, Japan, euro members, Singapore and Hong Kong, 0.42 for Malaysia, Indonesia and Thailand, 0.16 for China, India and Turkey. Malaysia's index was 0.66 in 1996 and 0.16 in 2010 | T4 (academic index) | Confirmed | https://web.pdx.edu/~ito/kaopen_2023.xls | 2026-01 | 2023 | Next edition |
| R7B-33 | Reserves rose from 1997 to 2024: Malaysia $21.5bn to $116.2bn, Thailand $26.9bn to $236.9bn, Korea $20.5bn to $418.2bn, Indonesia $17.5bn to $155.7bn | T0 | Confirmed | https://api.worldbank.org/v2/country/MYS/indicator/FI.RES.TOTL.CD | 2026-10-08 | 2024 | WDI revision |
| R7B-34 | Sri Lanka suspended most external debt payments on 12 April 2022 | T4 | Confirmed (widely reported) | https://en.wikipedia.org/wiki/Sri_Lanka_sovereign_default | n.d. | 2022 | none |
| R7B-35 | Brazil's finance minister said on 27 September 2010 "We're in the midst of an international currency war" | T2 via press | Confirmed | https://calculatedriskblog.com/2010/09/brazils-finance-minister-world-in.html | 2010-09-27 | 2010 | none |
| R7B-36 | Printing power is a ladder with three tests (legal power, own-currency debt, market permission). Rung 1: US, euro area, Japan, UK. Malaysia: rung 3, near the top | Model | Plausible | sections C and D of this file | 2026-10-24 | 2026-10-24 | A rung 3 country printing heavily for its budget with no currency or inflation cost for several years, or a rung 1 country facing a failed auction |
| R7B-37 | Malaysia is typical of small open economies with their own currency and an outlier in five ways (1998 choice, foreign fifth, EPF, Islamic share near half, low central bank holdings) | Model on T0 and T1 data | Plausible | section D5 | 2026-10-24 | 2026 | Peer data showing similar values for Indonesia or Thailand |
| R7B-38 | China is 16.8% of world output and its currency 2.11% of reserves | T0 | Confirmed | World Bank WDI, IMF COFER | 2026 | 2024 and 2026Q2 | as sources |
| R7B-39 | The G20's delivery depends on regime: coordination in crises, free riding and prisoner's dilemmas in calm years | Model | Plausible | sections B and E | 2026-10-24 | 2026 | A calm-year G20 deal that binds the largest member against its short-term interest |
| R7B-40 | The 2026 US presidency narrowed the G20 agenda to growth, deregulation, energy and technology | T2 and T4 | Plausible | https://saiia.org.za/?p=75026 | 2026 | 2026-10 | Miami declaration covering poverty and climate at length |

### I2. Tripwires (dated)
| Tripwire | Date | What it would change | Source to check |
|---|---|---|---|
| US and China extend or end their one-year truce | Around 10 November 2026 (to verify) | Game E3 moves from truce to escalation or a longer deal | White House, MOFCOM |
| G20 Miami summit ends with or without a joint leaders' declaration, and whether South Africa attends | 14 to 15 December 2026 | Game E1 and the scorecard's 2026 row | Summit outcome document |
| IMF COFER 2026Q3: dollar share below 56.0% | About end December 2026 | Game E4: slow drift or a step down | IMF data brief |
| EU writes the side-by-side package into its Pillar Two directive | 31 December 2026 | Game E7: whether the floor holds with a carve-out | EU Official Journal |
| Ethiopia's bond exchange settles | By 31 March 2027 | Game E2: Common Framework case length | Ethiopian Ministry of Finance |
| US final Basel III rule | 2027 (no date set) | Scorecard row on Basel III | Federal Register |
| Malaysia's foreign share of government bonds above 25% or below 18% | Any 2027 monthly release | Game E6 and Malaysia's rung | BNM monthly statistics |
| Bank Negara reserves below 0.8 times short-term external debt | Any 2027 fortnightly release | Game E5 and Malaysia's insurance | BNM |
| Malaysia federal debt above 65% of GDP | Mid-year 2027 Fiscal Outlook | Statutory ceiling question | MOF |

### I3. Say/do gaps
- G20, London 2009: said no new protectionism. Did: kept adding trade measures, and the 2025 US tariff round broke the pledge outright.
- G20, Pittsburgh 2009: said phase out fossil fuel subsidies. Did: subsidies above $1 trillion in 2022 (IEA, to verify).
- US on the minimum tax: helped launch the 2021 deal, did not enact it, then won a carve-out in January 2026.
- Malaysia on the ringgit: says "managed float". The IMF calls it floating. Offshore trading stays fenced. All three are true at once, which is the gap worth teaching.

### I4. Anomalies (story versus data)
1. "Malaysia's bonds are controlled by foreign hot money": foreigners hold about 21%, four fifths is at home.
2. "Indonesia and Malaysia are alike": Bank Indonesia holds 29.4% of its government's debt, Bank Negara 3.8%. Indonesia, the G20 member, has used its printer for the budget far more than Malaysia.
3. "The G20 is two thirds of humanity": true only since the African Union joined in 2023 (61% before, 79% after).
4. "China is a monetary superpower": 16.8% of world output, 2.11% of world reserves.
5. "Countries that can print can't go broke": Sri Lanka could print rupees and still stopped paying in April 2022, because its debt was in dollars.

### I5. Open questions (could not confirm)
- The IMF's AREAER 2024 or 2025 regime counts (only the 2023 classification via a relay).
- The IMF 2026 Malaysia Article IV annex text (403), so "floating" rests on a search summary.
- The statutory 65% of GDP ceiling on MGS, GII and MITB.
- The size and never-drawn status of the Chiang Mai Initiative (USD 240 billion).
- Ghana's bond exchange date (October 2024) and Ethiopia's final settlement.
- The exact US and China truce expiry date in November 2026.
- Zimbabwe's ZiG start date (April 2024), Bulgaria's euro entry (1 January 2026), the GAB's lapse in 2018.
- Thailand's foreign share of government bonds, and Singapore's holder data.
- A primary source for the G20's own share claims (g20.org returned 403).

### I6. Proposed changes for the court and Propagator
1. New L2.4 chapter on this file, in the framer's parts 0 to 8.
2. L1 rb-em: update "about 28%" EPF share (December 2023) with 30.5% of federal debt at end June 2026 (MOF), or label both.
3. L2.3 tripwire wording "where no member can print its way out": add "the ECB can act for the whole area, on conditions".
4. L1 rb-09 "The US owes dollars it can create": add a link to the ladder's test 3.
5. L1 rb-leader game list: link each game to the L2.4 case and tripwire, so the two chapters do not repeat each other.

