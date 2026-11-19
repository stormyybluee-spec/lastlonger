# VERIFY_R14: verification of DRAFT_R14.md (chapter rb-1971)

Verifier run on 2026-11-16. Only the draft and the two lanes were read. Numbers were re-checked against primary or authoritative sources where the fetch tool allowed. Raw files (Treasury Annual Report 1971, Economic Report of the President 1972, JST Release 6, Maddison 2023, FRED, Bordo et al. 2001, MOF Budget 2023, IMF Roger 2010, BoE Cunliffe letter) were downloaded and read directly, and averages were recomputed with python3 -I.

## 1. Headline result

The data core is sound. Most numbers match their sources, and the quotations of Nixon, Hayek, Eichengreen and Nam Kwang-woo are real.
Five things need fixing before print: the 2.9 times row mixes dates (gold of 10.2 gives 3.0), the crisis table is mislabelled and leaves out the 13.4% interwar figure, the Nixon "hostage" quotation is cut from a longer sentence and capitalised, "grew faster than it ever had before" for Malaysia is contradicted by Maddison's 1910s and 1920s, and "all grew faster after 1973" is false for Korea in 1990 to 2019.
Several causal lines are stronger than the data (35 years of low inflation credited to the anchor, "Malaysia learned", "failed badly at least three times", "no anchor" for 1971 to 1973).
No lane row marked unverified or memory is printed. A few plausible rows are printed without a hedge (see section 4).
Counts are at the end of section 2.

## 2. Main table

Status words: match, mismatch, unsupported, overstated.

