"""Round 9 draft: (A) a Level 2 section on reading a country's debt mix, in rb-moneymake,
and (B) a new Level 4 chapter 1, rb-moves, "How money moves". rb-strc becomes Level 4 chapter 2.
Usage: python3 -I round9/r9_build_draft.py site/rulebook.json   (writes in place, refuses to run twice)
Sources: round9/lanes/R9A-debt-by-sector.md and round9/lanes/R9B-how-money-moves.md."""
import json, sys

p = sys.argv[1]
d = json.load(open(p, encoding="utf-8"))
C = {c["id"]: c for c in d["chapters"]}
if "rb-moves" in C:
    sys.exit("already applied")

def P(t): return {"type": "p", "text": t}
def H(t): return {"type": "h", "text": t}
def I(t, label=None):
    b = {"type": "insider", "text": t}
    if label: b["label"] = label
    return b
def T(cols, rows): return {"type": "table", "cols": cols, "rows": rows}
def CHK(q, a): return {"type": "check", "q": q, "a": a}

# ---------------------------------------------------------------- A. Level 2 section
bis = [  # BIS total credit, 2024-Q4, % of GDP: household, firms, government (nominal, Korea market value)
    ("Hong Kong", 88.1, 240.2, 80.6), ("Japan", 65.1, 116.3, 212.5), ("Singapore", 44.3, 122.8, 173.1),
    ("China", 60.0, 138.1, 88.4), ("United States", 69.2, 73.8, 114.1), ("South Korea", 90.1, 110.5, 43.8),
    ("Thailand", 89.2, 82.1, 56.6), ("Malaysia", 69.5, 87.5, 64.6), ("Germany", 49.9, 89.4, 62.4)]
check_rows = [
    ["Hong Kong", "86 / 227 / 67", "88 / 240 / 81", "Firms and government about 13 points higher in BIS"],
    ["Japan", "60 / 113 / 199", "65 / 116 / 213", "Government 13 points higher in BIS"],
    ["Singapore", "45 / 130 / 172", "44 / 123 / 173", "Close"],
    ["France", "59 / 156 / 110", "61 / 155 / 113", "Close"],
    ["Canada", "100 / 118 / 97", "100 / 118 / 98", "Matches"],
    ["China", "60 / 142 / 97", "60 / 138 / 88", "Government 9 points lower in BIS"],
    ["United States", "68 / 73 / 123", "69 / 74 / 114", "Government 9 points lower in BIS"],
    ["South Korea", "89 / 111 / 49", "90 / 111 / 44", "Close (BIS values Korea's government debt at market prices)"],
    ["Italy", "36 / 59 / 141", "36 / 58 / 136", "Close"],
    ["Malaysia", "70 / 88 / 66", "70 / 88 / 65", "Matches"],
    ["Thailand", "88 / 76 / 60", "89 / 82 / 57", "Close"],
    ["United Kingdom", "74 / 59 / 81", "76 / 61 / 101", "Government 20 points higher in BIS (counted at face value, not market prices)"],
    ["Germany", "49 / 89 / 63", "50 / 89 / 62", "Matches"],
    ["Israel", "43 / 71 / 70", "42 / 70 / 67", "Close, but the image matches about 2021 best"],
    ["Brazil", "36 / 50 / 92", "36 / 57 / 87", "Close, image matches about 2021"],
    ["India", "39 / 49 / 74", "42 / 51 / 82", "Image matches about 2019"],
    ["Hungary", "18 / 70 / 73", "17 / 73 / 74", "Close, image matches about 2020"],
    ["Chile", "41 / 86 / 31", "45 / 94 / 42", "Total 23 points higher in BIS"],
    ["South Africa", "34 / 35 / 79", "34 / 33 / 78", "Close"],
    ["Vietnam", "23 / 107 / 32", "not covered / not covered / 33 (IMF)", "No official household series exists"],
    ["Bahrain, Jordan, Grenada, Maldives, Senegal", "see image", "Government only (IMF), 1 to 13 points apart", "Household and firm figures could not be checked"]]

