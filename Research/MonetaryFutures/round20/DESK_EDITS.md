# Round 20 Desk edits for site/index.html (draft, 2026-11-26)

Each old string was checked with python3 -I against site/index.html: it occurs exactly once, and all edits still apply cleanly when run in order. Old strings are copied from the HTML source. Lane claim ids are in the header line of each edit. Claims that still hold are not touched. The scenario odds, the core answer and its confidence are not changed (see DRAFT_NOTES.md). General education, not advice.

**D01** | R20B-01
- old: `<dd>$40.44T</dd>`
- new: `<dd>$40.79T</dd>`

**D02** | R20B-02
- old: `<dd>$1,051.8B</dd>`
- new: `<dd>$1,064.0B</dd>`

**D03** | R20B-07
- old: `<dd>5.13%</dd>`
- new: `<dd>4.91%</dd>`

**D04** | FRAME_R20
- old: `Facts as of <b>2026-10-22</b>`
- new: `Facts as of <b>2026-11-26</b>`

**D05** | R20B-17
- old: `Next refresh <b>FOMC 10-28</b>`
- new: `Next refresh <b>FOMC 12-09</b>`

**D06** | R20B-01
- old: `<span class="v">$40.44T</span><span class="k">Gross federal debt</span><span class="s">Treasury, 2026-10-20</span>`
- new: `<span class="v">$40.79T</span><span class="k">Gross federal debt</span><span class="s">Treasury, 2026-11-24</span>`

**D07** | R20B-02, R20B-03
- old: `<span class="v">$1,051.8B</span><span class="k">FY2026 net interest, above defense ($965.2B) for a third year</span><span class="s">MTS, 2026-09-30</span>`
- new: `<span class="v">$1,064.0B</span><span class="k">Net interest over the 12 months to October, above defense ($994.1B). FY2026 was $1,051.8B, a third year above defense</span><span class="s">MTS, 2026-10-31, computed</span>`

**D08** | R20B-52, R20B-07
- old: `<span class="v">3.52% → 5.13%</span><span class="k">Average cost of debt vs today's 10y yield. 70% reprices within 5 years</span><span class="s">Treasury, 2026-10-21</span>`
- new: `<span class="v">3.57% → 4.91%</span><span class="k">Average cost of debt vs today's 10y yield. 70% reprices within 5 years</span><span class="s">Treasury, 2026-10-31, and H.15, 2026-11-24</span>`

**D09** | R20B-12
- old: `<span class="k">Fed funds after the 2026-09-16 hike under Warsh, 12-0</span>`
- new: `<span class="k">Fed funds, held on 2026-10-28 by 10 to 2, with two votes for a hike</span>`

**D10** | R20C-19, R20C-44
- old: `<span class="v">$305B</span><span class="k">Stablecoins, 4.3% of T-bills. Small now, wired by law to grow into bills</span><span class="s">DefiLlama, 2026-10-21</span>`
- new: `<span class="v">$288.9B</span><span class="k">Stablecoins, about 4.1% of T-bills. Small and shrinking now, wired by law to grow into bills</span><span class="s">DefiLlama, 2026-11-16</span>`

**D11** | R20B-11
- old: `Broad dollar up 2.8% this year.`
- new: `Broad dollar up 3.2% this year on the Fed's index (2026-11-20).`

**D12** | R20B-36
- old: `($11B vs $1.08T market)`
- new: `($11B vs about $930B market on 2026-11-24)`

**D13** | R20B-27
- old: `its Treasury holdings fell $171B from February to August.</p>`
- new: `its Treasury holdings fell $176B from February to September.</p>`

**D14** | R20C-01, R20C-03, R20C-06, R20C-43
- old: `A lasting oil-driven inflation shock (Brent near $110, Hormuz still mostly closed) could force the Fed to cap yields.`
- new: `A lasting oil-driven inflation shock could still force the Fed to cap yields. Brent fell from about $110 to about $92 in November, but Hormuz flows remain fragile.`

**D15** | R20B-36, R20B-37
- old: `Gold is worth $29.6T, debt about $365T (12×). The ratio wandered from 35× (1971) to 53× (2000) to 12× now,`
- new: `Gold was worth $29.6T in October and roughly $25T after the November price fall, against debt of about $365T (12× to 15×). The ratio wandered from 35× (1971) to 53× (2000) to 12× to 15× now,`

**D16** | R20C-30, R20C-33, R20A P5-72
- old: `<span class="d">2026-10-23</span><p>Moody's review of France (Aa3) <span>· euro stress</span></p>`
- new: `<span class="d">2026-11-27</span><p>S&P review of France (A+). Moody's held Aa3 negative on 10-23, Fitch moved its outlook to negative on 10-30 <span>· euro stress</span></p>`

**D17** | R20C-05
- old: `<span class="d">2026-10-27</span><p>French budget vote, government could fall</p>`
- new: `<span class="d">2026-11-29</span><p>OPEC+ sets 2027 quotas <span>· oil path to S4</span></p>`

