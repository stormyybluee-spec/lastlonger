# R3B: Can robots meet the demand, who gets taxed, and how a UHI bill would really work

Lane: Round 3, R3B. Questions R3-2, R3-3, R3-8. Written 2026-10-22. Facts as of 2026-10-22 unless a row says otherwise.
Reused: R2 R2B toy model (h, psi, rho, M_SPEND unchanged), R1 L4 (labor share, robots, Trump Accounts, Alaska PFD), R1 L7 (receipts, debt), R1 Dc (Dc-03, Dc-04, Dc-08).
Method: 18 web searches, primary fetches where they loaded (BLS productivity release, Fed G.17, BLS CE and CPI weights, Treasury fiscaldata MTS API, IRS SOI Table 1.4 spreadsheets, CBO RSS, CEA January 2026 PDF). cbo.gov pages and congress.gov returned 403, so bill details come from press coverage of bill text and are flagged. Everything labelled "model" was run with `python3 -I`. Code and output are printed below. Numbers marked "memory" were not re-fetched.

---

## Answers

### R3-2. How much of extra demand can robot and AI output actually meet?

**Answer.** Less than the Round 2 "robot abundance" case assumed, and the reason is mostly rent, not robots. Measured evidence shows a real but modest supply boost: US productivity grew 3.0% in 2024 and 2.1% in 2025 (BLS), utilization-adjusted TFP barely moved in the year to Q1 2026, and mainstream estimates put AI's extra growth at 0.1 to 1.5 points a year (Acemoglu, IMF, Goldman). A UHI check is spent about 40% to 48% on housing, where supply grows about 1% a year, so even unlimited robot goods cannot push the share of demand met by output (sigma) much above 0.6 to 0.75 until housing supply opens. Rerunning the R2B model with evidence-based inputs, a printed Musk-scale UHI (24% of GDP) gives about 6% to 10% CPI in H0 (sigma 0.28 to 0.51) and about 4% to 6% in H1 under mainstream AI estimates (IMF to Goldman), falling to 1.4% to 3.3% only in the high-growth cases. The Round 2 figure of 0.9% needs either about 4 to 5 extra points of growth a year with an H2 housing response, or housing supply opened plus IMF-top AI gains. A 10%-of-GDP UHI is much easier: about 1.5% to 4% CPI in H0. Sigma is not a constant: the bigger the UHI, the smaller the share robots can cover.
- **Status:** plausible (model on T0 inputs, sector supply responses are assumptions). **Confidence:** 60. **Horizon:** H0 to H2.
- **Three views.** Governance: size any printed UHI to the housing supply you can deliver, not to the robot forecast, and pair it with by-right building. Business: the UHI dollar lands on landlords and care providers first, goods makers second. Ordinary person: a printed UHI will feel generous on gadgets and food and thin on rent within two to three years.

### R3-3. Will the federal tax base shift to capital, energy or compute as labor's share falls?

**Answer.** Not now, and in 2026 it moved the other way. In FY2026 individual income and payroll taxes were 86.2% of federal receipts and corporate taxes only 7.1%, down from 10.8% in FY2024, while unit profits surged. CBO attributes the corporate drop to the 2025 law's larger investment deductions, and Microsoft's current tax bill fell from $14.1B to $2.5B as AI capex is expensed. About 62% to 68% of receipts rest on labor income (model on Treasury and IRS data), and at today's rules each fall in the labor share shrinks revenue: a labor share of 45% instead of 52.8% would cost about 6% of receipts, roughly 1% of GDP. The candidate new bases are small: a 1 cent per kWh tax on all US electricity would raise about $40B (0.7% of receipts), on data centers alone $2B to $6B, and a 5% excise on hyperscaler capex about $35B. The only live proposals (Sanders' equity tax, the Jacobs token and revenue excise) are minority bills with no CBO score. A real shift needs new law, and the arithmetic says the big money is in taxing capital income and equity, not watts or tokens.
- **Status:** refuted for H0 (the base is moving toward labor), speculative for H1 to H2. **Confidence:** 70. **Horizon:** H0 to H2.
- **Three views.** Governance: a compute or power tax is a rounding error next to a UHI, the decision is whether to tax capital income and corporate equity at labor-like rates. Business: expect the expensing break, not a robot tax, to be the first thing revisited when deficits bite. Ordinary person: as long as wages carry two-thirds of the tax load, workers are funding the transition, not the robots.

### R3-8. When a US UHI or AI-dividend bill appears, how is it financed, and can payments be pledged or programmed?

**Answer.** As of 2026-10-22 no federal UHI or AI-dividend bill has moved past introduction, and none found is money-financed. The live designs are equity-based or tax-based: Sanders' American AI Sovereign Wealth Fund Act (text released 2026-06-18) takes a one-time 50% stake, paid in stock, in AI firms with more than $200M of sales and pays out 5% of the fund's value a year, about $1,000 per person, and the fund cannot sell the shares. The Jacobs bill, H.R. 10044 (August 2026), taxes AI tokens at 2% or AI revenue at 3%, rising with unemployment, but funds jobs, not checks. Inside the administration Bessent reportedly wants AI equity to seed Trump Accounts (locked to 18, IRA-like, effectively non-pledgeable) while Lutnick prefers a sovereign fund, with no decision. None of the coverage found shows assignable, tokenized or programmable payments, and states are moving the other way (five ban local guaranteed income). The nearest real models stay the Alaska PFD (cash, legislature-set, 20% creditor-exempt) and Trump Accounts (equity, locked).
- **Status:** plausible (absence of a bill and design features rest on press coverage, congress.gov blocked). **Confidence:** 70. **Horizon:** H0 to H1.
- **Three views.** Governance: the political energy is behind ownership grants (equity into accounts), not printed cash, which sidesteps inflation but delays income. Business: AI firms face a real risk of an equity levy in a future Democratic trifecta and a softer "donate equity to Trump Accounts" ask now. Ordinary person: the first "AI dividend" you see is more likely a locked account balance for your child than a monthly check.

---

## Key findings

