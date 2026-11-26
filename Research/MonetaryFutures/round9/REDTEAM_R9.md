# Round 9 red team (blind)

Scope: round9/DRAFT_R9.md chapter rb-moves (blocks 0 to 60) and the new rb-moneymake section "Read a country's debt mix" (blocks 72 to 79). Read against FRAME_R9.md, OWNER_R9.md, PLAN 4.5 Move 7 and the Level 1 chapters rb-07, rb-08 and rb-buckets in BASE_R9.md. The verifier file, lane files and court files were not opened.

Fetches used: 2 of 6. (1) A web search for the NVIDIA board story, which found the primary source: "Statement from NVIDIA Board of Directors", investor.nvidia.com, 8 November 2026. (2) A web search for Bank Negara household debt, which gave 84.3% to 84.8% of GDP in 2025, 84.4% at the end of the first quarter of 2026, financial assets 2.1 times debt, and a median debt service ratio of 33% on existing loans (Financial Stability Review, first half of 2025). Everything else was checked from the drafts' own numbers or flagged for the verifier.

How to read a fix: OLD is copied verbatim from DRAFT_R9.md and occurs there once. NEW is the replacement. Every OLD string below was checked by script to occur exactly once. NEW text has no em-dashes, en-dashes or semicolons, and no gendered pronouns.

---

## Part A. Blocking points, ranked

### B1. [38] A factual error that contradicts the draft's own table
Problem: "Cash beat everything in 2008" is false by table [37]: in 2008 bonds returned +20.0% after inflation and gold +4.2%, against cash +1.3%. Cash came third. The 1970 to 2024 span is also 55 years, not fifty.
- OLD: `Cash beat everything in 2008 and barely beat inflation over fifty years.`
- NEW: `In 2008 government bonds won, up 20.0% after inflation, and gold and cash came next. Over the 55 years to 2024 cash beat inflation by just 0.5% a year.`

### B2. [17] The NVIDIA passage: unsourced, private detail not needed, and one claim beyond the record
Problem: The block names no source. It reports a real person's private conduct, which the lesson (timing is not cause) does not need. "It was a story about personal conduct and security, not about the company's accounts" states more than is known while an investigation is open. The primary source exists: the board statement of 8 November 2026 says a committee of independent directors, with outside counsel, is investigating reports that the chief executive was the target of a foreign intelligence effort, and that the board has no reason to believe national security or NVIDIA secrets were compromised. Secondary reports also name a third, private person. The draft rightly does not, and must not. See also Part G.
- OLD: `On Sunday 8 November its board opened an independent investigation. Reports said he had been the target of a foreign intelligence effort, and he told staff his private conduct had fallen short. It was a story about personal conduct and security, not about the company's accounts. Now line the days up against every other chip maker.`
- NEW: `On Sunday 8 November the board said a committee of independent directors would investigate press reports that the chief executive had been the target of a foreign intelligence effort. The board added that it had no reason to believe national security or company secrets were compromised (Statement from NVIDIA Board of Directors, investor.nvidia.com, 8 November 2026). The investigation had reached no finding when this chapter was written. This chapter leaves out reports about anyone's private life, because the lesson does not need them. Now line the days up against other large chip makers.`

### B3. [72], [73] and the heading: "birth certificate" replaces one simple story with another
Problem (bank treasurer, accountant, Fed desk): the table is a stock of debt still owed. Money creation is a flow. Loans made years ago were repaid and the money they created was destroyed. Today's deposits are matched by the loans, bonds and foreign assets banks hold today, less their capital and their own bonds. The BIS "total credit" columns also include corporate bonds, cross-border loans and loans from lenders that are not banks, none of which created home deposits. And the table cannot show a big channel for this region: a central bank that buys foreign currency creates local money with no local debt behind it (Singapore, Hong Kong's currency board, China in the 2000s). The frame's own pre-mortem A7 row 2 named this exact trap.
- OLD: `### Read a country's debt mix: the birth certificate of its money`
- NEW: `### Read a country's debt mix: what stands behind its money`
- OLD: `Read with Step 1 and Step 2 in mind, it is something more useful: a map of where each country's money was born.`
- NEW: `Read with Step 1 and Step 2 in mind, it is something more useful: a map of the loans and bonds that stand behind a country's money today. It is not a full birth record. Many loans made years ago have been repaid, and the money they created was destroyed when they were.`
- OLD: `Where household and firm debt is bank loans, each loan created a deposit on the day it was made (Step 1). So those two columns show where most of a country's money came from, and who still owes for it.`
- NEW: `Where household and firm debt is bank loans, each loan created a deposit on the day it was made (Step 1), and each repayment destroyed one. So the bank loan part of those two columns shows which borrowers stand behind the deposits that exist today. Three cautions. The columns are a stock, the debt still owed, while money creation is a flow, the new lending each year. The columns also count bonds, loans from abroad and loans from lenders that are not banks, which created no deposits at home. And one channel is missing from the table: a central bank that buys foreign currency, as Singapore's and Hong Kong's do, and China's did on a large scale in the 2000s, creates local money with no local debt behind it.`