| id | block | the draft's words (short) | status | what the source says | suggested wording |
|---|---|---|---|---|---|
| VF-01 | 0 | Bank lending grew fastest while the gold link was in place | match | JST: real loan growth 9.0 (1950 to 1970), 5.8, 3.3. I recomputed 9.00, 5.75, 3.31 | Keep. Add "from a low post-war base" |
| VF-02 | 0 | "about 35 years of low inflation" after the governance was built | overstated | 1983 to 2019 averages 2.7% (US CPI Dec to Dec 2.65, JST 18 country 2.69). Bretton Woods 1950 to 1970 was 2.5 (US) to 3.8. US 1980 to 1990 averaged 5.5. Targets began 1990 (NZ) and 2012 (Fed) | "about 35 years of inflation near 2 to 3% a year, similar to the 1950s and 1960s" |
| VF-03 | 1 | rb-03: after 1944 dollar tied to gold at 35, other currencies to the dollar | match | Fed History: gold fixed at $35 under Bretton Woods | Keep |
| VF-04 | 8 | 13 August 1971, Camp David, fifteen advisers | match | Fed History: "fifteen advisers", 13 to 15 August. 13 Aug 1971 was a Friday | Keep |
| VF-05 | 8 | Burns "head of the central bank", Connally Treasury Secretary, Volcker "a Treasury official" | match | Fed History: Burns Federal Reserve Chairman, Volcker Under Secretary for International Monetary Affairs | Keep. Could say "Treasury Under Secretary" |
| VF-06 | 8 | "a retreat in the hills north of Washington" | unsupported | No lane row. Common knowledge, low risk | Cite or soften to "a presidential retreat in Maryland" |
| VF-07 | 9 | promise "worked while America held more gold than foreigners held dollars" | overstated | Treasury: all foreign liquid claims (20.5bn) passed gold (17.8bn) already in 1960. Only official claims passed gold about 1964 to 1967 | "more gold than foreign governments held in dollars" |
| VF-08 | 10 | 1960: gold $17.8bn, claims $10.5bn | match | ERP 1972 17,804. Treasury June 1960 official 10,482 | Keep |
| VF-09 | 10 | 1968: gold $10.9bn, claims $12.1bn | match | ERP 10,892. Treasury June 1968 12,101. Official series dipped 1968 to 1969 because of a reclassification into "banks and other foreigners" | Keep. Add note on reclassification in box 54 |
| VF-10 | 10 | 1971: gold $10.2bn, claims $30.8bn, "about 2.9 times" | mismatch | 10.2 is end 1971 gold. 30.84/10.206 = 3.02. The 2.9 uses June 1971 gold 10,507 (30.84/10.507 = 2.94) | Show gold as "$10.5 billion (June)" so the row divides to 2.9 |
| VF-11 | 11 | "about one in three" | match | 10.507/30.84 = 0.34. 10.206/30.84 = 0.33 | Keep |
| VF-12 | 11 | "Runs on the dollar had begun" | match | State Dept Office of the Historian: periodic runs, a run in summer 1971 | Keep |
| VF-13 | 11 | Sunday 15 Aug, television, gold window, 90 day freeze, 10% import tax | match | Address text and Fed History. 15 Aug 1971 was a Sunday | Keep |
| VF-14 | 12 | "The American dollar must never again be a hostage..." | overstated | Actual sentence: "I am determined that the American dollar must never again be a hostage in the hands of international speculators." The draft starts with a capital and drops the opening | Quote the full sentence, or write: he was "determined that the American dollar must never again be a hostage in the hands of international speculators" |
| VF-15 | 13 | "suspend temporarily" the swapping | match | Address: "suspend temporarily the convertibility of the dollar into gold or other reserve assets" | Keep |
| VF-16 | 13 | "It was never undone" | match | Lane note, Fed History says window stayed closed. No separate row, low risk | Keep |
| VF-17 | 13 | new fixed rates Dec 1971, lasted little more than a year | match | Smithsonian 17 to 18 Dec 1971, second devaluation Feb 1973, float March 1973 | Keep |
| VF-18 | 13 | "By March 1973 the main currencies floated against each other" | overstated | Office of the Historian: six EC members floated jointly against the dollar, which effectively ended Bretton Woods | "In March 1973 six European currencies began floating together against the dollar, and the fixed system effectively ended" |
| VF-19 | 16 | Fed had to hold gold worth 25% of banknotes until March 1968 | match | 1968 hearing text: "not less than 25 percent" of notes in circulation. Statute is Public Law 90-269, March 1968 (header shows 16 or 18 March) | Keep |
| VF-20 | 16 | "its chairman told Congress that of 12 billion of gold only 1.3 billion was free" | overstated | The $12bn and $10.7bn cover figures are in Treasury Secretary Fowler's statement. Chairman Martin said free gold was "currently $1.3 billion" and would be absorbed in under 2 years | "Congress was told that of about 12 billion of gold only 1.3 billion was free" |
| VF-21 | 16 | Congress removed cover for deposits in 1965, for notes in 1968 | match | Search of statutes: Public Law 89-3 (March 1965) struck the deposit cover. 1968 act repealed the note cover. Lane marked plausible, now confirmed | Keep |
| VF-22 | 16 | "A limit that is lifted each time it binds" | overstated | Only 1968 has evidence of a pinch (free gold gone in about 2 years). 1965 pinch is not shown in the lane. The 1945 change is unverified and not printed | "A limit that was lifted when it began to bind in 1968" |
| VF-23 | 16 | "America's gold could not cover its promises... forced the weekend" | match | State Dept: lack of gold to back dollars at $35, runs | Keep. Bordo and McCauley argue policy, not metal, which the box 53.1 gives |
| VF-24 | 16 | lending 53% (1970), lower than 58% (1913), 111% (2007), "18 rich countries" | match | JST: 53.4 (1970), 111 (2007, 110.9). 1913 mean 58.05 is across 16 countries (no Ireland, Portugal), not 18. Same 16 in 1970 gives 53.1 | Keep numbers. Say "18 rich countries (16 in 1913)" in box 54 |
| VF-25 | 16 | real loan growth 9.0, 5.8, 3.3 | match | Recomputed 9.00, 5.75, 3.31 (5.75 sits on the rounding edge) | Keep |
| VF-26 | 16 | world debt about 97% (1950s), about 235% (2024) | match | IMF Global Debt Monitor 1950s average 96.9 (lane read it off an image and flagged an eye check). IMF blog: "above 235%" | Keep. Note 1950s includes wartime public debt |
| VF-27 | 16 | gold coin 5% to 9% of British money in 1914, "by one estimate" | match | Hansard: coin 123m (30 June 1914), deposits 1,322m (31 Dec 1914). 123/(123+1322) = 8.5%. Against JST broad money 123/2583 = 4.8%. Dates in the table are mixed | Keep the hedge. Replace "The rest was bank money" with "Most of the rest was bank deposits and notes" |
| VF-28 | 17 | "Credit grew fast under the gold link because it started from a low level" | overstated | Lane: a post-war rebound is "built in". The data cannot separate base effect from other causes | "partly because" |
| VF-29 | 21 | "Through the 1970s American prices rose faster and faster" | overstated | Fed History: above 12% around 1974, then above 14% in 1980. Not a steady climb (1975 to 1976 was far lower). No lane row for the path | "rose in two waves, to above 12% in 1974 and above 14% in 1980" |
| VF-30 | 21 | inflation passed 14% in 1980 | match | Fed History: "more than 14 percent in 1980" | Keep |
| VF-31 | 21 | Volcker "now led" the central bank | match | Took office August 1979 | Keep |
| VF-32 | 21 | rates "nearly 20% in 1981" | match | Fed History: funds rate "approach 20 percent" late 1980 and early 1981 | Keep |
| VF-33 | 21 | unemployment 10.8% at end 1982 | match | Fed History says "nearly 11 percent". 10.8% is from the AP obituary of Volcker (lane) and the BLS | Keep |
| VF-34 | 21 | 22% house builders, 24% car makers | match | Fed History: residential construction 22% and auto manufacturers 24% at end of 1982 | Keep |
| VF-35 | 21 | "mailed bricks and blocks of wood", car keys, "reported" | overstated | AP: bricks and 2-by-4 wooden planks with stamps, car keys. AP states it without hedge. Lane tier T3 | "bricks and lengths of two-by-four timber" |
| VF-36 | 22 | 30-year rate up 1.6 percentage points "within days" | match | BoE Cunliffe letter 5 Oct 2022: "rose by 160 basis points in just a few days" (I read the PDF) | Keep |
| VF-37 | 22 | "the plan was reversed within about a month, and the prime minister resigned" | overstated | Tax measures were mostly reversed on 17 Oct (24 days). PM resigned 20 Oct after 44 days. Lane rows are secondary press | "most of the tax cuts were withdrawn within about a month" |
| VF-38 | 23 | Mexico told "its lenders" in August 1982 it could not service about 80bn | overstated | Fed History: Silva Herzog told the Fed chairman, US Treasury Secretary and IMF managing director, debt "totaled $80 billion" | "told US officials and the IMF" |
| VF-39 | 24 | weakness: short dollar borrowing without cover (IMF) | match | IMF brief: unhedged foreign currency borrowing, short term external debt | Keep |
| VF-40 | 24 | ringgit 2.50 mid 1997 to 4.88 January 1998 | overstated | FRED: June 1997 average 2.52. The 4.88 (4.885) is a record daily level on 7 Jan 1998 in press and academic reports. Monthly average for Jan 1998 was 4.41. Lane marks it plausible and secondary | "from about 2.50 to a low near 4.88 on 7 January 1998, according to press reports" |
| VF-41 | 24 | "On 1 September 1998 Bank Negara put controls... and fixed the ringgit at 3.80" | mismatch | BNM: controls 1 Sept, fixing at RM3.80 "the next day" (2 Sept) | "controls on 1 September and the 3.80 peg the next day" |
| VF-42 | 24 | peg lasted until 2005 | match | BNM: replaced 21 July 2005 | Keep |
| VF-43 | 24 | IMF lent Thailand, Indonesia, Korea "tens of billions, with hard conditions" | match | IMF brief: about 4bn, 10bn, 21bn (IMF part) | Keep |
| VF-44 | 24 | Korea: queued to sell gold "so the gold could be exported for dollars" | unsupported | Deseret/Reuters text: "lined up to sell", aim "to help fill the country's foreign exchange coffers". Does not say exported | "to raise foreign currency for the country" |
| VF-45 | 24 | 17 tonnes in first three days | match | "17 tons worth more than $170 million since the collection started Monday", 7 metric tons on the Wednesday | Keep |
| VF-46 | 25 | Nam Kwang-woo, 24, quotation, "in the queue in Seoul" | overstated | Quotation word for word correct, age 24 correct. Article puts him "in front of a bank counter" and names no city | Drop "in Seoul" or write "at a bank counter" |
| VF-47 | 26 | 97.3% in ringgit, 65% cap, 60.4% at end 2022 | match | MOF Budget 2023 section 3 (PDF read): RM1,079.6bn, 60.4% of GDP, 97.3% ringgit securities, 65% statutory limit kept by gazetted orders | Keep. Note these are 2022 numbers in a 2026 chapter |
| VF-48 | 26 | "Malaysia learned from that year" | unsupported | No row links the 1998 episode to the later ringgit share. Causal | "Malaysia now borrows almost wholly in ringgit" |
| VF-49 | 27 | dollar 56.7% of reserves, mid 2026 | match | IMF COFER 2026Q2: 56.70% | Keep |
| VF-50 | 27 | "so America can sell its debt more easily than anyone" | unsupported | Concept only, no data row | Hedge with "usually" or cite Eichengreen |
| VF-51 | 20 | each limit "has stopped a government in its tracks" | overstated | Inflation: US 1979 to 82 yes. UK 2022: policy reversed. Dollar debt: Mexico, Asia. Reasonable but rhetorical | "has forced a government to change course" |
| VF-52 | 31 | anchor is a promise "usually 2%" | unsupported | No lane row on the usual target. Fed 2% and NZ are the only rows | "often 2%" with an IMF source |
| VF-53 | 31, 50 | anchor "took about twenty years to build" | overstated | Lane: about 20 years to NZ (1990), 41 years to explicit US target (2012) | "about twenty years for the first, and forty-one for America" |
| VF-54 | 32 | 1971 to 1982 "No anchor" | overstated | Smithsonian fixed rates ran Dec 1971 to Feb or March 1973. Fed History says "completely unanchored" after the final break in 1973 | "1973 to 1982" or "a weakened anchor until 1973, none after" |
| VF-55 | 32 | October 1979 money supply target | match | Fed History: FOMC shifted to reserve growth | Keep |
| VF-56 | 32 | US inflation 7.8% (1971 to 1982), 2.7% (1983 to 2019) | match | FRED CPIAUCNS Dec to Dec: 7.76 and 2.65. Other measures: JST US 7.50 and 2.57, World Bank US 7.92 and 2.67 | Keep but state "consumer prices, December to December" |
| VF-57 | 32 | New Zealand 1990 first targeter, 26 countries by 2010 | match | Roger, IMF F&D March 2010: "26 countries", NZ "two decades ago" (lane gives 1990) | Keep |
| VF-58 | 32 | Fed 2% target January 2012 | match | Fed statement 25 Jan 2012, PCE | Keep |
| VF-59 | 32 | 2008: output fell 4.3%, unemployment 10% | match | Fed History: GDP fell 4.3% peak to trough, unemployment from under 5% to 10%. The period is 2007 to 2009 | Label row "2007 to 2009" |
| VF-60 | 32 | Congress approved 700 billion "to rescue banks" | overstated | TARP authorised up to $700bn (CRS, secondary). It also funded car makers and AIG | "approved up to 700 billion dollars to buy bad assets and support banks" |
| VF-61 | 32 | 9.1% (year to June 2022), euro area 10.6% | overstated | US 9.1% is the BLS seasonally adjusted figure (NSA recomputed 9.06). Euro area 10.6% is October 2022, month not given. Both secondary, both hedged "reported" | Add "euro area 10.6% in October" |
| VF-62 | 33 | "the new anchor worked for about 35 years" | overstated | See VF-02. 1983 to 1990 predates any target and US 1980 to 1990 averaged 5.5% | "inflation stayed near 2 to 3% for about 35 years" |
| VF-63 | 34 | table: 6.4, 7.9, 10.7 "share of country-years in crisis" | mismatch | Bordo et al.: 21 country sample, currency, banking and twin crises, successive events counted separately, divided by all country-years. So it counts crisis events, not years in crisis. Same table gives 13.4 for 1919 to 1939 | Retitle "crises started, per 100 country-years (21 countries)" and add the 13.4 row |
| VF-64 | 34 | era labels "Floating paper money" for 1973 to 1997 | overstated | Many of those countries pegged or managed their rate | "After Bretton Woods" |
| VF-65 | 35 | most of the rise came from currency crises | match | Bordo et al.: currency crises explain the post-1973 rise | Keep |
| VF-66 | 35 | no country-wide banking crisis in 18 rich countries 1945 to 1971 | match | JST flag 0 of 486 country-years (recomputed). Bordo et al.: Bretton Woods "suppressed banking crises almost" entirely | Keep |
| VF-67 | 36 | Hayek quotation | match | Mises text: "history is largely a history of inflation, and usually of inflations engineered by governments". Edition (1976 or 1978) unconfirmed | Keep, add year when known |
| VF-68 | 36 | Bernanke 2004: "a substantial decline in macroeconomic volatility" | mismatch | Speech says "the substantial decline in macroeconomic volatility" | Change "a" to "the" or drop the quotes |
| VF-69 | 36 | Bernanke "gave better policy part of the credit" | match | "improved monetary policy has likely made an important contribution", "not the only factor" | Keep |
| VF-70 | 36 | Eichengreen "a central factor in the worldwide Depression" | match | "the international gold standard was a central factor in the worldwide Depression" (NBER page) | Keep |
| VF-71 | 37 | Fed governors named by the President, confirmed by Senate, 14 years | match | Fed FAQ | Keep |
| VF-72 | 37 | Swiss voters 2014 asked to "tie their central bank to gold", about 77% no | overstated | Initiative: hold at least 20% of assets in gold and never sell. No at about 77% (77.3 reported). Fine as hedged | "to make the bank hold a fifth of its assets in gold and never sell it" |
| VF-73 | 38 | "it has failed badly at least three times" | unsupported | No lane row counts failures. Lane lists 1970s, 1982 Latin America, 1997 Asia, 2008, 2022 | Name the three |
| VF-74 | 41 | growth table: US 2.5, 2.0, 1.5 | match | Maddison 2023 recomputed 2.45, 1.96, 1.47 (2.45 sits on the rounding edge) | Keep |
| VF-75 | 41 | Korea 6.0, 7.9, 3.6, Malaysia 2.2, 4.2, 4.1, China 2.8, 4.1, 6.2, India 1.4, 2.6, 4.4 | match | Recomputed: 6.01, 7.88, 3.62 / 2.18, 4.17, 4.07 / 2.81, 4.07, 6.16 / 1.40, 2.55, 4.41 | Keep |
| VF-76 | 41 | "19 rich countries, average" 3.7, 2.2, 1.5 | unsupported | Lane's own population weighted sum, marked plausible, country list not given. JST 18 country simple means are 3.96, 2.13, 1.47 | Say "19 rich countries, population weighted, our calculation" and list them |
| VF-77 | 42 | rich countries fastest "while the gold link was in place" | overstated | The 1950 to 1973 column includes 1971 to 1973 after the window closed | "before 1973" |
| VF-78 | 42 | "Korea, Malaysia, China and India all grew faster after 1973 than before" | mismatch | Korea 1990 to 2019 was 3.6, below 6.0 in 1950 to 1973. China, India, Malaysia hold | "Malaysia, China and India grew faster in both later periods, Korea in the first" |
| VF-79 | 43 | trade 25.8% (1970) to 56.7% (2024) | match | OWID CSV: 25.75 and 56.72 | Keep |
| VF-80 | 43 | rich countries catching up "until about 1973, and that could not last" | overstated | Lane: catch-up "explains much", data cannot separate causes | "probably explains much" |
| VF-81 | 44 | R&D 2.79 (1964), 2.07 (1978), 3.43 (2022) | match | NSF 2025 edition. The 1999 vintage had 2.87 for 1964 | Keep, name the edition |
| VF-82 | 44 | "racing to the moon" | unsupported | NSF page and lane say nothing of the space race. Lane's "federal, space and defence" remark is flagged as unpulled | "in the years of the space race", with a source, or drop |
| VF-83 | 45 | Malaysia inflation 0.9, 6.3, 2.6 | mismatch | FRED World Bank series: 0.86, 6.28, 2.55 (2.546). The last rounds to 2.5. Lane marks plausible | 0.9, 6.3, 2.5 and hedge as World Bank data |
| VF-84 | 45 | "Growth per person roughly doubled its pace" | overstated | True for 2.2 (1950 to 1973) to 4.2 (1973 to 1990). Not vs 1960s (3.1) or 1960 to 1982 (4.4) vs 1982 to 2019 (3.9). The sentence sits next to inflation periods, so the comparison is unclear | "from 2.2% a year before 1973 to about 4% after" |
| VF-85 | 46 | late developers "best on record" after 1971, Malaysia among them | overstated | Maddison Malaysia: 1910 to 1920 5.2%, 1920 to 1930 5.8% a year, equal to 1970 to 1980 (5.8). Early data are thin | "the fastest in the modern record" for Korea, China, India. Soften for Malaysia |
| VF-86 | 48 | verdict table numbers 2.9, 9.0, 14%, 20%, 10.8%, 7.8, 2.7, 2.2, 4.2, 3.7 | match | See rows above. The 2.9 inherits VF-10 | Fix VF-10 |
| VF-87 | 48 | "Crisis years rose from 7.9% to 10.7%" | mismatch | These are crisis events per country-year, not years in crisis | "Crises per 100 country-years rose from 7.9 to 10.7" |
| VF-88 | 51 | gold 35 (1971), about 3,900 (Nov 2026), "by one price chart" | match | Lane: 3,883 on 16 Nov 2026, market data sites, secondary, hedged in the draft | Keep the hedge |
| VF-89 | 51 | dollar "lost about 99% of its value" in gold terms | match | 1 minus 35/3900 = 99.1%. With the 1971 market price (about 41) it is about 99% | Keep. Add that the gold price was 850 in 1980, 279 in 2000 and 5,590 in Jan 2026 |
| VF-90 | 51 | Malaysia income per person grew faster "than it ever had before" | mismatch | Maddison Malaysia: 1920 to 1930 5.83, 1910 to 1920 5.22, versus 1970 to 1980 5.81 | "among its fastest decades on record" |
| VF-91 | 53.0 | Gold Pool from Nov 1961, US and seven European banks, lost about 3bn Dec 1967 to Mar 1968, US 2.2bn, closed March 1968, two tiers until Camp David | match | Fed History and Bordo NBER chapter (lane verified) | Keep |
| VF-92 | 53.1 | Bordo and McCauley, no worse than Britain 1900, BoE "under 5%" | overstated | Lane: "less than 5% of its liabilities" (Clapham via Sayers), plausible. The date 1900 for the 5% is not pinned down | "when the Bank of England held very little gold against its liabilities, under 5% by one account" |
| VF-93 | 54 | source box | overstated | Box does not cover the Hayek, Bernanke, Eichengreen quotations, the Fed governors, the Swiss vote, New Zealand and the 26 countries (IMF F&D). It says IMF for inflation targets | Add rows. State that 1913 JST is 16 countries and the 19 country row is our calculation |
| VF-94 | 29 | Q and A: inflation 1981, lenders 2022, dollar debt 1997 | match | Consistent with rows above | Keep |
| VF-95 | 1 | rb-moneymake, rb-credit, rb-print | unsupported | Earlier chapters, not in these lanes | Verify in their own rounds |