**D18** | R20B-12, R20B-16, R20C-31, R20C-32
- old: `<span class="d">2026-10-28</span><p>FOMC decision: markets price a hold (about 88%). The next hike is priced for 12-09 (75 to 79%) <span>· prediction markets, 10-22</span></p>`
- new: `<span class="d">2026-12-09</span><p>FOMC decision: markets price a 25bp hike (92 to 94%). The Fed held 10 to 2 on 10-28 <span>· prediction markets, 11-25</span></p></div>\n        <div class="row"><span class="d">2026-12-09</span><p>French Senate ends its budget debate. The Assembly rejected the revenue part 458 to 0 on 11-04. Ordinance route opens after 12-17 <span>· euro stress</span></p>`

**D19** | R20B-32, R20B-33, R20B-34
- old: `<span class="d">2026-10-29</span><p>US Q3 GDP and PCE <span>· AI growth vs inflation</span></p>`
- new: `<span class="d">2026-12-10</span><p>US November CPI. Q3 GDP grew 4.3% and October core PCE inflation was 3.3% <span>· AI growth vs inflation</span></p>`

**D20** | R20B-19
- old: `<span class="d">2026-11-04</span><p>Treasury refunding: coupon sizes, buybacks <span>· tests captive-demand strategy</span></p>`
- new: `<span class="d">2026-12-14</span><p>Lisa Cook removal hearing, moved from 11-05 <span>· Fed independence</span></p>`

**D21** | R20B-26, R20B section 3 reading (next TIC 15 Dec)
- old: `<span class="d">2026-11-05</span><p>Lisa Cook removal hearing <span>· Fed independence</span></p>`
- new: `<span class="d">2026-12-15</span><p>Foreign Treasury holdings for October. Official holdings fell to $3,674.7B in September <span>· tests captive-demand strategy</span></p>`

**D22** | R20B-47, R20B section 6 BoJ next-meeting row (secondary)
- old: `<span class="d">Mid-Nov</span><p>NY Fed Q3 FX report confirms the euro sale size. Foreign Treasury holdings for September.</p>`
- new: `<span class="d">2026-12-18</span><p>Bank of Japan decision <span>· yen near 160</span></p></div>\n        <div class="row"><span class="d">2027-01-10</span><p>China's export-control pause ends unless renewed again</p>`

**D23** | R20C-36
- old: `<td class="num">157.5bp</td>`
- new: `<td class="num">~148bp</td>`

**D24** | R20B-04
- old: `<td class="num">19.5%</td>`
- new: `<td class="num">19.8%</td>`

**D25** | R20C-44
- old: `<td class="num">4.3%</td>`
- new: `<td class="num">~4.1%</td>`

**D26** | R20B-46
- old: `<td class="num">~158</td>`
- new: `<td class="num">158.76</td>`

**D27** | R20B-46
- old: `<td>160 to 164 intervention zone</td>`
- new: `<td>160 to 164 intervention zone. Touched near 160 on 11-13</td>`

**D28** | R20B-08, R20B-53
- old: `<td class="num">2.76%</td><td>Already above real growth (2.5%): breached, widens the debt spiral</td>`
- new: `<td class="num">2.79%</td><td>Already above real growth (2.3%): breached, widens the debt spiral</td>`

**D29** | R20B-14, R20B-15
- old: `<td class="num">reserve buying paused</td><td>Routine reserve buying may restart mid-November. Only long-end buying or yield-cap language trips S4</td>`
- new: `<td class="num">reserve buying at zero</td><td>Did not restart in November and is reviewed monthly. Only long-end buying or yield-cap language trips S4</td>`

Notes on the edits

- D18 and D22 each turn one calendar row into two rows. In the new text, `\n` stands for a line break followed by eight spaces of indent, which matches the file. A plain space works too.
- The calendar keeps its order by date after D16 to D22: 11-27, 11-29, 12-09, 12-09, 12-10, 12-14, 12-15, 12-18, 2027-01-10, 2027-01-18, 2030-12-31.
- D02 and D07 move net interest from the FY2026 figure to the latest 12 months, as R20B suggests. The FY2026 figure stays in the card text.
- D15 uses a rough scaling of the gold stock by the price fall (R20B marks it an approximation). The verifier may prefer to keep $29.6T with an 'in October' date instead.
- Not edited, because the lanes did not show them overtaken or could not re-check them: the MOVE index (95.9), Kalshi recession odds (~21%), Hormuz market odds (~48%), PJM figures, the CME compute futures status, the stablecoin law date of 2027-01-18, the 93-day bill rule, buybacks up to $6B per operation, '70% reprices within 5 years', gold against euro reserves, the claim count (419) and the masthead eyebrow 'Rounds 1 to 3'. See DRAFT_NOTES.md.