### B4. [74] The caption mislabels countries, and "mostly" is false
Problem: In the draft's own numbers firms owe more than households in South Korea (110.5 against 90.1) and Malaysia (87.5 against 69.5). Only Thailand has households as the largest column, and only just (89.2 against 82.1). Malaysia's household figure (69.5) equals the United States' (69.2). The three are "household-heavy" only in share of all debt: Thailand 39%, South Korea 37%, Malaysia 31%, against 13% to 27% elsewhere in the chart. "Money born mostly in home and car loans" is wrong on two counts: firms are the larger column, and Malaysian household debt also includes personal loans. The United States (44% government) and Germany (44% firms) are left unlabelled.
- OLD: `Three shapes. Household-heavy (South Korea, Thailand, Malaysia): money born mostly in home and car loans. Firm-heavy (Hong Kong, China): money born in business borrowing. Government-heavy (Japan, Singapore): most of the debt is bonds, and who bought them decides whether money was created.`
- NEW: `Three shapes. Households hold their largest share of the debt in Thailand (39% of the total), South Korea (37%) and Malaysia (31%), yet firms still owe more than households in South Korea and Malaysia. Firms owe the largest share in Hong Kong (59%), China (48%) and Germany (44%). Government owes about half in Japan (54%) and Singapore (51%), and 44% in the United States. For government bonds, who bought them decides whether money was created.`

### B5. [75] and [74] Two Malaysian household figures, 85 and 70, with no explanation
Problem (ordinary reader): the chart says 69.5, the table beside it says "85 points of household debt", and [76] says 70. A Malaysian reader who knows Bank Negara's widely reported 84% to 85% will think the chart is wrong. Bank Negara's figure counts more lenders than the bank-loan figure. The verifier should confirm which lenders the BIS Malaysia series covers before the wording is final.
- OLD: `Malaysia: 70 of its 85 points of household debt are bank loans (Bank Negara, June 2025)`
- NEW: `Malaysia: 70 of its 85 points of household debt are bank loans (Bank Negara, June 2025). Bank Negara's 85% counts lenders that are not banks as well, which is why it is higher than the 70% in the chart. Check which lenders a number counts`

### B6. [77] Japan: adds two floors together and misplaces where deposits came from
Problem (Fed desk, Treasury debt manager): the Bank of Japan bought much of its half from Japanese banks. Under Step 2 that raises reserves only and creates no deposits. Deposits rose where banks bought new bonds at auction and the government spent the money, or where the central bank bought from non-banks. Adding "the part banks bought" to "the part the Bank of Japan bought" double counts any bond that passed from a bank to the central bank. And a stock of debt is not a count of money in any case (B3).
- OLD: `A: Only the part banks and the Bank of Japan bought. The central bank holds about half, and that half was paid for with new reserves. Bonds bought by Japanese insurers and pension funds moved money that already existed.`
- NEW: `A: No. A debt figure is a stock, not a count of money. The Bank of Japan holds about half, paid for with new reserves, which are upstairs money. Much of that half was bought from Japanese banks, which swapped one asset for another and added no deposits. Deposits rose where banks bought new bonds and the government spent the money, or where the central bank bought from insurers, pension funds or households. Do not add the bank part and the central bank part together, because the same bond often passed through both. Bonds still held by insurers and pension funds moved money that already existed.`

### B7. [36] The 1980 to 1982 match is loose and selectively told
Problem (economic historian): in 1980 to 1982 the Fed's policy rate reached about 19%, far above inflation. Today it is 3.75% to 4.00% against inflation of 3.7%, so the real policy rate is close to zero. Only the 10-year inflation-protected yield (2.78%) is high, and it was higher still around 2000. The box also leaves out that shares (+5.9% a year after inflation) beat cash (+3.5%) in 1980 to 1982, by table [37].
- OLD: `The closest past match is 1980 to 1982, when cash and short bills paid well and gold fell. That is a reading to argue with, not a forecast.`
- NEW: `One past match is 1980 to 1982, when cash paid 3.5% a year above inflation and gold fell 11.0% a year. The match is loose. The Fed's policy rate then reached about 19%, far above inflation, while today it sits close to inflation (3.75% to 4.00% against 3.7%). Shares also beat cash in those years. Another reader could pick a different past year. That is a reading to argue with, not a forecast.`

### B8. [41] An unsourced "most" and a garbled range
Problem: "Most buying after a crash comes from ordinary savers whose pensions keep buying every month" has no number and no source. "Under 1% to 3%" cannot be parsed. The "in 2026" date of the second GAO finding should be checked by the verifier.
- OLD: `The same office found in 2026 that in six cities such investors owned under 1% to 3% of all single-family homes. Most buying after a crash comes from ordinary savers whose pensions keep buying every month.`
- NEW: `Across whole cities the share is smaller. The same office reported that in the six cities it studied, such investors owned between less than 1% and about 3% of all single-family homes. Retirement plans that put in a fixed sum each month also keep buying through a crash, which is one reason sellers in a crash find buyers. How large each group's share is changes by market and by year, and this project has no single figure for it.`