Counts are listed at the end of the file once the table was finalised.

## 3. Re-fetched items

All fetches were made on 2026-11-16. No personal details were sent in any request.

1. https://www.federalreservehistory.org/essays/gold-convertibility-ends : fifteen advisers, Burns "Federal Reserve Chairman", Volcker "Undersecretary for International Monetary Affairs", gold window closed, 90 day freeze, 10% surcharge, Gold Pool formed 1 Nov 1961 and collapsed March 1968. No mention of December 1971 or March 1973 on this page.
2. https://www.presidency.ucsb.edu/documents/address-the-nation-outlining-new-economic-policy-the-challenge-peace : both quotations present, but "hostage" sits inside "I am determined that the American dollar must never again be a hostage..." and the draft capitalises it as a stand-alone sentence. Freeze 90 days and 10% tax wording confirmed.
3. https://history.state.gov/milestones/1969-1976/nixon-shock : Smithsonian December 1971 on a devalued dollar. Runs on the dollar. February 1973 devaluation. March 1973 six EC members float jointly, "effectively ended" Bretton Woods.
4. https://www.federalreservehistory.org/essays/recession-of-1981-82 : funds rate "approach 20 percent", unemployment "nearly 11 percent", 22% and 24% in construction and autos. Nothing on bricks.
5. https://www.federalreservehistory.org/essays/great-inflation : "more than 14 percent in 1980", Volcker took office August 1979 with inflation above 11%, October 1979 switch to reserves.
6. https://insurancenewsnet.com/oarticle/2-by-4s-a-lasting-legacy-of-volckers-bold-interest-rate-tinkering : AP says builders mailed bricks and 2-by-4 planks, dealers mailed car keys, stated without hedge.
7. https://www.deseret.com/1998/1/7/19356536/gold-collection-drive-by-s-koreans-brings-in-17-tons-so-far/ : 17 tons worth over $170m since Monday, "lined up to sell", quotation exact, Nam Kwang-woo 24, "in front of a bank counter", no city, no mention of export.
8. https://www.bnm.gov.my/significant-milestones-in-the-malaysian-foreign-exchange-market : controls 1 Sept 1998, RM3.80 "the next day", managed float 21 July 2005.
9. https://belanjawan.mof.gov.my/pdf/belanjawan2023/economy-fiscal/section3.pdf (downloaded, pdftotext) : RM1,079.6bn, 60.4% of GDP, 97.3% ringgit, 65% limit maintained by gazetted orders.
10. https://www.federalreserve.gov/boarddocs/speeches/2004/20040220/ : "the substantial decline in macroeconomic volatility", "improved monetary policy has likely made an important contribution".
11. https://www.nber.org/books-and-chapters/golden-fetters-gold-standard-and-great-depression-1919-1939 : "the international gold standard was a central factor in the worldwide Depression."
12. https://mises.org/online-book/denationalisation-money-argument-refined/iv-persistent-abuse-government-prerogative : Hayek sentence word for word.
13. https://www.imf.org/external/pubs/ft/fandd/2010/03/pdf/roger.pdf (downloaded, pdftotext) : "26 countries use inflation targeting", NZ "two decades ago".
14. https://www.federalreservehistory.org/essays/latin-american-debt-crisis : Mexico August 1982, told Fed chairman, US Treasury secretary and IMF managing director, "$80 billion".
15. https://www.federalreservehistory.org/essays/great-recession-and-its-aftermath : GDP down 4.3% peak to trough, unemployment from under 5% to 10%.
16. https://data.imf.org/en/news/imf%20data%20brief%20september%2030 : dollar 56.70% in 2026Q2.
17. https://www.federalreserve.gov/faqs/about_12591.htm : nominated by the President, confirmed by the Senate, 14 year staggered terms.
18. https://www.federalreserve.gov/newsevents/pressreleases/monetary20120125c.htm : 2% PCE inflation goal, 25 January 2012.
19. https://www.bankofengland.co.uk/-/media/boe/files/letter/2022/october/letter-from-jon-cunliffe-ldi-5-october-2022 (downloaded) : "rose by 160 basis points in just a few days", over 100 bp fall on 28 September.
20. https://fraser.stlouisfed.org/docs/publications/ERP/1972/ERP_1972.pdf (downloaded) : gold stock 17,804 (1960), 10,892 (1968), 10,206 (end 1971), 11,072 (1970).
21. https://fraser.stlouisfed.org/files/docs/publications/treasar/AR_TREASURY_1971_2.pdf (downloaded) : official institutions' liquid claims 10,482 (June 1960), 12,101 (1968), 30,840 (June 1971, including 3,452 of nonmarketable bonds).
22. https://fraser.stlouisfed.org/title/removal-gold-cover-1015/fulltext : 25% cover, "free gold, currently $1.3 billion", the $12bn is in Fowler's statement. Only the first 100,000 characters were read, so 1965 was not found there.
23. https://api.parliament.uk/historic-hansard/written_answers/1920/mar/04/gold-production-wholesale-prices : coin 123m, deposits 1,322m (dated 31 Dec 1914), paper 74.6m, caveat that year by year estimates are not reliable.
24. https://ncses.nsf.gov/pubs/nsf25335 : 2.79% in 1964, 2.07% in 1978 (table only), 3.43% in 2022.
25. https://www.imf.org/en/blogs/articles/2025/09/17/global-debt-remains-above-235-of-world-gdp : "above 235%", nothing on the 1950s.
26. https://typeset.io/pdf/is-the-crisis-problem-growing-more-severe-52qyneo06w.pdf (downloaded) : 6.4, 13.4, 7.9, 10.7 as "frequencies" when successive events are counted separately and divided by all country-years. Headline 12.2 for 56 countries, 8.8 for 21 countries, 4.9 for 1880 to 1913.
27. https://www.macrohistory.net/database/ JST Release 6 (downloaded) : recomputed loans to GDP 58.05 (1913, 16 countries), 53.40 (1970), 110.86 (2007), real loan growth 9.00, 5.75, 3.31, banking crisis flags 0 of 486, inflation 10.37 and 2.69.
28. https://fred.stlouisfed.org (CPIAUCNS, EXMAUS, FPCPITOTLZGMYS, downloaded as CSV) : US CPI Dec to Dec 7.76 and 2.65, ringgit June 1997 2.52, January 1998 monthly 4.41, Malaysia inflation 0.86, 6.28, 2.55.
29. https://dataverse.nl/api/access/datafile/421302 Maddison 2023 (downloaded) : growth table cells recomputed, Malaysia decades.
30. https://ourworldindata.org/grapher/trade-as-share-of-gdp (CSV) : world 25.75 (1970), 56.72 (2024).
31. Web searches only (not fetched pages): 4.885 ringgit record on 7 Jan 1998, Swiss gold vote 77.3% reported by news, statute dates of Public Law 89-3 (March 1965) and Public Law 90-269 (March 1968).
32. Not reachable: Bloomberg Swiss result (403), Bangkok Post ringgit page (402 behind a paywall redirect), ERP Chapter 5 and Connally items (not printed in the draft, not checked).

