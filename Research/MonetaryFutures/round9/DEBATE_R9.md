# DEBATE_R9: Judge and completeness auditor rulings (court docket, PLAN section 6, version 5.1)

Ruled on 2026-11-12. Docket: round9/VERIFY_R9.md (V points, numbered in the order of its tables) and round9/REDTEAM_R9.md (B, C, F, G, H points), against round9/DRAFT_R9.md. Scope: all of rb-moves, and in rb-moneymake (MM) only blocks 72 to 79. General education, not financial advice. Nothing committed and the site was not edited.

Judge checks (4 of 5 fetches used, no personal identifier sent): (1) Fed weekly Treasury holdings, FRED series TREAST: $2.523T on 11 Mar 2020, $2.978T on 25 Mar, $3.634T on 8 Apr. (2) Statement from NVIDIA Board of Directors, investor.nvidia.com, 8 Nov 2026, via search: a committee of independent directors with outside independent counsel, and 'no reason to believe' national security or NVIDIA secrets were compromised. A press summary says no findings yet. (3) EPF 2025 results, press reports of 28 Feb 2026 (Bernama and others): dividend 6.15%, investment assets RM1.409 trillion, equities 46.1% of assets and 64% of investment income. (4) Bank Negara FSR 1H2025 press release, 16 Oct 2025: median debt service ratio 33% on outstanding household loans, 41% on new ones, household debt 84.8% of GDP.

Word budget: the lint on site/rulebook.json gives rb-moves a main path of 3,202 words with 33% tables. After these edits the Judge estimates about 3,800 words and about 30% tables, so the main path sits at the ceiling. The Editor must run `python3 -I tools/lint_chapter.py site/rulebook.json rb-moves` and, if it is over 3,800, cut E52's last sentence first, then G2 (E38).

## 1. Ruling table