### B9. [8] and [5] The watch did make headlines
Problem (ordinary reader, watch dealer): the 2022 to 2023 fall in watch prices was widely covered in the financial press as a burst bubble. What was missing was the "$X billion lost" headline, because nobody multiplies one sale price by every watch in every drawer. "No margin calls" is also too absolute, since some dealers financed their stock with loans. The comparison holds once it is put this way. Two further facts would strengthen it (see Part E): a share is a claim on a firm's future profits, so its price feeds the firm's cost of money in a way a watch price cannot, and NVIDIA's one-day fall is far larger than a whole year of second-hand watch sales.
- OLD: `There were no margin calls, no funds forced to sell, and no headlines saying the world lost money. A watch owner who did not sell had a paper loss nobody recorded.`
- NEW: `There were headlines about a burst watch bubble. But there were few margin calls, no index funds forced to sell, and no headline saying the world lost $X billion, because nobody multiplies one sale price by every watch in every drawer. A watch owner who did not sell had a paper loss that no screen showed.`
- OLD: `Yet only one of them makes the evening news when it does.`
- NEW: `Yet when the share falls, the news can put a dollar figure on it that same evening. When the watch falls, nobody can.`

### B10. Owed to Level 1 chapter 7: the musical chairs expansion is missing
Problem: The owner asked for chapter 7 to be expanded from an investor's standpoint. The draft gives it one bridge line [1], one radiant label [2] that points Part 4 at rb-07 without saying why, and one curiosity question [56]. Missing: margin loans as the extra chairs, the "panics need cash now" point from rb-07 block 15 and the settlement-capacity insight from rb-07 block 25, played in a market (the March 2020 dash for cash, when even US government bonds were dumped and the Fed stepped in), and Minsky's three borrowers applied to an investor on margin. [56] also misstates Level 1: rb-07 says interest can be paid if the lender spends it back, not "only if".
- OLD: `So the useful question is not whether someone buys, but who still has cash and cheap credit when others are forced to sell.`
- NEW: `So the useful question is not whether someone buys, but who still has cash and cheap credit when others are forced to sell. This is the musical chairs of Level 1 chapter 7, played in a market. In quiet years debts are paid slowly from a flow of income. In a panic everyone wants cash on the same day. In March 2020 investors around the world sold even US government bonds, the asset most of them treat as safest, because they needed cash at once. Dealers could not absorb it all, and the Fed bought about $1 trillion of government bonds in roughly four weeks to keep the music playing. An investor on margin is one of Minsky's borrowers: safe while prices rise, and forced to sell a chair when they fall.`
- OLD: `Q: Interest is paid only if the lender spends it back.`
- NEW: `Q: Level 1 chapter 7 showed that interest can be paid from a circulating flow, as long as the lender spends it back.`

Verifier: confirm the March 2020 figure from the Fed's weekly H.4.1 Treasury holdings, 11 March to 8 April 2020.

### B11. [76] Vietnam against Malaysia: half a balance sheet, no confidence level, no overcorrection guard
Problem (accountant): the box sets Malaysian assets against Vietnamese debts and has no asset figure for Vietnam (gold, land, deposits). FRAME A3 asks for a burden measure, a confidence level and what the post gets right. None of the three is here. Bank Negara's median debt service ratio of 33% on existing loans fills the burden gap. A smaller point: "136% of output (IMF, 2024)" against "116% (World Bank, 2024)" compares two sources. Use one source for both.
- OLD: `So Malaysian households owe more and own more. Low debt in a table can mean thrift, or a narrow way of counting.`
- NEW: `So Malaysian households owe more and, on the measures that exist, own more. The post gets one thing right: the burden is real. A typical Malaysian borrower spends about a third of income on existing loan repayments (median debt service ratio 33%, Bank Negara, first half of 2025). Vietnam has no official count of household financial assets, gold or land to set against its debt, so this verdict holds with medium confidence, not high. Low debt in a table can mean thrift, a narrow way of counting, or little access to credit.`

### B12. No Malaysian anchor in a chapter for Malaysian readers
Problem (ordinary reader): rb-moves has no Bursa Malaysia, EPF, ASB, Bank Negara rate (OPR) or ringgit. FRAME B4 lists "US versus other markets (the reader may be in Southeast Asia)" as a blind spot. The wiring table [14] uses Norway's fund for July to September 2026, a quarter before the NVIDIA fall, so it does not show this fall's effect either. Add a row the reader can feel. The lane must fetch the EPF figures before publishing.
- OLD: `| The company itself | Selling new shares raises less, and staff paid in shares get less | The cost of fresh money rises for every listed firm that falls |`
- NEW: `| The company itself | Selling new shares raises less, and staff paid in shares get less | The cost of fresh money rises for every listed firm that falls |`
  `| Your own retirement savings | A Malaysian worker's EPF account owns shares at home and abroad, so falls lower the fund's income, which feeds the yearly dividend | EPF total assets and its share in shares, from the latest annual report (to fetch) |`

(Add the second line as a new table row under the existing one.)

### B13. [25] "Worst day" points at two different days, and a year is set against a day
Problem: Caption [11] makes 5 November the worst day ($57 billion traded). [25] says the $730 billion plan is "about ten times the cash that traded on its worst day": that is 12.8 times for 5 November and 10 times for 10 November. It also sets one year of building against one day of trading. A year of NVIDIA trading adds up to far more than $730 billion. The real difference is that building money buys things that get built, and much of it becomes NVIDIA's own sales.
- OLD: `Notice the scale. The technology firms' building plans are about ten times the cash that traded in NVIDIA on its worst day.`
- NEW: `Notice the scale. The technology firms' building plans for one year are about ten times the cash that traded in NVIDIA on 10 November. A large part of that spending becomes NVIDIA's own sales of chips. Trading adds up too, but it swaps shares that already exist, while building money pays for things that get made.`