### Arithmetic checks (python3 -I)

- 30,840 / 10,507 = 2.94 (June gold). 30,840 / 10,206 = 3.02 (end 1971 gold). 10,507 / 30,840 = 0.34.
- 1 minus 35/3,900 = 99.1%. 3,900/35 = 111 times.
- 123/(123+1,322) = 8.5%. 123/2,583 = 4.8%.
- 56.72 / 25.75 = 2.2 times.
- 1913 loans to GDP: 58.05 across the 16 countries with data, versus 53.1 in 1970 for the same 16. The conclusion holds.
- Malaysia inflation: 2.546 for 1983 to 2019 (rounds to 2.5, draft 2.6).
- Malaysia Maddison growth: 1910 to 1920 5.22, 1920 to 1930 5.83, 1960 to 1970 3.11, 1970 to 1980 5.81, 1990 to 2000 5.12.
- Reversal timing: 23 Sep to 17 Oct 2022 is 24 days.

## 4. Plausible, unverified or memory rows stated as fact

No row marked unverified or memory is printed. Checked and clear: 1945 gold cover change (R14A-07), US venture capital (R14A-30), Britain's August 1971 request (R14B-06), Connally line (R14B-07), the 75 to 80% dollar share, the Fed balance sheet, the Volcker memoir line, the $38 gold price (R14B-09).

