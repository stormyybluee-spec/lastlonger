# APPLIED_R6: court edit list (DEBATE_R6 section 9) applied to site/rulebook.json

Script: apply_r6.py in the session scratchpad (edits encoded as data, applied by original block tag in the order replace and cell edits, moves, inserts, deletes). Backup of the file before the edits: rulebook.backup.json in the same scratchpad. Section 10 was not applied. No Level 1 chapter changed (checked by comparing every other chapter and top-level key with the backup).

Cell numbers in the edit list were read as 1-based (cell 1 is the first column), which matches every row they name.

Result: 112 of 112 edits applied, 10 of them with a note. One part of one edit (the B-10 timeline series) was not applied, see below.

Block counts after the edits: rb-bonds 82 to 94, rb-moneymake 86 to 99, rb-worldbs 66 to 90.

Checks after applying: JSON loads, the three chapters keep their ids and level 2, em-dashes, en-dashes and semicolons are 0 in all three chapters, every curiosity from, bridge id, radiant link and connects id points at an existing chapter, every timeline series has one value per year, no timeline or pairbars has more than 4 series, every table row has as many cells as columns. tools/build_site.py ran and rebuilt site/index.html.

| Edit | Status |
|---|---|
| B-01 | applied |
| B-02 | applied |
| B-03 | applied |
| B-04 | applied |
| B-05 | applied |
| B-06 | applied |
| B-07 | applied |
| B-08 | applied with note: the bars block had no caption key, so one was added |
| B-09 | applied |
| B-10 | applied with note: caption sentence appended. The new "Pensions and insurers" series was NOT added, because a timeline renders at most 4 series (the page defines only colors --c1 to --c4) and this chart already has 4 (Foreigners, The Fed, Banks, Money funds). The 1990 and 2025 pension shares are in the appended caption. To show the series, one existing series would have to be dropped or the chart split, which needs a court or owner decision |
| B-11 | applied |
| B-12 | applied |
| B-13 | applied |
| B-14 | applied |
| B-15 | applied |
| B-16 | applied |
| B-17 | applied |
| B-18 | applied |
| B-19 | applied |
| B-20 | applied |
| B-21 | applied with note: the April 2025 row is printed with the episode text only, no yield or price numbers, as the edit list says (H.15 data still needed) |
| B-22 | applied |
| B-23 | applied |
| B-24 | applied |
| B-25 | applied |
| B-26 | applied |
| B-27 | applied |
| B-28 | applied |
| B-29 | applied |
| B-30 | applied |
| B-31 | applied |
| B-32 | applied |
| C-01 | applied |
| C-02 | applied |
| C-03 | applied with note: the rb-03 item was changed in place to id rb-08 with the new text, so it keeps its position in the bridge |
| C-04 | applied |
| C-05 | applied |
| C-06 | applied |
| C-07 | applied |
| C-08 | applied |
| C-09 | applied with note: [7], [8], [9] (as edited by C-07 and C-08) moved after [33], with the new heading "The whole map with sizes" in front and the C-13 stop box after [9] |
| C-10 | applied |
| C-11 | applied |
| C-12 | applied |
| C-13 | applied |
| C-14 | applied |
| C-15 | applied |
| C-16 | applied |
| C-17 | applied |
| C-18 | applied |
| C-19 | applied |
| C-20 | applied |
| C-21 | applied |
| C-22 | applied |
| C-23 | applied |
| C-24 | applied |
| C-25 | applied |
| C-26 | applied |
| C-27 | applied |
| C-28 | applied |
| W-01 | applied |
| W-02 | applied |
| W-03 | applied |
| W-04 | applied |
| W-05 | applied |
| W-06 | applied |
| W-07 | applied with note: "Fortune on McKinsey (27 Jul 2026)" was inserted in the source line directly after the McKinsey entry |
| W-08 | applied |
| W-09 | applied |
| W-10 | applied with note: the myth block was replaced by a callout labelled "Popular claim", as the edit specifies (no type mapping needed) |
| W-11 | applied |
| W-12 | applied |
| W-13 | applied |
| W-14 | applied |
| W-15 | applied |
| W-16 | applied |
| W-17 | applied |
| W-18 | applied |
| W-19 | applied |
| W-20 | applied |
| W-21 | applied |
| W-22 | applied |
| W-23 | applied |
| W-24 | applied |
| W-25 | applied |
| W-26 | applied |
| W-27 | applied |
| W-28 | applied |
| W-29 | applied |
| W-30 | applied |
| W-31 | applied |
| W-32 | applied with note: heading 51 and [52] to [58], with W-44 to W-47 applied, moved after [36], then the Part 2 stop box inserted after the moved [58] |
| W-33 | applied |
| W-34 | applied |
| W-35 | applied |
| W-36 | applied |
| W-37 | applied |
| W-38 | applied |
| W-39 | applied |
| W-40 | applied |
| W-41 | applied |
| W-42 | applied |
| W-43 | applied |
| W-44 | applied |
| W-45 | applied |
| W-46 | applied |
| W-47 | applied |
| W-48 | applied with note: inserted after [50], which after the W-32 move sits directly before the heading "What people say, and what the schools add" |
| W-49 | applied |
| W-50 | applied |
| W-51 | applied |
| W-52 | applied with note: inserted as the first item of the chapter's rules list |
