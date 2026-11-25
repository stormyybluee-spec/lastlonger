"""Round 18 draft: Level 3 deep chapter rb-printers, "Why do the biggest printers end up poor? Speed, trust and the
price of money".
Usage: python3 -I round18/r18_build_draft.py site/rulebook.json  (in place, refuses to run twice)
Sources: round18/lanes/R18A-data.md and round18/lanes/R18B-open.md, framed by round18/FRAME_R18.md.
Rows marked confirmed are stated plainly. Rows marked plausible are hedged. Rows marked unverified are left out.
The chapter becomes Level 3 number 07 and the epilogue rb-promise moves to 08, so the epilogue stays last."""
import json, sys
p = sys.argv[1]
d = json.load(open(p, encoding="utf-8"))
if any(c["id"] == "rb-printers" for c in d["chapters"]):
    sys.exit("already applied")
P = lambda t: {"type": "p", "text": t}
H = lambda t: {"type": "h", "text": t}
def I(t, label=None):
    b = {"type": "insider", "text": t}
    if label: b["label"] = label
    return b
T = lambda c, r: {"type": "table", "cols": c, "rows": r}
CHK = lambda q, a: {"type": "check", "q": q, "a": a}
Q = lambda t, by: {"type": "quote", "text": t, "by": by}