Plausible or secondary rows printed without enough hedge:

- R14A-14 Bank of England gold under 5% of liabilities, printed in 53.1 as "around 1900" without a hedge (VF-92).
- R14A-22 world and 19 country growth: the 19 country row of the growth table is printed as plain fact (VF-76).
- R14A-24 Malaysia inflation 0.9, 6.3, 2.6: printed plainly, last figure wrong by rounding (VF-83).
- R14B-22 ringgit 2.50 to 4.88: printed plainly in the table (VF-40).
- R14B-17 UK reversal and resignation: printed plainly in 22 (VF-37).
- R14B-36 TARP 700bn (CRS, secondary): printed plainly in 32 (VF-60).
- R14A-06 statute dates 1965 and 1968: lane said plausible, printed plainly. I confirmed them by statute search, so this is now fine.
- R14A-13 gold coin 5 to 9%: hedged "by one estimate", acceptable.
- R14A-28 gold price: hedged, acceptable.
- R14B-38, R14B-39, R14B-46 (US 9.1%, euro 10.6%, Swiss 77%): hedged "as reported", acceptable.
- R14B-49 protest scenes: hedged "are reported", acceptable.
- R14A-26 world debt 96.9 (1950s): lane flagged a visual check of an image. The 97% is printed plainly.
- R14B-51 Korea (tier T3, status confirmed): checked against the article, fine except the "exported" and "Seoul" additions.

