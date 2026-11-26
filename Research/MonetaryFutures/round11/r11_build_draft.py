"""Round 11 draft: the first Level 3 chapter, rb-print, "Is printing money a scam?".
Usage: python3 -I round11/r11_build_draft.py site/rulebook.json  (in place, refuses to run twice)
Sources: round11/lanes/R11A-history-data.md and round11/lanes/R11B-arguments.md, framed by round11/FRAME_R11.md."""
import json, sys
p = sys.argv[1]
d = json.load(open(p, encoding="utf-8"))
if any(c["id"] == "rb-print" for c in d["chapters"]):
    sys.exit("already applied")
P = lambda t: {"type": "p", "text": t}
H = lambda t: {"type": "h", "text": t}
def I(t, label=None):
    b = {"type": "insider", "text": t}
    if label: b["label"] = label
    return b
T = lambda c, r: {"type": "table", "cols": c, "rows": r}
CHK = lambda q, a: {"type": "check", "q": q, "a": a}

ch = {"id": "rb-print", "num": "01", "level": 3,
 "title": "Is printing money a scam? The charge, the defence and the toll",
 "kicker": "You have heard it a hundred times: printing is theft, the dollar has lost 97%, the whole thing is a Ponzi. This chapter puts that charge on trial at full strength, then puts hard money on trial too, and ends with the question that matters more than either: who pays the toll, and who decides.",
 "blocks": [
  {"type": "tldr", "items": [
    "The charge is partly true. Cash does melt: a dollar buys what 3 cents bought in 1913, and a ringgit buys what 18 sen bought in 1971. From 2021 to 2025 people holding US cash lost about $488 billion of buying power, and nobody voted on it.",
    "It is not a scam in the plain sense, because nothing is hidden: the target, the balance sheets and the price index are published. It is not a Ponzi by the features of one. The honest name is a toll, and a toll has payers: cash holders, renters and late savers.",
    "Hard money has a toll too. It falls on borrowers and the young, and it bites hardest in a panic. A fixed money does not remove the first-comer advantage. It freezes it.",
    "After 1945 America held about two thirds of the world's official gold. Europe still passed its pre-war output by 1949 and Japan by 1951. Credit, aid and debt cuts rebuilt them. Gold did not.",
    "Both systems tilt the board. They tilt it toward different people. So the useful questions are who pays, how much, who gets the new money first, and what number would prove the system is failing.",
    "This is a debate between serious people. The chapter gives each side its best evidence. Nothing here is advice."]},
  {"type": "bridge", "label": "Built on Levels 1 and 2: recall these before you start", "items": [
    {"id": "rb-02", "text": "Rulers watered down coins long before paper money. Hard money protects savers and squeezes borrowers."},
    {"id": "rb-07", "text": "Interest can be paid if money keeps moving. Trouble starts when debt grows faster than income."},
    {"id": "rb-08", "text": "Money has seasons. Inflation melts savings and lightens debts. Deflation does the reverse."},
    {"id": "rb-defl", "text": "A money that gains value rewards waiting, which is good for savers and hard on borrowers."},
    {"id": "rb-moneymake", "text": "Money is created three ways: banks lend, the central bank buys, and the government spends more than it taxes."},
    {"id": "rb-moves", "text": "Every money headline means created, moved or re-priced. Ask which."}]},
  {"type": "radiant", "center": "Printing on trial", "caption": "The chapter in one picture. Outlined boxes link to the chapter each idea builds on.", "rays": [
    {"t": "The charge sheet", "s": "Six charges, with sizes", "link": "rb-02"},
    {"t": "Is it a Ponzi?", "s": "Feature by feature, then one number", "link": "rb-07"},
    {"t": "Who gets it first", "s": "Loans, bond buying, cheques", "link": "rb-moneymake"},
    {"t": "Hard money on trial", "s": "The rebuild, the new players", "link": "rb-defl"},
    {"t": "The sword and the 2%", "s": "Why a little, not zero", "link": "rb-08"},
    {"t": "Three seats", "s": "Household, company, government", "link": "rb-moves"}]},
  {"type": "callout", "label": "How to read this chapter", "text": "Four parts, about 40 minutes in all. Part 1 makes the case against printing as strongly as it can be made. Part 2 tests it. Part 3 tests the alternative. Part 4 gives the verdict from three seats. Read the main path first and skip the boxes marked Go deeper."},

  H("Part 1 of 4. The charge sheet"),
  P("Picture a courtroom. In the dock sits the money in your pocket. The charge is read out: this money is printed from nothing, it loses value every year, the people who print it get rich first, and the whole system only survives by borrowing more. Guilty of theft, says the crowd. A scam. A Ponzi."),
  P("A fair trial starts by making the charge as strong as it can be. So first, three meanings of printing, because the crowd mixes them. A central bank creates money when it buys bonds. Ordinary banks create it when they lend. And a government creates it when it spends more than it taxes and the central bank or banks buy the debt. Level 2 chapter 2 showed all three."),
  T(["The charge", "The evidence", "How big"],
    [["Cash melts", "Prices rise almost every year, so idle money buys less", "A dollar keeps 2.9 cents of its 1913 buying power, and 12 cents of its 1971 buying power. A ringgit keeps 17.6 sen of its 1971 buying power"],
     ["It is a tax nobody voted on", "Inflation takes buying power from anyone holding cash, with no law passed", "About $488 billion lost by holders of US cash from 2021 to 2025. About half of all dollar notes are held outside America"],
     ["The first to get new money win", "When central banks bought bonds, asset prices rose, and assets are owned mostly by the rich", "The Bank of England found its bond buying lifted UK wealth by over 600 billion pounds by 2012. The top 5% of households held 40% of the assets that rose"],
     ["Savers were pushed under water", "Interest on safe savings was held below inflation for years", "US Treasury bills lost about 1.7% a year after inflation from 2009 to 2021"],
     ["You cannot opt out", "Taxes and wages are set in the national money", "No number needed"],
     ["It only works by borrowing more", "Governments repay old bonds by selling new ones", "The average interest rate on US government debt rose from 1.43% in 2021 to 3.57% in October 2026"]]),
  I("The strongest witness for the prosecution is the economist most people think defended printing. John Maynard Keynes wrote in 1919 that by a continuing process of inflation, governments can confiscate, secretly and unobserved, an important part of the wealth of their citizens. He was describing the wild inflations after the First World War. But the mechanism he named is the same one, only slower.", "Even Keynes said so"),
  CHK("Inflation runs at 3% for a year. Who loses, and does the government collect what they lose?", "Anyone holding cash or deposits that pay less than 3% loses buying power. The government does not collect it directly. Borrowers gain, because their debts shrink in real terms, and the government is the biggest borrower. Banks that pay savers less than they earn keep part of it too."),

  H("Part 2 of 4. The cross-examination"),
  P("Now test the charge, one word at a time. A scam means winning by deceiving people. Theft means taking without consent. A Ponzi scheme has a precise meaning, and it comes from one man."),
  H("Is it a Ponzi?"),
  P("In 1920 Charles Ponzi of Boston promised 50% in 45 days. About 30,000 people handed him more than $10 million in seven months. He had almost no real business. He paid early investors with money from later ones, and when a newspaper asked questions the inflow stopped and it all collapsed. Line the money system up against his scheme."),
  T(["What makes a Ponzi", "Ponzi's scheme", "Money and government debt"],
    [["No real asset underneath", "Yes. Almost nothing", "No. Bonds are claims on taxes, and taxes are a claim on everything a country produces"],
     ["Old investors paid from new ones", "Yes. All of it", "Partly. Old bonds are repaid by selling new ones, but interest comes mostly from taxes"],
     ["The truth is hidden", "Yes. The books were secret", "No. The inflation target, the central bank's holdings and the budget are published"],
     ["It must grow or collapse", "Yes. It lasted seven months", "Partly. The money supply needs new lending to grow, but debt systems have run for centuries"],
     ["A fixed, high promised return", "Yes. 50% in 45 days", "No. Bond buyers lost heavily when rates rose after 2020"]]),
  P("So by its features it is not a Ponzi. But economists have their own strict test, and it is fairer to the prosecution. A debt is a Ponzi in the strict sense if it can only ever be paid by borrowing more. The check is one comparison: is the interest rate on the debt higher than the growth of the income behind it? From 2001 to 2025 the average rate on US debt was above the growth of the US economy in 5 years out of 25, all of them slow or crisis years. In October 2026 the rate was 3.57% and growth was 5.9%. The system passes. But the gap is closing as cheap old debt is replaced at higher rates, and that is the number to watch."),
  H("Did the dollar really lose 97%?"),
  P("Yes, if you kept it under a mattress since 1913. That is a claim about cash that earns nothing. A saver who kept money in short US government bills since 1971 saw one dollar grow to almost eleven, while prices rose about eight times. That saver came out ahead by about half a percent a year. But not in every decade: bills lost to inflation through the 1970s and again from 2009 to 2021. So the charge lands hardest on people who hold plain cash and accounts that pay nothing. Those are often the poorest, and people abroad who keep dollars because they trust their own money less."),
  H("Who gets the new money first?"),
  T(["How the money is created", "Who touches it first", "Who waits or pays"],
    [["A bank lends", "The borrower, then whoever sold them the house or goods. About 41% of US bank lending is against property", "Later buyers, who meet higher prices"],
     ["The central bank buys bonds", "The seller of the bond, then owners of shares and houses as prices rise", "Savers, as interest rates fall, and renters"],
     ["The government sends cheques", "Households. In 2020 and 2021 the US sent about $850 billion, and the first two rounds lifted 11.7 million people above the poverty line in 2020", "Everyone, through the inflation of 2021 to 2023"]]),
  P("The crowd says the rich always get it first. That fits bond buying and much bank lending. It does not fit the cheques of 2020 and 2021, which reached ordinary households first. Then the bill arrived as inflation. In 2021 it hit middle earners hardest, through cars and fuel. From mid 2022 it hit the poorest hardest, through rent."),
  I("Scam? Not in the plain sense. A con depends on a lie, and the target, the purchases and the price index are all published. Theft? Not in law. But in effect it is a transfer that nobody voted on, and it has a size. Ponzi? Not by its features. By the strict test it passes today, on a margin that is narrowing. The honest word is a toll: a charge for using the system, paid by some people far more than others.", "The verdict so far"),
  CHK("A friend says the government is running a Ponzi because it never repays its debt. What one comparison would test that?", "The interest rate on the debt against the growth of the economy. While growth is higher, the debt can be rolled over without growing against income. If the rate stays above growth for years outside a recession, the friend has a point."),

  H("Part 3 of 4. The alternative goes on trial"),
  P("A fair court does not stop at the charge. If printing is the crime, what is the alternative? Usually the answer is hard money: money that cannot be created at will, such as gold, or a coin with a fixed supply. So put hard money in the dock, starting with a question from the owner of this project."),
  H("Question 1. Could a world on gold have rebuilt after the war?"),
  P("In 1945 much of Europe and Japan lay in ruins. America held 59.5% of the world's official gold, and by 1948 about 70%. If gold alone were money, the countries that most needed to rebuild had almost none of it. And gold was still flowing to America, not away from it, until 1949."),
  P("Yet Western Europe passed its pre-war output in 1949, and Japan by 1951. It took about five years, not fifty. What paid for it was not gold."),
  T(["What rebuilt Europe and Japan", "The detail"],
    [["Aid", "The Marshall Plan gave about $13 billion from 1948, most of it as grants. It was never more than about 2.5% of the income of the countries that received it"],
     ["New money with no gold behind it", "West Germany launched a new currency in June 1948. Old savings were converted at 6.5 new marks for every 100 old ones"],
     ["Credit between neighbours", "From 1950 the European Payments Union let countries trade on credit and settle later, so they did not need scarce dollars for every deal"],
     ["Debt forgiven", "In 1953 West Germany's foreign debt was cut by about half, and repayments were capped at 3% of what it earned from exports"],
     ["Work and exports", "Most investment was paid for at home. Aid was under a fifth of it"]]),
  P("Here is the twist. The world was officially on gold at the time. The dollar was fixed to gold and other currencies were fixed to the dollar. So this is not a story of gold against printing. It is a story of credit built on top of a gold anchor: governments and banks created the money that put people to work, and creditors agreed to forgive. The instinct behind the question is right. Had gold been the only money that counted, the ruined countries could not have started."),
  H("Question 2. The old board and the new players"),
  P("Imagine a game of Monopoly that has run for centuries. The streets are owned. Every year new players are born and sit down with nothing. Which money gives them a fairer start?"),
  P("Take hard money first. From 1866 to 1897 the US was on a metal standard. Prices fell about 2% a year while output grew about 4% a year, so a fixed money and fast growth can live together. But falling prices make every debt heavier, and the young are borrowers before they are savers. Farmers with mortgages were squeezed for a generation. The country had three great banking panics, in 1873, 1893 and 1907. Then from 1930 to 1933 the money supply fell by nearly a third and prices by about a quarter."),
  P("Now a modern fixed money. Bitcoin's supply is capped at 21 million coins. A 2021 study found that the top 10,000 holders owned about 27% of all coins, and between 2.6 and 3.8 million coins are thought lost for good. A child born a century from now would start with none, and could get coins only by working for people who hold them. A fixed money does not remove the advantage of arriving first. It freezes it."),
  P("But credit money shuts new players out too, by a different door. Cheap loans push up the price of houses."),
  T(["Who owned a home at age 30", "Born about 1946 to 1964", "Born about 1965 to 1980", "Born about 1981 to 1996"],
    [["United States", "about 58%", "about 51%", "about 41%"],
     ["United Kingdom", "about 63%", "about 60%", "about 42%"]]),
  P("In Malaysia the median house cost 4.1 times the median household's yearly income in 2019, and it has been above 3, the usual line for affordable, every year since 2002. Low interest rates explain much of this. So do limits on building, since the same low rates raised prices far more in places that could not build. Both systems tilt the board. Hard money tilts it toward those who already hold the money and those who lend it. Credit money tilts it toward those who can borrow and those who already own."),
  H("How societies have reset the board"),
  P("Because every system lets wealth pile up, every society has needed a way to deal the cards again. History offers six tools."),
  T(["Tool", "An example", "Who paid"],
    [["Cancelling debts", "Rulers of ancient Babylon wiped out farm debts by decree", "Lenders"],
     ["Land reform", "Japan, 1946 to 1950: land farmed by tenants fell from 6.3 million acres to 1.6 million", "Landlords"],
     ["Taxing the top", "Very high top tax rates in America and Britain after 1945", "High earners"],
     ["Inflation with capped interest rates", "America and Britain, 1945 to 1980: government debt shrank by about 3% to 4% of national income a year", "Savers and bondholders"],
     ["Agreed debt relief", "West Germany, 1953: half its foreign debt cancelled", "Foreign creditors"],
     ["War and collapse", "Japan, 1938 to 1945: the top 1% went from about 20% of income to about 6%", "Everyone"]]),
  P("Notice that every peaceful tool on the list uses the state's power over money, debt or tax. Each one has a named loser. A system that can create credit has quiet ways to reset the board. A system that cannot tends to wait for the loud ones."),
  CHK("A fixed-supply money ends the inflation toll. Why does that not make the game fair for a child born in 100 years?", "Because the coins are already owned. The child starts with none and must earn them from holders, and if the economy grows the coins gain value while the child is still borrowing. The toll on cash holders goes, and a toll on newcomers and borrowers takes its place."),

  H("Part 4 of 4. The sword, the 2%, and the verdict from three seats"),
  H("Question 3. The sword"),
  P("A collector pays 100,000 for a custom sword. The blacksmith and the suppliers receive the 100,000 as income. The collector now owns a sword. If it were stolen and turned up in a pawn shop, it would fetch a fraction of the price. Does that explain why money must lose a little value each year?"),
  P("The sword teaches two true things. First, the money was not destroyed. It became the blacksmith's income and went on moving, because one person's spending is another person's pay. Second, a sword is not money. You cannot sell it quickly, at a fair price, to a stranger. Being easy to pass on is the whole job of money."),
  P("But the sword does not explain the 2%. Its loss is one object losing resale value. Inflation is money itself losing value against everything. Central banks aim for about 2% for four other reasons."),
  T(["Why a little inflation and not zero", "In plain words"],
    [["Pay is hard to cut", "A boss who cannot cut wages can skip a raise. With a little inflation that works as a quiet pay cut, and fewer people lose their jobs in bad years. One well-known study put the cost of zero inflation at 1 to 3 points more unemployment"],
     ["Room to cut interest rates", "If inflation is 2%, normal interest rates sit around 4%, which leaves room to cut in a slump"],
     ["The measuring stick runs fast", "Price indexes miss some quality gains. A 1996 US review put the overstatement at about 1 point a year, so measured 2% may be closer to 1%"],
     ["Fear of falling prices", "Deflation makes debts heavier and people wait to spend, as in the 1930s"]]),
  P("So mild inflation is a small fee on money that sits still. The owner of this project calls it a leaking bucket. It is a design choice with a cost, and the cost falls on whoever holds the bucket longest."),
  H("Three seats at the table"),
  P("Whether printing looks like a scam depends on where you sit."),
  T(["Seat", "Under credit money with mild inflation", "Under hard money"],
    [["Household that saves in cash", "Loses. At 2% a year, cash loses half its buying power in 35 years", "Gains when prices fall, but has no safety net if a bank fails"],
     ["Household with a home loan", "Gains. Inflation shrinks the debt", "Loses. The debt grows heavier as prices fall"],
     ["Household that rents", "Loses when cheap credit lifts house prices and rents", "Mixed. Cheaper houses, but less credit to buy one"],
     ["Worker", "Gains in slumps, when easier money saves jobs. Loses when prices outrun pay, as in 2021 and 2022", "Loses in slumps. Gains if pay holds while prices fall"],
     ["Company", "Can borrow to build before it has profits. An exporter gains when its currency weakens", "Credit is scarce and dear when prices fall"],
     ["Government", "Can fight a crisis, and its debt melts a little each year. The danger is the temptation to overspend", "Hands are tied, which blocks abuse, and also blocks rescue in a panic"]]),
  P("A Malaysian sits in a fourth seat. Income per person in Malaysia grew about six times from 1971 to 2025, built on credit, trade and investment. Over the same years the ringgit lost about 82% of its buying power. Savers were mostly paid for that: bank deposits beat inflation in every decade from the 1980s to the 2010s, though not in the 1970s. And Malaysia cannot print dollars. It lives with the inflation and the interest rates that America sets."),
  H("The verdict"),
  {"type": "steps", "items": [
    "Not a scam in the plain sense. Nothing is hidden, though few people are ever shown who pays.",
    "A real toll. It falls on cash holders, renters and people who save late, and about half of the toll on dollar notes is paid by people outside America.",
    "Not a Ponzi by its features. By the strict test it passes on a narrowing margin. Watch the interest rate on the debt against growth.",
    "Hard money is not innocent either. Its toll falls on borrowers and the young, and it has no rescue in a panic.",
    "So the real argument is not printing against no printing. It is who pays the toll, how big it is, who decides, and whether you can see it."]},
  P("One more claim deserves a straight answer. Does credit money provide wealth for everyone alive? The record is mixed. The world's income per person grew 1.6% a year from 1971 to 2024, while the population more than doubled. The share of people in extreme poverty fell from 43% in 1990 to 10% in 2024. But growth was faster, at 3% a year, in the 1960s, when the dollar was still tied to gold. And in America output per hour rose 175% from 1971 to 2025 while the middle family's income rose 62%. Elastic money let the world grow. It did not decide how the growth was shared."),
  {"type": "curiosity", "label": "Seven questions this chapter asked itself", "items": [
    {"q": "If printing is theft, who exactly is the victim, and how much did they lose?", "a": "Holders of money that pays nothing. On US cash alone, about $488 billion from 2021 to 2025, roughly half of it lost by holders abroad. Deposits that pay below inflation add more, and banks keep part of that gap.", "from": "rb-moneymake"},
    {"q": "Who gets new money first?", "a": "It depends on the door. Bank loans reach borrowers and house sellers first. Bond buying reaches asset owners first. Government cheques reach households first.", "from": "rb-moneymake"},
    {"q": "Is Ponzi the right word?", "a": "Not by its features. By the strict test, the rate on US debt beat growth in only 5 of 25 years, but the margin is narrowing.", "from": "rb-07"},
    {"q": "Did hard money keep the board level?", "a": "No. The gold era had deflation that crushed borrowers and repeated banking panics, and wealth still piled up at the top.", "from": "rb-02"},
    {"q": "What rebuilt Europe and Japan after 1945?", "a": "Work, credit, aid and forgiven debt. Gold was flowing to America, not from it, until 1949.", "from": "rb-03"},
    {"q": "Why 2% and not zero, and does the sword explain it?", "a": "Sticky pay, room to cut rates, a fast measuring stick and fear of deflation. The sword explains something else: spending is income, and a thing you cannot resell is not money.", "from": "rb-08"},
    {"q": "Would a fixed money give a child born in 2126 a fair start?", "a": "Not by itself. The coins would already be owned, and the child would start as a borrower. Fairness would still depend on tax, inheritance and credit.", "from": "rb-defl"}]},
  H("Five checks when someone says it is a scam"),
  {"type": "steps", "items": [
    "Which printing do they mean: bank loans, central bank buying, or government spending paid for with new money?",
    "Who pays, and how much? Ask for a number.",
    "Compared with what? Name the alternative and its own losers.",
    "Who got the new money first this time?",
    "What number would prove them right? For a Ponzi claim it is the interest rate against growth. For a theft claim it is inflation against the published target."]},
  {"type": "deeper", "label": "The five popular versions of the charge, and the best reply to each", "blocks": [
    T(["Version", "Its strongest point", "The best reply", "What it misses"],
      [["Inflation is counterfeiting by the state (Rothbard, 1964)", "New money favours whoever gets it first", "At 2% the toll is small, and easy money also saves jobs", "A fixed money with growing output means deflation, which favours lenders"],
       ["The biggest scam in history (popular gold and silver videos)", "Money is created as debt, which is true", "The Bank of England explains the same mechanism without calling it fraud", "Collapse has been forecast since 1971 and has not arrived. The sellers hold metal"],
       ["Fiat is a melting ice cube (Bitcoin advocates)", "Savers in high-inflation countries really did lose", "A fixed money has its own first-comer problem", "Latecomers must buy in from early holders"],
       ["Debauching the currency destroys a society (Keynes, 1919)", "High inflation does wreck savings and trust", "Keynes later argued that deflation did more harm in the 1930s", "The warning was about runaway inflation, not a 2% target"],
       ["They print it and give it to the rich", "Asset owners gained most from bond buying", "The 2020 and 2021 cheques went to households first", "It mixes up three different ways money is created"]]),
    P("Each side concedes something. Critics accept that money demand grows as an economy grows. Defenders accept that asset owners gained most in dollar terms. The fight is over whether the toll is a fair price for a system that can respond to a crisis.")]},
  {"type": "deeper", "label": "When anyone could print: free banking, and money you guard yourself", "blocks": [
    P("America tried letting banks print their own notes from 1837 to 1863. A study of 709 such banks in four states found that close to half failed, though most noteholders were paid in full. Losses came mainly from falls in the state bonds that backed the notes, not from fraud. Scotland ran a similar system for over a century with few failures, in part because bank owners were liable for every loss."),
    P("Money you guard yourself moves the risk from an institution to you. About $3.4 billion of crypto was reported stolen in 2025, including about $1.5 billion in one exchange hack. Nobody insures a stolen key. A bank deposit can be frozen or inflated away, but in most countries it is insured up to a limit. The lesson from both stories is the same: the question was never central against decentral alone. It is who bears the losses and who checks the issuer.")]},
  {"type": "deeper", "label": "Does stored wealth stall the world? And attempts to force money to move", "blocks": [
    P("The owner of this project asks a sharp question: if most wealth sits in houses and savings that do not circulate, how does a society advance? In the US each dollar of money was spent about 2.2 times a year in 1997, and only 1.2 times in 2020. Money did slow down. Japanese households hold about 47% of their financial wealth in cash and deposits."),
    P("But a house is not money sitting still. The seller received the money and spent or lent it. What stalls an economy is everyone trying to save at the same moment, which is a problem in slumps, not in normal years."),
    P("People have tried to force money to move. In 1932 the Austrian town of Woergl issued notes that lost value each month unless stamped. Supporters say they changed hands far faster than normal money. The central bank shut the experiment down in 1933. Negative interest rates, used in Europe and Japan in the 2010s, were the modern version, and banks mostly shielded ordinary savers from them. Mild inflation is the gentlest form of the same idea.")]},
  {"type": "deeper", "label": "The numbers behind the chapter", "blocks": [
    T(["Decade", "US inflation a year"],
      [["1920s", "-1.9%"], ["1930s", "-1.3%"], ["1940s", "5.9%"], ["1950s", "1.8%"], ["1960s", "2.9%"], ["1970s", "8.1%"],
       ["1980s", "4.5%"], ["1990s", "2.7%"], ["2000s", "2.3%"], ["2010s", "1.7%"], ["2020 to 2025", "4.5%"]]),
    T(["Period", "$1 in US Treasury bills became", "Prices rose", "Gain or loss a year after inflation"],
      [["1971 to 2025", "$10.95", "8.15 times", "+0.54%"], ["1971 to 1980", "$1.92", "2.17 times", "-1.18%"],
       ["1980 to 2025", "$6.34", "4.23 times", "+0.88%"], ["2009 to 2021", "$1.06", "1.33 times", "-1.67%"]]),
    P("US share of the world's reported official gold, not counting the Soviet Union: 59.5% in 1945, 69.9% in 1948, 69.4% in 1949 and 63.7% in 1950 (Federal Reserve Bulletin, December 1951). Hyperinflations, where prices rise 50% or more in a month, are a different animal from mild inflation: one widely used table counts 57 of them, the worst in Hungary in 1946. Sources: US consumer prices (BLS), Damodaran's return data (NYU Stern), Federal Reserve money and currency data, US Treasury average interest rates, the World Bank, Bank Negara and Khazanah Research Institute for Malaysia, and the studies named in the text.")]},
  {"type": "callout", "label": "Not advice", "text": "This chapter weighs an argument. It does not tell you what to hold, buy or sell. Every number has a date and will change."}]}