---

## Part B. Nine voices: the single most important miss in each

| Voice | Block | The one thing missed or misstated | Fix |
|---|---|---|---|
| New York Fed open market desk | [31], [40] | The Fed's crash role is missing: lender and buyer of last resort in a dash for cash (March 2020). The QE row also says "new reserves push sellers", but reserves never leave the banks. QE works by taking long bonds out of private hands, and by giving deposits to sellers who are not banks | B10, and C3 below |
| Treasury debt manager | [31], [28] | Net borrowing ($618 billion) is presented as if it were the deficit. Borrowing also refills the Treasury's cash account. The lever that moves money between buckets is the mix of bills and long bonds, and the draft never names it | C4 |
| Bond trader or primary dealer | [35], [10] | The yield curve dial reads a slightly positive curve as "markets do not expect a sharp fall in rates". Long rates include a term premium, so the curve says little on its own. The $73 billion is also gross turnover, inflated by dealers trading the same shares within the day | C5, C7 |
| Bank treasurer | [73] | Deposits outstanding today are matched by today's bank assets, not by a history of every loan. The BIS columns are not bank credit | B3 |
| Accountant | [76] | One side of Malaysia's balance sheet set against one side of Vietnam's. Malaysian assets such as EPF are partly claims on the same Malaysian government and firm debt in the chart, so the assets and debts are not independent | B11 |
| Economic historian | [36], [38] | The 1980 to 1982 match ignores the 19% policy rate. The 2008 sentence contradicts the table. Kelly's rule was carried into investing by Latané (1959) and Breiman (1961) before Cover | B7, B1, C12 |
| Post-Keynesian or MMT critic | [73] | "Where pension funds or savers bought them, it moved money" hides the point the critics stress: a deficit adds net financial assets to the private sector whoever buys the bond. That is Godley's accounting from rb-07 block 15. The government column is where much private saving lives | C1 |
| Hard-money critic | [42] | The box treats the claim as all-or-nothing about a plan. It leaves out what the claim gets right and the record shows: rescues after a crash (rate cuts to zero, central bank buying) lift asset prices first, which helps those who already own assets. Level 1 chapter 17 already names this as the Cantillon effect | C9 |
| Ordinary reader (an 18-year-old who copies) | [47], whole chapter | Hears "two things that go nowhere make 6%" and copies it. The catches sit in a box. There is no real-world backtest, so the reader never sees how small the rebalancing gain is in real markets. And there is nothing Malaysian to hold on to | C10, B12, D B-Q5 |

---

## Part C. Other points (not blocking), with fixes

### C1. [73] Post-Keynesian guard on the government column
- OLD: `Where pension funds or savers bought them, it moved money that already existed.`
- NEW: `Where pension funds or savers bought them, it moved money that already existed. It still added to what the private sector owns, because the buyer now holds a bond that the government owes. Critics in the post-Keynesian school stress that this is where much private saving lives.`

### C2. [29] Blocs: the overcorrection guard and a mechanism for defence and technology
Problem: "Labels, not minds" swaps "they conspire" for "nobody coordinates". Some coordination is open, legal and recorded (trade groups, lobbying, government contracts). "Usually" has no number. The owner asked how technology and defence interests move money, and the box gives only sizes. The clearest case where all three meet is US export rules on AI chips. Verifier: confirm the NVIDIA charge of about $4.5 billion tied to the April 2025 licence rule for its H20 chip (company results, May 2025).
- OLD: `(Industry blocs are labels, not minds)`
- NEW: `(Industry blocs are many firms, not one mind)`
- OLD: `When they push the same way it is usually shared incentive, the focal point game from Level 2 chapter 4, not a meeting.`
- NEW: `When they push the same way, much of it is shared incentive, the focal point game from Level 2 chapter 4. Some of it is open and organised: trade groups, lobbying that the law makes them record, and contracts with government. Policy, technology and defence meet most clearly in chips. In April 2025 a new US licence rule for one chip sold to China led NVIDIA to report a charge of about $4.5 billion.`

### C3. [31] The QE row: mechanism and cause
Problem: The row states the wrong mechanism, and it sets QE beside the 18% share gain in the same chapter that warns against naming one cause [19]. Rate cuts and record government payments came in the same months.
- OLD: `| Central bank buying (QE) | New reserves push sellers toward riskier buckets | 2020: the Fed bought bonds on a vast scale from March, and US shares ended the year up 18.0%, counting dividends (the cash firms pay out) |`
- NEW: `| Central bank buying (QE) | The central bank takes long bonds out of private hands. Sellers who are not banks get new deposits and look for something else to hold, which lifts other prices | 2020: the Fed bought bonds on a vast scale from March, cut rates to zero, and the government sent record payments to households. US shares ended the year up 18.0%, counting dividends (the cash firms pay out). One year cannot separate the three causes |`