## 5. One-sided numbers and causal overreach

One side gets numbers, the other does not.

- Crisis table (34): gives the gold standard 6.4% and Bretton Woods 7.9% but leaves out the interwar 13.4%, when the gold standard was restored. It also leaves out that Bordo et al. say the contrast is "less pronounced" than on their headline count. JST banking crises show 4.2% for 1880 to 1913 and 3.1% for 1973 to 2017 (systemic flag), which cuts the other way and is not given.
- Inflation: the draft gives 7.8 and 2.7 but not the gold era (US about 0.0, JST 0.49) or Bretton Woods (US 2.5, JST 3.77). The lane's own reading is that 1983 to 2019 looks like 1950 to 1970 and unlike the gold standard. So the "35 low years" are not shown to be a gain from the new governance.
- Test 1 debt: world debt 97% to 235% is put in the "gold did limit" column with no number for the counter evidence in the lane. US private debt was flat at 145 to 160% of GDP from 1960 to 1971 and US government debt fell from 83% to 46% (1950 to 1970). The 1950s world figure includes wartime debt.
- Late developer growth (43): the draft says floating money and freer capital "may have helped them" but gives no number for the lane's counterpoint that Korea, China and Malaysia grew under capital controls and managed rates, and Malaysia fixed the ringgit with controls from 1998.
- Hard money side in 51: one gold number (35 to 3,900, 99%). The lane's numbers on gold swinging from 850 (1980) to 279 (2000) to 5,590 (January 2026) and US prices up 8.3 times since 1970 are not shown, so the 99% has no counterweight.
- Research (44): US only. No number for any other country or for the funder split.
- Malaysia gets debt, inflation, growth and policy numbers. Korea, China and India get growth only.