lvl2 = [
    H("Read a country's debt mix: the birth certificate of its money"),
    P("A table of debt by country went round social media in late 2026. It splits each country's debt into what households, firms and the government owe, as a share of one year's output. It looks like a league table of who is most in debt. Read with Step 1 and Step 2 in mind, it is something more useful: a map of where each country's money was born."),
    I("Where household and firm debt is bank loans, each loan created a deposit on the day it was made (Step 1). So those two columns show where most of a country's money came from, and who still owes for it. The government column is different. It created money only where banks or the central bank bought the bonds (Step 2). Where pension funds or savers bought them, it moved money that already existed.", "The statement"),
    {"type": "pairbars", "title": "Debt by who owes it, % of one year's output, end of 2024", "suffix": "%", "decimals": 0,
     "series": ["Households", "Firms", "Government"],
     "rows": [{"label": n, "values": [h, c, g]} for n, h, c, g in bis],
     "caption": "Three shapes. Household-heavy (South Korea, Thailand, Malaysia): money born mostly in home and car loans. Firm-heavy (Hong Kong, China): money born in business borrowing. Government-heavy (Japan, Singapore): most of the debt is bonds, and who bought them decides whether money was created.",
     "source": "BIS total credit statistics, fourth quarter of 2024, via DBnomics. Government debt at face value except South Korea (market value). Rebuilt by this project from the BIS data, so it differs slightly from the image that circulated."},
    T(["Who lent", "Did it create money?", "Example"],
      [["A bank lends to a household or a firm", "Yes. A new deposit appears the moment the loan is made", "Malaysia: 70 of its 85 points of household debt are bank loans (Bank Negara, June 2025)"],
       ["The central bank buys government bonds", "Yes, as bank reserves upstairs, and as deposits if it buys from a non-bank", "Japan: the Bank of Japan holds about half of its government's bonds (late 2025)"],
       ["A pension fund or saver buys government bonds", "No. Existing money moves to the government", "Singapore: its pension board invests members' savings in special government bonds"],
       ["A lender abroad", "Not at home. Money already created elsewhere crosses the border", "Hong Kong: a hub where mainland Chinese firms raise money"]]),
    I("The post that carried the table asked: Vietnam's household debt is 18% of output, Malaysia's 70%, and both own about the same fridges and washing machines, so who is really wealthier? Three checks change the answer. First, Vietnam's number is the weakest in the picture. It has no official household debt series and is not in the BIS data. A central bank based measure that counts family businesses was 47% in 2016, and Vietnam's banks lend about 136% of output in total (IMF, 2024), more than Malaysia's 116% (World Bank, 2024). Vietnam borrows a lot. More of it is counted as business. Second, debt is one side of a balance sheet. Malaysian households hold financial assets of 177% of output, 2.1 times their debt, and three quarters of their debt is homes and cars that sit behind it (Bank Negara, 2025). Third, income: output per person is 2.6 times higher in Malaysia (US$13,125 against US$5,066 in 2025, World Bank). So Malaysian households owe more and own more. Low debt in a table can mean thrift, or a narrow way of counting.", "Vietnam against Malaysia"),
    {"type": "curiosity", "items": [
        {"q": "Canada's households owe 100% of output, Germany's 50%. Did Canada create more money?", "a": "More of Canada's money was born in home loans, yes. Canadian banks created deposits as they lent against rising house prices. German households rent more and borrow less, so more of Germany's money came from lending to firms.", "from": "rb-06"},
        {"q": "Japan's government owes 213% of output. Did that create 213% of money?", "a": "Only the part banks and the Bank of Japan bought. The central bank holds about half, and that half was paid for with new reserves. Bonds bought by Japanese insurers and pension funds moved money that already existed.", "from": "rb-worldbs"}]},
    CHK("A Malaysian family takes a RM400,000 home loan from a bank. Which column of the table grows, and does money appear?", "The household column. Yes: the bank credits RM400,000 to the seller's account that did not exist before. When the family repays, that money is destroyed again."),
    {"type": "deeper", "label": "Every row checked: the image against the BIS data",
     "blocks": [
         P("This project checked the circulated image against the BIS total credit statistics. The image's own source line is the Institute of International Finance, whose country detail is behind a subscription. Each cell reads households / firms / government, % of output."),
         T(["Country", "Image", "BIS, end of 2024", "What differs"], check_rows),
         P("The image mixes years. Canada, Germany, Malaysia, Singapore and South Africa match 2024. Israel, Brazil, Hungary and India match 2019 to 2021 best. The post says Vietnam's household debt is 18% while the image says 23%. Neither number matched a source this project could open. Treat any debt league table as a starting point: check the year, who counted, and whether government debt is at face value or market price.")]},
]
mm = C["rb-moneymake"]["blocks"]
part3 = next(i for i, b in enumerate(mm) if b.get("type") == "h" and b["text"].startswith("Part 3 of 3"))
mm[part3:part3] = lvl2