### C4. [31] Deficits row: borrowing is not the deficit, and the mix matters
- OLD: `| Government deficits | Spending puts deposits in private hands, borrowing adds bonds others must buy | $618 billion of planned net borrowing in one quarter of 2026 |`
- NEW: `| Government deficits | Spending puts deposits in private hands, and borrowing adds bonds others must buy. Whether the Treasury sells short bills or long bonds matters: money funds buy bills with cash they already hold, while long bonds pull money from other buckets | $618 billion of planned net borrowing in October to December 2026. Borrowing is not the same as the deficit, because it also refills the Treasury's cash account |`

### C5. [35] Yield curve dial
- OLD: `| Positive, so markets do not expect a sharp fall in rates |`
- NEW: `| Slightly positive. Long rates include extra pay for tying money up for years, so this dial says little on its own about where rates go |`

### C6. [18], [19] "All" and "every chip maker" on an index of about 25 that contains NVIDIA
Problem: SMH holds about 25 large chip firms, with NVIDIA as a large weight, so "all chip shares" and "every chip maker fell" are not shown. On 10 November SMH's -0.8% includes NVIDIA's own fall, so the rest of the fund was close to flat. "Mostly" needs a number.
- OLD: `| Day | NVIDIA | All chip shares (SMH fund) | What it tells you |`
- NEW: `| Day | NVIDIA | Large chip makers (SMH fund of about 25, NVIDIA included) | What it tells you |`
- OLD: `Every chip maker fell. NVIDIA fell less than its sector`
- NEW: `The chip fund fell. NVIDIA fell less than the fund`
- OLD: `| Every chip maker fell, after the midterm results`
- NEW: `| The chip fund fell further, after the midterm results`
- OLD: `| 10 Nov | -5.5% | -0.8% | Mostly NVIDIA alone |`
- NEW: `| 10 Nov | -5.5% | -0.8% | NVIDIA fell about 5 points more than the fund that holds it |`
- OLD: `The biggest single day, 5 November, hit every chip maker after`
- NEW: `The biggest single day, 5 November, hit the chip fund harder than NVIDIA, after`

### C7. [10] Gross turnover is not net cash moved
- OLD: `- Every one of those dollars went from a buyer to a seller. None vanished.`
- NEW: `- Every one of those dollars went from a buyer to a seller. None vanished. Many trades were dealers buying and selling the same shares within the day, so the cash that moved from final sellers to final buyers was less than $73 billion.`

### C8. [21] "Nobody" overcorrects, and Level 1 already names the exception
- OLD: `A: Nobody. It was never a pile of cash.`
- NEW: `A: Almost nobody. It was never a pile of cash. Short sellers and buyers of put options gained, but only what the other side of their contracts lost, a small slice of $236 billion.`

### C9. [42] The myth box: say what the claim gets right
Problem: The "Myth" label sits on a claim the box half confirms. Rename the block type to a claim box if the template allows, and add the documented part.
- OLD: `[42 myth] Myth: Crashes are planned so that the rich can buy everything cheaply.`
- NEW: `[42 myth] Claim: Crashes are planned so that the rich can buy everything cheaply.`
- OLD: `Planning the crash is a different claim, and it needs its own evidence: who acted, how, and what records that would leave behind.`
- NEW: `Planning the crash is a different claim, and it needs its own evidence: who acted, how, and what records that would leave behind. One more part is documented. Rescues after a crash, such as rate cuts and central bank buying, lift the prices of assets first, which helps people who already own them. That follows from how rescues work, in public, and it is not proof of a plan.`

### C10. [47], [50], [52] Cover: the copy risk and missing caveats
- OLD: `Two things that each go nowhere make about 6% a period together.`
- NEW: `Two things that each go nowhere make about 6% a period together, in this made-up game. Real markets can pay far less for rebalancing, or nothing, as the box below shows.`
- OLD: `| 150%, borrowing the extra | -20.9% |`
- NEW: `| 150%, borrowing the extra at no interest | -20.9% |`
- OLD: `His method that knows nothing in advance comes close to it only over very long periods.`
- NEW: `His method that knows nothing in advance catches up slowly. After 20 periods it is sure of at least about 11% of what the hindsight winner made.`
- Missing, for the lane: (a) a real backtest of a fixed mix against buy and hold across a crisis (FRAME B3, B-Q5), for example 60% shares and 40% bonds rebalanced yearly against the same mix left alone, from the Damodaran series the chapter already uses. (b) The lecture's real example (two stocks that grew 4 and 8 times, and a hindsight mix that grew about 75 times), with the hindsight warning. (c) "The best long-only choice over 13 months to October 2008 was all cash", with the warning that it was best in one window only.

### C11. [53] "Most tips"
- OLD: `Most tips tell you almost nothing, so they are worth almost nothing, however confident they sound.`
- NEW: `A tip that is right no more often than chance tells you nothing, so it adds nothing to your growth, however confident it sounds. Paying for it lowers your growth.`