| Point | Block | Ruling | Why |
|---|---|---|---|
| V01 | kicker | accept | No report gives $236 billion. It is the desk's own sum, so the kicker states it as market value, not as what the news said (E01). |
| V02 | kicker, [8] | accept | WatchCharts tracks pre-owned luxury watches, not vintage ones. The uncle's Rolex in [5] stays as a story (E01, E05). |
| V03 | [0] | accept | Neither lane sources 'largest' (E02). |
| V04 | [7] | accept | No source for 'a few times a month' (E04). |
| V05 | [8] | accept | 'A further 5%' may count the same fall twice. Verifier wording used (E06). |
| V06 | [10] | accept | The share count is derived, not taken from a filing. Say so (E08). |
| V07 | [14] | accept | The source gives no dollar figure. Use its own -0.5% (E10). |
| V08 | [14] | accept | 'Every' is too strong and the Size cell had no size (E11). |
| V09 | [17] | accept in part | Paraphrase was wrong. The fix uses the board statement, not the email (E12). |
| V10 | [17] | accept | 'Not about the accounts' prejudges an open investigation. Dropped (E12). |
| V11 | [18] | accept | A fund falling does not show every chip maker fell (E14, E15). |
| V12 | [18], [19], [31] | accept in part | The bill dates from March and the cause is not shown. Stated as timing only, without the verifier's 'fears of AI regulation', which is also unsourced (E15, E17, E37). |
| V13 | [19] | accept | 'The news explains' becomes timing, plus a line that timing is not cause (E17). |
| V14 | [19] | accept | Related reports began on 29 October, so 'before the news existed' is wrong (E17). The person in that report stays unnamed. |
| V15 | [20], [56] | accept | No flow data, and the whole market rose on 9 November (E18, E55). |
| V16 | [24] | accept | 'Four largest' is not in any source. The tally is P (E22). |
| V17 | [24] | accept | 'Worldwide' is not in the NPR text (E23). |
| V18 | [25] | accept | 'Worst day' points at two different days. Name 10 November (E24). |
| V19 | [25] | accept | These are plans, not money already paid (E24). |
| V20 | [28] | accept | Morningstar item is P. Attributed (E27). |
| V21 | [28] | accept | Undated P item. Date and source type added (E29). |
| V22 | [29] | accept | Press tally that mixes dates (E31). |
| V23 | [29] | accept | Whether the bill passed was not checked (E32). |
| V24 | [31] | accept in part | Start date comes from rb-moneymake [47] ('1 Jun 2022, QT starts'), already in the Rulebook (E35). |
| V25 | [35] | accept | 'Led by energy' was about the monthly rise and came from press reports (E39). |
| V26 | [35] | accept | Lane says late August (E40). |
| V27 | [35] | accept | The reading went beyond the lane. Verifier's shorter cell beats C5 on table budget (E41). |
| V28 | [35] | accept | One data point cannot show a range (E42). |
| V29 | [36] | accept | 'Closest' is a stretch. Merged with B7 (E43). |
| V30 | [38] | accept | Contradicts table [37]. Merged with B1 (E44). |
| V31 | [38] | accept | -36.6% is more than a third (E44). |
| V32 | [40] | accept | Name the days and say the figure is an estimate (E45). |
| V33 | [41] | accept | Use GAO's wording: one estimate, more than 1,000 homes each, about 3% of rentals (E46). |
| V34 | [41] | accept in part | GAO says the Atlanta share may be overstated. Dropped from the main path to stay within the word budget (E46). |
| V35 | [41] | accept in part | The 2026 report used a different investor group. Dropped rather than mixed in (E46). |
| V36 | [41] | accept | 'Most buying ... ordinary savers' has no source. Dropped (E46). |
| V37 | [42] | accept | Only some episodes are documented (E47). |
| V38 | [44] | accept in part | The lecture is named from the owner's input as a T4 source. 'Stanford' is from memory and is dropped (E49, E64). |
| V39 | [53] | accept in part | The textbook was not fetched, so the result is attributed to Cover's theory and listed as an open item (E54). |
| V40 | [57] | accept | The table has six rows. C15a wording used (E58). |
| V41 | [57.1] | accept | The source shows two figures. Show both (E59). |
| V42 | [58.1] | accept | Damodaran's series is real estate (E61). |
| V43 | [59.0] | accept | Kelly 1956 is about a gambler with an information edge. Chosen over C12's Latane and Breiman history, which is not in any lane (E62). |
| V44 | [59.1] | accept | The bound is not confirmed in a primary source. Verifier's hedge chosen over C12, which states a 1996 guarantee nobody checked (E63). |
| V45 | [28] | accept | Use Treasury's exact term (E26). |
| V46 | MM[73] | accept | 'Most' is too strong. Merged into the three limits (E67). |
| V47 | MM[74] | accept | Mislabel. B4's shares were recomputed by the Judge from the BIS rows and are correct (E68). |
| V48 | MM[75] | accept in part | Use the Rulebook's own Ministry of Finance figure (47%, June 2026, rb-moneymake [64] and [66]), not a secondary 48% (E70, E79). |
| V49 | MM[75] | accept | Read only via a search summary. Softened to 'reported' (E71). |
| V50 | MM[75] | accept | Matches lane wording (E72). |
| V51 | MM[75] | accept | Search summary only. Attributed to the IMF (E73). |
| V52 | MM[76] | accept | A current-status claim rests on a 2018 study (E74). |
| V53 | MM[76] | accept | It mixed an IMF measure with a World Bank one. Same-measure 2022 pair used (E75). Also covers B11's one-source point. |
| V54 | MM[76] | accept | Bank Negara reports what the loans were for, not what secures them (E76). |
| V55 | MM[76] | accept | Vietnam assets and debt are unmeasured. Merged with B11 (E77). |
| V56 | MM[77] | accept | The Canada and Germany reasons were made up. German firm debt is lower (E78). |
| V57 | MM[77] | accept | Purchases from banks raise reserves only. Merged with B6 (E79). |
| V58 | MM[79.1] | accept | Firms differ by 7 points (E80). |
| V59 | MM[79.1] | accept | Firms differ by 6 points (E81). |
| V60 | MM[79.1] | accept | The reason offered was a guess (E82). |
| V61 | MM[79.2] | accept | The lane calls its test weak (E84). |
| V62 | MM[79.1] | accept | 13.5 rounds to 14 (E83). |
| V63 | all rows marked match | accept | No change needed: [7] 429m, margin debt, [10] closes, [11] series, [13] 3.2 cents, [17] board date, [18] numbers, [21], [24] loans, [28] Fed, BlackRock, buybacks, Citadel, [31] 2022 and 2020 returns, [35] TIPS, M2, [37], [46] to [52], [57.0], [57.1] $429bn, results date, [57.2], [58.0], [59.2], [60], MM[72], [74] rows, [75] Malaysia, [76] 47%, GDP per head, appliances as quoted, [77] Canada and Germany figures, [78], [79.0], other [79.1] rows, [79.2] vintages. |
| B1 | [38] | accept, merged | Same error as V30. Merged wording (E44). |
| B2 | [17] | accept in part | Board statement checked by the Judge (investor.nvidia.com, 8 Nov 2026). Leaves out private life and says no finding yet. Took the verifier's quote marks and dropped the CNBC email line, because the lesson does not need it (E12, E60). |
| B3 | MM heading, [72], [73] | accept in part | Overcorrection guard. Keeps the owner's money-creation angle ('clues to where its money was born') and states the limits: a stock built over decades, bonds bought by non-banks, foreign lending, the currency door. The Singapore, Hong Kong and China currency examples are unsourced, so Bank Negara is used from rb-moneymake [65] (E65 to E67). |
| B4 | MM[74] | accept | Shares of total recomputed and correct (E68). |
| B5 | MM[75] | accept in part | The two Malaysian figures need explaining. The verifier read Bank Negara's note that the total adds development banks and selected non-bank lenders. Why BIS lands at 70 is an open item (E69). |
| B6 | MM[77] | accept in part | Logic accepted. 'Much of that half was bought from banks' is unsourced and is dropped (E79). |
| B7 | [36] | accept in part | Loose match accepted. The 19% policy rate is from memory, not a lane. Dropped (E43). |
| B8 | [41] | accept, merged | Merged with V33 to V36 (E46). |
| B9 | [5], [8], kicker | accept in part | The press did report the watch fall. 'Few margin calls' is unsourced and is dropped (E01, E03, E07). |
| B10 | [40], [56] | accept in part | Chapter 7 gap is real (owner's ask). Done as new block N1 after [40], not appended to [40]. The March 2020 size was checked by the Judge (Fed weekly series, Treasuries $2.523T on 11 Mar to $3.634T on 8 Apr 2020). 'Investors dumped even government bonds' is not sourced, so it is dropped. The Q fix is accepted (E56). |
| B11 | MM[76] | accept in part | Bank Negara's 33% median debt service ratio was checked by the Judge (BNM FSR 1H2025 press release). 'Medium confidence' is replaced by the verifier's plain verdict that the data cannot settle it (E77). |
| B12 | [14] | accept in part | The Malaysia gap is real. Done as new block N2 using lane R9A-09 (deposits plus EPF 68.4% of household financial assets), not a table row with a figure still to fetch. |
| B13 | [25] | accept in part | Day and scale fixed. 'A large part becomes NVIDIA's sales' is unsourced and is dropped (E24). |
| C1 | MM[73] | accept in part | One clause says the buyer now owns a bond. Fits rb-moneymake [33] and [82] (E67). |
| C2 | [29] | accept in part | Title and open coordination accepted. The H20 $4.5bn charge is from memory and the lane's $266bn is P. Both dropped for the word budget (E30, E33). |
| C3 | [31] | accept in part | Mechanism fixed. 'Cut rates to zero' is from memory and is dropped. Stimulus checks are in rb-moneymake [96] (E34). |
| C4 | [31] | accept in part | Borrowing is not the deficit (lane R9B-33, $850bn cash assumption). The bills against bonds sentence is unsourced and is dropped (E36). |
| C5 | [35] | reject | V27's shorter fix chosen. The term-premium point costs table words. |
| C6 | [18], [19] | accept in part | Accepted except 'about 25', which is not sourced (E13 to E17). |
| C7 | [10] | accept in part | Gross turnover is a real caveat. It goes in the method box [57.1] to stay within the word budget (E09). |
| C8 | [21] | accept | Already in Level 1 rb-buckets [5] (E19). |
| C9 | [42] | accept in part | Documented part added, with Cantillon cited to Level 1. Block type and 'Myth' label kept, because the template fixes them (E48). |
| C10 | [47], [50], [52] | accept in part | The copy-risk line and 'at no interest' are accepted (E51, E53). The [52] bound sentence is rejected because the bound is unconfirmed (V44). The backtest, the 75-times example and the 2008 all-cash example are open items. |
| C11 | [53] | accept | 'Most tips' was unsourced. The new wording is true by definition (E54). |
| C12 | [59.0] to [59.2] | accept in part | Lecture named as a T4 source (E64). Kelly history and the 1996 guarantee rejected for V43 and V44. Cover and Ordentlich 1996 is an open item. |
| C13 | [24] | accept | Stock against flow. The full rule matches rb-moneymake (E21). Trimmed. |
| C14 | MM[77] | accept in part | The euro point is accepted. The packaged-mortgages claim is unsourced and is dropped (E78). |
| C15a | [57] | accept | Same as V40 (E58). |
| C15b | [56] | accept | Rebalancing across seasons builds on rb-08 (E57). |
| C15c | [8] | reject | 'End of 2023' is unconfirmed. V05's overlap note chosen. |
| C15d | [14] | reject | Norway stays as an example of quarterly marking, plus the -0.5% from V07. The Malaysian anchor is N2. |
| C15e | [14] | reject | Applying a US aggregate 3.2 cents to one firm's holders, many of them abroad, states more than the paper supports. |
| D | answer spec gaps | accept as open items | Each needs data. Listed in section 4. |
| F1 | [23] | accept | 'Most of the confusion' had no basis (E20). |
| F-rest | [1], [3], [10], [13], [15], [52], [53], [56], [72], [79.1] | accept | Kept as the red team advised. No edit. |
| G0 | drawer through every Part | accept in part | The drawer comes back in Part 4 (E52). The Part 2 drawer line was cut for the word budget. |
| G1 | [27] | accept in part | Kitchen taps accepted. The red team's split ('the rest only pour') would misfile the Treasury, which moves money between floors (rb-moneymake Step 3). Reworded and trimmed (E25). |
| G2 | [34] | accept in part | The ice frame is from rb-08 [3]. The sailor passage is trimmed for the word budget (E38). |
| G3 | [44] | accept | Drops a superlative. 'His' is removed (E50). |
| G4 | [48] | accept | The arithmetic is right (a 50% fall then a 50% rise leaves RM750). It brings back the drawer and a ringgit anchor (E52). |
| G5 | Godley owed | reject for now | 'A share boom often comes with a lending boom' has no number. Open item. |
| H | [17] fairness | accept | No finding, no private detail, board as the source, timing as timing (E12, E17, E60). Re-check before publishing (open items). |
| PartB | nine voices | accept as mapped | Each voice maps to B3, B10, B11, C1 to C4, C7, C9 and C10 above. The accountant's point (EPF assets are partly claims on the same Malaysian debt) is rejected for this round. It is true but adds a third layer to a box already long. |
| J1 | rb-moves Rules | open item | The draft's rb-moves 'Rules:' line is empty. The Editor should flag it. The Judge does not write rules. |

## 2. Counts

- Points ruled: 107 (63 verifier, 43 red team, 1 Judge's own).
- Accept: 69. Accept in part: 31. Reject: 5. Accepted as open items: 2.
- Edits for the Editor: 84 replacements and 2 new blocks. rb-moves: 64. rb-moneymake: 20.
- Where the verifier and the red team wrote different fixes for the same block, the Judge chose or merged: [8], [17], [18], [19], [25], [35], [36], [38], [41], [57], [59.0], [59.1], MM[73], MM[74], MM[76], MM[77].
- Rulings changed from the drafts' own framing: 'birth certificate' becomes 'clues' with four stated limits. [17] now rests on the board statement. Rotation and crash-buyer claims are stated as readings.

## 3. Edits for the Editor

Each old text is copied from round9/DRAFT_R9.md and occurs once in its block (checked by script). 'kicker' is the chapter kicker line. 'heading 72' is the section heading just before MM block 72. Apply in order. Point ids are in brackets.

### rb-moves

**E01** | block kicker | (V01, V02, B9)
- old: `A vintage watch can lose a third of its price and nobody writes a headline. A share slips 5% and the news says $236 billion was lost.`
- new: `A pre-owned luxury watch can lose a third of its price and nobody puts a dollar figure on it. A share slips 5% and $236 billion of market value is wiped off the screen.`

**E02** | block 0 | (V03)
- old: `NVIDIA, the largest maker of AI chips,`
- new: `NVIDIA, a leading maker of AI chips,`

**E03** | block 5 | (B9)
- old: `Yet only one of them makes the evening news when it does.`
- new: `Yet when the share falls, the news can put a dollar figure on it that same evening. When the watch falls, nobody can.`

**E04** | block 7 | (V04)
- old: `When one like it sells, a few times a month`
- new: `Only when a similar watch sells, in dealer and auction sales`

**E05** | block 8 | (V02)
- old: `Watches did fall. A widely followed watch price index,`
- new: `Watches did fall. A widely followed index of pre-owned luxury watch prices,`

**E06** | block 8 | (V05, C15c)
- old: `It fell a further 5% in 2024 and recovered about 9% in the year to June 2026.`
- new: `It fell 5.1% in the year to December 2024, which may overlap with the third above, and recovered about 9% in the year to June 2026, as reported.`

**E07** | block 8 | (B9)
- old: `There were no margin calls, no funds forced to sell, and no headlines saying the world lost money. A watch owner who did not sell had a paper loss nobody recorded.`
- new: `The fall was reported in the press. But no index fund was forced to sell, and no headline said the world lost $X billion. Nobody multiplies one sale price by every watch in every drawer. A watch owner who did not sell had a paper loss that no screen showed.`

**E08** | block 10 | (V06)
- old: `NVIDIA has about 24.2 billion shares.`
- new: `NVIDIA has about 24.2 billion shares (market value divided by price, not a filing figure).`

**E09** | block 57.1 | (C7)
- old: `so the true figure lies between volume times the day's low and volume times its high.`
- new: `so the true figure lies between volume times the day's low and volume times its high. It is gross turnover. Some trades were dealers buying and selling the same shares within the day, so the cash that moved from final sellers to final buyers was less.`

**E10** | block 14 | (V07)
- old: `(about $30 billion)`
- new: `(-0.5% for the quarter)`

**E11** | block 14 | (V08)
- old: `The cost of fresh money rises for every listed firm that falls`
- new: `A lower price makes selling new shares raise less money (no size pulled)`

**E12** | block 17 | (V09, V10, B2, H)
- old: `On Sunday 8 November its board opened an independent investigation. Reports said he had been the target of a foreign intelligence effort, and he told staff his private conduct had fallen short. It was a story about personal conduct and security, not about the company's accounts. Now line the days up against every other chip maker.`
- new: `On Sunday 8 November the board said independent directors, with outside counsel, would investigate reports about the chief executive. The reports said the chief executive had been the target of a "foreign intelligence effort." The board said it had no reason to believe national security or company secrets were compromised (Statement from NVIDIA Board of Directors, 8 November 2026). It had reached no finding when this chapter was written. This chapter leaves out reports about anyone's private life, because the lesson does not need them. Now line the days up against other large chip makers.`

**E13** | block 18 | (C6)
- old: `| Day | NVIDIA | All chip shares (SMH fund) | What it tells you |`
- new: `| Day | NVIDIA | Chip fund (SMH, NVIDIA included) | What it tells you |`

**E14** | block 18 | (V11, C6)
- old: `Every chip maker fell. NVIDIA fell less than its sector`
- new: `The chip fund fell more than NVIDIA`

**E15** | block 18 | (V11, V12, C6)
- old: `Every chip maker fell, after the midterm results and a proposed pause on new data centres`
- new: `The chip fund fell further, two days after the midterm elections`

**E16** | block 18 | (C6)
- old: `| 10 Nov | -5.5% | -0.8% | Mostly NVIDIA alone |`
- new: `| 10 Nov | -5.5% | -0.8% | NVIDIA fell about 5 points more than the fund that holds it |`

**E17** | block 19 | (V13, V14, V12, C6)
- old: `The news explains the last two days, a fall of about 9.5% from $186.64 to $168.89. The biggest single day, 5 November, hit every chip maker after the midterm elections and a proposed pause on new data centres, before the news existed. From its October high of $239.24 the share had already fallen 22% by 6 November.`
- new: `The board's statement came on the Sunday before the last two days, when NVIDIA fell about 9.5% from $186.64 to $168.89. That is timing, and timing alone does not prove cause. The biggest single day, 5 November, hit the chip fund harder than NVIDIA, two days after the midterm elections and three days before the board's statement. Related press reports had appeared from 29 October, so even the timing is not clean. From its close of $239.24 on 6 October the share had already fallen 22% by 6 November.`

**E18** | block 20 | (V15)
- old: `That is money rotating inside one bucket, from one chip maker to others, not money leaving the market.`
- new: `That fits money rotating inside one bucket, from one chip maker to others. But this project did not measure where the cash went, and the whole market rose that day.`

**E19** | block 21 | (C8)
- old: `A: Nobody. It was never a pile of cash.`
- new: `A: Almost nobody. It was never a pile of cash. Short sellers and buyers of put options gained, but only what the other side of their contracts lost, a small slice of $236 billion.`

**E20** | block 23 | (F1, G0)
- old: `Get the verb right and most of the confusion goes.`
- new: `Get the verb right and the headline usually makes sense.`

**E21** | block 24 | (C13)
- old: `| Created | New money appears: a bank lends, or the central bank buys from someone who is not a bank | US bank loans reached $14.10 trillion in September 2026, up 7.6% in a year, and each new loan made a new deposit |`
- new: `| Created | New money appears: a bank lends or buys from someone who is not a bank, or the central bank buys | US bank loans grew by about $1 trillion in the year to September 2026, to $14.10 trillion, and that net growth became new deposits |`

**E22** | block 24 | (V16)
- old: `The four largest US technology firms planned about $730 billion of spending on data centres and chips in 2026`
- new: `Amazon, Alphabet, Microsoft and Meta guided to about $730 billion of capital spending in 2026 (press tallies of company guidance)`

**E23** | block 24 | (V17)
- old: `About $2 trillion off technology shares worldwide on 5 November`
- new: `More than $2 trillion of tech market value wiped out on 5 November (NPR)`

**E24** | block 25 | (V18, V19, B13)
- old: `The technology firms' building plans are about ten times the cash that traded in NVIDIA on its worst day. Every dollar of them is real money paid to chip makers, builders and power companies.`
- new: `The technology firms' building plans for one year are about ten times the cash that traded in NVIDIA on 10 November. Once spent, that is real money paid to chip makers, builders and power companies, for things that get made.`

**E25** | block 27 | (G1)
- old: `When someone says the money is moving, ask who is moving it, with what action, and how much. Here are the largest hands on the taps, as of autumn 2026.`
- new: `Picture a kitchen full of taps. Banks and the central bank can make new water appear. The Treasury moves water between the floors. Funds, companies and traders pour from one glass into another. When someone says the money is moving, ask whose hand is on which tap, and how far it is turned. Here are the biggest hands as of autumn 2026.`

**E26** | block 28 | (V45)
- old: `Planned $618 billion of net borrowing for October to December 2026`
- new: `Planned $618 billion of net privately-held marketable borrowing for October to December 2026`

**E27** | block 28 | (V20)
- old: `In US funds they have held more than other funds since the end of 2023 (Morningstar)`
- new: `Morningstar reports they have held more than active funds in US funds since the end of 2023`

**E28** | block 28 | (rule P (R9B-37))
- old: `BlackRock alone managed $15.49 trillion at the end of September 2026`
- new: `BlackRock alone reported $15.49 trillion under management at the end of September 2026`

**E29** | block 28 | (V21)
- old: `About $9.25 trillion, Japan the largest at about $1.10 trillion`
- new: `About $9.25 trillion in July 2026 data (press tally of Treasury figures), Japan the largest at about $1.10 trillion`

**E30** | block 29 | (C2)
- old: `(Industry blocs are labels, not minds)`
- new: `(Industry blocs are many firms, not one mind)`

**E31** | block 29 | (V22)
- old: `the three largest fund managers run at least $33.5 trillion between them`
- new: `the three largest fund managers run roughly $33.5 trillion or more between them (a press tally using figures from different dates)`

**E32** | block 29 | (V23)
- old: `from a separate bill not yet passed`
- new: `from a separate bill (not passed as far as this project found)`

**E33** | block 29 | (C2)
- old: `When they push the same way it is usually shared incentive, the focal point game from Level 2 chapter 4, not a meeting.`
- new: `When they push the same way, much of it is shared incentive, the focal point game from Level 2 chapter 4. Some of it is open and organised: trade groups, lobbying that the law makes them record, and contracts with government.`

**E34** | block 31 | (C3)
- old: `| Central bank buying (QE) | New reserves push sellers toward riskier buckets | 2020: the Fed bought bonds on a vast scale from March, and US shares ended the year up 18.0%, counting dividends (the cash firms pay out) |`
- new: `| Central bank buying (QE) | The central bank takes bonds out of private hands. Sellers who are not banks get new deposits and look for something else to hold | 2020: the Fed bought bonds on a vast scale from March while the government sent stimulus checks. US shares ended the year up 18.0%, counting dividends (the cash firms pay out). One year cannot separate the causes |`

**E35** | block 31 | (V24)
- old: `Ran from mid 2022 until 1 December 2025`
- new: `Ran from 1 June 2022 until 1 December 2025`

**E36** | block 31 | (C4)
- old: `$618 billion of planned net borrowing in one quarter of 2026`
- new: `$618 billion of planned net borrowing in October to December 2026, which also refills the Treasury's cash account, so it is not the same as the deficit`

**E37** | block 31 | (V12)
- old: `5 November 2026: a proposed pause on new data centres helped push chip shares down 11.2% in a day`
- new: `5 November 2026: chip shares fell 11.2% two days after the midterm elections. A bill to pause new data centres had been put forward in March 2026. Any link is reported, not proven`

**E38** | block 34 | (G2)
- old: `Level 1 chapter 8 showed that money has seasons. Investors need a way to tell which season they are in now. No single number does it. Six dials, read together, come close.`
- new: `Level 1 chapter 8 said money behaves like ice. It melts in a warm season and keeps its shape in a cold one. No single gauge tells you which season you are in. Six dials, read together, come close.`

**E39** | block 35 | (V25)
- old: `Rising, led by energy`
- new: `Rising, with gasoline over half of September's monthly rise (press reports of the BLS release)`

**E40** | block 35 | (V26)
- old: `up from 2.63 in August`
- new: `up from 2.63 in late August`

**E41** | block 35 | (V27, C5)
- old: `Positive, so markets do not expect a sharp fall in rates`
- new: `Positive, not inverted`

**E42** | block 35 | (V28)
- old: `| About 101.7, October 2026 | Middling, in a narrow range since summer |`
- new: `| About 101.7, 21 October 2026 | Middling. One reading, not a trend |`

**E43** | block 36 | (V29, B7)
- old: `The closest past match is 1980 to 1982, when cash and short bills paid well and gold fell. That is a reading to argue with, not a forecast.`
- new: `One past period with high real rates is 1980 to 1982. The match is loose. Inflation then was 8.4% and falling, while today it is 3.7% and rising. That is a reading to argue with, not a forecast.`

**E44** | block 38 | (V30, V31, B1)
- old: `Cash beat everything in 2008 and barely beat inflation over fifty years. Gold won the 1970s and lost the early 1980s. Shares won the long run and lost a third of their value in a single year.`
- new: `In 2008 cash beat shares, but long government bonds (+20.0% after inflation) and gold (+4.2%) beat cash. Over the 55 years from 1970 to 2024 cash beat inflation by just 0.5% a year. Gold won the 1970s and lost the early 1980s. Shares won the long run and lost more than a third of their value in a single year.`

**E45** | block 40 | (V32)
- old: `On NVIDIA's two worst news days, buyers paid about $155 billion.`
- new: `On 9 and 10 November, buyers paid about $155 billion for NVIDIA shares (an estimate from volume times typical price).`

**E46** | block 41 | (V33, V34, V35, V36, B8)
- old: `By 2022, 32 of them owned about 450,000 US single-family homes, and in Atlanta they held about a quarter of all single-family rentals (US Government Accountability Office). The same office found in 2026 that in six cities such investors owned under 1% to 3% of all single-family homes. Most buying after a crash comes from ordinary savers whose pensions keep buying every month.`
- new: `By June 2022, 32 investors with more than 1,000 homes each owned nearly 450,000 US single-family homes, by one estimate cited by the US Government Accountability Office. That was about 3% of all single-family rentals.`

**E47** | block 42 | (V37)
- old: `and that is well documented.`
- new: `and some episodes are documented, such as large investors buying foreclosed homes after 2008.`

**E48** | block 42 | (C9)
- old: `Planning the crash is a different claim, and it needs its own evidence: who acted, how, and what records that would leave behind.`
- new: `Planning the crash is a different claim, and it needs its own evidence: who acted, how, and what records that would leave behind. One part is documented. Rescues after a crash, such as rate cuts and central bank buying, lift asset prices first. That helps people who already own assets (the Cantillon effect from Level 1). It is not proof of a plan.`

**E49** | block 44 | (V38)
- old: `Thomas Cover of Stanford University studied information, and in a lecture on investing he asked a simple question.`
- new: `Thomas Cover, an information theorist, asked a simple question in a recorded lecture on growth-optimal and universal portfolios.`

**E50** | block 44 | (G3)
- old: `His answer is the most useful arithmetic in this book, and it fits on one page.`
- new: `The answer fits on one page, and once you see it you will read every return figure differently.`

**E51** | block 47 | (C10)
- old: `Two things that each go nowhere make about 6% a period together.`
- new: `Two things that each go nowhere make about 6% a period together, in this made-up game. Real markets can pay far less for rebalancing, or nothing, as the box below shows.`

**E52** | block 48 | (G4)
- old: `The same arithmetic explains why falls hurt more than rises help. Growth compounds, so it follows the typical rate, not the average.`
- new: `Now go back to the drawer. Say the ten shares are worth RM1,000 and fall by half, to RM500. A 50% rise takes them back to just RM750. To get home they need 100%. Falls hurt more than rises help, because growth compounds from wherever you now stand.`

**E53** | block 50 | (C10)
- old: `| 150%, borrowing the extra | -20.9% |`
- new: `| 150%, borrowing the extra at no interest | -20.9% |`

**E54** | block 53 | (V39, C11)
- old: `Extra information, a tip or a forecast, can raise your growth rate only by as much as it actually tells you about what happens next. Most tips tell you almost nothing, so they are worth almost nothing, however confident they sound.`
- new: `In Cover's theory, extra information, a tip or a forecast, can raise your growth rate only by as much as it actually tells you about what happens next. A tip that is right no more often than chance tells you nothing, so it adds nothing to your growth, however confident it sounds. Paying for it lowers your growth.`

**E55** | block 56 | (V15)
- old: `A: Largely to other chip makers. AMD rose 13.3% and Broadcom 8.8%. Buyers sold one chip share and bought another, so money rotated inside the bucket.`
- new: `A: Possibly in part to other chip makers. AMD rose 13.3% and Broadcom 8.8%, and the whole market rose that day. This project did not measure the flows, so rotation inside the bucket is a likely reading, not a measured fact.`

**E56** | block 56 | (B10)
- old: `Q: Interest is paid only if the lender spends it back.`
- new: `Q: Level 1 chapter 7 showed that interest can be paid from a circulating flow, as long as the lender spends it back.`

**E57** | block 56 | (C15b)
- old: `comes from discipline, not prediction. (builds on rb-defl)`
- new: `comes from discipline, not prediction. (builds on rb-08)`

**E58** | block 57 | (V40, C15a)
- old: `The four NVIDIA days in full, and the method`
- new: `Six NVIDIA trading days in full, and the method`

**E59** | block 57.1 | (V41)
- old: `Market value was $4.08 trillion at the 10 November close,`
- new: `Market value was $4.08 trillion at the 10 November close (the same site's history table shows $4.07 trillion),`

**E60** | block 57.2 | (B2, H)
- old: `A lawsuit is an allegation, not a finding.`
- new: `A lawsuit is an allegation, not a finding. The board's investigation had reached no finding when this chapter was written.`

**E61** | block 58.1 | (V42)
- old: `Home prices leave out rent and borrowing`
- new: `The real estate series leaves out rent and borrowing`

**E62** | block 59.0 | (V43, C12)
- old: `the rule Kelly set out in 1956 for betting on horses`
- new: `the rule John Kelly set out in 1956 for repeated bets with an information edge`

**E63** | block 59.1 | (V44, C12)
- old: `For two assets it is guaranteed to end with at least about 1 divided by twice the square root of the number of periods of what the best fixed mix chosen in hindsight would have made:`
- new: `For two assets, a refined version of the method has a proven worst-case bound of about 1 divided by twice the square root of the number of periods of what the best fixed mix chosen in hindsight would have made (this project has not checked the exact form against the papers):`

**E64** | block 59.2 | (C12)
- old: `The calculations here were rerun by this project.`
- new: `The lecture this chapter draws on is a recorded talk by Cover on growth-optimal and universal portfolios (video wsd8nsJg6D8), a teaching source, not a paper. The calculations here were rerun by this project.`

### rb-moves, new blocks

**N1** | insert after block 40 | (B10, G5 in part)
```json
{"type": "insider", "label": "Musical chairs, played in a market", "text": "This is the musical chairs of Level 1 chapter 7, played in a market. In quiet years debts are paid slowly from a flow of income. In a panic everyone wants cash on the same day, and the chairs run out. An investor who borrows against shares can drift the way Minsky described: calm years tempt bigger loans, and a fall forces a sale. In March 2020, as the pandemic hit, the Fed bought US government bonds on a vast scale. Its holdings rose from about $2.52 trillion on 11 March to about $3.63 trillion on 8 April (Fed weekly balance sheet). That is a central bank adding chairs so the music can keep playing."}
```

**N2** | insert after block 15 | (B12)
```json
{"type": "insider", "label": "Closer to home", "text": "For a Malaysian reader, the nearest wire is retirement savings. Deposits and EPF savings make up 68.4% of household financial assets (Bank Negara, Financial Stability Review, 2025). EPF invests part of them in shares, so a worker who never bought a share is still wired to share prices."}
```

Sources for the new blocks. N1 uses rb-07 [15] (panics need cash now), [20] (Minsky) and [25] (settlement capacity), all in the Rulebook already, and the Fed weekly balance sheet (FRED TREAST, T0, checked by the Judge). The lane should log that figure as a claim (open item 2). N2 uses lane R9A-09 (Bank Negara FSR 1H2025, verified). That EPF invests in shares is backed by the EPF 2025 results the Judge checked (open item 3).

### rb-moneymake (blocks 72 to 79 only)

**E65** | block heading 72 | (B3)
- old: `### Read a country's debt mix: the birth certificate of its money`
- new: `### Read a country's debt mix: clues to where its money was born`

**E66** | block 72 | (B3)
- old: `Read with Step 1 and Step 2 in mind, it is something more useful: a map of where each country's money was born.`
- new: `Read with Step 1 and Step 2 in mind, it is something more useful: a set of clues to where each country's money was born. It is not a full birth record, for reasons the next box sets out.`

**E67** | block 73 | (V46, B3, C1)
- old: `Where household and firm debt is bank loans, each loan created a deposit on the day it was made (Step 1). So those two columns show where most of a country's money came from, and who still owes for it. The government column is different. It created money only where banks or the central bank bought the bonds (Step 2). Where pension funds or savers bought them, it moved money that already existed.`
- new: `Where household and firm debt is bank loans, each loan created a deposit on the day it was made, and each repayment destroyed one (Step 1). So the bank loan part of those two columns shows which borrowers stand behind much of the money that exists today. The government column is different. It created money only where banks or the central bank bought the bonds (Step 2). Where pension funds or savers bought them, it moved money that already existed, though the buyers now own a bond the government owes. Three limits keep this from becoming a new simple story. The table is a stock built up over decades, while money is created and destroyed as a flow, year by year. The columns also count bonds bought by pension funds and other non-banks, and loans from abroad, which created no deposits at home. And one door is missing. When Bank Negara buys dollars to steady the ringgit, it creates ringgit at first with no local debt behind it.`

**E68** | block 74 | (V47, B4)
- old: `Three shapes. Household-heavy (South Korea, Thailand, Malaysia): money born mostly in home and car loans. Firm-heavy (Hong Kong, China): money born in business borrowing. Government-heavy (Japan, Singapore): most of the debt is bonds, and who bought them decides whether money was created.`
- new: `Three shapes. Households hold their largest share of the debt in Thailand (39% of the total), South Korea (37%) and Malaysia (31%). Yet firms still owe more than households in South Korea and Malaysia. Firms owe the largest share in Hong Kong (59%), China (48%) and Germany (44%). Government owes about half in Japan (54%) and Singapore (51%), and 44% in the United States. For government bonds, who bought them decides whether money was created.`

**E69** | block 75 | (B5)
- old: `Malaysia: 70 of its 85 points of household debt are bank loans (Bank Negara, June 2025)`
- new: `Malaysia: 70 of its 85 points of household debt are bank loans (Bank Negara, June 2025). Bank Negara's 85 also counts development banks and some other lenders. Check which lenders a number counts`

**E70** | block 75 | (V48)
- old: `Japan: the Bank of Japan holds about half of its government's bonds (late 2025)`
- new: `Japan: the Bank of Japan held about 47% of government bonds, excluding bills, in June 2026 (Ministry of Finance)`

**E71** | block 75 | (V49)
- old: `Singapore: its pension board invests members' savings in special government bonds`
- new: `Singapore: its pension board, the CPF Board, is reported to invest members' savings in special government bonds (Singapore Ministry of Finance)`

**E72** | block 75 | (V50)
- old: `Not at home. Money already created elsewhere crosses the border`
- new: `Not by itself. Money already created elsewhere crosses the border, and a local deposit appears only if the proceeds are deposited at a local bank`

**E73** | block 75 | (V51)
- old: `Hong Kong: a hub where mainland Chinese firms raise money`
- new: `Hong Kong: described by the IMF as a hub where mainland Chinese firms raise money (IMF, 2025)`

**E74** | block 76 | (V52)
- old: `It has no official household debt series and is not in the BIS data.`
- new: `A 2018 study found no official household debt series, this project found none since, and it is not in the BIS data.`

**E75** | block 76 | (V53, B11)
- old: `Vietnam's banks lend about 136% of output in total (IMF, 2024), more than Malaysia's 116% (World Bank, 2024).`
- new: `Vietnam's credit to the economy was about 136% of output in 2024 (IMF). On the World Bank's bank credit measure Vietnam was 125% against Malaysia's 113% in 2022, the latest year with both.`

**E76** | block 76 | (V54)
- old: `three quarters of their debt is homes and cars that sit behind it`
- new: `three quarters of their debt was borrowed for homes and cars`

**E77** | block 76 | (V55, B11)
- old: `So Malaysian households owe more and own more. Low debt in a table can mean thrift, or a narrow way of counting.`
- new: `So by the figures found, Malaysian households owe about 85% of output and hold documented financial assets of 177%. The post is right that the burden is real. The typical Malaysian borrower's repayments take about a third of income (median debt service ratio 33% on existing loans, Bank Negara, 2025). No comparable asset figure was found for Vietnam. On income Malaysia is clearly ahead, but on household wealth the data found cannot settle the post's question. Low debt in a table can mean thrift, a narrow way of counting, or little access to credit.`

**E78** | block 77 | (V56, C14)
- old: `A: More of Canada's money was born in home loans, yes. Canadian banks created deposits as they lent against rising house prices. German households rent more and borrow less, so more of Germany's money came from lending to firms.`
- new: `A: Canadian households owe about twice as much as German households relative to output, so more of the bank-made money behind Canada's deposits sits in household loans, where banks made those loans. The BIS figures do not say why. German firms also owe less (89% of output against Canada's 118%). And Germany's money is the euro, created by banks across the euro area, so one country's table cannot show all of it.`

**E79** | block 77 | (V57, B6)
- old: `A: Only the part banks and the Bank of Japan bought. The central bank holds about half, and that half was paid for with new reserves. Bonds bought by Japanese insurers and pension funds moved money that already existed.`
- new: `A: No. A debt figure is a stock, not a count of money. The Bank of Japan held about 47% of government bonds, excluding bills, in June 2026 (Ministry of Finance), paid for with new reserves, which are upstairs money. Where it bought from banks, only reserves rose. Where it bought from insurers, pension funds or households, deposits rose too. Do not add the bank part and the central bank part together, because the same bond can pass through both. Bonds still held by insurers and pension funds moved money that already existed.`

**E80** | block 79.1 | (V58)
- old: `| Singapore | 45 / 130 / 172 | 44 / 123 / 173 | Close |`
- new: `| Singapore | 45 / 130 / 172 | 44 / 123 / 173 | Firms 7 points lower in BIS, otherwise close |`

**E81** | block 79.1 | (V59)
- old: `| Thailand | 88 / 76 / 60 | 89 / 82 / 57 | Close |`
- new: `| Thailand | 88 / 76 / 60 | 89 / 82 / 57 | Firms 6 points higher in BIS, otherwise close |`

**E82** | block 79.1 | (V60)
- old: `(counted at face value, not market prices)`
- new: `(BIS face value 101, market value 87, and the image's 81 matches neither)`

**E83** | block 79.1 | (V62)
- old: `| Japan | 60 / 113 / 199 | 65 / 116 / 213 | Government 13 points higher in BIS |`
- new: `| Japan | 60 / 113 / 199 | 65 / 116 / 213 | Government about 14 points higher in BIS |`

**E84** | block 79.2 | (V61)
- old: `Canada, Germany, Malaysia, Singapore and South Africa match 2024.`
- new: `Canada, Germany, Malaysia, Singapore and South Africa come close to 2024, on a best-fit test that is only a weak signal.`

## 4. Open items that need data

1. NVIDIA, before publishing: re-check after the 17 November 2026 results and any board update. If the investigation reports a finding, or the lawsuit moves, [17], [19] and [57.2] must be re-ruled. The 29 October related report stays unnamed.
2. Lane R9B claims table: add the March 2020 figure (FRED TREAST, $2.523T on 11 Mar 2020 to $3.634T on 8 Apr 2020, T0) for N1. Add the board statement (investor.nvidia.com, 8 Nov 2026, T1).
3. EPF row (B12): log EPF 2025 results from EPF's own release, not the press: dividend 6.15%, assets RM1.409 trillion, equities 46.1% of assets and 64% of investment income. Once logged, N2 may add one sized sentence, within the word budget.
4. MM[75], B5: why BIS shows Malaysian household debt at 69.5 while Bank Negara's total is 84.8. Confirm which lenders the BIS series covers.
5. MM[75]: open the Singapore MOF reserves page (CPF and SSGS) and IMF Hong Kong report 25/16. Both were read only as search summaries (R9A-19, R9A-20).
6. [59.1], C12: check the universal portfolio bound and its exact form against Cover (1991) and Cover and Ordentlich (1996). [53]: check the side-information result in Cover and Thomas, Elements of Information Theory.
7. C10 and FRAME B-Q5: a real backtest of a fixed mix against buy and hold across 2008 and 2022 from the Damodaran series. Also the lecture's 4, 8 and 75 times example, with the hindsight warning, and the 13 months to October 2008 all-cash example. Both are M in the lane.
8. FRAME B-Q2: the channels where net money enters or leaves shares (issuance, buybacks, IPOs, cash takeovers, dividends, margin), net equity issuance from Fed Z.1, and buybacks against total market value.
9. FRAME B-Q3: evidence on how well timing the seasons works.
10. FRAME B-Q4: a rival readings table with options and positioning data for 5 to 10 November.
11. FRAME A-Q1 and A-Q4: a T-account for a Malaysian mortgage and a Vietnamese working-capital loan, broad money against private credit over time for Malaysia and Vietnam, and why high debt is not always a crisis (holder, currency, Thailand 1997, Japan).
12. G5 Godley for investors: a sourced series that pairs share-price booms with credit growth beyond margin debt, before any sentence says 'often'.
13. C2: NVIDIA's H20 charge (company results, May 2025) and the defence bill's status, if [29] is to name a policy-technology link.
14. [35] dials not re-fetched: Fed 16 Sep rise, TIPS and Treasury yields, CPI, FRED spread, dollar index, M2.
15. rb-moves has an empty Rules line in the draft. The Editor should send it back to the drafter.
