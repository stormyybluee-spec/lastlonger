"""Round 16 draft: Level 3 deep chapter rb-law, "Who wrote the rules of money, and for whom?".
Usage: python3 -I round16/r16_build_draft.py site/rulebook.json  (in place, refuses to run twice)
Sources: round16/lanes/R16A-law.md and round16/lanes/R16B-record.md, framed by round16/FRAME_R16.md.
Rows marked confirmed are stated plainly. Rows marked plausible are hedged. Rows marked unverified are left out.
The chapter becomes Level 3 number 05 and the epilogue rb-promise moves to 06, so the epilogue stays last."""
import json, sys
p = sys.argv[1]
d = json.load(open(p, encoding="utf-8"))
if any(c["id"] == "rb-law" for c in d["chapters"]):
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

ch = {"id": "rb-law", "num": "05", "level": 3,
 "title": "Who wrote the rules of money, and for whom?",
 "kicker": "Every country has a body that issues its money, and a law that says what that body is for. A reader says it exists to let output and progress grow, that it inflates a little on purpose for the public good, and that it is kept under control. This chapter reads the laws, follows the money, and visits the places that tried other rules.",
 "blocks": [
  {"type": "tldr", "items": [
    "Central banks were first built to pay for wars and stop bank panics. Growth was written into the law later, and usually in second place. Malaysia's law does name growth: it asks for stability that helps the economy grow.",
    "Mild inflation is on purpose, and it is published. Its biggest winner is the government as a borrower, and that is rarely said out loud.",
    "The people who run the money answer to the governments that appoint them, and they must publish what they do. They do not answer to voters. When voters were asked directly, they kept the system they already had.",
    "Countries that tied their own hands got steadier prices and paid for it in a crisis. Countries that kept their hands free could rescue and steer, and some were ruined by it."]},
  {"type": "bridge", "label": "Built on earlier chapters: recall these before you start", "items": [
    {"id": "rb-credit", "text": "Chapter 02 listed five laws that money made from nothing stands on, and said insiders had a large hand in writing them."},
    {"id": "rb-1971", "text": "Chapter 03 found that after 1971 an inflation target took the place of gold as the anchor, about twenty years late."},
    {"id": "rb-print", "text": "Printing is a toll, not a scam. This chapter asks who collects the toll."},
    {"id": "rb-moneymake", "text": "Most money is made when a bank makes a loan. The central bank stands behind the banks."}]},
  {"type": "callout", "label": "How to read this chapter", "text": "A scene, five tests and a verdict, about 40 minutes in all. Each test ends with a short line on what it does to the claim. This is the third of seven deeper chapters that follow the overview in chapter 02."},

  H("The claim on trial"),
  P("A central bank is the body that issues a country's money and stands behind its banks. In Malaysia it is Bank Negara. In America it is the Federal Reserve. The reader who wrote in has a view about what such a body is for. Here it is in four parts."),
  {"type": "steps", "items": [
    "Part 1. The body that issues money exists so that output and progress can grow.",
    "Part 2. It lets prices rise a little each year on purpose, and that serves the public.",
    "Part 3. It runs under stable, controlled governance.",
    "Part 4. These are rules the public has chosen."]},
  P("A fifth test comes at the end. Some countries wrote very different rules. What happened to them?"),

  H("A country without its own money"),
  P("Start close to home, in Malaya in the early 1950s. The country had banknotes, but it had no central bank. Its money was issued by a currency board. The board followed one hard rule. For every Malayan dollar it printed, it had to hold British pounds in reserve. It could not print a dollar more."),
  P("That rule kept the money sound. Nobody feared that a Malayan dollar would turn worthless. But look at what it cost. In the early 1950s there was about 17 pounds' worth of money for each person in Malaya. In Britain there was about 120."),
  P("And the board could do nothing about it. It could not lend to a rubber planter in a bad year. It could not make credit easier when tin prices fell. In 1962 the Bank of England, looking back at boards like this one, named the weakness plainly."),
  Q("to exert positive influence on credit conditions", "What a currency board could not do, in the words of the Bank of England, 1962"),
  P("The same report said such boards forced \"painful deflationary correctives in times of depression\". In plain words: when times were bad, a board made them worse. So Malaya built a central bank, which began work in 1959. On 12 June 1967 it became the only issuer of the country's money."),
  P("That is the reader's claim in one story. A new country wanted an issuer that could steer credit toward its own growth, and it wrote a law to get one. The question is how far that story holds for the rest of the world, and what the freedom has cost."),

  H("Test 1. What was the issuer created to do?"),
  P("The simplest test is to read the laws. What did each central bank say it was for?"),
  T(["Central bank", "When", "What its law or charter says it is for"],
    [["Bank of England", "1694", "To raise 1.2 million pounds for a war, lent to the government at 8%"],
     ["America's Federal Reserve", "1913", "Its founding law speaks of an elastic currency, meaning money that can stretch in a panic, and of watching over the banks"],
     ["America's Federal Reserve", "1977", "A new line was added: \"maximum employment, stable prices, and moderate long-term interest rates\""],
     ["Bank of England", "1998", "Stable prices first. Then, as long as prices are stable, support for the government's aims for growth and jobs"],
     ["European Central Bank", "1999", "Stable prices are the main aim. Anything else comes only if prices are safe"],
     ["Bank Negara Malaysia", "2009", "Stability \"conducive to the sustainable growth of the Malaysian economy\". Stable prices are the main aim of its interest rate decisions. Jobs are not named"]]),
  P("Read down the last column. The oldest central bank was built to pay for a war. America's was built to stop bank panics. Growth and jobs were written in later, and in most laws they come second, behind stable prices. Malaysia's law is closer to the reader's picture than most. It says the point of stability is growth."),
  P("New countries after 1945 had the reader's idea too. About 25 developing countries set up or rebuilt central banks in those years, and steering credit toward industry was part of the plan. The economist Gerald Epstein argues that directing credit is one of the reasons central banks exist at all. He also grants that it sometimes went badly."),
  P("One more piece of evidence cuts against Part 1. The best-known study of central banks that are kept apart from politicians covered 16 rich countries from 1955 to 1988. It found that they had lower inflation. It is reported to have found no clear effect on growth or jobs, one way or the other."),
  I("Part 1 holds in part. The first central banks were built for war and for panics, not for progress. Growth entered the law later and usually second. But for countries that came later, Malaysia among them, steering credit toward growth was a stated aim from the start.", "What test 1 does to the claim"),

  H("Test 2. Is mild inflation on purpose, and who gains?"),
  P("It is on purpose. In January 2012 America's central bank announced that it would aim for prices to rise 2% a year, and said this was the rate \"most consistent over the longer run\" with its duties. Bank Negara has no number in its law. Nobody hides this. The earlier chapters called it a toll. So who collects?"),
  P("There are two collectors, and the second is much bigger than the first."),
  P("The first is the profit on issuing money. A central bank pays almost nothing to create money and earns interest on what it buys with it. Most of the profit is handed to the government."),
  T(["Central bank", "Year", "Paid to its government"],
    [["America's Federal Reserve", "2021", "109 billion dollars, the most ever"],
     ["America's Federal Reserve", "2023 to 2025", "Nothing. It was paying out more interest than it earned, and by the end of 2025 it had 243.5 billion dollars of losses to make up first"],
     ["Bank Negara Malaysia", "2024", "A dividend of 5.25 billion ringgit, from a profit of 13.16 billion"]]),
  P("The second collector is the government as a borrower. When prices rise, every old debt becomes lighter, and the biggest debtor in any country is the state. From 1945 to 1980, low interest rates and rising prices together shrank the debts of America and Britain by an amount equal to 3% to 4% of everything those countries made, every year. In 2021 alone, a year of surprise inflation, the real weight of America's debt fell by 3.3% of its output. One study by a branch of the central bank called it a \"6.5% tax\" on the people who held the government's bonds. About 38% of those bonds were held abroad."),
  T(["Who gains from a little inflation", "Who pays"],
    [["The government, whose debts grow lighter", "Anyone who lent to the government at a fixed rate, at home or abroad"],
     ["Borrowers with fixed loans, such as home owners", "Savers who hold cash or accounts that pay little"],
     ["Taxpayers, who might otherwise pay more tax to service the debt", "People on fixed incomes"]]),
  P("So does it serve the public? It depends which part of the public. A taxpayer and a saver are often the same person, gaining with one hand and losing with the other. The earlier chapters gave the reasons for a small target: room to cut interest rates, and a cushion against falling prices. Those reasons are real. But the gain to the state as a borrower is real too, and it is the part that is seldom said out loud."),
  I("Part 2 holds in part. Mild inflation is on purpose and it is published. It has public reasons. It also moves a great deal of wealth from savers and lenders to the state, and that transfer is rarely named.", "What test 2 does to the claim"),

  H("Test 3. Is the governance controlled, and by whom?"),
  P("The reader says the system runs under stable, controlled governance. The laws do set controls. Here are three central banks side by side."),
  T(["", "America", "Britain", "Malaysia"],
    [["Who appoints the top people", "The President, with the consent of the Senate", "The government", "The governor is appointed by the King, the Yang di-Pertuan Agong"],
     ["For how long", "14 years for a governor", "", "Five years, and can be renewed"],
     ["Can they be removed?", "Only \"for cause\"", "", "Only on grounds listed in the law, such as misconduct"],
     ["What must be published", "Notes of each meeting after about three weeks. Full records after about five years", "A public letter each time inflation misses the target by more than one point. Twelve were written from 2021 to 2024", "A statement after each policy meeting. Accounts checked by the Auditor General and laid before Parliament"],
     ["Can it lend to the government?", "", "", "Yes, but only for a short time, and up to 12.5% of the government's expected yearly income"],
     ["Who has the last word?", "", "", "If the Bank and the Finance Minister disagree, the Cabinet may decide"]]),
  P("So there is control. But notice who holds it. In every column the central bank answers to the government that appoints it, and to the public only through what it must publish. No voter chooses a governor."),
  P("Is that distance from politics good or bad? The record points both ways."),
  P("Here is what can happen when a government takes the printing press for itself. In January 2009 Zimbabwe issued a banknote for 100 trillion dollars. It was worth about 33 American dollars. People queued for hours outside banks to draw out barely enough to buy a loaf of bread. Venezuela's own central bank reported inflation of 130,060% for 2018. Turkey is reported to have removed three central bank governors between 2019 and 2021, and its inflation is reported to have reached about 85% in 2022."),
  P("And here is what can happen when the issuer is left alone. America's central bank was independent in the years before the crash of 2008. An official inquiry is reported to have found that it failed in its legal duty to set standards for home loans. Being free of politicians did not make it right. In 2024 only 39% of Americans told a pollster they had confidence in the head of their central bank."),
  I("Part 3 holds in part. The governance is controlled, by governments and by rules on what must be published. It is not controlled by voters. Keeping the issuer apart from politicians has protected money from the worst abuse, and has also let serious mistakes go unchecked.", "What test 3 does to the claim"),

  H("Test 4. Did the public choose these rules?"),
  P("Laws about money were passed by elected lawmakers. America's central bank law passed the Senate by 43 votes to 25 on 23 December 1913, and was signed the same day. But lawmakers are not the same as the public, and some of the biggest changes had no vote at all. Chapter 03 told how the dollar's link to gold was ended by a president over one weekend."),
  P("How often has the public been asked directly? Very rarely. Here are the cases this chapter could find."),
  T(["Where and when", "The question", "The answer"],
    [["Denmark, 2000", "Give up the krone for the euro?", "No, by about 53%, as reported"],
     ["Sweden, 2003", "Give up the krona for the euro?", "No, by about 56%, as reported"],
     ["Switzerland, 2018", "Stop banks from creating money when they lend?", "No, by about 76%, as reported. About one voter in three took part"]]),
  P("Look at what the three answers have in common. Each time, voters kept what they already had. The Danes and Swedes kept their own money. The Swiss kept their banks. That is not quite the same as choosing the system. It may only mean that people are careful with something as serious as money, and prefer the rules they know."),
  I("Part 4 holds only weakly. The rules were passed by lawmakers and some were set with no vote. When the public was asked directly, which was rare, it kept whatever it already had.", "What test 4 does to the claim"),

  H("Test 5. What happened where the rules were different?"),
  P("Some countries tied their own hands. They wrote rules that stopped the issuer from creating money freely. If the reader is right that a free issuer is what lets a country grow, these places are the test. Each case had other causes too, and they are named."),
  T(["The rule", "What it bought", "What it cost"],
    [["Hong Kong, since 1983. The currency is fixed at 7.8 to the US dollar, and every note is backed", "The fixed rate has held for over forty years, through every storm", "On 23 October 1997, to defend the rate, the interest rate for an overnight loan touched about 280%. In 1998 output fell 5% and property and shares lost over half their value. The whole region was in crisis that year"],
     ["Argentina, 1991 to 2001. One peso fixed at one US dollar by law", "Inflation fell from 27% a month in February 1991 to under 10% a year by mid 1993. The economy grew nearly 6% a year to 1998", "From 1998 to 2002 output fell nearly 20% and more than one worker in five had no job. The government had also kept borrowing: its debt rose from 38% to 62% of output in four years"],
     ["Ecuador, since 2000. It gave up its own money and uses the US dollar", "Inflation had reached 90% a year and output had fallen 8% in 1999. Inflation is reported to have stayed in single figures since 2003", "It has no central bank that can rescue its banks or lend to its government"],
     ["Scotland, 1716 to 1845. No central bank. Banks issued their own notes and competed", "From 1809 to 1830 Scottish banks failed far less often than English ones, by one count", "Another count, starting in 1772, finds no real difference. And the Bank of England is reported to have lent to Scottish banks in trouble more than once"]]),
  P("Argentina's end is worth seeing up close. In December 2001 the government partly froze bank deposits. People could not get at their own savings. In the last days of that month, in the middle-class streets of Buenos Aires, families came out of their flats and banged pots and pans, night after night. The fixed rule had kept their money sound for ten years. Now it kept the state from helping them."),
  P("The newest experiment is in El Salvador. On 7 September 2021 it made Bitcoin legal money beside the US dollar, and gave 30 dollars to everyone who downloaded the state's phone wallet. About half of all households did. More than 60% of the early users made no payment at all once the 30 dollars was spent. Only one firm in five accepted Bitcoin, and it made up about 5% of their sales. On the first day a reporter found a market trading in dollars as usual."),
  Q("We don't want that bitcoin.", "Rosa Martha Perez, 68, in San Salvador on the day the law took effect (AFP, 7 September 2021)"),
  P("In 2025, as a condition of a loan of 1.4 billion dollars from the International Monetary Fund, El Salvador changed its law so that nobody had to accept Bitcoin."),
  P("Put these cases beside Malaya's currency board and a pattern appears. It is a pattern, not a law, because each case has its own history."),
  T(["", "Hands tied (a board, a fixed rate, someone else's money)", "Hands free (a central bank that can create money)"],
    [["Prices", "Usually steadier", "Depends on who controls the issuer"],
     ["In a crisis", "No rescue. The pain falls on jobs, wages and savers", "The issuer can lend, rescue and cut rates"],
     ["Steering credit toward growth", "Not possible", "Possible. It has worked and it has failed"],
     ["The main danger", "A crisis the rule cannot bend to meet", "A government that prints its way out of its debts"]]),
  I("Test 5 gives the reader's claim real support and a real warning. A country with tied hands cannot steer credit or rescue its banks, which is why Malaya untied its own. But free hands are only as good as the people and rules that guide them. Zimbabwe had free hands too.", "What test 5 does to the claim"),
  CHK("A friend says central banks should be abolished and money should follow a fixed rule. Give one point for and one against, each with a case.",
      "For: a fixed rule can end wild inflation. Argentina's fell from 27% a month to under 10% a year in about two years. Against: a fixed rule cannot bend in a crisis. Argentina's output then fell nearly 20% and deposits were frozen, and Hong Kong paid for its fixed rate with a 5% fall in output in 1998."),

  H("The verdict on the rules"),
  T(["The claim", "Finding", "The fact that decides it"],
    [["1. The issuer exists so that output and progress can grow", "Holds in part. True of later central banks, not of the first", "The Bank of England was founded in 1694 to fund a war. Malaysia's law of 2009 asks for stability that helps the economy grow"],
     ["2. It inflates a little on purpose, for the public good", "Holds in part. On purpose, yes. The public pays as well as gains", "From 1945 to 1980 inflation and low rates cut American and British debt by 3% to 4% of output a year"],
     ["3. Stable, controlled governance", "Holds in part. Controlled by governments and by publication, not by voters", "A governor is appointed for 14 years in America and five in Malaysia. Zimbabwe printed a note for 100 trillion dollars"],
     ["4. The public chose these rules", "Holds only weakly", "Three direct votes found here, and each kept what was already in place"]]),
  P("Here is the claim again, rebuilt so the record can carry it."),
  {"type": "steps", "items": [
    "The first central banks were built to fund governments and to stop panics. Later ones, in countries trying to catch up, were built to steer credit toward growth as well. Malaya gave up a currency board to get one.",
    "A free issuer can do three things a tied one cannot: rescue banks, soften a slump, and direct credit. Each of these can be done well or badly.",
    "The price is a toll, mild inflation, whose largest gain goes to the state as a borrower. It is published, but few people are shown who pays.",
    "The issuer answers to the government that appoints it and to rules on what it must publish. Voters are almost never asked, and when asked they have kept what they had."]},
  P("So was the reader right that the issuer exists for progress? For Malaysia, more than for Britain or America. And was the reader right that it is under control? Under control, yes. Under whose control is the better question."),
  I("This view would change if any of three things were shown. First, that countries with free central banks grow faster over the long run than countries with tied hands, with other causes set aside. Second, that directed credit has succeeded more often than it has failed. Third, that the public, asked plainly, would choose a different system. The first two are not settled in this chapter, and the third has been tested only a few times.", "What would change this verdict"),

  {"type": "deeper", "label": "Three ideas about why the issuer exists", "blocks": [
    P("Economists disagree about why a central bank should exist at all. One old view says it is there to lend freely in a panic, so that sound banks do not fall with weak ones. A second says it must be kept apart from politicians, because a government facing an election will always be tempted to print. A third, held by free-banking economists, says it should not exist: banks issuing their own notes in competition would be kept honest by each other. Canada is often named in that argument. It had no central bank until 1935 and none of its banks failed in the Depression, though its economy fell about as far as America's."),
    P("One plan has never been tried on a whole country. It would stop banks from creating money and leave that to the state alone. An economic model published at the International Monetary Fund in 2012 claimed large gains from it. Swiss voters rejected a version of it in 2018, and the head of the Swiss central bank is reported to have called it an unnecessary and dangerous experiment.")]},
  {"type": "deeper", "label": "Where each number comes from", "blocks": [
    T(["Number", "Source"],
      [["Malaya's currency board, money per head, and the quoted words", "Bank of England Quarterly Bulletin, 1962. The board also had limited powers to hold local government securities and, from 1961, to finance crops, so its backing was not a pure 100%"],
       ["Bank Negara's start and sole issue in 1967", "Bank of England Quarterly Bulletin and Bank Negara's own history. The 1959 start date is from a secondary source"],
       ["Founding purposes and legal aims", "Bank of England, the Federal Reserve Act and its 1977 amendment, the Bank of England Act 1998, the EU treaty, and Malaysia's Central Bank of Malaysia Act 2009, sections 5 and 22. The Malaysian text was read on a mirror site, not the official gazette"],
       ["New central banks after 1945, and directed credit", "Arthur Bloomfield, 1957. Gerald Epstein, Central Banks as Agents of Economic Development"],
       ["Independence and inflation", "Alesina and Summers, 1993. The finding on growth is from summaries of the paper"],
       ["The 2% goal", "Federal Reserve statement of January 2012"],
       ["Payments to governments", "Federal Reserve annual statements. Bank Negara Malaysia financial statements for 2024"],
       ["Debt made lighter by inflation", "Reinhart and Sbrancia, The Liquidation of Government Debt. For 2021: Federal Reserve Bank of St Louis, March 2022"],
       ["Appointment, removal, lending to government and the Cabinet's last word in Malaysia", "Central Bank of Malaysia Act 2009"],
       ["America's rules on appointment and publication", "Federal Reserve Act and the Federal Reserve's own pages"],
       ["Britain's public letters", "Bank of England"],
       ["Zimbabwe's note", "Radio New Zealand, 17 January 2009. Venezuela: its central bank's own release. Turkey: press reports, not checked against official records"],
       ["The 2008 inquiry", "US Financial Crisis Inquiry Commission, 2011, as summarised"],
       ["Confidence in the head of the central bank", "Gallup, 2024"],
       ["Votes", "US Senate record for 1913. The Danish, Swedish and Swiss results are from secondary reports"],
       ["Hong Kong", "Hong Kong Monetary Authority"],
       ["Argentina", "International Monetary Fund, Independent Evaluation Office. The pots and pans: Voice of America, 29 December 2001"],
       ["Ecuador", "International Monetary Fund papers. The single-figure inflation since 2003 is from a secondary source"],
       ["Scotland and Canada", "Lawrence White, 1984, and his critic Larry Sechrest. The Bank of England's loans to Scottish banks are from a secondary source"],
       ["El Salvador", "A study of the wallet's users, the International Monetary Fund, and AFP, 7 September 2021"]])]},
  {"type": "callout", "label": "Not advice", "text": "This chapter weighs an argument about how money is governed. It does not tell you what to hold, buy or sell. Laws and figures have dates and will change."}]}

i = next(k for k, c in enumerate(d["chapters"]) if c["id"] == "rb-promise")
d["chapters"].insert(i, ch)
next(c for c in d["chapters"] if c["id"] == "rb-promise")["num"] = "06"
L3 = next(l for l in d["levels"] if l["n"] == 3)
L3["after"] = L3.get("after", []) + ["Say what a central bank's law asks it to do, who gains most from mild inflation, and what a country gives up when it ties its issuer's hands"]
json.dump(d, open(p, "w", encoding="utf-8"), ensure_ascii=False, indent=1)
s = json.dumps(ch, ensure_ascii=False)
print("rb-law blocks", len(ch["blocks"]), "em", s.count("—"), "en", s.count("–"), "semi", s.count(";"))