ch = {"id": "rb-printers", "num": "07", "level": 3,
 "title": "Why do the biggest printers end up poor? Speed, trust and the price of money",
 "kicker": "Some countries printed so much money that it became worthless. Others created even larger sums and saw almost no rise in prices. A reader says money obeys supply and demand, that the speed at which it changes hands matters, and that a small country can catch inflation from abroad. This chapter tests all three, and ends at a market in Kuala Lumpur.",
 "blocks": [
  {"type": "tldr", "items": [
    "Over long periods, countries that create money much faster than others have much higher inflation. Among low-inflation countries the link is much weaker.",
    "How fast money changes hands matters as much as how much there is. In Germany in 1923 people spent money the moment they got it. In America after 2008 new money mostly sat still.",
    "The countries that printed themselves poor mostly printed to pay the government's bills while the economy was already shrinking. Each also had another big blow: a war debt, a farm collapse, an oil crash.",
    "Malaysia does catch some inflation from abroad, mainly through food and the US dollar. It kept prices calm in 1998 and 2022, and in 2022 the state's budget paid much of the bill."]},
  {"type": "bridge", "label": "Built on earlier chapters: recall these before you start", "items": [
    {"id": "rb-credit", "text": "Chapter 02 said that money printed to pay a state's bills, while output falls, brings inflation, as in Zimbabwe."},
    {"id": "rb-law", "text": "Chapter 05 found that central banks aim for mild inflation on purpose, and that the big gains to the state come when inflation is a surprise."},
    {"id": "rb-1971", "text": "Chapter 03 found that inflation is one of the limits that took the place of gold after 1971."},
    {"id": "rb-08", "text": "Money has seasons. Inflation melts savings and lightens debts. Deflation does the reverse."}]},
  {"type": "callout", "label": "How to read this chapter", "text": "A scene, four tests and a verdict, about 40 minutes in all. Each test ends with a short line on what it does to the claim. This is the fifth of seven deeper chapters that follow the overview in chapter 02."},

  H("The claim on trial"),
  P("The reader who wrote in has three ideas about the price of money itself. Here they are, with a question the reader asked."),
  {"type": "steps", "items": [
    "Part 1. Money obeys supply and demand. Make more of it than people want to hold, and each unit is worth less.",
    "Part 2. The speed at which money changes hands, its velocity, decides how hard a given amount of money pushes on prices.",
    "Part 3. A country can import inflation, or falling prices, from abroad, through its exchange rate and the things it buys.",
    "The question. If a body that holds reserves can create money, why do the countries that create the most end up among the poorest?"]},

  H("A newspaper in the morning, and again at night"),
  P("In 1923 the Austrian writer Stefan Zweig was travelling in Germany. Years later, in his memoir, he described what money had become."),
  Q("I have known days when I had to pay fifty thousand marks for a newspaper in the morning and a hundred thousand in the evening", "Stefan Zweig, The World of Yesterday, written in 1941 and 1942"),
  P("He sent a book to his publisher and asked to be paid in advance for ten thousand copies. By the time the payment reached the bank, he wrote, it \"hardly paid the postage\". A fortnight later, notes for a hundred thousand marks lay in the gutter."),
  P("At the worst point, in October 1923, prices in Germany were doubling about every three and a half days. The government was paying for almost all of its spending by printing notes. And Germans had learned a lesson that every family in a runaway inflation learns. Do not hold money. Spend it the moment you are paid, before it shrinks again."),
  P("Hold on to that last point. It is the key to this whole chapter."),

  H("Test 1. Does money obey supply and demand?"),
  P("If the reader is right, countries that create money fast should have prices that rise fast. Over long periods, they do. One study checked 144 countries from 2000 to 2019. It compared how fast each country's money grew with how fast its prices rose. The link was very strong: on a scale where 1 means a perfect match, it scored 0.88."),
  P("But look closer and the picture changes."),
  T(["Which countries, 2000 to 2019", "How closely money growth matched price rises (1 is a perfect match)"],
    [["All 144 countries", "0.88"],
     ["The 88 countries with inflation under 6% a year", "0.51"],
     ["America, year by year, 1960 to 2019", "0.14"],
     ["America, in blocks of five years, 1960 to 2019", "0.65"]]),
  P("So the link is strong when inflation is high and weak when it is low. In a calm economy, the amount of money can rise a lot one year without prices following. Then came the biggest test of all."),
  T(["Central bank", "How much it created", "What prices did"],
    [["America's Federal Reserve", "Its holdings grew from 0.87 trillion dollars in August 2007 to 4.50 trillion in January 2015", "Prices rose between 0.6% and 3.1% a year from 2009 to 2015, and under 1% in 2014 and 2015"],
     ["The European Central Bank", "Its holdings grew from 1.2 trillion euros in 2007 to 8.8 trillion in 2022", "Prices rose under 1.5% a year from 2013 to 2019"],
     ["The Bank of Japan", "Its base money roughly doubled between 2012 and 2014", "Prices rose 0.8% in 2015"]]),
  P("Those are some of the largest money creations in history, and for years prices barely moved. Then in 2020 and 2021 America's money grew 26.8% in a single year, and by June 2022 prices were rising about 9% a year. So the money did matter in the end. But the link between them was loose and slow."),
  I("Part 1 holds over long periods and in high inflation. In calm times it is loose. The largest money creations of the 2010s barely moved prices for years, which supply and demand alone does not explain.", "What test 1 does to the claim"),

  H("Test 2. Does the speed of money matter?"),
  P("Here the reader has found the missing piece. Picture one banknote of 10 ringgit. If it is spent once a year, it does 10 ringgit of buying. If it is spent ten times a year, passing from shop to worker to shop, it does 100 ringgit of buying. The same note, ten times the push on prices. That speed is called the velocity of money."),
  P("Now look at what happened to velocity in America."),
  T(["America", "How many times a year each dollar was spent (velocity of M2)"],
    [["1960", "1.82"],
     ["1997, the peak", "2.19"],
     ["2008", "1.94"],
     ["2020, the low", "1.13"],
     ["2026", "1.42"]]),
  P("From 1997 to 2020 the speed of money in America fell by almost half. That is why the huge money creation of the 2010s did so little to prices. Much of the new money went into bank reserves and savings, and stayed there. From October 2008 America's central bank even paid banks interest to keep their reserves with it. The money existed, but it did not move."),
  P("In a runaway inflation the opposite happens. People spend as fast as they can. In Germany from January 1922 to July 1923, prices rose about 2,000 times while the number of notes rose about 380 times. Prices ran more than five times ahead of the printing press, because each note was being spent faster and faster. In Zimbabwe the speed of money nearly doubled from 2007 to 2008."),
  P("So inflation is not just more money. It is more money multiplied by how fast people spend it. And how fast they spend it depends on trust. When people trust money to keep its value, they hold it. When they stop trusting it, they throw it at the nearest shop."),
  I("Part 2 holds, and strongly. The speed of money explains what the amount of money cannot: why the 2010s stayed calm and why Germany in 1923 ran ahead of its own printing. Speed depends on trust.", "What test 2 does to the claim"),
  CHK("A friend says the American central bank printed trillions of dollars after 2008, so prices should have exploded. Why didn't they, for years?",
      "Because most of the new money was not spent. It sat in bank reserves and savings, and the speed at which each dollar changed hands fell by almost half from 1997 to 2020. More money that moves slowly can push prices less than less money that moves fast."),

  H("Test 3. Why do the biggest printers end up poor?"),
  P("Now the reader's question. If creating money can be harmless, why did some countries print themselves into ruin? Look at what each one printed for, and what else was going on."),
  T(["Country", "What the printing paid for", "What prices did", "The other big blow"],
    [["Germany, 1923", "Almost all government spending, by October 1923", "Doubling about every three and a half days", "War payments owed to the victors of the First World War, and the occupation of its main industrial region, the Ruhr"],
     ["Hungary, 1946", "A government rebuilding after war, with a budget gap", "Doubling about every 15 hours, the fastest on record", "About 40% of the country's wealth destroyed in the war, and income less than half its pre-war level"],
     ["Zimbabwe, 2008", "The central bank spent on the government's behalf an amount equal to 36% of the country's output", "Doubling about every 25 hours", "Output had already fallen about 40% from 2000 to 2007, after farm seizures and a collapse in farming"],
     ["Venezuela, 2018", "A government deficit of about 15% of output. Base money grew over 73,000% in a year", "Up over 1.6 million percent in 2018, by one estimate", "The oil price fell 71% from mid 2014 to early 2016, and America imposed sanctions in 2017"]]),
  P("Read the second and fourth columns together. In every case the government was printing to pay its own bills. And in every case the economy was already shrinking, so the new money was chasing fewer and fewer goods. Venezuela's output fell by about half from 2013 to 2018. Zimbabwe's fell about 14% more in 2008 alone."),
  P("That is the difference between the 2010s and the printers. When America's central bank created money, it bought bonds, the economy kept working, and most of the money was held. When Zimbabwe's created money, it paid for spending the shrinking economy could not support, and nobody wanted to hold the result. Trust broke, speed rose, and prices ran."),
  P("In Caracas in January 2018 a young man named Wilmer Rojas sat at a bus stop, sewing handbags out of banknotes. He needed up to 800 notes for one purse."),
  Q("People throw them away because they are no good to buy anything.", "Wilmer Rojas, 25, Caracas (AFP, February 2018)"),
  P("Some cases are less clear. Turkey's central bank cut interest rates in 2021 and 2022 while prices rose, and inflation reached 85.5% in October 2022. But Turkey's economy kept growing every year, and no evidence was found here that its central bank was paying the government's bills. It is a case of a currency losing trust, not of a printer paying for the state."),
  P("And how do these stories end? Germany's ended in 1924, when a new currency was issued and the central bank stopped lending to the government. Argentina, which has fought high inflation for decades, saw prices rise 211% in 2023. In 2024 its central bank stopped paying for the government directly, and inflation fell to about 118% for the year."),
  I("The question has an answer. The biggest printers were poor because they printed to pay the state's bills while the economy was already shrinking from another blow. The printing turned a disaster into a collapse of trust. Creating money to buy bonds in a working economy, as in the 2010s, did not.", "What test 3 does to the claim"),

  H("Test 4. Can a country catch inflation from abroad?"),
  P("Malaysia buys much of its food and many of its goods from abroad, and most of its trade is priced in US dollars. So when the ringgit falls against the dollar, the things Malaysia buys cost more. That is imported inflation. How much of it really gets through? Bank Negara measured it."),
  T(["If the ringgit falls 5% against the dollar", "What happens within a year, by Bank Negara's 2022 estimate"],
    [["The price of imports", "Rises about 2.1 points, so about 40% of the fall gets through"],
     ["Core inflation, the prices people pay for most things", "Rises only about 0.2 points"],
     ["Food", "Rises more than other goods"]]),
  P("Why so little in shops? About a quarter of what Malaysian households spend is imported, firms often absorb some of the cost, and the state caps some prices and pays subsidies. The test came twice."),
  T(["", "1998", "2022"],
    [["What the ringgit did against the dollar", "Fell 28.3% on average over the year", "Fell 5.4% over the year"],
     ["Malaysia's inflation", "5.3% for the year", "3.3% for the year"],
     ["Inflation elsewhere", "Indonesia, 58.4%", "America, 8.0%. Britain, 9.1%"],
     ["What held prices down", "Firms absorbed costs in a slump, and oil was cheap. Bank Negara said there were \"no price controls as such\"", "Fixed pump prices and price ceilings. The state planned 37.3 billion ringgit of fuel subsidies for the year"]]),
  P("Look at 1998. Malaysia's currency fell hard, and Indonesia's fell too. Yet Malaysia's prices rose 5.3% and Indonesia's 58.4%. So the size of the fall alone does not decide what happens. Trust, the state of the economy and what people buy all matter."),
  P("Look at 2022. Malaysia's inflation was less than half of America's. But the calm had a price, paid by the state's budget, which means by taxpayers now and later. And the pressure showed up in other ways. In February 2022 a housewife named Meena Tharshini, shopping at a market in Kuala Lumpur, told a reporter how her family's chicken had changed."),
  Q("But nowadays, I can only budget for one.", "Meena Tharshini, 41, on buying one chicken a week instead of two, Kuala Lumpur (Malay Mail, February 2022)"),
  P("The government had capped the price of a standard chicken at 8.90 ringgit a kilogram. The poultry farmers said they could barely make a profit. In June 2022 Malaysia stopped exporting chickens for a time, as reported. The cap kept the price down, and the shortage moved the pain somewhere else."),
  P("A country can also catch falling prices. Hong Kong ties its dollar to the US dollar. When the US dollar grew strong after 1998, Hong Kong's prices fell every year from 1999 to 2004, while America's kept rising. Argentina, tied to the dollar until 2001, saw prices fall three years in a row. A tie to the dollar does not pass on America's inflation. It passes on the dollar's strength."),
  P("Bank Negara's governor said in 2017 that open economies are caught in a \"catch 22\": what big central banks do reaches them whether they like it or not. In 2022 he said that tying the ringgit to the dollar again \"will not be in the best interest of Malaysia\"."),
  I("Part 3 holds. Malaysia does catch inflation from abroad, mainly through food and the US dollar, but only part of each currency fall reaches the shops. In 1998 and 2022 Malaysia kept prices far calmer than its neighbours or the West. In 2022 the state's budget paid much of the cost.", "What test 4 does to the claim"),

  H("The verdict on the printers"),
  T(["The claim", "Finding", "The fact that decides it"],
    [["1. Money obeys supply and demand", "Holds over long periods and in high inflation. Loose in calm times", "Across 144 countries the match was 0.88. Among low-inflation countries it was 0.51. America's central bank grew its holdings about five times from 2007 to 2015, with low inflation"],
     ["2. The speed of money matters", "Holds, strongly", "America's velocity fell by almost half from 1997 to 2020. German prices in 1923 ran more than five times ahead of the printing"],
     ["3. A country can import inflation and deflation", "Holds, but less gets through than the currency fall suggests", "A 5% fall in the ringgit lifts import prices about 2.1 points and core inflation about 0.2 points"],
     ["The question: why are the biggest printers poor?", "Because they printed to pay the state's bills in an economy already shrinking from another blow", "Zimbabwe's central bank spent an amount equal to 36% of output in 2008, after output had fallen 40%"]]),
  P("Here is the reader's idea again, rebuilt so the record can carry it."),
  {"type": "steps", "items": [
    "The value of money depends on how much there is, how fast it moves, and how much people trust it to keep its value. Of the three, trust is the one that can change overnight.",
    "Creating money is not the same as printing money to pay bills. Money created to buy bonds in a working economy mostly sat still in the 2010s. Money printed to pay a government's bills in a shrinking economy was spent as fast as people could, and trust broke.",
    "A small open country like Malaysia catches part of the world's inflation through food and the dollar. It can soften the blow with subsidies and price caps, and someone still pays, through the budget or through shortages."]},
  P("So why do the biggest printers end up poor? Not because creating money is poison in itself. Because they used it to cover a hole that was already growing, and the people holding the money saw it first. A newspaper that cost fifty thousand marks in the morning cost a hundred thousand at night. A family in Kuala Lumpur bought one chicken instead of two. Both were feeling the price of money. Only one of them was watching trust collapse."),
  I("This view would change if any of three things were shown. First, that a country printed to pay its government's bills on a large scale, in a growing economy, without high inflation. Second, that the slowdown in the speed of money after 2008 had a cause that will not reverse. Third, that Malaysia's subsidies cost more over time than the inflation they prevented. The third is a fair question this chapter did not settle.", "What would change this verdict"),

  {"type": "deeper", "label": "Two more printer stories", "blocks": [
    P("Hungary, 1946. After the Second World War about 40% of Hungary's national wealth had been destroyed, and its income was less than half its pre-war level. Prices then rose faster than anywhere ever recorded, doubling about every 15 hours at the peak. The new currency of August 1946, the forint, was set at 200,000 tax pengő each. The share of Hungary's spending paid by printing in 1946 was not found for this chapter."),
    P("Argentina. A senior official of Argentina's central bank has said that over two decades, the central bank moved an amount worth more than 60% of a year's output to the Treasury. In 2023 its advances and transfers to the Treasury came to about 0.9% of output. In 2024 they stopped.")]},
  {"type": "deeper", "label": "Where each number comes from", "blocks": [
    T(["Number", "Source"],
      [["Stefan Zweig", "The World of Yesterday, English edition. Translations word the passages differently"],
       ["Germany 1923: prices doubling, spending paid by notes, notes against prices", "The Hanke and Krus table of hyperinflations, read from a copy hosted elsewhere. Thomas Sargent on the end of the German inflation"],
       ["Money growth against inflation across countries", "World Bank data, 2000 to 2019, computed for this chapter. Earlier studies by McCandless and Weber, and by Dwyer and Fisher, found the same pattern"],
       ["American money, velocity and prices", "Federal Reserve Bank of St Louis data (FRED)"],
       ["The European Central Bank and the Bank of Japan", "Their own balance sheets and price data"],
       ["Hungary and Zimbabwe peaks", "The Hanke and Krus table"],
       ["Zimbabwe's central bank spending and output", "International Monetary Fund reports"],
       ["Venezuela", "US Congressional Research Service and the UN's economic commission for Latin America. The 1.6 million percent is one estimate"],
       ["Wilmer Rojas", "AFP, February 2018"],
       ["Turkey", "Turkey's central bank and statistics office"],
       ["Argentina", "Argentina's statistics office and central bank"],
       ["Imported inflation in Malaysia and the 1998 and 2022 comparisons", "Bank Negara Malaysia, annual reports and its 2022 review of exchange rate pass-through. Indonesia, America and Britain from their statistics offices"],
       ["Fuel subsidies in 2022", "Malaysia's Ministry of Finance, as projected"],
       ["Meena Tharshini and the chicken price cap", "Malay Mail, 21 February 2022. The export halt is from press reports"],
       ["Hong Kong and Argentina under dollar ties", "Hong Kong Monetary Authority. International Monetary Fund evaluation office on Argentina"],
       ["Bank Negara's governor", "Speeches of 2017 and 2022"]])]},
  {"type": "callout", "label": "Not advice", "text": "This chapter weighs an argument about inflation and money. It does not tell you to hold or avoid any currency, metal or investment. Figures have dates and will change."}]}

i = next(k for k, c in enumerate(d["chapters"]) if c["id"] == "rb-promise")
d["chapters"].insert(i, ch)
next(c for c in d["chapters"] if c["id"] == "rb-promise")["num"] = "08"
L3 = next(l for l in d["levels"] if l["n"] == 3)
L3["after"] = L3.get("after", []) + ["Explain why the amount of money, its speed and trust together set its value, and why the biggest printers ended up poor"]
json.dump(d, open(p, "w", encoding="utf-8"), ensure_ascii=False, indent=1)
s = json.dumps(ch, ensure_ascii=False)
print("rb-printers blocks", len(ch["blocks"]), "em", s.count("—"), "en", s.count("–"), "semi", s.count(";"))
