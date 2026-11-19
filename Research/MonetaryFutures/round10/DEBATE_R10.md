# DEBATE_R10: court docket ruling on ls-14 (Behind the curtain)

Written 2026-11-12 by the Judge and completeness auditor (PLAN section 6, engine/ROLES.md court docket card). Docket: round10/VERIFY_R10.md (VF ids, numbered in the order of its main table, then its grade audit and open items) and round10/REDTEAM_R10.md (RT ids, using its own labels), against round10/DRAFT_R10.md. General education, not financial advice. Nothing committed, site not edited.

Facts the verifier could not see, both confirmed here: `python3 -I tools/check_chain.py round10/holes/*.json` passes all 14 chain files (the glob also catches TEMPLATE.json, which fails as H0-00, as a template should). The blind exam was graded partial, 8 of 9 key items (PLAN 4.6, Test 9 row).

Fetches used: 3 of 5 (Bank Indonesia 2020 bond buying, Iraq's New York Fed account and US actions, Hormuz status in November 2026). No email or personal identifier in any request.

Probability convention, so the chapter matches the hole files: a sentence that states one inferred link shows that link's probability. A sentence that states a hole's conclusion shows the chain probability from check_chain. Where they differed in the draft ([14] 25% against a 1% chain, [18] 20% against a 14% chain), the chapter was wrong and is fixed. Where the red team said 'about 1% matches no hole file', the red team was wrong: 1% is the H4-01 and H4-04 chain.

Effect on the main path, measured by running tools/lint_chapter.py on a scratch copy of site/landscape.json with every edit below applied: 2,108 words and 41% tables before, 2,444 words and 34% tables after. No long sentences. The four remaining lint flags are false hits (each term is defined in the same sentence, and 'repo' matches 'reported'). No new text has an em-dash, an en-dash or a semicolon. Every old text was checked by script to occur once in the draft and once in its block, applied in the order listed.

## 1. Ruling table

| Point | Block | Ruling | Why |
|---|---|---|---|
| VF01 | 18 | accept | SAMA's planned-exit reason is on record (verifier fetch, FT via press). The chapter's 20% was the single link. H4-03's chain is 14%, so the chapter was wrong. E38 |
| VF02 | 23 | accept in part | Row rewritten, merged with RT-B10.1 so the open test gets a reveal date. E41 |
| VF03 | 0 | accept | GAO reports the secrecy pledge as asserted by officials and denied by Treasury. The window itself is documented. E04 |
| VF04 | 4 | accept in part | Hedged and shortened. The pledge detail lives in [5]. E13 |
| VF05 | 5 | accept | 'Promised' stated an asserted and denied pledge as fact. E14 |
| VF06 | 5 | accept | 'Forced' is stronger than the sources. Merged with RT-V6 and RT-H1. E15 |
| VF07 | 5 | accept | Secrecy load is the desk's inference, now labelled. E16 |
| VF08 | 21 | accept | No source on how China pays for Gulf oil. Removed in the softened reading. E40 |
| VF09 | 21 | accept | Oil revenue to Treasuries is inferred, and Saudi holdings fell in 2026. E40 |
| VF10 | 0 | accept | H3-04 L3 is I2. Bullet now shows the chain (47%). Merged with RT-B9. E05 |
| VF11 | 10 | accept | Sources give 2019, not ten years. E28 |
| VF12 | 8 | accept | Custody is not ownership. Merged with RT-B3.4. E20 |
| VF13 | 9 | accept | H3-01 L4 is I2, not documented. E22 |
| VF14 | 9 | accept in part | $14.7 trillion in the main path, the date mismatch with M2 goes to the box. E24, E44 |
| VF15 | 9 | accept in part | Two rounds and the unsourced dollar conversion go to the box. E23, E44 |
| VF16 | 9 | accept | January 2015 is the right month. E21 |
| VF17 | 4 | accept in part | Years and Iran named. Range 30% to 40% from H1-01 L3 used instead of a 37% point figure that mixes years. E10 |
| VF18 | 6 | accept | Fact sheet sectors. E17 |
| VF19 | 17 | accept | War began 28 February 2026, about 8.5 months ago. E36 |
| VF20 | 17 | accept | Closure date disputed, China's wording and date fixed. My fetch: no formal reopening, traffic still far below normal in early November. E36, E17c |
| VF21 | 17 | accept | Business groups, not banks, brought the court case. E37 |
| VF22 | 13 | accept in part | 2015 replaced by 2020 and 2022. The China 2015 aside dropped for table length. E32 |
| VF23 | 14 | accept | Hole files score 5 countries. Merged with RT-B8.2. E33 |
| VF24 | 14 | accept | H2-01 chain is 1% (checker), under 10%, so the chapter must show an open question, not 'adds nothing'. Chapter was wrong. E33 |
| VF25 | 1 | reject | PLAN 4.7 sets the open-question line at 10%. Pathfinder A's 20% is not the rule. |
| VF26 | 25.0 | reject | I ran `python3 -I tools/check_chain.py round10/holes/*.json`: all 14 chain files PASS. Only TEMPLATE.json (H0-00) fails, and it is a template, not a chain. |
| VF27 | 25.1 | reject | PLAN 4.6, Test 9 row, records the scorekeeper's grade: partial, 8 of 9, the miss being the Asia share as a number. |
| VF28 | 25.2 | accept | 'None found' is what the dead-end ledger says. E46 |
| VF29 | 24 | accept | Already hedged. No edit beyond E42, E43. |
| VF30 | end | reject | 'Rules:' is an export artefact. It is not in site/landscape.json, so there is nothing to edit. |
| VF31 | 4, 0 | accept | H1-02 L2 is 45%, about even, so 'likely' and 'most likely' are too strong. E03, E11 |
| VF32 | 4 | accept | Footprint grade kept with 'via press'. |
| VF33 | n/a | accept | Unreached primaries carried to section 4. |
| RT-B1.1 | 0 | accept in part | Level 0 plus a level 1 cue, level 2 not shown, open question: yes. But the probability is 1%, not 3%. check_chain gives H4-01 and H4-04 chains of 1%. The 3% is the last link alone. The red team's 'matches no hole file' is wrong. E06 |
| RT-B1.2 | 17 | accept in part | Labelled remote and an open question. 1% kept (chain). E36 |
| RT-B1.3 | 17 | accept in part | 'Dead end' read as a finding. Now an open question, 1% kept. E37 |
| RT-B2.1 | 16 | accept in part | Strongest form of the alignment claim now stated and tested. Shortened. E34 |
| RT-B2.2 | 17 | accept in part | The 17 May 2026 summit (H4-02 L3, I0) is added inside row 3, not as a new row, to hold the table share. An ungraded Hormuz understanding is not printed, since PLAN 4.7 needs a grade. Its tanker test goes to section 4. E35 |
| RT-B3.1 | 4 | accept | H1-03 L4 is I2 at 55%. Grade split, likelihood moved to about even for single funds. E12 |
| RT-B3.2 | 9 | accept in part | Grade split. Fed bill buying detail goes to the box. E21, E44 |
| RT-B3.3 | 9 | accept in part | Grade split. Borrower split noted in section 4. E22 |
| RT-B3.4 | 8, 9 | accept in part | 'Corrected', not 'refuted'. The unchecked swap-debt measure is named in the box, without 'far larger', which no hole file supports. E20, E24, E44 |
| RT-B3.5 | 9 | accept in part | Grade fixed to Footprint, 70% (H3-02 L3). The chapter was wrong. Price effect goes to the box. E23, E44 |
| RT-B3.6 | 0 | accept in part | About even, 45%. Russia and Iran yuan oil given as a fact, not as a second graded origin. E03 |
| RT-B4 | 0, 24 | accept in part | Overcorrection guard: Saudi $19 billion fall in 2026, UAE bonds down and shares up, and PIF's filed US share book down from $57 billion to about $12 billion are now in the TLDR. Borrowing abroad goes to [24]. E02, E42 |
| RT-B5 | 4, box | accept in part | SWIFT is a floor and the origin is 'possible'. Russia and Iran in [0] and [21]. SAMA's 50 billion yuan swap line (red team fetch F1) goes to the box. The DEAD.md correction goes to section 4. E11, E47 |
| RT-B6.1 | 19 | reject | 'Myth:' is the label of the block type, set by the site template. A text edit cannot change it. The Reality text now carries the point. |
| RT-B6.2 | 19 | accept in part | Survivorship and the base rate are now stated, from BASE_RATES section C. The '11 cases' count and the year figure are left out (not verified). E39 |
| RT-B7 | 21 | accept in part | Energy reading softened to weak support, low confidence, with gold and energy-as-money named as untested. E40 |
| RT-B8.1 | 13, box | accept in part | Bank Indonesia's 2020 burden sharing is confirmed by my fetch (joint decree 7 July 2020). It goes to the box to keep the table short. Bank Negara is not fetched and goes to section 4. E30, E47 |
| RT-B8.2 | 14 | accept in part | Merged with VF23 and VF24. 'Mid December 2026' is in no source file, so 'next round, early 2027' is used. E33 |
| RT-B9 | 0 | accept in part | Americans hold about two thirds (H3-04 L1) and the Fed is a buyer (H3-04 L3). The $40 billion a month figure goes to the box. E05, E44 |
| RT-B10.1 | 23 | accept in part | Merged with VF02. Reveal date 30 November 2026. E41 |
| RT-B10.2 | 23 | reject | Two new rows would push tables past 35%. The lens date is written into [14]. Gold has no claim in the chapter, so it goes to section 4. |
| RT-B10.3 | 6 | accept in part | 'Mostly public', and the agreement text is unpublished, so a Treasury clause is not ruled out. E17b, E18 |
| RT-B10.4 | 10 | accept in part | Grade and chain added. The date is already in [23] row 1, so it is not repeated. E27 |
| RT-V1 | box | accept in part | My fetch: Iraq's oil revenue sits at the New York Fed. In 2023 the US barred some Iraqi banks from dollar dealings, and in April 2026 it halted banknote shipments. It did not 'limit transfers from the account' in 2023. Corrected, in the box. E47 |
| RT-V2 | box | accept in part | Bill issuance point goes to the box. E44 |
| RT-V3 | box | accept in part | Market value and price effect go to the box. The 51% stands: the verifier recomputed both ends from the current TIC files. E44 |
| RT-V4 | box | accept in part | One sentence in the box, to keep the main path under 2,500 words. E47 |
| RT-V5 | 24 | accept in part | Borrowing abroad (H2-01 L2, 38%) goes in the check answer. E42 |
| RT-V6 | 5, box | accept in part | Arrangement public in 1979 and holdings hidden. The incompleteness doubt goes to the box. E15, E47 |
| RT-V7 | box | accept in part | Moved to the box for length. E44 |
| RT-V8 | 21 | accept in part | Gold named as unchecked. Fed buying is covered by RT-B9. E40 |
| RT-V9 | 6, box | accept in part | Short line in the main path, numbers in the box (red team fetch F3, press). E19, E47 |
| RT-C | all | accept | Audit verdicts are met by the edits listed against B1, B3, B6 and B10. |
| RT-D1 | 6 | accept in part | Wording opened. The five-search dig (Saudi central bank bulletin against TIC, FRUS volume 37) goes to section 4. E17b, E18 |
| RT-D2 | 18 | accept in part | UAE stayed is noted. The four-search dig goes to section 4. E38 |
| RT-D3 | 24 | accept | China's apparent selling may be a custody move. E43, section 4 |
| RT-D4 | n/a | accept | Needs data. Section 4. |
| RT-D5 | 25.2 | accept | Under 10% means an open question, not closed. E45 |
| RT-E | 0, 9, 14, 17, 21 | accept | Balanced versions adopted through B1, B3, B4, B5, B8 and B9. |
| RT-F1 | kicker | accept | 'Cannot' overclaims. E01 |
| RT-F2 | various | accept | Other word-audit hits are fixed by the edits listed. [26] 'every inferred point is labelled' is true once E02 to E47 apply. |
| RT-G1 | 13 | accept in part | A block cannot be moved with this edit format, so the [13] cells are cut instead. E30, E31, E32 |
| RT-G2 | 9 | accept in part | [9] cells cut, detail to the box. E20b, E21 to E24, E44 |
| RT-G3 | 23 | accept in part | Rows cannot be deleted with this format. The BoJ and mBridge rows are trimmed. E41, E41b |
| RT-G4 | 4 | accept in part | Columns renamed with shorter words. E09 |
| RT-G5 | 1, 0, 8, 12, box | accept in part | Level key and likelihood words in [1]. Custodian, custody centre, reserve currency and carry trade defined. 'Treasuries' is not defined (no lint flag, word budget). E05, E07, E20, E29, E44 |
| RT-G6 | box | reject | Box takes no new table blocks under this edit format. Carried to section 4 for the next build. |
| RT-H1 | 5 | accept | 'Over 40 years' fits both counts. E15 |
| RT-H2 | 4 | accept | Years and Iran named. E10 |
| RT-H3 | n/a | accept | Settled by the verifier's recompute from current-vintage files. |
| RT-H4 | 6, 17 | accept in part | My fetch: no formal reopening, traffic about 70% below pre-war in the week to 30 October (UKMTO via press). [6] now says 'near closure since March'. E17c |
| RT-H5 | box | accept | Fetched. See RT-V1. E47 |
| RT-H6 | n/a | accept | Not fetched. Section 4. |
| HOLE H1-01 | 4 | accept | I1 70% earned: customs and tanker data are two sources. Chain 51%. 'Unlikely as stated' fits. |
| HOLE H1-02 | 0, 4 | accept in part | Exit test, chain 17%. L2 text says 'most likely' at 45%. The chapter now says about even. Hole wording should be fixed next round. |
| HOLE H1-03 | 0, 4 | accept in part | Chain 41%. L4 is I2, so the chapter's 'Documented' was wrong. The least-inconsistent reading (shares on top for states, shift at single holders) is now the one shown. |
| HOLE H1-04 | 5, 6 | accept | Chain 49%. L4 is I2 and now reads 'mostly public', with the unpublished text named. |
| HOLE H2-01 | 14 | accept | Chain 1%, exit test. Must read as an open question. Chapter fixed. |
| HOLE H2-02 | 13, 14 | accept | Chain 46%, 'no better than the plain lens' at about even. |
| HOLE H3-01 | 9 | accept | Chain 48%. L4 I2 is now labelled. |
| HOLE H3-02 | 9 | accept | Chain 31%, exit test. L3 is I1 at 70% (two records: TIC Japan line and Fed custody). The chapter's 'Structural' was wrong. |
| HOLE H3-03 | 8, 9 | accept in part | Chain 55%. 'Refute' becomes 'correct', since one BIS measure was not checked. |
| HOLE H3-04 | 0, 9, 10 | accept | Chain 47%. I2 conclusion now graded where it is stated. |
| HOLE H4-01 | 0, 17 | accept in part | Dead-end exit is allowed, but chain 1% must be shown as an open question. Level 2 not shown is supported. Level 0 plus a level 1 cue is the least-inconsistent reading. |
| HOLE H4-02 | 0, 17 | accept | Chain 46%. Level 1 (Hormuz cue) supported by the public record. The summit link is now shown. |
| HOLE H4-03 | 18, 23 | accept | Chain 14%, I4 link 20%. The chapter showed 20%. It now shows 14% with a reveal date. |
| HOLE H4-04 | 17 | accept in part | Chain 1%. Shown as remote and open, not a closed dead end. |

## 2. Counts

| Source | Points | Accept | Accept in part | Reject |
|---|---|---|---|---|
| Verifier | 33 | 23 | 6 | 4 |
| Red team | 53 | 13 | 37 | 3 |
| Holes (Unseen mode) | 14 | 9 | 5 | 0 |
| Total | 100 | 45 | 48 | 7 |

Edits for the Editor: 50. New blocks: none.

Changed rulings (where this court overrules a docket file): VF25, VF26, VF27 and VF30 rejected. RT-B1 probability kept at 1%, not 3%. RT-B6.1, RT-B10.2 and RT-G6 rejected for format or table share. RT-V1 corrected by fetch (2023 bank bars and a 2026 banknote halt, not a 2023 limit on the account).

## 3. Edits for the Editor

### ls-14

**E01** | block kicker | (RT-F1)
- old: `Much of that cannot be read in any document.`
- new: `Much of that is not in any public document the desk could find.`

**E02** | block 0 | (RT-B4, RT-E1, overcorrection guard)
- old: `Gulf states still put oil money into US Treasuries. Saudi Arabia, the United Arab Emirates (UAE) and Kuwait held $330 billion in August 2026, up from $219 billion in January 2023. The claim that they buy US shares instead does not hold: they bought shares on top, as Norway's oil fund did.`
- new: `Gulf states hold more US Treasuries than in January 2023. Saudi Arabia, the United Arab Emirates (UAE) and Kuwait held $330 billion in August 2026, up from $219 billion. The UAE's long-term US bonds fell while its US shares rose, and Saudi holdings fell $19 billion in the 2026 Hormuz crisis. Saudi Arabia's main fund also cut its own filed US share portfolio, from $57 billion in 2021 to about $12 billion. A straight swap of bonds for shares is not shown for the three states as a whole.`

**E03** | block 0 | (RT-B3.6, RT-B5, VF31)
- old: `That number most likely comes from China's own trade, 28% of which was settled in yuan in early 2025.`
- new: `The number may come from China's own trade, 28% of which was settled in yuan in early 2025 (structural, about even at 45%). Much of the oil China buys from Russia and Iran is also paid in yuan.`

**E04** | block 0 | (VF03)
- old: `A secret 1974 arrangement did exist: a private Treasury buying window for Saudi Arabia and hidden holdings, documented by a 1979 US government audit.`
- new: `A 1974 arrangement did exist: a Treasury buying window offered to Saudi Arabia, with Saudi holdings reported only inside a group total. A 1979 US government audit documents the window. It also reports officials saying Treasury pledged secrecy, which Treasury denied.`

**E05** | block 0 | (VF10, RT-B9)
- old: `Foreign governments no longer fund the growth of the US Treasury market. Private money does: US money market funds, hedge funds (lightly regulated funds that often borrow to trade) and buyers whose bonds are held by custodians in London, Belgium and the Caymans.`
- new: `Americans hold about two thirds of US government debt. Since 2019 its growth has come from private buyers and the US central bank, not foreign governments (structural, about 47%). The private buyers are money market funds, hedge funds (funds that often borrow to trade) and owners whose bonds sit with banks in London, Belgium and the Caymans.`

**E06** | block 0 | (RT-B1.1, RT-E4)
- old: `The claim that the US, the Gulf and China are secretly aligned found no channel, no enforcement and real costs on every side. The evidence supports shared interests (level 0), not a hidden deal.`
- new: `The claim that the US, the Gulf and China are secretly aligned found no channel and no enforcement, and real costs fell on every side. The record fits shared interests and one public cue, safe passage through Hormuz (levels 0 and 1, about 46%). A quiet deal that can be denied (level 2) is not shown, and public data could miss a small one. A secret three-way plan is remote, about 1%, so it stays an open question, not a finding.`

**E06b** | block 0 | (RT-G (length), [26] already says not advice)
- old: `Every inferred point below carries a grade, a likelihood and a date when the record will confirm or kill it. Nothing here is advice.`
- new: `Every inferred point below carries a grade, a likelihood and a date when the record will confirm or kill it.`

**E07** | block 1 | (RT-G5, VF25)
- old: `Anything under 10% is shown as an open question, not a finding.`
- new: `Anything under 10% is shown as an open question, not a finding. Likelihood words: remote is under 15%, unlikely 15 to 40%, about even 40 to 65%, likely 65 to 90%. Coordination levels: 0 means the same interests, 1 means following the same public cue, 2 means a quiet deal that can be denied, 3 means one command.`

**E09** | block 4 | (RT-G4)
- old: `| The claim | What the records show | Grade | Likelihood |`
- new: `| The claim | What the records show | Evidence grade | Chance the claim is true |`

**E10** | block 4 | (VF17, RT-H2)
- old: `| China is the largest buyer, near 5.4 million barrels a day from the Middle East, about a third of what passes Hormuz. Asia as a whole takes 84% | Footprint (customs and tanker data via press, US energy agency) |`
- new: `| China is the largest buyer, near 5.4 million barrels a day from the Middle East in 2025, Iran included. That is 30% to 40% of what passed Hormuz in 2024. Asia as a whole takes 84% | Footprint (customs and tanker data via press) |`

**E11** | block 4 | (RT-B5, VF31, RT-G)
- old: `No source found. The yuan is about 3% of world payments on SWIFT, the main messaging network banks use for cross-border payments. China settles 28% of its own goods trade in yuan, the likely origin of the number | Structural |`
- new: `No source found. The yuan is about 3% of payments on SWIFT, a bank messaging network, and that is a floor. China settles 28% of its own goods trade in yuan, a possible origin of the number | Structural, origin about 45% |`

**E12** | block 4 | (RT-B3.1)
- old: `| Gulf Treasury holdings rose 51%, from $219 billion to $330 billion (January 2023 to August 2026). Saudi US share holdings grew fast as well. Norway's oil fund, which has no Gulf deal, shows the same shape | Documented (US Treasury data) | Unlikely as a swap |`
- new: `| Gulf Treasury holdings rose 51%, from $219 billion to $330 billion (January 2023 to August 2026). Their US share holdings grew too, as at Norway's oil fund | Holdings documented. That shares came on top is structural, about 55% | About even for single funds, unlikely for the states as a whole |`

**E13** | block 4 | (VF04)
- old: `| Documented, but narrower: a private buying window and hidden holdings, not a treaty on oil prices. It ended in stages by 2016. Nothing expired in June 2024 |`
- new: `| Narrower: a buying window, opened to all central banks in 1975, and holdings kept inside a group total. Not a treaty on oil prices. Nothing expired in June 2024 |`

**E14** | block 5 | (VF05)
- old: `and promised to hide Saudi holdings inside a group total. A US government audit described it in 1979.`
- new: `through an add-on window offered in 1974. Saudi holdings were reported only inside a group total. A 1979 US audit described the window and reported officials saying it came with a secrecy pledge, which Treasury denied.`

**E15** | block 5 | (VF06, RT-V6, RT-H1)
- old: `The holdings stayed hidden for about 41 years, until a records request forced their release in May 2016.`
- new: `The window was described in public in 1979, but Saudi holdings stayed hidden for over 40 years. Treasury began listing them in May 2016, after a news agency's records request.`

**E16** | block 5 | (VF07)
- old: `It took a handful of officials, one channel and a clear exchange of money for security.`
- new: `By the desk's reading, it took a handful of officials and one channel, and the exchange was money for security.`

**E17b** | block 6 | (RT-D1)
- old: `What is left today is public.`
- new: `What is left today is mostly public.`

**E17** | block 6 | (VF18)
- old: `aimed at companies, arms and technology.`
- new: `aimed at US infrastructure, technology and industry.`

**E18** | block 6 | (RT-B10.3, RT-D1)
- old: `A public exchange of security for money is coordination in the plain sense, but it is not a secret.`
- new: `A public exchange of security for money is coordination in the plain sense. But the desk found no published text of the defence agreement, so a Treasury clause is not found, not ruled out.`

**E17c** | block 6 | (RT-H4)
- old: `the closure of Hormuz from March 2026`
- new: `the near closure of Hormuz since March 2026`

**E19** | block 6 | (RT-V9)
- old: `So 2026 numbers carry a shock on top of any trend.`
- new: `So 2026 numbers carry a shock on top of any trend. One hidden flow sits near Malaysia: Iranian oil reaches China labelled as Malaysian, and China's customs show none from Iran.`

**E20** | block 8 | (VF12, RT-B3.4)
- old: `The records support the first part, correct the second and refute the third.`
- new: `The records partly support the first part. Custody centres, where banks hold bonds for clients, hold more than Japan and China, but the owners are not shown. They correct the second part. The third mixes up debt and money.`

**E20b** | block 9 | (RT-G2)
- old: `| Who holds the most | Accounts booked in four custody centres (the UK, Belgium, the Caymans and Luxembourg) held $2.41 trillion in August 2026, more than Japan and China together ($1.66 trillion). In January 2023 it was the other way round | Documented (US Treasury) |`
- new: `| Who holds the most | Four custody centres held $2.41 trillion in August 2026, more than Japan and China together ($1.66 trillion) | Documented (US Treasury) |`

**E21** | block 9 | (VF16, RT-B3.2, RT-G2)
- old: `| Who is growing | Foreign governments held 66.5% of foreign-owned Treasuries in 2015 and 40.2% in August 2026. The growth came from private buyers: US money market funds, hedge funds and private foreigners | Documented (US Treasury and Fed data) |`
- new: `| Who is growing | Governments held 66.5% of foreign-owned Treasuries in January 2015 and 40.2% in August 2026. Money funds, hedge funds, the Fed and private foreigners grew | Shares documented. That they replaced states: structural, about 55% |`

**E22** | block 9 | (VF13, RT-B3.3, RT-G2)
- old: `| Hidden hedge fund holdings | Fed staff estimate that the Cayman line undercounts hedge fund holdings by about $1.4 trillion (end of 2024). Much of the cash behind those bonds is lent by US money funds, so offshore holders are partly funded onshore | Documented (Fed staff research) |`
- new: `| Hidden hedge fund holdings | The Cayman line misses about $1.4 trillion of hedge fund bonds (Fed staff, end of 2024). US money funds are the key cash lenders | Undercount documented. Funded onshore: structural, about 55% |`

**E23** | block 9 | (VF15, RT-B3.5, RT-G2)
- old: `| Japan's fall in 2026 | Japan's holdings fell about $171 billion from February to August 2026, close to the size of its record yen-buying intervention. That fits defending the yen better than an unwinding carry trade | Structural |`
- new: `| Japan's fall in 2026 | About $171 billion from February to August, close to what Japan spent defending the yen, not a carry trade unwind | Footprint, about 70% |`

**E24** | block 9 | (VF14, RT-B3.4, RT-G2)
- old: `| $15 trillion of offshore dollars | A real figure from the BIS, the central banks' own bank, but it is dollar debt owed by borrowers outside the US, about 0.63 times the US money supply. It is not a hidden stock of money twice as large | Documented (BIS) |`
- new: `| $15 trillion of offshore dollars | $14.7 trillion of dollar loans and bonds owed outside the US (BIS). Debt, not money, and about 0.63 times the US money supply | Figure documented. Reading: structural, about 60% |`

**E26** | block 10 | (RT-B10.4, RT-G5 (lint))
- old: `money funds lend for yield,`
- new: `money funds lend for interest,`

**E27** | block 10 | (RT-B10.4)
- old: `That is level 0 on the coordination scale: shared incentives, no agreement.`
- new: `That is level 0 on the coordination scale: shared incentives, no agreement found (structural, about 47%).`

**E28** | block 10 | (VF11)
- old: `than it did ten years ago`
- new: `than it did in 2019`

**E29** | block 12 | (RT-G5 (lint))
- old: `Then it scored the lens against a plain one: does the country issue a reserve currency, and is it a net lender or borrower to the world?`
- new: `Then it scored the lens against a plain one. Does the country issue a reserve currency, one other central banks hold as savings? And is it a net lender or borrower to the world?`

**E30** | block 13 | (RT-B8.1, RT-G1)
- old: `| Central bank buys bonds in a crisis | Right for the US, UK and Japan | Same three, because all issue reserve currencies |`
- new: `| Central bank buys bonds in a crisis | Right for the US, UK and Japan | Same three |`

**E31** | block 13 | (RT-G1)
- old: `| Capital controls | True by how the boxes were drawn, so not a test | Emerging economies closed, rich ones open: right |`
- new: `| Capital controls | Not a test, true by how the boxes were drawn | Right |`

**E32** | block 13 | (VF22, RT-G1)
- old: `| Crisis behaviour in 2015, 2020 and 2022 | Matched | Matched the same way |`
- new: `| Crisis behaviour in 2020 and 2022 | Matched | Matched |`

**E33** | block 14 | (VF23, VF24, RT-B8.2)
- old: `The lens describes the countries it was built from, but in this small test it predicted nothing the plain lens did not. Likelihood that it adds information: about 25%. Confidence is low, because only 6 of 19 countries had full data, so the test continues on the rest.`
- new: `In this small test it did no better than the plain lens (structural, about 46%). Whether it adds anything is an open question (about 1%). Debt holder data covered only 5 of the 19 countries (too few to separate the lenses) and the 2008 crisis was not coded. The test continues on the other 14 next round, due early 2027.`

**E34** | block 16 | (RT-B2.1)
- old: `The desk split each into parts with named actors and checked what each part would have to leave behind.`
- new: `The desk split each into parts with named actors and checked what each part would have to leave behind. The strongest form of the claim is a few quiet understandings on single items, such as shipping, while the conflict is real.`

**E35** | block 17 | (RT-B2.2, RT-B1)
- old: `| The three share an interest in Gulf oil flowing | Yes, with open splits on Iran and on payment systems | Level 0, shared interest. Safe passage through Hormuz works as a public cue (level 1) |`
- new: `| The three share an interest in Gulf oil flowing | Yes, with splits on Iran and payment systems. US and Chinese leaders discussed Iran and Hormuz on 17 May 2026. What they said was not published | Level 0, with Hormuz passage as a public cue (level 1). Structural, about 46% |`

**E36** | block 17 | (RT-B1.2, VF19, VF20, RT-H4)
- old: `| They agreed in secret and the conflict is staged | No channel found. The US and Israel struck Iran from 28 February 2026, Hormuz closed from 2 March, and China called the US blockade irresponsible and dangerous. A staged war would need thousands of people across several governments to stay silent for over a year | Not shown. About 1% |`
- new: `| They agreed in secret and the conflict is staged | No channel found. The US and Israel struck Iran from 28 February 2026 and Hormuz shut in early March. On 14 April China called the US blockade of Iranian ports dangerous and irresponsible. A staged war would need many people to stay silent for months | Not shown. Remote, about 1%. An open question |`

**E37** | block 17 | (VF21, RT-B1.3)
- old: `| Finance pushed trade toward China on purpose | China's exports did move to third countries. But banks and investors sold bonds before the tariff pause, warned of recession and joined the court challenge. No mark of finance pushing the tariffs | Dead end. About 1% |`
- new: `| Finance pushed trade toward China on purpose | China's exports did move to third countries. But bond investors sold before the tariff pause, a bank chief warned of recession and business groups sued. No mark of finance pushing the tariffs | Not shown. Remote, about 1%. An open question |`

**E38** | block 18 | (VF01, RT-B10.1, RT-D2)
- old: `It points to Saudi Arabia choosing US payment rails, which cuts against a three-way alignment. Whether the exit was a term of the US package is a guess (conjecture, about 20%). The test: any statement by the Saudi central bank of its reasons.`
- new: `The Saudi central bank told the Financial Times the exit was planned, after its trial ended. People close to it said reading it as US pressure would be wrong. The UAE's central bank stayed in. Whether the exit was also a term of the US package is a guess (conjecture, about 14%).`

**E39** | block 19 | (RT-B6.2)
- old: `That rule can never be wrong, so it can never be tested: it would turn China's public condemnation of the blockade into proof of a secret alliance. The desk logs rules like this and does not use them. Real hidden deals, like the 1974 Treasury window, left marks and were later documented.`
- new: `No event could prove that rule false, so no test can check it. The desk logs rules like this and does not use them. That does not make secrets rare. Standing arrangements run by small groups, like the 1974 Treasury window, have stayed hidden for decades, and we only know the ones that came out. So the desk treats a small, quiet deal as possible and looks for its marks.`

**E40** | block 21 | (RT-B7, VF08, VF09, RT-V8)
- old: `Energy trade has not pulled Gulf money off the dollar. Oil revenue still lands in dollars, still flows into Treasuries, and Saudi Arabia stepped back from a shared payment system with China in 2025. China buys more Gulf energy, but it pays mostly in dollars outside its own trade. For now this fits the desk's leading scenario, the dollar extending itself onto new rails, rather than an energy-backed rival. This is a reading of the evidence, not a forecast, and the dated tests below would change it.`
- new: `The evidence so far does not show energy trade pulling Gulf money off the dollar. Gulf Treasury holdings are above 2023, though Saudi holdings fell in the 2026 crisis. The biggest oil trade outside the dollar is Russian and Iranian oil sold to China, much of it in yuan, where sanctions block the dollar. The chapter did not test whether energy itself could act as money, or gold. So it gives only weak support (low confidence) to the desk's leading scenario, the dollar extending onto new rails. The dated tests below would change it.`

**E41b** | block 23 | (RT-G3)
- old: `| A yen jump over 8% and falling US asset prices, the August 2024 pattern |`
- new: `| A yen jump over 8% with falling US asset prices |`

**E41** | block 23 | (VF02, RT-B10.1)
- old: `| Any statement from the Saudi central bank on leaving mBridge | A technical reason | A reason that names US terms | Open |`
- new: `| Any further Saudi or US statement on the mBridge exit | No link to US terms | A statement that names US terms | Review by 30 November 2026, then each year |`

**E42** | block 24 | (RT-B4, RT-V5)
- old: `No. It shows they are not swapping Treasuries for shares.`
- new: `No. It shows the three states as a whole are not swapping Treasuries for shares, though the UAE moved that way. Saudi Arabia also borrows abroad (38% of its government debt at the end of 2025), so not every dollar in Treasuries is oil money.`

**E43** | block 24 | (RT-D3)
- old: `The September data and the annual survey due in early 2027 are the next checks.`
- new: `China's own fall since 2023 may likewise be partly a move to custody in Belgium. The September data and the annual survey due in early 2027 are the next checks.`

**E44** | block 25.0 | (RT-G2, RT-V2, RT-V3, RT-B3.4, RT-B3.5, RT-B9, RT-G5, RT-V7)
- old: `Four rival readings were scored for each question: the official story, a deliberate deal, shared incentives, and accident or measurement.`
- new: `Four rival readings were scored for each question: the official story, a deliberate deal, shared incentives, and accident or measurement. Detail for section 2. Funding here means choosing to hold US debt: the US pays in dollars it issues, so the question is who holds its debt and at what price. In January 2023 Japan and China together held more than the four custody centres, and custody is not ownership. The US central bank went back to buying short-term bills, about $40 billion a month, from December 2025. Japan spent 11.7 trillion yen on the yen in April and May 2026 and 15.4 trillion yen in late July and early August, about $170 billion by the desk's own conversion. The carry trade means borrowing cheaply in yen to buy assets that pay more. Treasury tables use market value, and the 10-year yield was near 5% in October 2026, so part of any fall in holdings is price, not selling. When the US Treasury sells more short-term bills, money funds buy more of its debt. The $14.7 trillion is from end March 2026 and the money supply figure ($23.4 trillion) from September 2026. A second, larger BIS measure, dollar debt inside currency swaps, was not checked.`

**E45** | block 25.2 | (RT-D5)
- old: `a secret three-way arrangement between the US, the Gulf and China (no channel found)`
- new: `a staged three-way plan between the US, the Gulf and China (no channel found, kept as a remote open question rather than closed)`

**E46** | block 25.2 | (VF28)
- old: `(not published)`
- new: `(none found)`

**E47** | block 25.2 | (RT-B8.1, RT-V1, RT-B5, RT-V9, RT-V6, RT-V4)
- old: `Sources not used by rule: the US filing database that requires an email address in each request.`
- new: `Sources not used by rule: the US filing database that requires an email address in each request. Detail for sections 1 and 3. A Gulf state has several balance sheets, a central bank and its funds, and a claim can hold for one but not the other. Saudi Arabia's central bank has a 50 billion yuan (about $7 billion) swap line with China's central bank, signed in November 2023, and the UAE's has one of 35 billion yuan. Russia was about 18% of China's oil imports in the first half of 2025 and Iran about 13% of its seaborne imports, by press estimates. The US also holds an open lever over one Gulf producer: Iraq's oil revenue sits in an account at the Federal Reserve Bank of New York, the US Treasury barred some Iraqi banks from dollar dealings in 2023, and it halted banknote shipments from that account in April 2026. In the 2020 crisis Bank Indonesia also bought its government's bonds under a burden sharing deal, so reserve currency status does not explain every central bank that bought. Tanker trackers count about 1.4 million barrels a day of Iranian oil reaching China in 2025, much of it moved between ships off Malaysia, and analysts said the 2016 Saudi figure might leave out bonds held with custodians abroad.`

### ls-14, new blocks

None. Detail moved out of the main path goes into the existing go-deeper paragraphs through E44 and E47.

## 4. Open items

Data the next pass needs. None of these blocks publication once the edits above are applied.

| Item | What is needed | Why | Owner or date |
|---|---|---|---|
| mBridge exit (H4-03) | Full 13 May 2025 fact sheet text, the FT original, US Treasury or State remarks on mBridge 2024 to 2025, and whether the UAE faced pressure (about 4 searches) | Reveal date in [23] is 30 November 2026 | Pathfinder, by 30 November 2026 |
| What is left of 1974 (H1-04, RT-D1) | Saudi central bank bulletin "investment in foreign securities" against the TIC Saudi line and Fed custody for foreign official accounts. FRUS 1969 to 1976 volume 37. Treasury's own May 2016 release page (about 5 searches) | Tests whether Saudi Treasuries sit with other custodians | Next round |
| Quiet Hormuz understanding (RT-B2.2) | Tanker data on whether China-bound tankers passed Hormuz on different terms from others, March to November 2026. Saudi Press Agency statements on Hormuz and the May 2026 summit (RT-D4) | Needed before this reading can be graded and printed | Next round |
| China to Belgium custody (RT-D3) | June 2026 annual survey, preliminary due late February 2027, against the monthly lines | China's fall since 2023 may be a custody move | Late February 2027 |
| Lens test (H2-01) | Debt holder data for the other 14 countries, and 2008 crisis coding | Chain 1%, open question | Next round, early 2027 |
| Bank Negara Malaysia 2020 bond buying (RT-H6) | Size and dates from BNM | Malaysian readers will ask. Not fetched, so not printed | Next round |
| Gold (RT-B10.2, RT-V8) | Gulf central bank gold holdings, quarterly | The energy reading names gold as untested | Next quarterly release |
| Rival readings table in the box (RT-G6) | Build a table block inside the go-deeper box from H4-01, with inconsistent-evidence counts | The edit format cannot insert it | Editor or builder, next build |
| Hormuz status | Lloyd's List brief due 19 November 2026, UKMTO weekly figures | [6] now says "near closure since March". Check before publish | 19 November 2026 |
| Unreached primaries (VF open items) | SWIFT tracker (403), PBoC source for 28%, China foreign ministry transcript of 14 April 2026, Fed H.4.1, BoJ meeting dates | Verified at secondary level only | Verifier, next pass |
| Red team fetches not in hole files | Fed bill buying of about $40 billion a month from December 2025 (F2), SAMA swap line (F1), Iranian oil relabelled as Malaysian (F3), Russia share (F5) | Printed in the box or main path on red team fetches. Add to the source register | Ledger, next round |
| BIS pairing | BIS end-September 2026 reading, due late January 2027, to pair with the September M2 | [9] row 5 dates differ | Late January 2027 |
| Money fund lending by borrower (RT-B3.3) | Split of money fund repo lending, dealers against hedge funds (OFR data) | H3-01 L4 stays I2 until then | Next round |
| Ledger fixes | DEAD.md line 5: the SAMA and PBoC swap line exists (SAMA news, 20 November 2023). H1-02 L2 wording "most likely" against p 0.45. Exclude TEMPLATE.json from the check_chain glob or move it out of holes/ | Ledger hygiene | Next round |