### C12. [59.0], [59.1] History and attribution
Problem: The bound "1 divided by twice the square root of the number of periods" is from the later version by Cover and Ordentlich (1996). The 1991 paper's version with equal weights gives a weaker bound. Kelly wrote about a gambler with a private wire, and others took the rule into investing.
- OLD: `Maximizing it is the rule Kelly set out in 1956 for betting on horses and Cover generalized to portfolios.`
- NEW: `Maximizing it is the rule John Kelly set out in 1956 for a gambler with inside information. Henry Latane (1959) and Leo Breiman (1961) applied it to investing, and Cover added a version that needs no forecast at all.`
- OLD: `For two assets it is guaranteed to end with at least about 1 divided by twice the square root of the number of periods`
- NEW: `A version Cover published with Erik Ordentlich in 1996 is guaranteed, for two assets, to end with at least about 1 divided by twice the square root of the number of periods`
- Add to [59.2]: `T. M. Cover and E. Ordentlich, Universal Portfolios with Side Information, IEEE Transactions on Information Theory, 1996.` Name the lecture itself (video wsd8nsJg6D8) as a T4 source, as FRAME B3 asks.

### C13. [24] "Created" row: stock against flow, and the full rule
- OLD: `| Created | New money appears: a bank lends, or the central bank buys from someone who is not a bank | US bank loans reached $14.10 trillion in September 2026, up 7.6% in a year, and each new loan made a new deposit |`
- NEW: `| Created | New money appears: a bank lends or buys from someone who is not a bank, or the central bank buys (reserves every time, deposits when the seller is not a bank) | US bank loans grew by about $1 trillion in the year to September 2026, to $14.10 trillion. That net growth became new deposits, after repayments destroyed others |`

### C14. [77] Canada answer dodges its own question
Problem: Canada's mortgages are partly packaged into government-backed bonds that savers and funds buy, which moved money rather than created it (verifier to confirm the share). Germany's money is the euro, created by banks across the euro area.
- OLD: `A: More of Canada's money was born in home loans, yes.`
- NEW: `A: Not necessarily. More of the loans behind Canada's money are home loans, but part of Canada's mortgages are packaged into bonds that savers and funds buy, and those moved money rather than created it. Germany's money is the euro, created by banks across the euro area, so one country's table cannot show all of it.`

### C15. Small items
- [57] heading lists six days, not four. OLD: `The four NVIDIA days in full, and the method` NEW: `Six NVIDIA trading days in full, and the method`
- [56] the rebalancing question points at the deflation-debate chapter. OLD: `comes from discipline, not prediction. (builds on rb-defl)` NEW: `comes from discipline, not prediction. (builds on rb-08)`
- [8] "lost roughly a third from its spring 2022 peak to 2024" and then "a further 5% in 2024" reads like counting the same fall twice. OLD: `lost roughly a third from its spring 2022 peak to 2024, by press reports.` NEW: `lost roughly a third from its spring 2022 peak to the end of 2023, by press reports.` (Verifier to confirm the end date.)
- [14] Norway's fund loss is for July to September 2026, before this fall. Keep it as an example of quarterly marking, or swap it for a dated October and November figure, and add the EPF row (B12).
- [14] Add the size the wealth effect implies: 3.2 cents a year on $236 billion is about $7.5 billion less spending a year, if the fall lasts.

---

## Part D. Answer spec (FRAME_R9.md) item by item

### Job A (Level 2 debt mix)
| Item | Status | Note |
|---|---|---|
| A-Q1 two-sided rule with T-accounts for a Malaysian mortgage and a Vietnamese working-capital loan | Partly | [78] states the mortgage in words. No T-account. No Vietnamese loan |
| A-Q1 channel table per country (bank, nonbank bonds, foreign, central bank) with sign and size | Partly | [75] gives one example per channel, not a table per country, and has few sizes |
| A-Q1 stock and flow, with a change in household credit next to a change in broad money | Missing | The section's main risk (B3) |
| A-Q1 destruction channels: repayment, write-offs, denominator effect | Partly | Repayment only, in [78] |
| A-Q1 broad money over GDP next to private credit for Malaysia and Vietnam | Missing | |
| A-Q2 source and date found or "not found", rows checked against BIS and IMF | Met | [79] is strong |
| A-Q2 definitions named (households include nonprofits, non-financial firms, face against market value) | Partly | Face and market value named. Nonprofits and "non-financial" not named |
| A-Q2 reason for 18 against 23 | Met | Stated as unexplained [79.2] |
| A-Q3 household balance sheets for both countries | Partly | Malaysia's assets only |
| A-Q3 burden measures (debt to income, debt service) | Missing | B11 adds debt service |
| A-Q3 income at market rates and at purchasing power | Partly | Market rates only |
| A-Q3 living standards beyond appliances | Missing | The post's appliance claim is never tested |
| A-Q3 what each debt bought | Partly | "Homes and cars" |
| A-Q3 verdict with confidence, and what the post gets right | Missing | B11 |
| A-Q4 why high debt is not always a crisis (holder, currency, Thailand 1997, Japan) | Missing | Caption touches on it only |
| A-Q5 bridge to Steps 1 and 2 without overclaiming | Partly | Bridges well, but "birth certificate" overclaims (B3) |

