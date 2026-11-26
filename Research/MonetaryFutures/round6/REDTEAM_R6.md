# Round 6 red team (Move 7, Standard tier, one agent for all voices)

Date: 2026-10-24. Target: round6/DRAFT_L2.md (L2.1 bonds, L2.2 who creates money, L2.3 the world's balance sheet), tested against round6/FRAME_R6.md.
Seen: ROLES.md, PLAN.md 2B and 4.5, FRAME_R6.md, DRAFT_L2.md, CONTEXT_R6.md, the lane files (skimmed), and the Level 1 chapter titles and text in site/rulebook.json (only to test the bridges). Not seen: VERIFY_R6.md, any court file. I did not write any of this. Searches used: 10. Model checks: scratchpad rt.py (python3 -I), inputs shown where used.

## Pass checklist
- [x] RT1 markets and officials (4 voices)
- [x] RT2 books and history (2 voices)
- [x] RT3 schools and readers (3 voices)
- [x] L2.3 extra voices (4)
- [x] Teacher voice (levels)
- [x] (a) Answer spec items missing or partial
- [x] (b) Word audit
- [x] (c) Overcorrection check
- [x] (d) Top three edits
- [x] Style: no em-dashes, no en-dashes, no semicolons

## Blocking summary (fix before publish)
| # | Chapter | Voice | Point |
|---|---|---|---|
| B1 | L2.3 | Statistician | "Every measure of wealth is bigger than every measure of debt" is false once debt means all financial liabilities (about $1,180T, McKinsey, computed). The verdict compares net wealth with gross debt |
| B2 | L2.3 | Ordinary reader | The kicker and tldr set "owns $520T to $600T" against "owes $350T to $365T", which invites the subtraction the chapter forbids |
| B3 | L2.3 | Accountant | The deficit ledger says the US "now owes $0.5T more" abroad because Japanese investors bought bonds with dollars they already held. That swap does not change the US net foreign position |
| B4 | L2.3 | Teacher (and currency strategist) | "Debt hit a record every year" (2021 to 2025) is false. The IIF reported a fall of about $4T in 2022, its first annual drop since 2015 |
| B5 | L2.3 | Sovereign debt analyst | "Italy pays a risk premium a country with its own central bank would not" is false as stated. France now pays more than Italy. France, a required pair, has no story |
| B6 | L2.1 | Bond trader | The "how much could a risk-free Treasury lose" answer (about 35%) is a constant-maturity price model. A real holder lost about 30% on price and about 7% after coupons from 1979 to 1981 (model) |

---

## RT1 Markets and officials

### New York Fed open market desk
- **Miss.** The L2.2 channel table puts the gross federal deficit ($0.98T, $5.90T, $3.07T, $1.99T) in the same columns as signed deposit flows, and the Fed channel has different values for the same window in three places: +$0.16T (channel table), +$0.19T net (sizes table), +$201B (era table). For 2020 to 2021 it is +$4.52T in one table and +$4.6T in another. A reader who adds a column gets nonsense, and the desk would ask which number is the Fed's.
- **Evidence.** DRAFT_L2.md blocks L2.2 [7], [64], [82]. The deficit row's own label says it is "netted by who buys the bonds", so it is not a deposit flow.
- **Also missing.** The Standing Repo Facility (since July 2021) as an on-demand reserve creation door, and the heading "Drains, new pipes and the Fed's own bills" (the Fed issues no bills).
- **Blocking.** No.
- **Fix.** Move the deficit to a memo line under the table ("gross deficit, before netting"). Use one Fed number per window and say whether it is Treasuries only or Treasuries plus mortgage bonds. Add one row: "Standing repo facility: creates reserves on demand against Treasuries, near zero in normal weeks." Rename the heading.

### Treasury debt manager
- **Miss.** "The 25 primary dealers must bid for their share every time, so a sale never fails for lack of buyers." That is a design goal stated as an absolute. More important, L2.1 never links the issuance mix to L2.2: bills bought by money funds with reverse repo cash add deposits, while coupons bought by nonbanks with deposits drain them until spent. That is the debt manager's biggest lever on money, and the frame asked for it (Q1 item 4, "link to L2.2").
- **Evidence.** L2.1 [39] and [7] (bills about 22% of tradable debt). L2.2 [36] already shows the reverse repo case, but L2.1 never points to it. Buybacks and the quarterly refunding are absent.
- **Blocking.** No.
- **Fix.** "Dealers are required to bid, so every auction is fully covered by design." Add two sentences after the auction: "Whether a sale drains public money depends on what the Treasury sells. Bills mostly go to money funds, coupons mostly to investors paying from deposits (see L2.2, Step 3)."

### Primary dealer or bond trader
- **Misstatement (blocking).** The "When the safe asset broke" table and the curiosity answer "How much could a risk-free 10-year Treasury lose? About 35%" use a constant-maturity, price-only model. A real holder who bought at par in 1979 had 7.3 years left in September 1981 and had collected coupons.
- **Evidence (model, scratchpad rt.py).** Par 8.76% bond, repriced at 15.84% with 7.33 years left: price 69.6, a 30% fall. Add 2.67 years of coupons (23.4): about minus 7% total. 2021 to 2023: price about minus 22.5%, about minus 19% after coupons, against the draft's minus 28%. The draft's minus 35% is right only for a new 10-year bond repriced at the end, which no one held.
- **Also missing.** April 2025: the 10-year rose from about 3.9% to about 4.5% in days while the dollar also fell, with the cash-futures basis trade (estimates of $800B to $1T, Fortune, contested) blamed by many. It is the clearest recent case of the safe asset and its currency falling together, and it belongs between 2023 and 2026. The repo T-account shows a hedge fund with $2 of its own money and no futures hedge, which reads as a naked bet. Say it is usually one leg of a basis trade.
- **Fix.** Retitle the column "Price fall on a new 10-year bond (model)" and add "What a holder lost, coupons included (model)": about minus 7% (1979 to 1981), about minus 19% (2021 to 2023). Rewrite the curiosity answer: "On price alone, up to about 30% from 1979 to 1981. With coupons, a holder lost far less."

### Bank treasurer
- **Miss.** The SVB T-account shows only the asset side. The run lived on the liability side: concentrated, mostly uninsured deposits that left in a day. The policy answer is missing too. In March 2023 the Fed's Bank Term Funding Program lent against Treasuries at face value, not market value. That is the strongest single piece of evidence for the "backbone" title: the central bank will treat a Treasury as worth par in a panic.
- **Evidence.** L2.1 [60], [61]. The uninsured share is widely reported at over 90% of SVB deposits (not re-fetched here, Data lane to confirm).
- **Blocking.** No.
- **Fix.** Add one row to the SVB table, "Deposits: mostly above the insurance limit, from a few connected clients", and one sentence: "Days later the Fed began lending to banks against Treasuries at face value. A bond's price can fall. Its value as collateral was held at par by policy."

---

## RT2 Books and history

### Accountant
- **Misstatement (blocking).** L2.3 [18], the deficit deal. The row "The US as a nation: now owes $0.5T more to the rest of the world" is wrong for the deal as described. The Japanese investors pay "with dollars earned selling goods to the US". Those dollars were already a US liability to Japan (a deposit at a US bank). Swapping a deposit for a Treasury changes the form of the claim, not its size. The US net foreign position fell earlier, when the US bought the goods.
- **Evidence.** Ledger test (PLAN 4.5 Move 3): Japan's assets: minus $0.5T deposit, plus $0.5T bond. US liabilities to Japan: minus $0.5T deposit, plus $0.5T bond. Net change zero.
- **Fix.** Either change the row to "Unchanged in this deal. It fell earlier, when the US paid for Japanese goods with dollars. The claim changed from a deposit to a bond", or rebuild the example so Japan sells yen for new dollars (then the US position falls by $0.5T). Also fix the household row: households receive $1T and buy $0.5T of bonds through a pension fund. Their net wealth rises $1T, but they hold $0.5T as bonds and $0.5T as deposits. Say that, so the reader sees where the money went.

### Economic historian
- **Miss.** The timeline starts in 1971, so it misses the best precedent for the chapter's key eye-opener (debt ratios fell 2021 to 2025 while dollar debt rose). From 1946 to the early 1970s, rich-country government debt ratios fell by more than half through growth, inflation and financial repression. L2.1 [74] already teaches the 1940s yield cap, but L2.3 never connects to it. Second, the schools table credits Reinhart and Rogoff with "Debt moves wealth around rather than destroying it". That is not their known claim. Their work (This Time Is Different, 2009) is about serial default, crises clustering after debt build-ups, and a contested debt-and-growth threshold.
- **Evidence.** L2.3 [32] to [34], [61]. The 1971 and 1980 "debt" points are world GDP times 1.0 (3.3 against 3.33, 11.5 against 11.48), taken from an IMF ratio whose early sample is mostly rich countries.
- **Blocking.** No.
- **Fix.** Add a "Before 1971" line: "After 1945 rich-country government debt shrank as a share of output for 25 years without being repaid. 2021 to 2025 was a short replay." Rewrite the Reinhart and Rogoff row: "Crises cluster after rapid debt build-ups, above all debt owed abroad in a foreign currency." Label the 1971 and 1980 points "model: world GDP times the IMF ratio of about 100%, early sample mostly rich countries".

---

## RT3 Schools and readers

### Post-Keynesian or MMT critic
- **Miss.** L2.3 puts government and private debt into one total and one danger story. The post-Keynesian point (Minsky, and the Schularick and Taylor data) is that fast private credit growth is what predicts crises, and the BIS publishes a credit-to-GDP gap for exactly this. The chapter has no tripwire built on it. In L2.2, "Deficit spending is the only source of net financial assets for the private sector as a whole" misstates the MMT claim. The claim is for the non-government sector, which includes foreigners. A domestic private sector can also gain net financial assets from a current account surplus (Germany, Japan, Malaysia in some years).
- **Blocking.** No.
- **Fix.** Add a tripwire row in L2.3: "Private credit growing much faster than output for several years (BIS credit-to-GDP gap)." In L2.2 change the quote to "for the non-government sector (domestic private plus foreign)".

### Hard-money critic
- **Miss.** The ruler section measures the world only against other currencies, never against gold or goods. In gold terms, world household wealth fell about a third in 2025: dollar wealth rose 10.8% (UBS) while gold rose about 66% (press, year-end about $4,320/oz). Computed: 1.108 / 1.66 minus 1 = minus 33%. Second, every debt total leaves out unfunded promises (state pensions, Social Security, health care), which hard-money writers add to "debt". They are in the "leaves out" column but never sized or explained. Third, the lane flagged that the owner's "500T" echoes his Round 1 "gold x10" belief. The draft drops that and tells an invented "swapped places" origin story instead.
- **Blocking.** No.
- **Fix.** Add a curiosity question: "World wealth rose 10.8% in dollars in 2025. Measured in ounces of gold, did it rise or fall? (Fell about a third.) Which ruler is right? (Neither alone.)" Add one sentence on unfunded promises: "not debt in any of these tables, but real claims on future taxes, and in some countries larger than all government bonds (Data lane to size)." Replace the origin story with candidates, as in edit 1 below.

### Ordinary reader who takes the headline literally
- **Misstatement (blocking).** The kicker reads "The world owns about $520 trillion to $600 trillion and owes about $350 trillion to $365 trillion". The tldr opens "The world owns more than it owes". A literal reader concludes "the world is $200T in the black, so debt does not matter", which is the subtraction the next bullet forbids. "Owns" here is a net figure (debts already taken off), "owes" is a gross one, so the comparison is also not like for like (see the statistician).
- **Fix.** New kicker: "You may have heard that the world owes $300 trillion, or $500 trillion. Both can be true, depending on what you count, and the world owes all of it to itself. This chapter shows what the world really owns, why its debts cancel but still matter, and how each big country is built." Move the owns-versus-owes bar chart below the definitions box.

---

## L2.3 extra voices

### National accounts statistician
- **Misstatement (blocking).** The headline verdict compares unlike things. The "owns" bars are net (UBS household wealth is already net of $64.6T of household debt, McKinsey net worth is net of everything) or the gross financial assets of one subset (FSB). The "owes" bars are gross loans and bonds only. On a like-for-like gross basis, McKinsey's 2026 balance sheet is nearly $1,800T of assets, about $620T of them real, so about $1,180T of financial assets matched by about $1,180T of financial liabilities (computed, includes deposits, shares, pensions). On that count liabilities exceed $500T by far. So "Every measure of wealth is bigger than every measure of debt" and "On every main measure the world owns more than it owes" are true only for the IIF, IMF and BIS definition of debt.
- **Three more definition errors.** (1) The card "Nonfinancial debt: Bank debt is left out, because it is mostly the others' deposits" is wrong. The IIF financial sector debt ($76.4T) is bonds and loans owed by financial firms. Deposits are in none of these debt totals. It is left out to avoid counting the same lending twice (a bank borrows in order to lend). (2) The timeline divides BIS debt by World Bank world GDP, but quotes BIS ratios calculated on BIS's own country coverage. A reader dividing $262.7T by $118.35T gets 222%, not the 246% printed. 2008: 184%, not 202%. 2020: 257%, not 285%. (3) "The earning power of companies above what their books show" survives in household wealth (shares at market price) but cancels in national net worth, where equity is a liability of the firm.
- **Evidence.** McKinsey Global Balance Sheet 2026 at a glance ($1.8 quadrillion, $600T net worth). DRAFT_L2 [6], [9], [32], [33].
- **Fix.** Add a third rung to the measures table: "All financial liabilities, including deposits and shares (McKinsey, 2025): about $1,180T (computed)." Change the caption to "On the usual debt measures (loans and bonds), wealth is bigger than debt. Count every financial liability and the debt side is about twice world net worth. Neither comparison tells you how rich the world is, because the claims cancel." Fix the card. Either compute ratios on world GDP or say "BIS ratio, on BIS coverage".

### Sovereign debt analyst
- **Misstatement (blocking).** The Germany and Italy callout ends "Italy pays a risk premium a country with its own central bank would not". Countries with their own central bank pay risk premia too (UK gilts in 2022, Malaysia, most emerging markets). And the 2026 market contradicts the simple debt-ratio story. In early October 2026 the France to Germany 10-year spread was about 140 to 147 basis points and Italy's about 116 to 123 (Il Sole 24 Ore, QuiFinanza). France, with government debt of 116% of output, paid more than Italy at 137%. France is a required pair in the spec and has no callout. The framer's curiosity question 8 (why can one euro country borrow cheaply and another not) was replaced by a household wealth question.
- **Also missing.** Every rule says "ask who owes whom, in which currency, and how soon", but the structure table has no currency column, no average maturity and no interest bill. Japan's government debt is shown as 193% (BIS), while the IMF puts it at about 207% gross and about 136% net of government financial assets (IMF via Commerzbank, F&D September 2026). A reader who has heard "Japan 250%" will be confused by three numbers and no explanation.
- **Fix.** Replace the last sentence of the callout: "Neither country can print euros. Investors charge whoever looks weakest at the moment: in October 2026 that was France (about 1.4 points over Germany) more than Italy (about 1.2), because France's deficit and politics worried them more than Italy's higher debt." Add a France callout. Add columns for share of debt in own currency, average maturity and interest as % of revenue. Add a note on Japan: gross about 207%, net about 136% (IMF), BIS 193% on its own basis.

### Wealth inequality researcher
- **Miss.** "We owe it to ourselves" cancels in the total, not between people. Creditors and debtors are different households, and interest flows from one group to the other. The desk's own Round 2 data shows it: of the US household net worth gain since 2019, the top 10% took 67.5% and the bottom half 3.1% (CONTEXT_R6, R2E-19). The chapter shows the 100-adult village but never connects it to who holds the debt. Second, the scale tools mix denominators. The village uses UBS's sample of about 3.85B adults, while "$93,000 per adult" divides $517.7T by about 5.6B adults. On the UBS sample the lane gets $134,605. Third, UBS models many countries from thin data and revised the US median (lane anomaly), so medians such as Italy $131,001 against Germany $53,485 need a "modelled" label and a World Inequality Database cross-check.
- **Blocking.** No.
- **Fix.** Add a sentence to the great cancellation: "The debts cancel for the world, not for each family. The people who own the bonds and deposits are mostly the top tenth. The people who owe the mortgages and pay the taxes are everyone else." Use one adult count throughout and say which. Add "modelled by UBS" to the median figures.

### Currency strategist
- **Misstatement.** "Its net foreign debt of $26.5T is mostly in its own currency" (curiosity answer [21]) and "the US owes the rest of the world a net $26.5 trillion". The net international investment position is not debt. It includes foreign ownership of US shares and companies, and BEA says the quarterly swings are driven largely by stock prices. It is also stale: minus $27.54T at end 2025 (assets $42.96T, liabilities $70.49T, BEA, 25 March 2026). Second, the chapter never connects to the real currency risk in world debt, dollar debt owed outside the US (the $14T that L2.2 already cites from the BIS). Malaysia's "about zero" net position hides what currency its foreign liabilities are in. Third, 2022, the year a strong dollar shrank world debt in dollars, is missing from the ruler section, though it is the cleanest example.
- **Blocking.** No, but fix the wording before publish (it appears in a curiosity answer).
- **Fix.** "The US's net foreign position is about minus $27.5T (end 2025). Roughly speaking, part of it is foreigners owning US shares and firms, part is debt, and almost all of it is in dollars (Data lane to split it with BEA Table 1.2)." Add one ruler row: "2022: world debt fell about $4T in dollars (IIF), mostly because the dollar rose. Nobody repaid." Add a line linking to the $14T offshore dollar debt.

---

## Teacher voice: do the levels work for a self-paced reader?
- **Most important problem (blocking).** A curiosity answer is wrong. "Debt to GDP fell for five years while debt hit a record every year. How can both be true?" Both halves need a fix. The IIF reported world debt fell about $4T in 2022, its first annual fall since 2015 (Reuters via Kitco, 22 February 2023). The draft's own insider [35] says the BIS ratio rose in 2025. Fix: "The ratio fell four years in a row on every count (2021 to 2024), and five on the IIF's. Dollar debt set a record in four of those five years. In 2022 a strong dollar shrank it." This is a better curiosity question anyway, because it ties to the ruler.
- **Density.** The Level 2 chapters are 5,342 to 6,614 words. The Level 1 median is about 1,600, so each one is 3.3 to 4.1 times as long. That is 25 to 30 minutes of reading with about 20 tables per chapter. A self-paced reader needs stopping points.
- **Order.** L2.2 opens with the full channel table, which uses "reverse repo" and "Treasury account" before the two floors are taught three sections later. The spec asked for the table first. A teacher would put a three-row preview first and the full table after Step 3.
- **Bridges that claim Level 1 taught something it did not.** (1) L2.2 bridge "rb-03: Wars suspend money rules, as the 1942 to 1951 yield cap did." rb-03 never mentions 1942, 1951 or the yield cap. (2) L2.3 curiosity "China is not in the G7... (builds on rb-11)". rb-11 (The new board game) is about young people's ladders and housing and never mentions China. (3) L2.1 bridge "rb-04: ... which is why foreigners hold about a third of them". I found no "third of Treasuries" line in rb-04. (4) References mix ids and positions. "Level 1 chapter 13" means rb-10 (the yardstick), while the bridge id rb-13 is Eye-openers. A reader looking up "chapter 13" will find the wrong one. Use titles.
- **Curiosity quality.** The strongest questions genuinely surprise a reader and build on Level 1: Japan's debt falling a third in dollars, Malaysia borrowing more cheaply than the US, the missing QT shrinkage, Tether against countries. Weaker ones are recall quizzes ("In 1970 banks owned almost a third..."). The Italy against Germany question lost the framer's real surprise (who pays more to borrow), and the answer now in the market is France.
- **Assumed but not taught.** "Term premium", "convexity" and "indirect bidders" are defined in place, which is good. "NIIP" ("owns abroad minus owes abroad") is never named or taught in Level 1 and is used as a column. "Risk-weighted assets" appears in L2.2 without a card.
- **Fix.** Split each chapter into three parts with a "stop here" box and three self-check questions each. Repair the four bridges. Replace chapter numbers with titles. Add a card for "net foreign position".

---

## (a) Answer spec items still missing or partial

### L2.1 Bonds
| Spec item | Status | What is missing |
|---|---|---|
| 2 Who issues, by issuer and country | Partial | World total and US share only. No split into governments, companies, mortgage pools and cities, and no country split beyond the US |
| 3 Holders by sector | Partial | Chart has foreigners, Fed, banks, money funds. Pensions and insurers, households and hedge funds are missing |
| 4 How a bond is born, link to L2.2 | Partial | Auction walked through well. No bills against coupons choice and its money effect, no refunding, no buybacks |
| 6 Yield curve, real yields, inflation-linked bonds | Partial | Inflation-linked bonds mentioned once. No real yield or breakeven number |
| 7 Regimes, Japan yield curve control as the extreme case | Partial | Yield curve control appears only in L2.2's table. April 2025 is absent |
| 10 Overcorrection guard ("safe" and "bubble") | Partial | "Bonds are a bubble" is never tested. The second story is "dumping" instead |

### L2.2 Who creates money
| Spec item | Status | What is missing |
|---|---|---|
| 1 Channel table with stress year | Partial | Present, but the Fed row has three values for the same window and the deficit row is gross |
| 5 Money-like claims by definition (M1, M2, broad) | Partial | M2 only. M1 and broad liquidity are not shown |
| 8 Regime label on every "most" | Partial | See word audit: the myth block and two insiders |
| Case 2 key | Pass | All channels, both floors, nonbank seller rule, netting, 1971 to 2026 by regime. Exception: insider [77] contradicts the netting rule (see c) |

### L2.3 The world's wealth and debt
| Spec item | Status | What is missing |
|---|---|---|
| 1 Definitions box | Partial | Present, but the nonfinancial debt card is wrong, and no gross liabilities measure is given |
| 3 Why they cannot be subtracted | Partial | Currency and refinancing are in the rules, not shown. Distribution is missing |
| 4 Timeline in dollars and as multiple of GDP | Partial | No wealth to GDP multiple in the table. 1971 and 1980 wealth is a model with no inputs shown. 2022 is missing |
| 5 Country structure | Partial | No mean and median wealth per adult column, no currency of debt column, no housing against financial split. France has no story. Belgium, Netherlands and Sweden (G10) are absent from the structure table |
| 7 Scale tools checked by script | Partial | Arithmetic checks out (rt.py), but adult denominators are mixed |
| 9 Tripwires | Missing | There is no "what would change the picture" section. A house price fall and the dollar appear only in curiosity answers. Add: house prices, a strong dollar, a sovereign crisis (France), inflation, private credit gap |
| Blind spots: market against face value, unfunded promises, derivatives notional | Missing or thin | Derivatives notional (about $846T at mid 2025, BIS, gross market value about $22T) is the most common source of "world debt is $500T+ / $1 quadrillion" claims online and is never explained |

### Missing from the answer spec itself (for the framer)
- A gross liabilities measure (McKinsey's $1.8 quadrillion balance sheet), without which the "swapped" verdict cannot be tested.
- Distribution of claims (who is creditor, who is debtor inside a country).
- The ruler against gold and goods, not only against other currencies.
- The NIIP split into equity and debt.
- Debt service and maturity (how soon, at what rate) as a column, not only a rule.
- The 1946 to 1974 precedent for ratios falling without repayment.

---

## (b) Word audit (new material, unquantified absolutes only)

| Where | Text | Problem | Rewrite |
|---|---|---|---|
| L2.1 [39] | "so a sale never fails for lack of buyers" | Absolute | "so every auction is fully covered by design" |
| L2.1 [34] | "Most people picture the stock market as the giant" | Unsourced claim about people | "Many people picture..." |
| L2.1 [54] | "the only voter that votes every second" | Rhetoric, fine as a quote-like line | Keep, or "a voter that votes every second" |
| L2.2 [26] | "Nearly all primary dealers belong to big banking groups" | Unquantified | Give the count (for example "most of the 25, with a few nonbank dealers") after checking the NY Fed list |
| L2.2 [41] | "This was the largest single drain in 2021 and 2022" | No number | Give the reverse repo rise ($1.64T in 2020 to 2021) beside the next largest drain |
| L2.2 [59] | "Deficit spending is the only source of net financial assets for the private sector" | Scope error | "for the non-government sector" |
| L2.2 [60] | "None of the three critical schools points to a missing channel" | Strong claim | "We found no school whose strongest objection points to a channel missing here" |
| L2.2 [66] | "Loans are the main channel most years" | Regime label missing in the myth block | "in normal years (87% to 96% of the two printers, 1971 to 2007)" |
| L2.2 [77] | "the old worry ... is basically right" | Overstates, contradicts table [72] | See (c) |
| L2.3 tldr | "Japan's state owes its own people" / "Italy's state is in debt, its families are not" | Absolutes | "Japan's state owes mostly its own central bank and savers (foreigners about 13%)" / "Italian families owe little (36% of output)" |
| L2.3 tldr, [5] | "On every main measure the world owns more than it owes" | False on gross liabilities | "On the usual debt measures (loans and bonds)" |
| L2.3 [6] caption | "Every measure of wealth is bigger than every measure of debt" | False (B1) | See statistician fix |
| L2.3 tldr, bridge, ray | "Most new wealth is a higher price" / "Most wealth is a price, not a pile" | Unlabelled as to year | "In 2025 about four fifths of the rise in household wealth was price (McKinsey, press)" |
| L2.3 tldr | "What is left is real things, mostly land and buildings" | Quantify | "real estate about two thirds (McKinsey, 2021 study)" |
| L2.3 [9] card | "Bank debt is left out, because it is mostly the others' deposits" | Wrong | "left out so the same lending is not counted twice" |
| L2.3 heading [12] | "why the world cannot be in debt" | Overstated | "why the world cannot owe anyone outside itself" |
| L2.3 [34], [36] | "the dollar amount set a new record every year" | False for 2022 | See teacher fix |
| L2.3 [45] | "a risk premium a country with its own central bank would not" | False absolute | See sovereign analyst fix |
| L2.3 [60] | "Debt is bigger than wealth: Wrong. Wealth is 1.5 to 1.7 times debt" | "Wrong" without scope, range off | "On the usual debt measures, wealth is 1.4 to 1.7 times debt (517.7 / 365 = 1.42, 600 / 348.3 = 1.72). On all financial liabilities, the reverse." |
| L2.3 [8] | "Myth: The world owes more than it owns" | Labels the owner's question a myth. The owner never wrote "owes more than it owns" | Retitle "Popular claim" and give the scoped reality |

Clean on the audit: the "most" lines in L2.2 tldr and [69] (regime-labelled and sized), "Reserves always" in the channel table (true for open market purchases), and "only countries can owe outside" (true by definition).

---

## (c) Overcorrections (debunks that plant a new simplification)

1. **"The two numbers have swapped places."** This plants "world debt is small next to wealth". "300T+" is literally true (a floor). "500T+" is too high for loans and bonds ($348T to $365T) and far too low for all financial liabilities (about $1,180T). The origin story (FSB assets plus older IIF debt) is a guess. The lane's stronger lead, the owner's own Round 1 gold-x10 belief, was dropped. If the owner was testing the engine, the draft passed the first half (it did not accept the numbers) and failed the second (it replaced them with an equally confident story and never asked which definition of debt would make 500T+ true).
2. **"The world owes it to itself."** This plants "world debt is harmless". It cancels in the total, not between people, maturities or currencies. The chapter's own rule ("who owes whom, in which currency, and how soon") is never filled with numbers.
3. **"The global debt bomb is overstated, the ratio fell five years running."** This plants "debt is shrinking". Dollar debt rose about $46T from end 2024 to mid 2026 (IIF $319.5T to over $365T), and the BIS ratio rose in 2025.
4. **L2.2 insider [77]:** "the old worry that governments finance themselves by creating money is basically right". This plants "deficits print money", which contradicts the netting table [72] 40 blocks earlier (a deficit funded by households and funds from savings leaves no new money). Fix: "It is right when banks or the Fed end up holding the bonds, as in 2020 to 2021 (about 68% to 72% of new debt). It is wrong when savers buy them."
5. **L2.3 China:** "it grew on borrowing more than on rising asset prices" compares 2025 debt shares with end-2022 wealth figures. China's property boom was also an asset price story. Soften to "its debt share is above its wealth share on these mixed-vintage figures".

---

## (d) The three edits that would most improve the chapters

1. **Rebuild L2.3's opening around rungs of definitions, not a swap.** Put the definitions box first, then a two-sided ladder. Owed: nonfinancial debt $263T to $272T, loans and bonds $348T to $365T, all financial liabilities about $1,180T. Owned: household net wealth $518T to $570T, national net worth $600T, gross assets about $1,800T. Say plainly: "300T+ is right as a floor. 500T+ is wrong for loans and bonds, and too small for everything owed. Wealth and debt cannot be subtracted, and the world owes all of it to itself." Rewrite the kicker, the tldr, the bar caption, the myth block and the "Say it back" answer to match. This fixes B1, B2 and overcorrections 1 to 3 at once.
2. **Fix the six factual and ledger errors in answers and tables.** The 2022 dollar fall (and five years becomes four on the BIS count). The NIIP is not net debt (update to minus $27.54T, end 2025). The Japan deficit ledger row. The nonfinancial debt card. The bond loss model (add the holder column, about minus 7% and about minus 19%). France against Italy, plus the "would not" sentence. Also the 1.4 to 1.7 range and the L2.2 insider [77] contradiction.
3. **Make the levels readable at a self-paced speed.** Split each Level 2 chapter into three parts with a stop box and three self-check questions. Put a three-row preview before L2.2's full channel table. Repair the four bridges (rb-03 yield cap, rb-11 China, rb-04 "a third", chapter numbers against ids). Add L2.3's missing tripwire section and three structure columns (currency of debt, average maturity, interest as % of revenue), plus a France callout.

---

## Sources used in this file
- IIF via Reuters and Kitco, 22 Feb 2023, global debt fell about $4T in 2022: kitco.com/news/off-the-wire/2023-02-22/global-debt-sees-first-annual-drop-2015-iif
- BEA, US international investment position, Q4 and year 2025 (25 Mar 2026): bea.gov/index.php/news/2026/us-international-transactions-and-investment-position-4th-quarter-and-year-2025
- BEA Q3 2025 release (stock prices drive valuation changes): bea.gov/news/2026/us-international-investment-position-3rd-quarter-2025
- Gold 2025 gain about 66%: wam.ae/en/article/15y61k3-gold-set-for-best-year-nearly-half-century, metalcharts.org/gold-price-history/2025
- BIS OTC derivatives at end-June 2025 ($846T notional): bis.org/publ/otc_hy2512.htm, ISDA second-half 2025 summary
- IMF Japan gross and net debt via Commerzbank (fxstreet.com, 1 Jun 2026) and IMF F&D Sep 2026 "Japan's Debt Beyond the Headlines"
- April 2025 Treasury selloff and basis trade: fortune.com/2025/04/11/inside-bond-market-800-billion-murder-mystery-basis-trade-time-bomb-fed, hedgeweek.com
- BTP-Bund and OAT-Bund spreads, early October 2026: quifinanza.it (6 Oct 2026), en.ilsole24ore.com (Radiocor, 5 Oct 2026)
- McKinsey Global Institute, The global balance sheet 2026, at a glance: mckinsey.com/mgi/our-research/the-global-balance-sheet-2026-imbalance-and-divergence
- Model checks: scratchpad rt.py (bond prices and durations, gold-terms wealth, ratio ranges, BIS ratio denominators)