Causal claims the data cannot carry.

- "Bank lending grew fastest under gold" (0, 16): the 1950 start is a post-war low, so the rebound is built in. The draft gives this once in 17 but states the headline cause plainly in 0.
- "Rich countries grew more slowly after 1971" (0, 42): the table starts the break at 1973 and the lane says the oil shocks and the end of catch-up cannot be separated from the money system. The draft says so in 43 but the summary in 0 puts both in one line.
- "The governance gave 35 years of low inflation" (0, 33): the anchor existed only partly in that window (targets from 1990 and 2012).
- "Malaysia learned from that year" (26) and "the toll went up, and so did the income" (45): causal wording with no row behind it.
- "Other countries need dollars, so America can sell its debt more easily" (27): mechanism, no data.
- "it has failed badly at least three times" (38) and "crises became more frequent, not less": the second holds on the Bordo count but the first is a count without a list, and JST banking crises point the other way.
- "A limit that is lifted each time it binds" (16): evidence of a pinch exists for 1968 only.
- "Inflation, lenders and foreign-currency debt now do the work gold once did" (50): gold limited a promise to foreign governments, the three limits bind borrowers. They are not like for like.
- "Late developers... best on record" (46, 51): Maddison does not show it for Malaysia (VF-85, VF-90).

## Counts

95 rows: match 51, overstated 27, unsupported 9, mismatch 8. (Row VF-86 and VF-94 are consolidated checks.)

95 rows: match 51, overstated 27, unsupported 9, mismatch 8.