### Job B (Level 4 rb-moves)
| Item | Status | Note |
|---|---|---|
| B-Q1 worked example with numbers | Met | NVIDIA steps [10] |
| B-Q1 three meters (cash, ownership and risk, market value) | Partly | The three verbs cover cash and value. Ownership and risk are not shown |
| B-Q1 real effects with sizes | Partly | Margin, wealth effect and pensions are sized. Cost of capital, pay in shares, capital gains tax, bank capital and pledged founder shares are not |
| B-Q1 the watch, its fall, and what would make it matter | Met | [8], [56]. Correct the headline point (B9) |
| B-Q1 overcorrection guard: a paper loss is still a loss | Met | [13] |
| B-Q2 actor table with floor, sign, normal and stress year sizes | Partly | No floor column, no stress-year sizes |
| B-Q2 every trade has two sides, and the channels where net money enters or leaves shares (issuance, buybacks, IPOs, cash takeovers, dividends, margin) | Missing | Buybacks and margin appear. The list is never given |
| B-Q2 size against the pool | Missing | For example $1.1 trillion of buybacks against total US market value |
| B-Q2 one stress regime showing which actors dominated | Partly | 2022 row, no actors named |
| B-Q2 blocs as named firms | Met, overcorrected | C2 |
| B-Q3 regime table, at least four regimes and two crises | Met | [37], [58] |
| B-Q3 rotation as price change with a buyer for every seller | Met | [20], [40] |
| B-Q3 evidence on how well timing works | Missing | Only "a reading to argue with" |
| B-Q3 bridge to chapters 8 and 17 | Met | Chapter 7 is owed (B10) |
| B-Q4 event from documents with news timestamp | Partly | No source named (B2) |
| B-Q4 rival readings table (story, rates, sector selling, options and positioning) | Partly | [18] covers sector against stock. Options, positioning and the 17 November results are absent |
| B-Q4 lesson: one cause named for many | Met | [19], [55] |
| B-Q5 coin example with arithmetic | Met | Checked: 6.07%, 0%, and "3 in 4" and "1 in 4" match an exact binomial count (74.8% and 25.2%) |
| B-Q5 when rebalancing helps and hurts | Met | [52] |
| B-Q5 hindsight warning on the 75 times example | Missing | C10 |
| B-Q5 universal bound | Met | Fix the attribution (C12) |
| B-Q5 side information | Met | [53] |
| B-Q5 margin and the Kelly ceiling | Met | [50], [51]. Arithmetic checked |
| B-Q5 real long-run backtest of a fixed mix | Missing | C10 |
| B-Q5 source card for Cover, lecture as T4 | Partly | Papers cited, lecture not |
| B-Q6 one running story carried through every section | Missing | The drawer appears in [5] to [8] only (Part F) |
| B-Q6 Level 1 frames named and extended | Partly | Chapter 7 thin (B10) |

---

## Part E. Overcorrection guard

| Block | One simple story replaced by another | Fix |
|---|---|---|
| [10], [21] | "The market lost $236 billion" becomes "nobody has it, none vanished". [13] guards it well, but [21] answers "Nobody" outright, and $73 billion is gross | C7, C8 |
| [72], [73], heading | "Debt is a burden league table" becomes "debt shows where money was born" | B3 |
| [73] | "Deficits print money" becomes "pension-fund buying only moves money", hiding the net financial assets point | C1 |
| [29] | "Blocs conspire" becomes "blocs are labels, not minds", hiding open coordination | C2 |
| [42] | "Crashes are planned" becomes a myth, hiding the documented effect of rescues on asset owners | C9 |
| [41] | "Big investors buy everything after a crash" becomes "most buying is ordinary savers", unsourced | B8 |
| [53] | "Tips are valuable" becomes "most tips are worth almost nothing", unsourced | C11 |
| [8] | "The watch did not matter" turns into "no headlines", which is false | B9 |
| [15] | Balanced. It keeps the wires for both the watch and the share. No change |

---

## Part F. Word audit

| Block | Word | Verdict and fix |
|---|---|---|
| [0] | "a watch only when one sells" | Acceptable, but dealers and appraisers also quote. Optional: "a watch mostly gets a price" is banned, so use "a watch gets a price when one like it sells" |
| [1] | "Trades between people only move money" | Keep. It is Level 2's rule, and the next sentence gives the bank exception |
| [3] | "main path" | Noun, not a claim. Keep |
| [5] | "only one of them makes the evening news" | Rewrite (B9) |
| [10] | "None vanished" | Keep, with the gross turnover note (C7) |
| [13] | "never cash" | True by definition. Keep |
| [15] | "only thinner" | Keep |
| [18] | "All chip shares", "Every chip maker", "Mostly" | Rewrite (C6) |
| [21] | "Nobody", "all of it still exists" | Rewrite "Nobody" (C8). Keep "all of it", with C7 |
| [23] | "most of the confusion goes" | Rewrite. OLD: `Get the verb right and most of the confusion goes.` NEW: `Get the verb right and the headline usually makes sense.` |
| [41] | "Most buying" | Rewrite (B8) |
| [42] | "Myth" | Rename to Claim (C9) |
| [44] | "the most useful arithmetic in this book" | Rewrite (Part G, passage 3) |
| [52] | "only over very long periods" | Number it (C10). "only known in hindsight" is true by definition. Keep |
| [53] | "only by as much as", "Most tips" | Keep the first, which is a theorem. Rewrite the second (C11) |
| [56] | "only if the lender spends it back" | Misstates Level 1 (B10) |
| [56] | "only known afterwards" | Keep |
| [72] | "most in debt" | Describes the table's framing. Keep |
| [73] | "most of a country's money", "only where banks or the central bank bought" | Rewrite the first (B3). Keep the second, which is Step 2's rule, and add C1 |
| [74] | "mostly", "most of the debt is bonds" | Rewrite with numbers (B4) |
| [77] | "Only the part" | Rewrite (B6) |
| [79.1] | "Government only" | Describes coverage. Keep |