i = next(k for k, c in enumerate(d["chapters"]) if c.get("level") == 4)
d["chapters"].insert(i, ch)
L3 = next(l for l in d["levels"] if l["n"] == 3)
L3.update({"name": "The big arguments", "tag": "weigh both sides",
  "blurb": ["Level 3 takes the arguments people shout about money and puts each one on trial. Every chapter makes the popular charge as strong as it can be made, tests it, tests the alternative, and ends with who really pays.",
            "It assumes Levels 1 and 2. Nothing here is advice. These chapters are built so you can hold two sides of an argument in your head and still reach your own view."],
  "before": ["rb-02", "rb-07", "rb-08", "rb-defl", "rb-moneymake"],
  "after": ["State the case that printing money is theft at full strength, with numbers, and say where it holds and where it fails",
            "Test a Ponzi claim with one comparison: the interest rate on a debt against the growth of the income behind it",
            "Say who pays the toll under credit money and who pays it under hard money",
            "Ask five checking questions whenever someone calls a money system a scam"]})
L3.pop("soon", None)
json.dump(d, open(p, "w", encoding="utf-8"), ensure_ascii=False, indent=1)
s = json.dumps(ch, ensure_ascii=False)
print("rb-print blocks", len(ch["blocks"]), "em", s.count("—"), "en", s.count("–"), "semi", s.count(";"), "| level 3:", json.dumps(L3, ensure_ascii=False)[:120])