# ---------------------------------------------------------------- B. Level 4 chapter 1
nv_days = [["30 Oct", "-4.2%", "-7.0%", "Every chip maker fell. NVIDIA fell less than its sector"],
           ["5 Nov", "-9.3%", "-11.2%", "Every chip maker fell, after the midterm results and a proposed pause on new data centres"],
           ["9 Nov", "-4.3%", "+5.1%", "NVIDIA alone. Rivals rose: AMD +13.3%, Broadcom +8.8%"],
           ["10 Nov", "-5.5%", "-0.8%", "Mostly NVIDIA alone"]]

moves = {"id": "rb-moves", "num": "01", "level": 4,
 "title": "How money moves: a field guide for investors",
 "kicker": "A vintage watch can lose a third of its price and nobody writes a headline. A share slips 5% and the news says $236 billion was lost. This chapter follows the money behind both: who moves it, what season steers it, and the arithmetic that decides who keeps it.",
 "blocks": [
  {"type": "tldr", "items": [
    "A share is re-priced every second, a watch only when one sells. On 10 November 2026 NVIDIA's market value fell about $236 billion while about $73 billion of its shares changed hands. Fewer than 2 in 100 of its shares traded that day.",
    "No cash vanished in that fall. Something real was still lost: borrowing power against shares, spending by people who feel poorer, pension values, and the price firms pay for fresh money.",
    "Money moves in three ways. It is created (bank loans, central bank buying), moved (every trade, wage and buyback) and re-priced (the last trade re-marks everything). Headlines mix the three.",
    "The movers are named institutions, each with a verb and a size: the Fed sets the price of overnight money, banks create deposits, index funds buy by rule, companies buy back their shares.",
    "Seasons decide which bucket fills. Read them from six dials, not one headline.",
    "A growing pot follows its typical rate, not its average. A 50% fall needs a 100% rise. Rebalancing can earn from swings, and borrowing can turn a winner into ruin. Nothing here is advice."]},
  {"type": "bridge", "label": "Built on Levels 1 and 2: recall these before you start", "items": [
    {"id": "rb-buckets", "text": "Market value is the last price times every share. It is a price tag, not a pile of cash. Money rotates between buckets that are pledged as collateral for each other."},
    {"id": "rb-08", "text": "Money has seasons. Inflation melts savings and lightens debts, deflation does the reverse, and each asset works in some seasons and fails in others."},
    {"id": "rb-07", "text": "Interest can be paid if the lender spends it back. The music stops when everyone wants cash at once."},
    {"id": "rb-06", "text": "A bank loan creates a new deposit. Repaying it destroys one."},
    {"id": "rb-moneymake", "text": "Trades between people only move money. Banks also create it when they buy from someone who is not a bank."},
    {"id": "rb-clubs", "text": "Game theory asks each player's best move, given what the others might do."}]},
  {"type": "radiant", "center": "How money moves", "caption": "The chapter in one picture. Outlined boxes link to the chapter each idea builds on.", "rays": [
    {"t": "The watch and the share", "s": "Why a price on a screen matters", "link": "rb-buckets"},
    {"t": "Lost, or only re-priced?", "s": "$236 billion against $73 billion", "link": "rb-buckets"},
    {"t": "Created, moved, re-priced", "s": "Three verbs for every headline", "link": "rb-moneymake"},
    {"t": "The hands on the taps", "s": "Movers and levers, with sizes", "link": "rb-clubs"},
    {"t": "Six dials for the season", "s": "Which bucket fills next", "link": "rb-08"},
    {"t": "The arithmetic of a growing pot", "s": "Typical rate, swings and borrowing", "link": "rb-07"}]},
  {"type": "callout", "label": "How to read this chapter", "text": "Four parts of about ten minutes each. Read the main path first and skip the boxes marked Go deeper. Every number has a date, because these numbers move."},

  H("Part 1 of 4. The watch and the share"),
  P("Picture two things in a drawer. One is a vintage Rolex your uncle left you. The other is a slip showing ten NVIDIA shares. Both are worth something. Both can lose value. Yet only one of them makes the evening news when it does."),
  P("The difference is not value. It is how often each one gets a price, and how many other people are tied to that price."),
  T(["", "A vintage watch", "A listed share"],
    [["How often it gets a price", "When one like it sells, a few times a month", "Every second the market is open. 429 million NVIDIA shares traded on 10 November 2026"],
     ["Who sees the price", "Dealers, auction houses and a few price trackers", "Everyone, live, for free"],
     ["Are units identical?", "No. Condition and papers differ", "Yes. Every share is the same"],
     ["Who must hold it", "Nobody", "Every fund that tracks an index it belongs to"],
     ["Used to borrow against", "Rarely, through a pawn or specialist lender", "Every day: Americans owed $1.48 trillion on loans against their shares (September 2026)"]]),
  P("Watches did fall. A widely followed watch price index lost roughly a third from its spring 2022 peak to 2024, by reports on the WatchCharts index, as higher interest rates cooled demand. It fell a further 5% in 2024 and recovered about 9% in the year to June 2026. There were no margin calls, no funds forced to sell, and no headlines saying the world lost money. A watch owner who did not sell had a paper loss nobody recorded."),
  H("The day NVIDIA lost $236 billion"),
  {"type": "steps", "items": [
    "On Monday 9 November 2026 NVIDIA's shares closed at $178.67. On Tuesday they closed at $168.89, down 5.47%.",
    "NVIDIA has about 24.2 billion shares. A fall of $9.78 on each one re-marks the company's value down by about $236 billion.",
    "How much cash changed hands that day? 429 million shares, at about $170 each: about $73 billion.",
    "Every one of those dollars went from a buyer to a seller. None vanished.",
    "About 98 in every 100 shares did not trade at all. They were simply re-marked at the new price."]},
  {"type": "pairbars", "title": "NVIDIA: market value change against cash that changed hands, billions of dollars", "prefix": "$", "suffix": "B", "decimals": 0,
   "series": ["Fall in market value", "Cash that changed hands"],
   "rows": [{"label": "5 Nov 2026", "values": [448, 57]}, {"label": "9 Nov 2026", "values": [193, 82]}, {"label": "10 Nov 2026", "values": [236, 73]}],
   "caption": "On its worst day the value tag moved almost eight times as much as the cash. The tag is a price times all shares. The cash is only what was traded.",
   "source": "Closing prices and volumes from stockanalysis.com (fetched 11 November 2026). Cash traded is volume times the day's typical price, a project estimate."},
  H("So was anything lost?"),
  P("Yes, and this is where many explainers stop too early. Nobody received the $236 billion, because it was never cash. But the holders of the shares that did not trade really can sell for less today, and a price on a screen is wired into other people's lives in ways a watch price is not."),
  T(["What is wired to the price", "What happens when it falls", "Size"],
    [["Loans against shares", "Lenders lend less. Some borrowers must sell or add cash (a margin call)", "US margin debt $1.48 trillion, September 2026 (FINRA)"],
     ["Spending", "People who feel poorer spend less", "About 3.2 cents less a year for every $1 of share wealth lost (a 2021 study in the American Economic Review)"],
     ["Pensions and national funds", "They count holdings at market value every quarter", "Norway's oil fund reported a loss of about NOK 278 billion in July to September 2026"],
     ["The company itself", "Selling new shares raises less, and staff paid in shares get less", "The cost of fresh money rises for every listed firm that falls"]]),
  I("A watch has these wires too, only thinner. A pawn lender lends against it, and its owner may feel poorer. What turns a price fall into a headline is how visible the price is and how many people are wired to it, not whether value changed.", "The real difference"),
  H("One headline, two causes"),
  P("The story going round said NVIDIA fell because of news about its chief executive. On Sunday 8 November its board opened an independent investigation after reports that he had been the target of a foreign intelligence effort, and he told staff his private conduct had fallen short. It was a story about personal conduct and security, not about the company's accounts. Now line the days up against every other chip maker."),
  T(["Day", "NVIDIA", "All chip shares (SMH fund)", "What it tells you"], nv_days),
  P("The news explains the last two days, a fall of about 9.5% from $186.64 to $168.89. The biggest single day, 5 November, hit every chip maker after the midterm elections and a proposed pause on new data centres, before the news existed. From its October high of $239.24 the share had already fallen 22% by 6 November. A headline that names one cause for a fall with at least two is telling you a story, not the record."),
  I("On 9 November NVIDIA fell while its rivals jumped. That is money rotating inside one bucket, from one chip maker to others, not money leaving the market.", "Where the money went"),
  CHK("NVIDIA's market value fell about $236 billion in one day. Who has the $236 billion now?", "Nobody. It was never a pile of cash. About $73 billion did change hands, from buyers to sellers, and all of it still exists. What fell was the price tag on every share, and with it borrowing power, spending and fund values."),

  H("Part 2 of 4. Created, moved, re-priced: who really moves money"),
  P("Every money headline uses one of three verbs, often without saying which. Get the verb right and most of the confusion goes."),
  T(["Verb", "What happens", "Example from 2026"],
    [["Created", "New money appears: a bank lends, or the central bank buys from someone who is not a bank", "US bank loans reached $14.10 trillion in September 2026, up 7.6% in a year, and each new loan made a new deposit"],
     ["Moved", "Existing money changes hands: a trade, a wage, a tax, a buyback, a factory order", "The four largest US technology firms planned about $730 billion of spending on data centres and chips in 2026"],
     ["Re-priced", "No money moves. The last trade re-marks everything like it", "NVIDIA's $236 billion on 10 November. About $2 trillion off technology shares worldwide on 5 November"]]),
  P("Notice the scale. The technology firms' building plans are about ten times the cash that traded in NVIDIA on its worst day, and every dollar of them is real money paid to chip makers, builders and power companies. That flow shapes the economy far more than any one day's price tag."),
  H("The movers, each with a verb"),
  P("When someone says the money is moving, ask who is moving it, with what action, and how much. Here are the largest hands on the taps, as of autumn 2026."),
  T(["Who", "What they do", "How big"],
    [["Federal Reserve", "Sets the price of overnight money. Creates or retires bank reserves by buying or letting bonds mature", "Policy rate 3.75% to 4.00% after a rise on 16 September 2026. Assets $6.75 trillion"],
     ["US Treasury", "Borrows to cover the deficit and keeps its cash at the Fed", "Planned $618 billion of net borrowing for October to December 2026"],
     ["Banks", "Create deposits when they lend", "Loans $14.10 trillion, growing 7.6% a year"],
     ["Index funds", "Buy and sell by rule as money flows in or out", "In US funds they have held more than other funds since the end of 2023 (Morningstar)"],
     ["The three largest fund managers", "Gather savings into funds and vote the shares", "BlackRock alone managed $15.49 trillion at the end of September 2026"],
     ["Companies", "Buy back their own shares with cash", "About $1.1 trillion by S&P 500 firms in the year to June 2026, a reported record"],
     ["Market makers", "Quote buy and sell prices and hold shares briefly", "One firm, Citadel Securities, says it handles about 35% of US retail trading"],
     ["Borrowers on margin", "Borrow against shares to buy more", "$1.48 trillion, September 2026"],
     ["Foreign holders of US debt", "Lend to the US government", "About $9.25 trillion, Japan the largest at about $1.10 trillion"]]),
  I("People talk about the financial industry, the technology industry and the defence industry as if each were one mind. Each is a group of named firms chasing their own profit. Finance: the three largest fund managers run at least $33.5 trillion between them. Technology: four firms are spending about $730 billion on data centres this year. Defence: the US request for 2027 is $1.5 trillion, $350 billion of it hoped for from a separate bill not yet passed. When they push the same way it is usually shared incentive, the focal point game from Level 2 chapter 4, not a meeting. Ask of any claim: who, doing what, how much.", "Industry blocs are labels, not minds"),
  H("The levers: how policy moves money between buckets"),
  T(["Lever", "How it moves money", "A documented episode"],
    [["Raising interest rates", "Cash and bills pay more. Distant profits and long bonds are worth less today", "2022: US shares -18.0%, 10-year government bonds -17.8%, Treasury bills +2.1% (Damodaran, NYU)"],
     ["Central bank buying (QE)", "New reserves push sellers toward riskier buckets", "2020: the Fed bought bonds on a vast scale from March, and US shares ended the year up 18.0% with dividends"],
     ["Central bank shrinking (QT)", "Bonds mature without replacement, so private buyers must absorb more", "Ran from mid 2022 until 1 December 2025"],
     ["Government deficits", "Spending puts deposits in private hands, borrowing adds bonds others must buy", "$618 billion of planned net borrowing in one quarter of 2026"],
     ["Proposed laws", "Expected profits change before any law passes", "5 November 2026: a proposed pause on new data centres helped push chip shares down 11.2% in a day"]]),
  CHK("A company spends $10 billion buying back its own shares. Is money created, moved or re-priced?", "Moved. The company's cash goes to the shareholders who sold. The price of the remaining shares may then rise, which is re-pricing, but no new money is created."),

  H("Part 3 of 4. Seasons, read from six dials"),
  P("Level 1 chapter 8 showed that money has seasons. Investors need a way to tell which season they are in now. No single number does it. Six dials, read together, come close."),
  T(["Dial", "Reading", "What it says"],
    [["Real interest rate (10-year inflation-protected bond)", "2.78%, 10 November 2026", "High. Cash and bonds pay well above inflation. A hard season for gold and for shares priced on distant profits"],
     ["Inflation trend", "3.7% in the year to September 2026, up from 3.4%", "Rising, led by energy"],
     ["Extra pay for risky borrowers (high-yield spread)", "3.14 points, 28 October 2026, up from 2.63 in August", "Calm but widening"],
     ["Long rates minus short rates (yield curve)", "+0.25 points (10-year 4.98%, 2-year 4.73%)", "Positive, so markets do not expect a sharp fall in rates"],
     ["The dollar against other currencies", "About 101.7, October 2026", "Middling, in a narrow range since summer"],
     ["Money and credit growth", "Money supply +5.7%, bank loans +7.6% in a year", "Banks are lending faster than prices are rising"]]),
  I("This project reads the dials as a warm season with high real rates: inflation rising, but rates well above it. The closest past match is 1980 to 1982, when cash and short bills paid well and gold fell. That is a reading to argue with, not a forecast.", "One reading"),
  T(["Season", "Inflation a year", "Shares", "Cash (bills)", "Government bonds", "Gold"],
    [["1971 to 1979, the great inflation", "7.6%", "-1.3%", "-1.2%", "-3.1%", "+24.3%"],
     ["1980 to 1982, high real rates", "8.4%", "+5.9%", "+3.5%", "+3.1%", "-11.0%"],
     ["1983 to 2007, the long calm", "3.1%", "+9.2%", "+2.0%", "+5.3%", "-0.7%"],
     ["2008, the crash year", "0.1%", "-36.6%", "+1.3%", "+20.0%", "+4.2%"],
     ["2022, the rate shock", "6.5%", "-23.0%", "-4.1%", "-22.8%", "-5.5%"],
     ["Whole period, 1970 to 2024", "3.9%", "+6.7%", "+0.5%", "+2.1%", "+3.7%"]]),
  P("Returns are a year, after inflation, compounded, from Aswath Damodaran's published US data (NYU Stern) and US consumer prices. No bucket wins every season. Cash beat everything in 2008 and barely beat inflation over fifty years. Gold won the 1970s and lost the early 1980s. Shares won the long run and lost a third of their value in a single year."),
  H("Who buys after the crash"),
  P("Every share sold in a crash has a buyer. On NVIDIA's two worst news days, buyers paid about $155 billion. So the useful question is not whether someone buys, but who still has cash and cheap credit when others are forced to sell."),
  P("After 2008 large investors bought foreclosed homes to rent out. By 2022, 32 of them owned about 450,000 US single-family homes, and in Atlanta they held about a quarter of all single-family rentals (US Government Accountability Office). The same office found in 2026 that in six cities such investors owned under 1% to 3% of all single-family homes. Most buying after a crash comes from ordinary savers whose pensions keep buying every month."),
  {"type": "myth", "myth": "Crashes are planned so that the rich can buy everything cheaply.", "reality": "Those with spare cash and credit do buy cheaply after a crash, and that is well documented. Planning the crash is a different claim, and it needs its own evidence: who acted, how, and what records that would leave behind."},

  H("Part 4 of 4. The arithmetic of a growing pot"),
  P("In a lecture on investing, the information theorist Thomas Cover of Stanford University asked a simple question: if you reinvest everything each day, what makes your money grow fastest over time? His answer is the most useful arithmetic in this book, and it fits on one page."),
  P("Start with a game. You can hold cash, which stays at $1. Or you can hold a stock that, each period, either doubles or halves, with equal odds. On average the stock looks great: half the time +100%, half the time -50%, an average of +25%. But a double and a halving cancel out. Over many periods the stock typically goes nowhere."),
  T(["What you hold", "Each period your pot becomes", "Typical growth a period"],
    [["Cash only", "1 times", "0%"],
     ["The stock only", "2 times or 0.5 times", "0%, even though the average looks like +25%"],
     ["Half in each, rebalanced back to half every period", "1.5 times or 0.75 times", "+6.07%"]]),
  P("Two things that each go nowhere make about 6% a period together. Rebalancing sells some of the stock after it doubles and buys more after it halves, so it earns from the swings themselves. In a computer run of 100,000 players over 20 periods, the rebalanced pot beat the stock alone three times in four. Yet one player in four still ended below where they started. A typical rate is not a promise to any one person."),
  P("The same arithmetic explains why falls hurt more than rises help. Growth compounds, so it follows the typical rate, not the average."),
  T(["If your pot falls by", "It must then rise by this to get back"],
    [["10%", "11%"], ["20%", "25%"], ["30%", "43%"], ["50%", "100%"], ["80%", "400%"]]),
  T(["Share of your pot in the coin-flip stock", "Typical growth a period"],
    [["50%", "+6.1%"], ["100%", "0%"], ["150%, borrowing the extra", "-20.9%"], ["200%, borrowing the extra", "Ruin on the first halving"]]),
  P("Borrowing to hold more of a good bet can turn it into a losing one. Past the best mix, every extra borrowed dollar lowers the typical growth, and enough of them guarantee ruin."),
  I("The 6% needs a stock whose ups and downs cancel out. Real shares are not coin flips. If the stock rises 60% or falls 20% with equal odds, holding it alone grows 13.1% a period and half-and-half rebalancing only 8.2%: rebalancing loses when one asset keeps climbing. Costs bite too: trading 1% of each dollar moved cuts the 6.07% to 5.89%, and taxes can fall due every year. Cover's best mix is only known in hindsight. His method that knows nothing in advance comes close to it only over very long periods.", "The catches"),
  P("Cover added one more idea that is worth carrying everywhere. Extra information, a tip or a forecast, can raise your growth rate only by as much as it actually tells you about what happens next. Most tips tell you almost nothing, so they are worth almost nothing, however confident they sound."),
  H("Five questions before you believe a money headline"),
  {"type": "steps", "items": [
    "Created, moved or re-priced? Which verb is the headline really using?",
    "How much cash actually changed hands, against the number in the headline?",
    "Who is wired to this price: lenders, funds, pensions, the company itself?",
    "Which season are we in, and does this move fit it?",
    "Who acted, doing what, how much? Was a cause named only because it came first?"]},
  {"type": "curiosity", "label": "Questions worth asking", "items": [
    {"q": "If the watch market had a listed index fund that people borrowed against, would a 30% fall become news?", "a": "Very likely. The fall would force margin calls and fund sales, and its price would be live on every screen. The value lost would be the same. The wiring would be new.", "from": "rb-buckets"},
    {"q": "On 9 November NVIDIA fell 4% while chip shares rose 5%. Where did the money go?", "a": "Largely to other chip makers. AMD rose 13.3% and Broadcom 8.8%. Buyers sold one chip share and bought another, so money rotated inside the bucket.", "from": "rb-buckets"},
    {"q": "Why might a central bank raise rates when shares are already falling?", "a": "Because its job is prices and jobs, not share prices. In 2022 the Fed kept raising rates while shares fell 18%, because inflation was far above its target.", "from": "rb-08"},
    {"q": "Interest is paid only if the lender spends it back. What happens to that circulation when a crash makes everyone hoard cash?", "a": "It slows, just as the musical chairs chapter warned. Debts fall due while money sits still, which is why central banks lend freely in a panic.", "from": "rb-07"},
    {"q": "If rebalancing earns from swings, why does nobody get rich from it easily?", "a": "Because real assets trend, costs and taxes eat the gain, and the best mix is only known afterwards. The edge is real but small, and it comes from discipline, not prediction.", "from": "rb-defl"}]},
  {"type": "deeper", "label": "The four NVIDIA days in full, and the method",
   "blocks": [
     T(["Date", "Close", "Change", "Shares traded"],
       [["29 Oct", "$213.66", "-0.80%", "77.6 million"], ["30 Oct", "$204.64", "-4.22%", "168.4 million"],
        ["5 Nov", "$181.60", "-9.26%", "306.1 million"], ["6 Nov", "$186.64", "+2.78%", "180.2 million"],
        ["9 Nov", "$178.67", "-4.27%", "462.7 million"], ["10 Nov", "$168.89", "-5.47%", "429.2 million"]]),
     P("Market value was $4.08 trillion at the 10 November close, which implies about 24.16 billion shares. Cash traded is shares traded times the day's typical price, the average of its high, low and close, so the true figure lies between volume times the day's low and volume times its high. A press figure of more than $470 billion lost over two days could not be traced to a source. This project's figure from closing prices is about $429 billion. NVIDIA's results were due on 17 November 2026, after this chapter was written."),
     P("Legal note: a shareholder lawsuit was reported on 10 November. A lawsuit is an allegation, not a finding.")]},
  {"type": "deeper", "label": "The season table in full, with property",
   "blocks": [
     T(["Season", "Shares", "Cash", "Bonds", "Gold", "Home prices"],
       [["1971 to 1979", "6.2 / -1.3", "6.3 / -1.2", "4.2 / -3.1", "33.7 / 24.3", "8.8 / 1.1"],
        ["1980 to 1982", "14.8 / 5.9", "12.2 / 3.5", "11.7 / 3.1", "-3.5 / -11.0", "4.3 / -3.7"],
        ["1983 to 2007", "12.6 / 9.2", "5.2 / 2.0", "8.5 / 5.3", "2.4 / -0.7", "5.2 / 2.0"],
        ["2008 to 2014", "7.2 / 5.5", "0.3 / -1.3", "4.8 / 3.2", "5.4 / 3.7", "-0.6 / -2.1"],
        ["2015 to 2019", "11.6 / 9.6", "1.1 / -0.7", "2.8 / 1.0", "4.8 / 2.9", "5.0 / 3.1"],
        ["2020 to 2021", "23.1 / 18.2", "0.2 / -3.8", "3.2 / -1.0", "9.3 / 5.0", "14.6 / 10.0"],
        ["2022 to 2024", "8.9 / 4.5", "4.2 / 0.0", "-5.7 / -9.5", "12.8 / 8.2", "5.1 / 0.8"],
        ["2025 alone, before inflation", "17.8", "4.2", "7.8", "66.2", "1.6"]]),
     P("Each cell is the compounded yearly return before / after inflation, in percent. Gold in the 1970s starts from a fixed official price, so its gain partly reflects the end of the gold peg. Home prices leave out rent and borrowing, so they understate what an owner earned. Source: Damodaran, Historical Returns on Stocks, Bonds and Bills, updated January 2026, and US consumer prices (BLS).")]},
  {"type": "deeper", "label": "Cover's mathematics, for the curious",
   "blocks": [
     P("The growth rate of a pot that is reinvested each period is the average of the logarithm of each period's gain. That is why the typical rate, the geometric mean, governs compounding, while the plain average does not. Maximizing it is the rule Kelly set out in 1956 for betting on horses and Cover generalized to portfolios."),
     P("For the coin-flip stock, the best fixed mix is half stock and half cash, with growth equal to the square root of 1.5 times 0.75, about 1.0607 a period. Cover's universal portfolio, published in Mathematical Finance in 1991, spreads money across every fixed mix and lets the winners grow. For two assets it is guaranteed to end with at least about 1 divided by twice the square root of the number of periods of what the best fixed mix chosen in hindsight would have made: about 11% of it after 20 periods and under 1% after 20 years of trading days. Its growth rate catches up, but slowly."),
     P("Sources: J. L. Kelly, A New Interpretation of Information Rate, Bell System Technical Journal, 1956. T. M. Cover, Universal Portfolios, Mathematical Finance, 1991. The calculations here were rerun by this project.")]},
  {"type": "callout", "label": "Not advice", "text": "This chapter explains how money moves. It does not tell you what to buy, sell or hold. Every number here has a date and will change."},
 ]}