No "always", "never" as a claim, "cannot", "impossible" or "wrong" appears in the scope, apart from "never cash" [13] and "never a pile of cash" [21], which are definitions.

---

## Part G. Narration

Verdict: not yet at the owner's "world-class narrator" bar. The numbers are clean and the opening drawer (a watch and ten shares) is a strong hook. But after block 8 the chapter reads as a well-organised briefing. 11 of the main-path blocks are tables, the drawer never comes back, nobody in the chapter has a name, and nothing in it happens in Malaysia. FRAME B3 B-Q6 asked for one running story carried through every section. Bring the drawer back at the top of each Part: Part 2 (whose hand moved the price of the ten shares), Part 3 (which season melts the watch or the shares), Part 4 (what rebalancing the two would do).

The three weakest passages, with sharper replacements:

1. [27] A bare list cue before a nine-row table.
- OLD: `When someone says the money is moving, ask who is moving it, with what action, and how much. Here are the largest hands on the taps, as of autumn 2026.`
- NEW: `Picture the money system as a kitchen full of taps. A few hands can make new water appear: the central bank and the banks. The rest can only pour from one glass into another: funds, companies and traders. When someone says the money is moving, ask whose hand is on which tap, and how far it is turned. Here are the biggest hands as of autumn 2026, each with its verb.`

2. [34] An abstract opener before the densest table in the chapter.
- OLD: `Level 1 chapter 8 showed that money has seasons. Investors need a way to tell which season they are in now. No single number does it. Six dials, read together, come close.`
- NEW: `Level 1 chapter 8 said money behaves like ice. In a warm season it melts in your hand, and in a cold one it keeps its shape. A sailor does not trust one gauge to read the weather. They look at the wind, the pressure and the sky together. An investor can do the same with six dials. Each one alone can mislead. Read together, they tell you roughly whether your ice is melting, and how fast.`

3. [44] and [48] Cover is introduced by a superlative, and the drawdown lesson is stated rather than felt.
- OLD: `His answer is the most useful arithmetic in this book, and it fits on one page.`
- NEW: `His answer fits on one page, and once you see it you will read every return figure differently.`
- OLD: `The same arithmetic explains why falls hurt more than rises help. Growth compounds, so it follows the typical rate, not the average.`
- NEW: `Now go back to the drawer. Say the ten shares are worth RM1,000 and fall by half, to RM500. A 50% rise takes them back to just RM750. To get home they need 100%. Falls hurt more than rises help, because growth compounds from wherever you now stand.`

Owed to Level 1 chapter 7: see B10. Also owed: Godley's rule (savers who want growth need someone adding debt) applied to investors. The money that buys shares in a boom is partly new credit, so a boom in share prices often comes with a boom in lending. Margin debt ($1.48 trillion) is the visible part.

---

## Part H. Fairness and safety: the NVIDIA passage [17]

- Neutral: partly. It is calm in tone, but "his private conduct had fallen short" and "a story about personal conduct and security, not about the company's accounts" go further than the board statement, and the second sentence prejudges an open investigation.
- Sourced: no. The block cites nothing. The primary source is the board statement on investor.nvidia.com, 8 November 2026. Secondary reports carry the private detail and name a private third person, who must stay out.
- Necessary: the date and the kind of news are needed for the timing lesson. The private-life detail is not.
- Fix: B2. Keep [57.2]'s legal note ("a lawsuit is an allegation, not a finding"), and add that the investigation had no finding when the chapter was written. Re-check after the 17 November results and the requested 18 November congressional briefing before publishing.
- Pronouns: the replacement text uses "the chief executive", with no pronoun.

---

## Part I. Direct answers to the brief's examples

- Is South Korea or Malaysia household-heavy? Not by size. Firms owe more in both. They have the second and third highest household shares of total debt in the chart (37% and 31%), behind Thailand (39%). See B4.
- Does a central bank buying from a bank create deposits? No, only reserves (rb-moneymake Step 2). The draft states the rule correctly in [75] but breaks it in [77] (Japan) and leaves the reserves out of [24]. See B6 and C13.
- Does the vintage watch comparison hold? Yes in structure: visibility, identical units, index holders and collateral are the real differences. It fails on "no headlines" (B9). It would be stronger with two more facts. A share is a claim on future profits, so its price sets the firm's cost of fresh money. And NVIDIA's one-day fall dwarfs a year of second-hand watch sales (lane to fetch a sourced market-size figure).
- Arithmetic checked and correct: $236 billion, $73 billion, 1.78% traded, 9.5% and 22% falls, all of Part 4's tables, the 1% cost case (5.89%), the 60/20 case (13.1% and 8.2%) and the universal bound figures (11% and under 1%).