1. **The supply evidence is real but modest.** BLS nonfarm productivity: 3.0% in 2024, 2.1% in 2025, 2.2% year on year in Q2 2026 (1.4% annualized in the quarter). Labor share 52.8%, the lowest since 1947 (T0, BLS 2026-09-03). Utilization-adjusted TFP grew only 0.07% over the four quarters to Q1 2026 (SF Fed data via St. Louis Fed, T4 secondary). Gains are concentrated: information, finance and professional services are about 16% of hours and about 40% of productivity gains since early 2024 (Dallas Fed, 2026-07-07, T4 secondary). Those are not the sectors where a UHI dollar is spent.
2. **There is goods slack but not service slack.** Capacity utilization was 76.9% in September 2026, 2.5 points below its 1972 to 2025 average, while semiconductor output rose 28.4% in Q3 (T0, Fed G.17 2026-10-16). Unemployment 4.2% (R1 L4). Energy CPI +20.4% (R2E). Goods can expand. Labor-bound services and power cannot quickly.
3. **AI capex is not yet AI output.** CEA says AI-related investment raised GDP at a 1.3% annualized rate in H1 2025, a demand (investment) effect before any productivity gain (T2). Goldman's Hatzius says AI investment added "basically zero" to 2025 GDP because the equipment is imported from Taiwan and Korea (T4). Both can be true: spending is large, domestic output from it is small so far.
4. **Mainstream estimates of AI's extra growth are small per year.** Acemoglu 0.9% to 1.6% of GDP over 10 years, Penn Wharton 1.5%, Goldman 7% globally over 10 years (about 1.5 points of productivity growth a year after adoption), IMF 0.1 to 0.8 points a year, with only Aldasoro et al. (20% to 45% over 10 years) near Musk's world (CEA Table 1, IMF January 2026). Humanoids: about 19,100 shipped in H1 2026, 97% Chinese, about 60,000 expected for 2026 (SAG via TechNode, T4). At 0.3% of a 3.6B global labor force (R1 L4) even 10M humanoids would not meet a UHI's demand by themselves.
5. **Where the UHI dollar goes decides sigma.** BLS CE 2024: housing 33.4% of spending, transportation 17.0%, food 12.9%, healthcare 7.9% (T0). In CPI weights services are 64.0% and shelter alone 35.6% (T0, December 2025). Excluding pensions and gifts, housing is 39.5% of consumption, and about 47.5% with a low-income tilt (assumption). Housing supply is slow and land-constrained (Saiz 2010 metro elasticities roughly 0.5 to 5.4, lowest on the coasts, T4).
6. **Model result: shelter caps sigma.** With shelter able to meet 10% to 40% of its extra demand (H0 to H2), sigma cannot exceed 0.57 to 0.76 even if every other sector is fully elastic. The recalibrated model gives a Musk-scale printed US UHI 5.8% to 9.8% CPI in H0 and 1.4% to 5.8% in H1. Reaching sigma 0.8 at Musk scale needs about 13 extra points of growth a year in H0, about 8 to 9 in H1 and about 4 to 5 in H2, or opened housing supply (then IMF-top AI gains are enough, about 1.0% CPI).
7. **The 2020 to 2021 episode is the best real calibration.** The SF Fed estimated fiscal support added about 3 points to US inflation by end-2021 (T4). Plugging that into the R2B equation implies sigma of about 0.57 to 0.68, and that was with unemployment near 15% at the start. With unemployment at 4.2% the baseline is lower, so R2B's 0.3 is a fair H0 figure, not a pessimistic one.
8. **The tax base leans on labor more, not less.** FY2026 receipts $5,403.3B: individual 52.7%, payroll 33.5%, corporate 7.1%, customs 3.2%, excise 2.0% (T0, MTS). Corporate share was 10.8% in FY2024. IRS SOI TY2023: wages are 66.1% of $15.43T of reported income (T0). Model: 62% to 68% of federal receipts rest on labor income, and receipts per dollar of labor income are about 2.5 times receipts per dollar of capital income.
9. **AI capex is eroding corporate tax now.** Corporate receipts $381.4B in FY2026 vs $452.1B (minus 15.6%, MTS). CBO: the 2025 law "allows corporations to take larger deductions for certain investments, thereby reducing some payments" (via TaxProf Blog). Microsoft's current tax bill fell to $2.5B from $14.1B while income rose (T2 via T4). This confirms Round 1's suspicion in Dc-03 that AI gains are not landing in taxable income in H0.
10. **Compute and energy taxes are small bases.** Data centers used 176 TWh in 2023 (4.4% of US power), 325 to 580 TWh projected for 2028 (LBNL, T4). At 1 cent per kWh that is $1.8B to $5.8B, under 0.11% of receipts. The UK's digital services tax raised £944M in 2025-26 (T0 via T4). Korea's "robot tax" was a trimmed investment credit, and it cut robot installations by about 28% vs Japan with no significant employment effect (Hotmann et al. via ITIF, T4): good evidence that taxing automation slows supply, which hurts sigma.
11. **The live AI-dividend designs are equity, not cash printing.** Sanders: 50% equity levy, 5% payout, about $1,000 per person (T2 via Roll Call). The payout needs a $3.2T stake (per tax return) to $6.8T (per resident), implying $6.4T to $13.6T of taxable AI equity (model). Administration talks: AI equity into Trump Accounts (Bessent) or a fund (Lutnick), no decision, firms resisting (T4, Semafor 2026-06-17).
12. **No found US bill makes a UHI or dividend pledgeable, tokenized or programmable.** Programmable rails exist (Wyoming's FRNT state stable token pays opting-in vendors, benefits only floated, T4), and California's AB-1357 deals with how guaranteed income counts for other benefits (T1 bill page). Five states ban local guaranteed income programs (Arkansas, Idaho, Iowa, Kansas, South Dakota) and Arizona's ban was vetoed (T4).

---

## Section 1. R3-2: the supply response, with evidence

### 1.1 Evidence table

| Indicator | Value | Date | Tier | What it says about sigma |
|---|---|---|---|---|
| Nonfarm productivity, annual | 2024 3.0%, 2025 2.1% | BLS 2026-09-03 | T0 | Above the prior decade, but 2025 fell back |
| Productivity, Q2 2026 | +1.4% annualized, +2.2% y/y | BLS 2026-09-03 | T0 | No acceleration in 2026 yet |
| Labor share | 52.8% (record low) | Q2 2026 | T0 | Gains go to capital, not wages (R1 L4) |
| Utilization-adjusted TFP | +0.07% over 4 quarters to Q1 2026 | 2026 | T4 secondary | Almost no measured efficiency gain |
| AI-exposed sectors | 16% of hours, about 40% of gains since 2024 | Dallas Fed 2026-07-07 | T4 secondary | Gains sit in info, finance, professional services |
| Capacity utilization | 76.9%, 2.5 pp below 1972 to 2025 average | G.17 2026-10-16 | T0 | Goods slack exists in H0 |
| Semiconductor output | +28.4% in Q3 2026 | G.17 2026-10-16 | T0 | AI hardware supply is elastic |
| AI investment effect | 1.3% annualized GDP boost, H1 2025 (investment level) | CEA 2026-01 | T2 | Demand from capex, not yet output |
| Hatzius | AI investment "basically zero" to 2025 GDP, imported kit | 2026-02-24 | T4 | Import leakage, so US output response small |
| Brynjolfsson | 2025 productivity 2.7% (FT, Feb 2026) | 2026-02 | T4 | Revised to 2.1% by BLS since |
| IMF | +0.1 to +0.8 pp a year global growth, medium term | WEO update 2026-01 | T4 via wire | Upper end is a scenario |
| Acemoglu, PWBM, Goldman, Aldasoro | 0.9 to 1.6%, 1.5%, 7% (global), 20 to 45% of GDP over 10 yrs | CEA Table 1 | T4 | Only the high tail is Musk-like |
| Humanoids | about 19,100 in H1 2026, 97% Chinese, about 60k for 2026 | SAG 2026-08 | T4 | Tiny vs labor force |
| Industrial robots | 603,307 installed in 2025, US 38,400 | IFR 2026-09-24 (R1 L4) | T0 | Concentrated in China manufacturing |
| 2020 to 2021 transfers | about +3 pp US inflation by end-2021 | FRBSF EL 2022-07 | T4 | Implied sigma about 0.6 even in deep slack |
| Spending mix | housing 33.4%, transport 17.0%, food 12.9%, health 7.9% | BLS CE 2024 | T0 | About 40% of UHI demand hits shelter |
| CPI weights | services 64.0%, shelter 35.6% | Dec 2025 | T0 | Same story in the price index |

### 1.2 How the recalibration works

R2B used a single sigma (0.3 baseline, 0.8 "robot abundance"). This lane splits it by where the money is spent and adds autonomous AI and robot output separately.
- Extra demand by sector = 0.8 x UHI x spending share (BLS CE 2024, excluding pensions and gifts, with a low-income tilt as sensitivity).
- Each sector meets a share s_i of its extra demand from slack or quick expansion (assumption by horizon, anchored on G.17 slack, unemployment, housing supply, licensed care).
- On top, autonomous AI and robot output (growth that happens anyway) absorbs money where it lands, allocated by an exposure weight (assumption, informed by the Dallas Fed sector finding). This is the generous reading of Musk's "MUST issue dollars or there will be massive disinflation" (R1 L4-02).
- Sector sigma is capped at 1. Overall sigma feeds R2B's unchanged money_finance() for the US.

### 1.3 Model code and output

Script: /tmp/claude-0/-home-user-lastlonger/41b7d58e-bedc-5a4f-859e-bd3e52b76ed8/scratchpad/scripts/r3b_sigma.py

```python
# R3B: recalibrating the R2B supply response (sigma) with 2024-2026 evidence. MODEL, not forecast.
# Reuses R2B's money_finance() unchanged (US parameters: theta 0.14, M/Y 0.997, h 0.15, psi 0.5, rho 0.44, M_SPEND 0.8).
US = dict(theta=0.14, MY=0.997, h=0.15, psi=0.5, rho=0.44)
M_SPEND = 0.80

def money_finance(c, sigma, U):
    gM = U / c["MY"]
    y = sigma * M_SPEND * U
    excess = max(M_SPEND * (1 - c["h"]) * gM - y, 0.0)
    piN = excess
    dep = c["psi"] * excess
    piM = c["rho"] * dep
    return (1 - c["theta"]) * piN + c["theta"] * piM

print("Check: R2B reproduction, US printed, U=0.24: sigma 0.3 ->", f"{money_finance(US,0.3,0.24):.1%}", "| sigma 0.8 ->", f"{money_finance(US,0.8,0.24):.1%}")

# ---- Anchor A: back out sigma from the 2020-21 US episode -------------------------------------
# FRBSF EL 2022-07: fiscal support added about 3 pp to US inflation by end-2021.
# Size of support: about $5T (CARES, Dec-2020 package, ARP, memory, not re-fetched) on 2020 GDP about $21.4T (memory).
# Treat as money-financed (Fed bought a large share of the debt). Solve money_finance(sigma, U) = 0.03.
def solve_sigma(target, U):
    lo, hi = 0.0, 1.0
    for _ in range(60):
        mid = (lo + hi) / 2
        if money_finance(US, mid, U) > target: lo = mid
        else: hi = mid
    return mid
print("\nAnchor A: implied sigma in 2020-21 (deep slack, unemployment peaked near 15%)")
for U in (0.15, 0.20, 0.23, 0.25):
    print(f"   support {U:.0%} of GDP -> implied sigma {solve_sigma(0.03, U):.2f}")

# ---- Anchor B: where would UHI money be spent? BLS Consumer Expenditure 2024 shares ---------------
# Excludes personal insurance and pensions (12.5) and cash contributions (2.9): not new demand for output.
ce = {"shelter/housing": 33.4, "transportation": 17.0, "food": 12.9, "healthcare": 7.9,
      "entertainment": 4.6, "apparel": 2.5, "education": 2.0}
ce["other"] = round(100 - 12.5 - 2.9 - sum(ce.values()), 1)   # personal care, reading, tobacco, misc
tot = sum(ce.values())
w = {k: v / tot for k, v in ce.items()}

# Low-income tilt (ASSUMPTION, CE lowest-quintile category shares not fetched): +8 pp shelter, +3 food, +1 health,
# taken pro rata from the rest. UHI money goes disproportionately to people who spend on rent and food.
def tilt(w):
    add = {"shelter/housing": 0.08, "food": 0.03, "healthcare": 0.01}
    rest = [k for k in w if k not in add]
    rs = sum(w[k] for k in rest)
    cut = sum(add.values())
    t = {k: w[k] + add.get(k, 0) for k in add}
    t.update({k: w[k] - cut * w[k] / rs for k in rest})
    return t
wt = tilt(w)

# ---- Sector demand response s_i: share of a sector's extra demand met by extra output within 2-3 years.
# ASSUMPTIONS, anchored on: capacity utilization 76.9% (2.5 pp below 1972-2025 avg, Fed G.17 2026-10-16) -> goods slack,
# unemployment 4.2% -> little labor slack for services, housing stock adds about 1% a year and supply elasticity
# is below 1 in land-constrained metros (Saiz 2010 range about 0.5 to 5.4), care and health are licence- and
# labour-bound, energy CPI +20.4% y/y (R2E) -> power is not slack.
s = {  #            H0    H1    H2
 "shelter/housing": (0.10, 0.25, 0.40),
 "transportation":  (0.45, 0.60, 0.75),
 "food":            (0.45, 0.55, 0.65),
 "healthcare":      (0.15, 0.25, 0.40),
 "entertainment":   (0.70, 0.85, 0.90),
 "apparel":         (0.70, 0.80, 0.90),
 "education":       (0.20, 0.35, 0.55),
 "other":           (0.40, 0.50, 0.60),
}
# AI/robot exposure: where autonomous AI/robot output gains land (ASSUMPTION). Dallas Fed (2026-07-07, secondary):
# information, finance, professional services = 16% of hours, 40% of productivity gains since 2024. Robots: goods, logistics.
e = {"shelter/housing": 0.1, "transportation": 1.0, "food": 0.7, "healthcare": 0.4,
     "entertainment": 1.2, "apparel": 1.0, "education": 0.6, "other": 0.8}

def sigma_total(weights, h, U, A):
    """weights: spending shares, h: horizon index, U: UHI % GDP, A: autonomous extra AI/robot output over the
    2-3 year window (% of GDP) that would happen anyway and can absorb money. Returns overall sigma and per-sector."""
    D = {k: M_SPEND * U * weights[k] for k in weights}                       # extra demand by sector (% GDP)
    ex = {k: weights[k] * e[k] for k in weights}
    exs = sum(ex.values())
    out = {}
    for k in weights:
        supply = s[k][h] * D[k] + A * ex[k] / exs                            # induced + autonomous output
        out[k] = min(1.0, supply / D[k])
    sig = sum(weights[k] * out[k] for k in weights)
    return sig, out

print("\nSpending weights (share of UHI consumption), all households vs low-income tilt:")
for k in w: print(f"   {k:16s} {w[k]:6.1%}  {wt[k]:6.1%}")

print("\nCeiling with infinite goods supply (all non-shelter sectors sigma=1, shelter at its s_i):")
for hi, hn in enumerate(("H0", "H1", "H2")):
    for nm, ww in (("all", w), ("tilt", wt)):
        cap = 1 - ww["shelter/housing"] * (1 - s["shelter/housing"][hi])
        print(f"   {hn} {nm:4s}: max sigma = {cap:.2f}")

# Autonomous AI output scenarios, extra growth per year x 3 years (cumulative % of GDP)
scen = {
 "Acemoglu-like 0.1 pp/yr":       0.003,
 "IMF top 0.8 pp/yr":             0.024,
 "Goldman 1.5 pp/yr":             0.045,
 "Aldasoro-high 3 pp/yr":         0.090,
 "Musk-world 6 pp/yr":            0.180,
}
for U in (0.10, 0.24):
    print(f"\n=== Printed US UHI = {U:.0%} of GDP (extra demand 0.8 x U = {M_SPEND*U:.1%} of GDP) ===")
    print(f"{'horizon':4s} {'weights':5s} {'AI scenario':28s} {'sigma':>6s} {'CPI':>6s} {'shelter sig':>11s} {'shelter share of unmet':>22s}")
    for hi, hn in enumerate(("H0", "H1", "H2")):
        for nm, ww in (("all", w), ("tilt", wt)):
            for sn, A in scen.items():
                if hn == "H0" and A > 0.05: continue
                if hn == "H1" and A < 0.02: continue
                if hn == "H2" and A < 0.04: continue
                sig, per = sigma_total(ww, hi, U, A)
                unmet = {k: ww[k] * (1 - per[k]) for k in ww}
                sh = unmet["shelter/housing"] / max(sum(unmet.values()), 1e-9)
                print(f"{hn:4s} {nm:5s} {sn:28s} {sig:6.2f} {money_finance(US, sig, U):6.1%} {per['shelter/housing']:11.2f} {sh:22.0%}")

# What autonomous output A is needed to reach sigma = 0.8 at Musk scale?
print("\nAutonomous AI/robot output needed (cumulative over ~3 yrs, % GDP) to reach sigma 0.8, U = 24%:")
for hi, hn in enumerate(("H0", "H1", "H2")):
    for nm, ww in (("all", w), ("tilt", wt)):
        lo, hi_ = 0.0, 2.0
        if sigma_total(ww, hi, 0.24, 2.0)[0] < 0.8:
            print(f"   {hn} {nm}: unreachable (shelter caps sigma at {sigma_total(ww, hi, 0.24, 2.0)[0]:.2f})")
            continue
        for _ in range(60):
            m = (lo + hi_) / 2
            if sigma_total(ww, hi, 0.24, m)[0] < 0.8: lo = m
            else: hi_ = m
        print(f"   {hn} {nm}: A = {m:.1%} of GDP (about {m/3:.1%} extra growth a year)")

# With housing supply opened (shelter s = 0.7, the R3-5 question), Musk scale:
print("\nIf housing supply opens (shelter s=0.7), U=24%, H2 weights all:")
s_save = s["shelter/housing"]
s["shelter/housing"] = (0.7, 0.7, 0.7)
for sn, A in scen.items():
    sig, _ = sigma_total(w, 2, 0.24, A)
    print(f"   {sn:28s} sigma {sig:.2f} CPI {money_finance(US, sig, 0.24):.1%}")
s["shelter/housing"] = s_save
```

Output:

```text
Check: R2B reproduction, US printed, U=0.24: sigma 0.3 -> 9.5% | sigma 0.8 -> 0.9%

Anchor A: implied sigma in 2020-21 (deep slack, unemployment peaked near 15%)
   support 15% of GDP -> implied sigma 0.57
   support 20% of GDP -> implied sigma 0.64
   support 23% of GDP -> implied sigma 0.67
   support 25% of GDP -> implied sigma 0.68

Spending weights (share of UHI consumption), all households vs low-income tilt:
   shelter/housing   39.5%   47.5%
   transportation    20.1%   13.4%
   food              15.2%   18.2%
   healthcare         9.3%   10.3%
   entertainment      5.4%    3.6%
   apparel            3.0%    2.0%
   education          2.4%    1.6%
   other              5.1%    3.4%

Ceiling with infinite goods supply (all non-shelter sectors sigma=1, shelter at its s_i):
   H0 all : max sigma = 0.64
   H0 tilt: max sigma = 0.57
   H1 all : max sigma = 0.70
   H1 tilt: max sigma = 0.64
   H2 all : max sigma = 0.76
   H2 tilt: max sigma = 0.72

=== Printed US UHI = 10% of GDP (extra demand 0.8 x U = 8.0% of GDP) ===
horizon weights AI scenario                   sigma    CPI shelter sig shelter share of unmet
H0   all   Acemoglu-like 0.1 pp/yr        0.33   3.7%        0.11                    53%
H0   all   IMF top 0.8 pp/yr              0.57   2.0%        0.16                    77%
H0   all   Goldman 1.5 pp/yr              0.64   1.5%        0.21                    88%
H0   tilt  Acemoglu-like 0.1 pp/yr        0.30   3.9%        0.11                    60%
H0   tilt  IMF top 0.8 pp/yr              0.52   2.4%        0.17                    82%
H0   tilt  Goldman 1.5 pp/yr              0.60   1.8%        0.22                    91%
H1   all   IMF top 0.8 pp/yr              0.66   1.4%        0.31                    80%
H1   all   Goldman 1.5 pp/yr              0.71   1.0%        0.36                    89%
H1   all   Aldasoro-high 3 pp/yr          0.79   0.5%        0.46                   100%
H1   all   Musk-world 6 pp/yr             0.87   0.0%        0.67                   100%
H1   tilt  IMF top 0.8 pp/yr              0.62   1.6%        0.32                    86%
H1   tilt  Goldman 1.5 pp/yr              0.68   1.2%        0.37                    92%
H1   tilt  Aldasoro-high 3 pp/yr          0.76   0.6%        0.50                   100%
H1   tilt  Musk-world 6 pp/yr             0.88   0.0%        0.75                   100%
H2   all   Goldman 1.5 pp/yr              0.79   0.5%        0.51                    92%
H2   all   Aldasoro-high 3 pp/yr          0.85   0.0%        0.61                   100%
H2   all   Musk-world 6 pp/yr             0.93   0.0%        0.82                   100%
H2   tilt  Goldman 1.5 pp/yr              0.76   0.6%        0.52                    96%
H2   tilt  Aldasoro-high 3 pp/yr          0.83   0.1%        0.65                   100%
H2   tilt  Musk-world 6 pp/yr             0.95   0.0%        0.90                   100%

=== Printed US UHI = 24% of GDP (extra demand 0.8 x U = 19.2% of GDP) ===
horizon weights AI scenario                   sigma    CPI shelter sig shelter share of unmet
H0   all   Acemoglu-like 0.1 pp/yr        0.31   9.2%        0.10                    51%
H0   all   IMF top 0.8 pp/yr              0.42   7.4%        0.12                    60%
H0   all   Goldman 1.5 pp/yr              0.51   5.8%        0.14                    70%
H0   tilt  Acemoglu-like 0.1 pp/yr        0.28   9.8%        0.10                    59%
H0   tilt  IMF top 0.8 pp/yr              0.38   8.0%        0.13                    67%
H0   tilt  Goldman 1.5 pp/yr              0.48   6.4%        0.15                    77%
H1   all   IMF top 0.8 pp/yr              0.55   5.2%        0.27                    63%
H1   all   Goldman 1.5 pp/yr              0.63   3.8%        0.29                    75%
H1   all   Aldasoro-high 3 pp/yr          0.70   2.6%        0.34                    87%
H1   all   Musk-world 6 pp/yr             0.77   1.4%        0.43                    98%
H1   tilt  IMF top 0.8 pp/yr              0.51   5.8%        0.28                    70%
H1   tilt  Goldman 1.5 pp/yr              0.59   4.5%        0.30                    81%
H1   tilt  Aldasoro-high 3 pp/yr          0.66   3.3%        0.35                    90%
H1   tilt  Musk-world 6 pp/yr             0.74   1.9%        0.46                   100%
H2   all   Goldman 1.5 pp/yr              0.73   2.1%        0.44                    81%
H2   all   Aldasoro-high 3 pp/yr          0.77   1.3%        0.49                    90%
H2   all   Musk-world 6 pp/yr             0.83   0.3%        0.58                   100%
H2   tilt  Goldman 1.5 pp/yr              0.70   2.7%        0.45                    86%
H2   tilt  Aldasoro-high 3 pp/yr          0.75   1.8%        0.50                    93%
H2   tilt  Musk-world 6 pp/yr             0.81   0.7%        0.61                   100%

Autonomous AI/robot output needed (cumulative over ~3 yrs, % GDP) to reach sigma 0.8, U = 24%:
   H0 all: A = 40.3% of GDP (about 13.4% extra growth a year)
   H0 tilt: A = 41.4% of GDP (about 13.8% extra growth a year)
   H1 all: A = 25.0% of GDP (about 8.3% extra growth a year)
   H1 tilt: A = 28.4% of GDP (about 9.5% extra growth a year)
   H2 all: A = 12.4% of GDP (about 4.1% extra growth a year)
   H2 tilt: A = 15.4% of GDP (about 5.1% extra growth a year)

If housing supply opens (shelter s=0.7), U=24%, H2 weights all:
   Acemoglu-like 0.1 pp/yr      sigma 0.70 CPI 2.6%
   IMF top 0.8 pp/yr            sigma 0.79 CPI 1.0%
   Goldman 1.5 pp/yr            sigma 0.85 CPI 0.1%
   Aldasoro-high 3 pp/yr        sigma 0.89 CPI 0.0%
   Musk-world 6 pp/yr           sigma 0.95 CPI 0.0%
```

### 1.4 How to read it

- **Reproduction.** The R2B function returns 9.5% and 0.9% at sigma 0.3 and 0.8, so the recalibration changes inputs, not the model.
- **Calibration.** The 2020 to 2021 episode implies sigma 0.57 to 0.68 with deep slack. A full-employment 2026 economy should sit lower, which the H0 results (0.28 to 0.64) do.
- **Size matters.** At 10% of GDP, sigma is 0.30 to 0.64 in H0 (Acemoglu-like to Goldman-like AI gains), giving 1.5% to 3.9% CPI. At Musk scale the same AI gains are spread over 2.4 times the demand, so sigma is 0.28 to 0.51 and CPI 5.8% to 9.8%.
- **Shelter takes most of the unmet demand.** In nearly every row shelter is 50% to 100% of the demand that output does not meet. A printed UHI is, in practice, a rent and land subsidy unless housing supply responds. This ties R3-2 to R3-5.
- **What it takes to reach 0.8.** Either about 4 to 5 extra points of growth a year in H2 with housing responding at 0.4, or housing supply opening (shelter response 0.7), after which IMF-top AI gains are enough for about 1.0% CPI.
- **Limits.** Still no interest channel (the Round 2 court's correction C4 stands: US figures are a lower bound because reserves pay interest). Sector responses and exposure weights are assumptions. Low-income CE category shares were not fetched (BLS spreadsheets returned 403), so the tilt is an assumption. Pandemic support size is a memory figure, shown as a range.

### 1.5 Recalibrated table for the Round 2 page (replaces the single "robots meet 80%" column)

| Printed US UHI | H0 sigma | H0 CPI | H1 sigma | H1 CPI | H2 sigma | H2 CPI | CPI if housing supply opens (H2) |
|---|---|---|---|---|---|---|---|
| 10% of GDP | 0.30 to 0.64 | 1.5% to 3.9% | 0.62 to 0.88 | 0.0% to 1.6% | 0.76 to 0.95 | 0.0% to 0.6% | not run |
| 24% of GDP (Musk-scale) | 0.28 to 0.51 | 5.8% to 9.8% | 0.51 to 0.77 | 1.4% to 5.8% | 0.70 to 0.83 | 0.3% to 2.7% | 0.0% to 2.6% |

Model (python3 -I). H1 ranges run from IMF-top AI gains to a Musk-world 6 points a year. H2 from Goldman-like to Musk-world. A lower bound on US inflation because the model has no interest channel.

---

## Section 2. R3-3: the tax base

### 2.1 Federal receipts mix, FY2015 to FY2026 (T0, Treasury MTS table 9, September records)

Script: /tmp/claude-0/-home-user-lastlonger/41b7d58e-bedc-5a4f-859e-bd3e52b76ed8/scratchpad/scripts/mtsmix.py (reads fiscaldata.treasury.gov mts_table_9 JSON, record_date YYYY-09-30)

```python
import json, sys, os
d = sys.argv[1]
keys = ["Individual Income Taxes","Corporation Income Taxes","Employment and General Retirement","Unemployment Insurance","Other Retirement","Excise Taxes","Estate and Gift Taxes","Customs Duties","Miscellaneous Receipts"]
print("FY   total$B  indiv% payroll% corp%  excise% customs% estate% misc%")
for y in range(2015, 2027):
    rows = json.load(open(os.path.join(d, f"mts9_{y}.json")))["data"]
    v = {}
    tot = None
    seen_total = False
    for r in rows:
        k = r["classification_desc"].strip()
        a = r["current_fytd_rcpt_outly_amt"]
        if k in keys and a not in (None, "null"):
            v.setdefault(k, float(a))
    t = sum(v.values())
    pay = v["Employment and General Retirement"] + v["Unemployment Insurance"] + v["Other Retirement"]
    print(f"{y} {t/1e9:8.1f} {v['Individual Income Taxes']/t:6.1%} {pay/t:7.1%} {v['Corporation Income Taxes']/t:6.1%} {v['Excise Taxes']/t:6.1%} {v['Customs Duties']/t:7.1%} {v['Estate and Gift Taxes']/t:6.1%} {v['Miscellaneous Receipts']/t:6.1%}")
```

```text
FY   total$B  indiv% payroll% corp%  excise% customs% estate% misc%
2015   3248.7  47.4%   32.8%  10.6%   3.0%    1.1%   0.6%   4.5%
2016   3266.7  47.3%   34.1%   9.2%   2.9%    1.1%   0.7%   4.7%
2017   3314.9  47.9%   35.1%   9.0%   2.5%    1.0%   0.7%   3.9%
2018   3328.7  50.6%   35.2%   6.2%   2.9%    1.2%   0.7%   3.3%
2019   3462.2  49.6%   35.9%   6.7%   2.9%    2.0%   0.5%   2.4%
2020   3420.0  47.0%   38.3%   6.2%   2.5%    2.0%   0.5%   3.4%
2021   4046.0  50.5%   32.5%   9.2%   1.9%    2.0%   0.7%   3.3%
2022   4896.1  53.8%   30.3%   8.7%   1.8%    2.0%   0.7%   2.8%
2023   4439.3  49.0%   36.4%   9.5%   1.7%    1.8%   0.8%   0.9%
2024   4918.7  49.3%   34.8%  10.8%   2.1%    1.6%   0.6%   0.9%
2025   5234.6  50.7%   33.4%   8.6%   2.0%    3.7%   0.6%   0.9%
2026   5403.3  52.7%   33.5%   7.1%   2.0%    3.2%   0.7%   0.9%
```

Reading: corporate taxes peaked at 10.8% of receipts in FY2024 and fell to 7.1% in FY2026, close to the post-2017-tax-law lows (6.2% in FY2018 and FY2020). Individual plus payroll taxes rose to 86.2%. Customs jumped to 3.7% in FY2025, then fell to 3.2% (R1 L7 flagged the cause as unverified).

### 2.2 Labor-share and new-base model

Script: /tmp/claude-0/-home-user-lastlonger/41b7d58e-bedc-5a4f-859e-bd3e52b76ed8/scratchpad/scripts/r3b_tax.py

```python
# R3B tax-base model. MODEL on T0 inputs. Inputs:
# FY2026 MTS table 9 (record 2026-09-30, $B): individual 2845.5, payroll (employment+UI+other retirement) 1811.8,
# corporate 381.4, excise 106.0, estate 38.7, customs 173.2, misc 46.7. Total 5403.3.
# IRS SOI Table 1.4 TY2023: total income $15.432T, wages $10.204T (66.1%). BLS labor share 52.8% (Q2 2026).
R = dict(indiv=2845.5, payroll=1811.8, corp=381.4, excise=106.0, estate=38.7, customs=173.2, misc=46.7)
T = sum(R.values())
print(f"Total receipts FY2026 ${T:,.1f}B")
wage_share = 10.204 / 15.432
print(f"Wage share of individual total income (SOI TY2023): {wage_share:.1%}")
# Labor-linked share of receipts: payroll + wage share of individual tax. Range: wages are taxed at lower average
# rates than capital gains at the top, so use 55% to 66% of individual tax as the wage-linked part.
for f in (0.55, wage_share):
    lab = R["payroll"] + f * R["indiv"]
    print(f"   labor-linked receipts if {f:.0%} of individual tax is on wages: ${lab:,.0f}B = {lab/T:.1%} of receipts")

# Labor-share shift, GDP and tax rules held fixed. Effective receipts per unit of labor vs capital income.
l0 = 0.528
lab = R["payroll"] + wage_share * R["indiv"]
cap = (1 - wage_share) * R["indiv"] + R["corp"]
oth = R["excise"] + R["estate"] + R["customs"] + R["misc"]
print(f"\nEffective take per $ of factor income (indexed): labor {lab/l0:,.0f}, capital {cap/(1-l0):,.0f} (ratio {(lab/l0)/(cap/(1-l0)):.1f}x)")
for l1 in (0.528, 0.50, 0.45, 0.40, 0.35):
    new = lab / l0 * l1 + cap / (1 - l0) * (1 - l1) + oth
    print(f"   labor share {l1:.1%}: receipts {new/T:6.1%} of today (change {new-T:+,.0f}B, about {(new-T)/T*0.168:+.2%} of GDP at a 16.8% receipts ratio)")

# How big would compute / energy taxes be? (arithmetic on stated bases)
print("\nCandidate new bases, annual revenue, $B and % of FY2026 receipts:")
cands = [
 ("Data-center power tax 1c/kWh on 176 TWh (2023, LBNL)",            176e9 * 0.01 / 1e9),
 ("Data-center power tax 1c/kWh on 580 TWh (2028 high, LBNL)",       580e9 * 0.01 / 1e9),
 ("Data-center power tax 5c/kWh on 580 TWh",                         580e9 * 0.05 / 1e9),
 ("All-electricity tax 1c/kWh on about 4,000 TWh (176/0.044)",       176e9 / 0.044 * 0.01 / 1e9),
 ("5% excise on hyperscaler capex of about $700B (R1 L3)",           0.05 * 700),
 ("Jacobs H.R.10044 3% revenue rate per $100B of AI service revenue", 0.03 * 100),
 ("Korea-style: cut a 3% robot/automation credit on $50B of US robot+automation capex (ASSUMED base)", 0.03 * 50),
 ("UK DST scale-up: UK collected 0.944bn GBP 2025-26, US GDP about 8x UK (rough)", 0.944 * 1.27 * 8),
]
for n, v in cands:
    print(f"   {n:95s} ${v:7.1f}B  {v/T:6.2%}")
# Sanders AI SWF: 5% payout, $1,000 per recipient
for label, n in (("160.6M tax returns (SOI TY2023)", 160.6e6), ("about 340M residents (memory)", 340e6)):
    payout = 1000 * n
    print(f"\nSanders AI SWF, $1,000 x {label}: payout ${payout/1e9:,.0f}B/yr -> stake needed at 5% = ${payout/0.05/1e12:.1f}T -> AI equity base at 50% = ${payout/0.05/0.5/1e12:.1f}T")
print("\nUHI costs for scale: Musk-scale $7.86T (R1 Dc-08), 10% of GDP about $3.26T (on $32.6T).")
print(f"   A $40B all-electricity tax pays {40/7860:.2%} of a Musk-scale UHI, {40/3260:.1%} of a 10%-of-GDP UHI.")
```

```text
Total receipts FY2026 $5,403.3B
Wage share of individual total income (SOI TY2023): 66.1%
   labor-linked receipts if 55% of individual tax is on wages: $3,377B = 62.5% of receipts
   labor-linked receipts if 66% of individual tax is on wages: $3,693B = 68.4% of receipts

Effective take per $ of factor income (indexed): labor 6,995, capital 2,850 (ratio 2.5x)
   labor share 52.8%: receipts 100.0% of today (change +0B, about +0.00% of GDP at a 16.8% receipts ratio)
   labor share 50.0%: receipts  97.9% of today (change -116B, about -0.36% of GDP at a 16.8% receipts ratio)
   labor share 45.0%: receipts  94.0% of today (change -323B, about -1.01% of GDP at a 16.8% receipts ratio)
   labor share 40.0%: receipts  90.2% of today (change -530B, about -1.65% of GDP at a 16.8% receipts ratio)
   labor share 35.0%: receipts  86.3% of today (change -738B, about -2.29% of GDP at a 16.8% receipts ratio)

Candidate new bases, annual revenue, $B and % of FY2026 receipts:
   Data-center power tax 1c/kWh on 176 TWh (2023, LBNL)                                            $    1.8B   0.03%
   Data-center power tax 1c/kWh on 580 TWh (2028 high, LBNL)                                       $    5.8B   0.11%
   Data-center power tax 5c/kWh on 580 TWh                                                         $   29.0B   0.54%
   All-electricity tax 1c/kWh on about 4,000 TWh (176/0.044)                                       $   40.0B   0.74%
   5% excise on hyperscaler capex of about $700B (R1 L3)                                           $   35.0B   0.65%
   Jacobs H.R.10044 3% revenue rate per $100B of AI service revenue                                $    3.0B   0.06%
   Korea-style: cut a 3% robot/automation credit on $50B of US robot+automation capex (ASSUMED base) $    1.5B   0.03%
   UK DST scale-up: UK collected 0.944bn GBP 2025-26, US GDP about 8x UK (rough)                   $    9.6B   0.18%

Sanders AI SWF, $1,000 x 160.6M tax returns (SOI TY2023): payout $161B/yr -> stake needed at 5% = $3.2T -> AI equity base at 50% = $6.4T

Sanders AI SWF, $1,000 x about 340M residents (memory): payout $340B/yr -> stake needed at 5% = $6.8T -> AI equity base at 50% = $13.6T

UHI costs for scale: Musk-scale $7.86T (R1 Dc-08), 10% of GDP about $3.26T (on $32.6T).
   A $40B all-electricity tax pays 0.51% of a Musk-scale UHI, 1.2% of a 10%-of-GDP UHI.
```

How to read it.
- The labor-share sensitivity holds GDP and tax rules fixed and treats national factor shares as proxies for taxable income shares. It is a direction and size check, not a forecast. Direction: every 1 point fall in labor share costs about 0.8% of receipts at today's rules, because labor carries payroll tax and capital income is partly untaxed (retained earnings, expensing, unrealized gains).
- The UK DST row uses a rough GBP rate (1.27) and a rough US to UK GDP ratio (8x), both memory figures. The Korea row uses an assumed base. Both are scale checks only.
- The Sanders arithmetic shows the bill's $1,000 is only reachable with an AI equity base of several trillion dollars. Semafor reports OpenAI and Anthropic could each IPO near $1T, so the per-tax-return version is not absurd for a broad definition of AI (it covers data centers, compute and robotics), but the dividend depends on firms that mostly reinvest instead of paying dividends (AEI's Rinehart via Semafor). The fund cannot sell, so a 5% payout from non-paying shares would need appropriations.

### 2.3 Proposals for robot, compute, energy or data taxes

| Proposal | Where | Base and rate | Status | Revenue scale |
|---|---|---|---|---|
| Automation investment credit cut | South Korea, 2017 plan (effective 2018) | Large firms 3% to 1% (Rest of World, Korea Times) or 7% to 3% (Hotmann via ITIF), sources disagree | Enacted (T1, not fetched) | Small. Effect: robot installs about -28% vs Japan, no significant job effect |
| Digital services tax | UK, France and others | UK 2% of in-scope revenue, France 3% (sources) | Enacted | UK £944M in 2025-26 |
| American AI Sovereign Wealth Fund Act | US Senate, Sanders | One-time 50% stake paid in stock, AI firms over $200M sales | Text 2026-06-18, unnumbered per Roll Call | Stock, not cash. Payout about $1,000 per person claimed |
| H.R. 10044 (Jacobs, Casar, Foushee) | US House | Higher of 2% on token value or 3% on AI revenue at unemployment of 5% or less, rising with unemployment | Introduced August 2026, no CBO score found | $3B per $100B of AI revenue (model) |
| Electricity or data-center power levy | No US bill found | Model: 1 to 5 cents per kWh | None | $1.8B to $40B (0.03% to 0.74% of receipts) |
| Hyperscaler capex excise | No bill found | Model: 5% of about $700B | None | about $35B (0.65%) |

---

## Section 3. R3-8: how a US UHI or AI-dividend bill would really work

| Program or bill | Status (2026-10-22) | Financing | Payment form | Assignable or pledgeable? | Programmable or tokenized? | CBO score |
|---|---|---|---|---|---|---|
| Alaska PFD | Live. 2026: $1,000 + $200 energy relief (R1 L4-22) | Earnings of a resource fund, amount set by legislature | Cash, annual | 20% exempt from creditors, rest garnishable for child support, restitution, state debts (AS 43.23.140, R1 L4) | No | n/a (state) |
| Trump Accounts | Live since 2026-07-04. $1,000 seed for 2025 to 2028 births, 6M sign-ups (R1 L4-23) | Federal seed (tax law), family, employer and philanthropic (Dell $6.25B) contributions | US equity index units, locked to 18 | No in practice: IRA-like after 18, pledging treated as a distribution (R2 C9, R2C) | No | Part of 2025 reconciliation law |
| AI equity into Trump Accounts or a fund (administration talks) | No decision as of June 2026 reporting, no later deal found | Equity "given back" by AI firms, structure unresolved | Account units (Bessent) or fund holdings (Lutnick) | Inherits Trump Account lock if routed there | No | None |
| American AI Sovereign Wealth Fund Act (Sanders) | Text released 2026-06-18, unnumbered, "unlikely to become law" (Roll Call) | One-time 50% equity tax on AI firms over $200M sales, paid in stock | 5% of fund value a year to taxpayers plus education, health, housing. About $1,000 per person | Not addressed in coverage | Not addressed in coverage | None found |
| H.R. 10044 (Jacobs) | Introduced August 2026 | Token or revenue excise on AI firms, rising with unemployment | Funds jobs (housing, infrastructure, care), not payments | n/a | n/a | None found |
| Guaranteed Income Pilot Program Act, H.R. 5830 | Introduced 2025-10-24, in Ways and Means (secondary) | Appropriation of $495M for FY2026 to FY2030 | Pilot cash | Not found | Not found | None found |
| BOOST Act | $250 a month per qualifying adult, not enacted as of September 2026 (secondary, reintroduction not verified) | Federal | Cash | Not found | Not found | None found |
| State bans on local guaranteed income | Arkansas, Idaho, Iowa, Kansas, South Dakota. Arizona ban vetoed | n/a | n/a | n/a | n/a | n/a |
| Wyoming FRNT | Live state stable token, vendor payments, benefits and refunds only floated | 102% reserve in bills and cash | Token | Transferable like any stablecoin balance | Yes (rail), but no benefit program found | n/a |

What this means for Round 2's design answers (Q4, M7, M8).
- Financing: every live design is tax or equity, which matches the R2B finding that funding source protects the currency. None uses Musk's money finance. In R2B's model terms these are the "tax" and "fund" rows, where inflation depends on sigma only through the net demand impulse.
- Pledgeability: the equity route (Trump Accounts) is locked by default. The cash route has no bill text that addresses assignment. A future cash UHI written into the Social Security Act would inherit 42 USC 407 by default, a standalone statute would need its own clause. Tripwire: the first bill text with an anti-assignment clause or a payroll-deduction lending carve-out.
- Programmability: the US rails exist (private stablecoins under GENIUS, Wyoming's state token), but no federal or state benefit is paid on them. The federal CBDC ban (R1 L2) means a programmable federal UHI would ride private tokens.

---

## Say/Do gaps

| Actor | Says | Does | Read |
|---|---|---|---|
| Musk | Federal checks for UHI, "MUST issue dollars or massive disinflation" (R1 L4) | No bill carries money finance. Measured productivity 2.1% in 2025 | Disinflation has not arrived to absorb the money |
| Hyperscalers | AI will create abundance for all | Microsoft's current tax fell to $2.5B from $14.1B, Microsoft and Meta cool on equity stakes | Abundance claims, tax deferral in practice |
| Administration | AI firms should "give back something to the public" (Trump, via Semafor) | Abandoned the sovereign fund in 2025 over debt concerns, no AI equity deal found | Prefers ownership grants that cost no outlays |
| Sanders | AI wealth fund paying about $1,000 per person | Fund cannot sell shares, payout depends on dividends AI firms rarely pay | Cash promise rests on appropriations |
| Brynjolfsson | 2025 productivity 2.7%, AI take-off visible | BLS now shows 2.1% for 2025 | Early reads were revised down |
| IMF | Georgieva: AI can add up to 0.8 pp a year | WEO range is 0.1 to 0.8 pp, with a 0.4 pp correction downside | Headline uses the top of the range |
| Korea | "Robot tax" in headlines | Trimmed a credit, robot installs fell 28% vs Japan | Taxing automation slows supply, not jobs |
| Jacobs bill | Workers deserve "a share of those profits" | Funds jobs programs, not payments | Labor-side Democrats prefer work over checks |

## Anomalies

1. **Corporate tax fell 15.6% in a year when unit profits rose 43% annualized.** Default: profits up, taxes up. Explanation: 100% expensing of AI capex (CBO cites the 2025 law). Corporate receipts will stay low as long as capex keeps growing.
2. **Capacity utilization 2.5 points below average while chip output rose 28.4% a quarter.** Default: an AI boom tightens industry. Observed: the boom is narrow, so goods slack exists for a UHI in H0, but the slack is in the wrong sectors for rent and care.
3. **A Republican administration discusses taking equity in AI firms for citizens' accounts.** Default: tax cuts, no state stakes. Explanation: ownership grants cost no outlays and fit the Trump Account brand (Intel 10% stake precedent).
4. **The best measured productivity year (2024, 3.0%) came before most AI adoption and 2025 slowed to 2.1%.** Default under the AI story: acceleration. Reading: the J-curve is still in its investment phase.
5. **States ban local guaranteed income while federal Democrats propose AI dividends.** The policy fight is about who controls transfers, not only about cost.

## Mechanism chains

**A. Printed UHI meets the housing wall.** UHI paid, then about 40% to 48% of extra spending goes to shelter, then the housing stock grows about 1% a year, then rents and land prices absorb the money, then sigma stays near 0.3 to 0.5 at Musk scale, then CPI runs 6% to 10% in H0, then the real UHI erodes while landlords and asset owners gain. Robots lower goods prices but raise the relative price of shelter. Test: shelter CPI vs core goods CPI in any period with large transfers.

**B. AI capex hollows corporate tax.** Capex grows, then 100% expensing deducts it at once, then corporate receipts fall (FY2026 minus 15.6%), then the deficit widens, then more bills are issued (links to R2 captive demand), then receipts recover only when capex growth stops. Test: corporate receipts in MTS, hyperscaler cash taxes in 10-Qs.

**C. Falling labor share shrinks revenue at constant rules.** Labor share down 1 point, then receipts down about 0.8%, then pressure for a new base, then the large bases are capital income at the individual level, corporate equity and consumption, not watts or tokens (watts and tokens raise under 1% of receipts at plausible rates). Test: any bill to tax unrealized gains, a VAT, or an equity levy with a CBO score.

**D. AI equity into child accounts.** Firms "give back" equity, then it seeds Trump Accounts, then balances are locked to 18 and non-pledgeable, then no current income and no inflation, then the bottom half's equity share rises slowly from 2043 (links to R3-11). Test: Treasury announcement routing AI equity to Trump Accounts.

**E. Taxing automation lowers sigma.** A robot tax or credit cut reduces robot installs (Korea about -28%), then supply responds less to demand, then a printed UHI inflates more. A UHI financed by a robot tax partly defeats itself. Test: robot installs after any US automation tax change.

## Tripwires (with dates)

| Date | What | Threshold that matters |
|---|---|---|
| 2026-10-29 | BEA Q3 GDP advance | Equipment and software investment share of growth vs consumption |
| Early November 2026 (BLS schedule not re-checked) | Q3 productivity and costs | Productivity above 2.5% y/y for the first time since 2024, labor share below 52% |
| About 2026-11-12 | MTS October receipts | Corporate receipts still falling year on year |
| Mid-November 2026 | Fed G.17 October | Utilization back above 79.4% would remove H0 goods slack |
| Early 2027 | CBO Budget and Economic Outlook | How CBO treats AI in potential growth and corporate receipts |
| Late January to February 2027 | Hyperscaler Q4 filings | Current (cash) tax vs book tax |
| Early 2027 | SAG full-year humanoid shipments | Above 60,000 confirms the ramp, above 500,000 a year before 2029 breaks Dc-05 |
| Any date | Sanders bill number and cosponsors, H.R. 10044 committee action | First CBO score of an AI-dividend bill |
| Any date | Treasury or White House AI equity announcement | Equity routed to Trump Accounts vs a fund |
| Spring 2027 | Alaska legislature sets the 2027 PFD | A formula vs political amount (continuance for underwriting) |

## Open questions

1. CE category shares for the lowest income quintile (BLS spreadsheet blocked). Would firm up the low-income tilt.
2. Primary CBO text on the corporate receipts decline (cbo.gov 403). The 11-month CBO figures quoted by TaxProf Blog ($390B to $294B, minus 25%) differ from MTS full-year figures ($452.1B to $381.4B, minus 15.6%), likely timing of September payments. Not reconciled.
3. Primary Dallas Fed note and SF Fed utilization-adjusted TFP series (only secondary seen).
4. Sanders bill text on assignment, garnishment and payment mechanics. Not in the coverage found.
5. Whether any administration AI equity deal happened after June 2026 (none found in two searches).
6. A housing supply elasticity estimate for 2020s US metros (the CEPR "declining elasticity" literature was not read). Decides the shelter s_i, the most important input.
7. Size of US robot and automation capex, needed for a real Korea-style estimate.

---

## Claims

| id | claim | tier | status | source (URL) | source date | as-of date | falsifier |
|---|---|---|---|---|---|---|---|
| R3B-01 | Nonfarm productivity grew 3.0% in 2024, 2.1% in 2025, 2.2% y/y in Q2 2026 (1.4% annualized). Labor share 52.8%, record low | T0 | confirmed | https://www.bls.gov/news.release/archives/prod2_09032026.htm | 2026-09-03 | 2026-10-22 | BLS revision |
| R3B-02 | Capacity utilization 76.9% in September 2026, 2.5 pp below the 1972 to 2025 average (79.4%). Semiconductor output +28.4% in Q3. Capacity growth 1.2% y/y | T0 | confirmed | https://www.federalreserve.gov/releases/g17/current/default.htm | 2026-10-16 | 2026-10-22 | G.17 revision |
| R3B-03 | Brynjolfsson estimated 2025 productivity at 2.7%. BLS's current annual figure is 2.1% | T4 vs T0 | confirmed (revision) | https://www.edwardconard.com/macro-roundup/brynjolfsson-argues-that-downward-revisions-to-job-creation-while-real-gdp-growth-remains-steady-suggest-that-ai-may-be-impacting-us-productivity-growth-he-estimates-labor-productivity-grew-2-7-last/ | 2026-02 | 2026-10-22 | BLS revises 2025 back above 2.5% |
| R3B-04 | Goldman's Hatzius: AI investment contributed "basically zero" to 2025 US GDP growth, because the equipment is imported | T4 | plausible | https://finance.yahoo.com/news/ai-contributed-basically-zero-us-181419807.html | 2026-02-24 | 2026-10-22 | BEA import-adjusted estimates show a large domestic contribution |
| R3B-05 | CEA: AI-related investment raised GDP at a 1.3% annualized rate in H1 2025. Estimates of AI's GDP level effect: Acemoglu 0.9 to 1.6% (10 yrs), PWBM 1.5%, Goldman 7% global, Aldasoro 20 to 45% | T2 | confirmed (as statement) | https://www.whitehouse.gov/wp-content/uploads/2026/01/Artificial-Intelligence-and-the-Great-Divergence-5.pdf | 2026-01 | 2026-10-22 | n/a |
| R3B-06 | IMF: AI could lift global growth up to 0.3 pp in 2026 and 0.1 to 0.8 pp a year over the medium term, with a 0.4 pp correction downside | T4 (wire) | confirmed (as statement) | https://www.dailypioneer.com/news/ai-could-lift-global-growth-by-0-8-says-imf-chief | 2026-01 | 2026-10-22 | Later WEO revises range |
| R3B-07 | Information, finance and professional services are about 16% of hours but about 40% of productivity gains since early 2024. Utilization-adjusted TFP +0.07% over 4 quarters to Q1 2026 | T4 (secondary) | plausible | https://hrexecutive.com/ai-productivity-claims-are-95-still-to-come-fed-finds/ | 2026-07 | 2026-10-22 | Primary Dallas Fed and SF Fed series differ |
| R3B-08 | About 19,100 humanoids shipped in H1 2026 (+272%), over 97% by Chinese makers, about 60,000 forecast for 2026 | T4 | plausible | https://technode.com/2026/08/11/chinese-makers-accounted-for-more-than-97-of-global-humanoid-robot-shipments-in-h1-2026/ | 2026-08-11 | 2026-10-22 | IFR or audited counts differ |
| R3B-09 | Pandemic fiscal support may have added about 3 pp to US inflation by end-2021 | T4 | plausible | https://www.frbsf.org/wp-content/uploads/sites/4/el2022-07.pdf | 2022-03-28 | 2026-10-22 | Later decompositions attribute it to supply |
| R3B-10 | 2024 consumer spending shares: housing 33.4%, transportation 17.0%, food 12.9%, insurance and pensions 12.5%, healthcare 7.9% | T0 | confirmed | https://www.bls.gov/news.release/cesan.nr0.htm | 2025 | 2026-10-22 | BLS revision |
| R3B-11 | CPI-U weights December 2025: services 64.0%, shelter 35.6%, commodities 36.0%, medical care services 6.9% | T0 | confirmed | https://www.bls.gov/cpi/tables/relative-importance/2025.htm | 2026-01 | 2026-10-22 | n/a |
| R3B-12 | Recalibrated model: a printed Musk-scale (24% of GDP) US UHI gives sigma 0.28 to 0.51 and CPI 5.8% to 9.8% in H0, sigma 0.51 to 0.77 and CPI 1.4% to 5.8% in H1 | model | plausible (model) | this file, section 1.3 | 2026-10-22 | 2026-10-22 | Productivity above 4% a year with flat shelter inflation |
| R3B-13 | Shelter caps sigma at 0.57 to 0.76 unless housing supply opens or robot output lands in housing. Reaching 0.8 at Musk scale needs about 4 to 13 extra points of growth a year depending on horizon | model | plausible (model) | this file, section 1.3 | 2026-10-22 | 2026-10-22 | Housing completions double with stable land prices |
| R3B-14 | 2020 to 2021 inflation evidence implies sigma about 0.57 to 0.68 under deep slack in the R2B equation | model | speculative (model, memory inputs) | this file, section 1.3 | 2026-10-22 | 2026-10-22 | Better size of money-financed support changes the range |
| R3B-15 | FY2026 receipts $5,403.3B: individual 52.7%, payroll 33.5%, corporate 7.1% (10.8% in FY2024), customs 3.2%, excise 2.0% | T0 | confirmed | https://api.fiscaldata.treasury.gov/services/api/fiscal_service/v1/accounting/mts/mts_table_9?filter=record_date:eq:2026-09-30 | 2026-10 | 2026-10-22 | Final MTS revision |
| R3B-16 | Corporate receipts fell to $381.4B from $452.1B. CBO attributes the decline to the 2025 law's larger investment deductions. Microsoft's current tax fell to $2.5B from $14.1B | T0/T2 via T4 | confirmed (decline), plausible (cause) | https://taxprofblog.aals.org/2026/09/19/is-the-ai-boom-hollowing-out-corporate-tax-receipts/ | 2026-09-19 | 2026-10-22 | Receipts rebound while capex keeps growing |
| R3B-17 | IRS SOI TY2023: wages $10.20T of $15.43T total income (66.1%), 160.6M returns. TY2022 65.0% | T0 | confirmed | https://www.irs.gov/pub/irs-soi/23in14ar.xls | 2026-03 | 2026-10-22 | SOI revision |
| R3B-18 | About 62% to 68% of federal receipts rest on labor income. At constant rules, a labor share of 45% instead of 52.8% cuts receipts about 6% (about 1% of GDP) | model | plausible (model) | this file, section 2.2 | 2026-10-22 | 2026-10-22 | Receipts/GDP rise while labor share falls without new taxes |
| R3B-19 | Korea trimmed its automation investment credit (2017 plan, 2018 effect, rates disputed). Robot installs fell about 28% vs Japan, with no significant employment effect | T1/T4 | plausible | https://itif.org/publications/2026/02/09/industries-impacted-by-quasi-robot-tax-south-korea-reduced-industrial-robot-installations/ | 2026-02-09 | 2026-10-22 | Replication finds no install effect |
| R3B-20 | Sanders' American AI Sovereign Wealth Fund Act (text 2026-06-18): one-time 50% stake paid in stock from AI firms over $200M sales, 7-member board, 5% annual payout, about $1,000 per person, fund cannot sell, unnumbered | T2 (via press) | confirmed (as proposal) | https://rollcall.com/2026/06/18/sovereign-wealth-fund-tax-on-ai-companies-unveiled-by-sanders/ | 2026-06-18 | 2026-10-22 | Bill text differs |
| R3B-21 | H.R. 10044 (Jacobs, Casar, Foushee, August 2026): AI excise, higher of 2% on token value or 3% on AI revenue at unemployment of 5% or less, rising with unemployment, funds jobs | T2 (via press) | confirmed (as proposal) | https://fortune.com/2026/09/01/bill-tax-ai-tokens-fund-jobs-technology-unemployment/ | 2026-09-01 | 2026-10-22 | Bill text differs |
| R3B-22 | Administration discussed AI equity stakes: Bessent favors seeding Trump Accounts, Lutnick a sovereign fund. No decision. The broader sovereign fund idea was dropped in 2025 over debt concerns | T4 | plausible | https://www.semafor.com/article/06/17/2026/trump-advisers-weigh-structure-of-potential-ai-stakes | 2026-06-17 | 2026-10-22 | Announcement of a deal or a formal denial |
| R3B-23 | Sanders' $1,000 payout needs a $3.2T stake (per tax return) to $6.8T (per resident), implying $6.4T to $13.6T of taxable AI equity | model | plausible (model) | this file, section 2.2 | 2026-10-22 | 2026-10-22 | Bill defines a different base or payout |
| R3B-24 | Compute and energy taxes at plausible rates raise 0.03% to 0.74% of federal receipts ($1.8B to $40B) | model | plausible (model) | this file, section 2.2 | 2026-10-22 | 2026-10-22 | A CBO score above 1% of receipts |
| R3B-25 | Data centers used 176 TWh in 2023 (4.4% of US electricity), projected 325 to 580 TWh by 2028 | T4 (DOE lab) | confirmed (as estimate) | https://www.energy.gov/articles/doe-releases-new-report-evaluating-increase-electricity-demand-data-centers | 2024-12-20 | 2026-10-22 | EIA measured data differ |
| R3B-26 | UK digital services tax raised £944M in 2025-26 | T0 via T4 | plausible | https://www.law360.co.uk/amp/articles/2469124 | 2026 | 2026-10-22 | HMRC figure differs |
| R3B-27 | Five states ban local guaranteed income programs (AR, ID, IA, KS, SD). Arizona's ban was vetoed | T1 via T4 | plausible | https://www.supportdemocracy.org/the-latest/2026-mid-session-trends-in-state-preemption | 2026 | 2026-10-22 | State code check differs |
| R3B-28 | Guaranteed Income Pilot Program Act (H.R. 5830) introduced 2025-10-24 with $495M for FY2026 to FY2030, in committee | T4 | plausible | https://basicincome.org/news/2026/06/ai-is-speeding-up-the-deadline-for-basic-income/ | 2026-06 | 2026-10-22 | congress.gov shows different status |
| R3B-29 | No US federal or state UHI or AI-dividend bill found that makes payments assignable, tokenized or programmable. Wyoming's FRNT is a live programmable rail with no benefit program | T4 | plausible (absence) | https://www.paymentsjournal.com/wyomings-stablecoin-debuts-for-the-general-public/ | 2026-01 | 2026-10-22 | Any bill text with token payment or assignment clauses |

---

## Proposed changes to earlier rulings

1. **R2 M6 and Q7, and the r2-t-uhi table (change the "robots meet 80%" column).** The 0.8 sigma should be relabeled as an H2 to H3 conditional case, not a parallel scenario. Evidence: measured productivity 2.1% in 2025, TFP nearly flat, mainstream AI estimates 0.1 to 1.5 points a year (R3B-01, 05, 06, 07), and shelter at about 40% of UHI spending with slow supply (R3B-10, 11). New Musk-scale range: 5.8% to 9.8% CPI in H0, 1.4% to 5.8% in H1, 0.3% to 2.7% in H2 (R3B-12). Keep M6 at 55. Q7's sentence "If robots meet 80% of the extra demand, the US ... stay under about 3% CPI" should add "which needs housing supply to open (H2 at the earliest)". The 2020 to 2021 calibration (R3B-14) supports R2B's 0.3 as a fair H0 baseline.
2. **R1 Dc-04 (Musk's "massive disinflation", speculative 25).** Lower to 20. No disinflation in goods or services is visible in H0 data, and the sector math shows money issued to people lands mostly on shelter, which robots do not supply.
3. **R1 Dc-03 condition three ("gains must land in taxable income").** Upgrade from "looks weak" to confirmed failing in H0: CBO attributes the corporate receipts fall to the 2025 law's investment deductions, and Microsoft's current tax fell 82% (R3B-16). Dc-03 stays confirmed as arithmetic at 75.
4. **R1 L4 odds on a federal statutory UHI or AI dividend (about 15% by 2035).** Split into two: cash UHI or AI dividend by 2035 about 10%, AI equity routed into Trump Accounts or a public fund by 2035 about 25%. Evidence: the only administration-level design is equity into accounts (R3B-22), the main opposition bill is also equity (R3B-20), and no cash bill has moved (R3B-28, 29). This is a lane judgment, not a measured probability.
5. **Scenario odds (S1 to S4).** H0 and H1 unchanged. H2: move 1 point from S1 to S4 (S1 32 to 31, S4 30 to 31). Evidence: the federal tax base is moving toward labor while the labor share falls (R3B-15, 17, 18), new compute and energy bases are too small to replace it (R3B-24), and AI capex is deferring corporate tax (R3B-16). Treasuries are claims on a base that shrinks about 0.8% per point of labor share at today's rules. This is a small, slow erosion of Set 1's collateral, not a regime change. S3 (energy/compute) stays at 10: no sign that watts or compute become a fiscal base.
6. **Link R3-2 to R3-5.** The court should treat housing supply as the binding constraint on any UHI's real value, ahead of robot output. In the model, opening housing supply does more for a printed UHI's value than doubling AI's growth contribution.