i = next(k for k, c in enumerate(d["chapters"]) if c["id"] == "rb-strc")
d["chapters"].insert(i, moves)
C["rb-strc"]["num"] = "02"

L4 = next(l for l in d["levels"] if l["n"] == 4)
L4["blurb"] = ["Level 4 is where money meets the investor and the future. Chapter 1 follows how money really moves: who moves it, which season steers it, and the arithmetic that decides who keeps it. Chapter 2 takes one bold idea about where money is heading and tests it claim by claim.",
               "It assumes Levels 1 and 2. Nothing here is advice: these chapters are built to make you a sharper judge of money headlines and big claims, not to sell you anything."]
L4["before"] = ["rb-07", "rb-08", "rb-buckets", "rb-moneymake"]
L4["after"] = ["Tell whether a money headline means money created, moved or re-priced, and what is really lost when a price falls",
               "Name who moves money, with a verb and a size, and read the season from six dials",
               "Explain why a 50% fall needs a 100% rise, when rebalancing helps and why borrowing can ruin a good bet",
               "Take apart a bold financial pitch into what is true, what is spin and what is unknown"]

json.dump(d, open(p, "w", encoding="utf-8"), ensure_ascii=False, indent=1)
for cid in ("rb-moves", "rb-moneymake"):
    c = next(c for c in d["chapters"] if c["id"] == cid)
    s = json.dumps(c, ensure_ascii=False)
    print(cid, len(c["blocks"]), "em", s.count("—"), "en", s.count("–"), "semi", s.count(";"))
