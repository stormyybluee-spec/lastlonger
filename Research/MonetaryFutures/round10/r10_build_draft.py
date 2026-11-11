"""Round 10 draft: Landscape chapter ls-14 (Intelligence stack), the first Unseen mode chapter.
Usage: python3 -I round10/r10_build_draft.py site/landscape.json  (in place, refuses to run twice)
Sources: round10/PATHFINDER_A.md, round10/PATHFINDER_B.md, round10/lanes/R10A-data-footprints.md, round10/EXAM_T9.md."""
import json, sys
p = sys.argv[1]
d = json.load(open(p, encoding="utf-8"))
if any(c["id"] == "ls-14" for c in d["chapters"]):
    sys.exit("already applied")
P = lambda t: {"type": "p", "text": t}
H = lambda t: {"type": "h", "text": t}
def I(t, label=None):
    b = {"type": "insider", "text": t}
    if label: b["label"] = label
    return b
T = lambda c, r: {"type": "table", "cols": c, "rows": r}

ch = {"id": "ls-14", "num": "14",
 "title": "Behind the curtain: oil dollars, Treasury buyers and the alignment story, graded",
 "kicker": "A three-hour interview claimed that oil dollars, Treasury buyers and the great powers move by hidden agreement. Much of that cannot be read in any document. This chapter is the desk's first try at reasoning past where the documents stop, with every guess graded and dated.",
 "blocks": [
  {"type": "tldr", "items": [
    "Gulf states still put oil money into US Treasuries. Saudi Arabia, the UAE and Kuwait held $330 billion in August 2026, up from $219 billion in January 2023. The claim that they buy US shares instead does not hold: they bought shares on top, as Norway's oil fund did.",
    "China is the largest single buyer of Gulf crude, but it takes about a third, not most of it. No source shows 30% of Gulf oil paid in yuan. That number most likely comes from China's own trade, 28% of which was settled in yuan in early 2025.",
    "A secret 1974 arrangement did exist: a private Treasury buying window for Saudi Arabia and hidden holdings, documented by a 1979 US government audit. The secrecy ended in 2016. What is left is a public trade of US security for Saudi investment pledges.",
    "Foreign governments no longer fund the growth of the US Treasury market. Private money does: US money market funds, hedge funds and buyers booked through custody centres such as London, Belgium and the Caymans.",
    "The claim that the US, the Gulf and China are secretly aligned found no channel, no enforcement and real costs on every side. The evidence supports shared interests (level 0), not a hidden deal.",
    "Every inferred point below carries a grade, a likelihood and a date when the record will confirm or kill it. Nothing here is advice."]},
  {"type": "callout", "label": "How to read the grades", "text": "This chapter is in the Intelligence part of the site: findings that age, not rules. Each guess is graded. Documented means a source says it. Footprint means its side effects are measured in public records. Structural means it follows from incentives and accounting. Pattern means it rests on a similar case later proven. Conjecture is a coherent story not yet checked. A chain of guesses is only as likely as its links multiplied together, so five links at 70% each make a 17% story. Anything under 10% is shown as an open question, not a finding."},

  H("1. Where do Gulf oil dollars go now?"),
  P("The claim, in short: the Gulf agreed in 1974 to sell oil in dollars and buy US government debt. Now the oil goes mostly to China, about 30% is paid in yuan, and Gulf funds buy US shares instead of Treasuries. Each part leaves marks in public records, so each part can be checked."),
  T(["The claim", "What the records show", "Grade", "Likelihood"],
    [["China takes most Gulf oil", "China is the largest buyer, near 5.4 million barrels a day from the Middle East, about a third of what passes Hormuz. Asia as a whole takes 84%", "Footprint (customs and tanker data via press, US energy agency)", "Unlikely as stated"],
     ["About 30% of Gulf oil is paid in yuan", "No source found. The yuan is about 3% of world payments on SWIFT. China settles 28% of its own goods trade in yuan, the likely origin of the number", "Structural", "Remote for all Gulf oil, unlikely for Gulf sales to China"],
     ["Gulf funds buy US shares instead of Treasuries", "Gulf Treasury holdings rose 51%, from $219 billion to $330 billion (January 2023 to August 2026). Saudi US share holdings grew fast as well. Norway's oil fund, which has no Gulf deal, shows the same shape", "Documented (US Treasury data)", "Unlikely as a swap"],
     ["A 1974 deal tied Gulf oil to Treasuries", "Documented, but narrower: a private buying window and hidden holdings, not a treaty on oil prices. It ended in stages by 2016. Nothing expired in June 2024", "Documented (US audit, 1979, and the 2016 release)", "True in its narrow form"]]),
  I("The 1974 arrangement is the desk's best proof that hidden deals do happen. The US Treasury let Saudi Arabia buy its bonds outside the public auctions and promised to hide Saudi holdings inside a group total. A US government audit described it in 1979. The holdings stayed hidden for about 41 years, until a records request forced their release in May 2016. It took a handful of officials, one channel and a clear exchange of money for security. That is the shape a real hidden deal has, and the shape to look for next time.", "A hidden deal that was real"),
  P("What is left today is public. In November 2025 the US and Saudi Arabia signed a defence agreement alongside Saudi pledges of close to $1 trillion of investment in the US, aimed at companies, arms and technology, with no Treasury purchases named. A public exchange of security for money is coordination in the plain sense, but it is not a secret. The war with Iran and the closure of Hormuz from March 2026 also cut Gulf flows to China this year, so 2026 numbers carry a shock on top of any trend."),

  H("2. Who really funds the US Treasury market?"),
  P("The claim, in short: the biggest foreign holders are not countries but fund managers using offshore centres, funded by cheap borrowing in Japan, and there are $15 trillion of offshore dollars, more than double the money supply. The records support the first part, correct the second and refute the third."),
  T(["What was checked", "Finding", "Grade"],
    [["Who holds the most", "Accounts booked in four custody centres (the UK, Belgium, the Caymans and Luxembourg) held $2.41 trillion in August 2026, more than Japan and China together ($1.66 trillion). In January 2023 it was the other way round", "Documented (US Treasury)"],
     ["Who is growing", "Foreign governments held 66.5% of foreign-owned Treasuries in 2015 and 40.2% in August 2026. The growth came from private buyers: US money market funds, hedge funds and private foreigners", "Documented (US Treasury and Fed data)"],
     ["Hidden hedge fund holdings", "Fed staff estimate that the Cayman line undercounts hedge fund holdings by about $1.4 trillion (end of 2024). Much of the cash behind those bonds is lent by US money funds, so offshore holders are partly funded onshore", "Documented (Fed staff research)"],
     ["Japan's fall in 2026", "Japan's holdings fell about $171 billion from February to August 2026, close to the size of its record yen-buying intervention. That fits defending the yen better than an unwinding carry trade", "Structural"],
     ["$15 trillion of offshore dollars", "A real BIS figure, but it is dollar debt owed by borrowers outside the US, about 0.63 times the US money supply. It is not a hidden stock of money twice as large", "Documented (BIS)"]]),
  I("No state was found agreeing to fund the US deficit. Each holder follows its own return: money funds lend for yield, hedge funds trade the gap between bond prices and futures, private foreigners buy for yield. That is level 0 on the coordination scale: shared incentives, no agreement. It also means the market leans more on leveraged private money than it did ten years ago, which matters on days when that money needs cash at once.", "What it means"),

  H("3. Does the three kinds of country lens predict anything?"),
  P("The interview sorts countries into three kinds: capital above the state (the US, the UK, Europe), a state that kept its resources and bargains through a national fund (the Gulf, Norway, Singapore), and the state above capital (China). The desk wrote down what the lens predicts before pulling any data, then scored it against a plain lens: does the country issue a reserve currency, and is it a net lender or borrower to the world?"),
  T(["Prediction", "Three kinds lens", "Plain lens"],
    [["Who holds the government's debt", "4 of 5 right (missed Japan)", "4 of 5 right"],
     ["Central bank buys bonds in a crisis", "Right for the US, UK and Japan", "Same three, because all issue reserve currencies"],
     ["Capital controls", "True by how the boxes were drawn, so not a test", "Emerging economies closed, rich ones open: right"],
     ["Crisis behaviour in 2015, 2020 and 2022", "Matched", "Matched the same way"]]),
  P("The lens describes the countries it was built from, but in this small test it predicted nothing the plain lens did not. Likelihood that it adds information: about 25%. Confidence is low, because only 6 of 19 countries had full data, so the test continues on the rest."),

  H("4. Are the great powers secretly aligned?"),
  P("The interview's headline is that the US, the Gulf states and China are aligned behind the scenes, and that the world-war story is optics. A second claim says finance pushed trade toward China on purpose with the 2025 tariffs. The desk split each into parts with named actors and checked what each part would have to leave behind."),
  T(["Part", "What the records show", "Level shown"],
    [["China brokered a Saudi and Iran agreement", "True, 10 March 2023", "Documented"],
     ["The Gulf made investment pledges to the US", "True as pledges, May and November 2025", "Documented"],
     ["The three share an interest in Gulf oil flowing", "Yes, with open splits on Iran and on payment systems", "Level 0, shared interest. Safe passage through Hormuz works as a public cue (level 1)"],
     ["They agreed in secret and the conflict is staged", "No channel found. The US and Israel struck Iran from 28 February 2026, Hormuz closed from 2 March, and China called the US blockade irresponsible and dangerous. A staged war would need thousands of people across several governments to stay silent for over a year", "Not shown. About 1%"],
     ["Finance pushed trade toward China on purpose", "China's exports did move to third countries. But banks and investors sold bonds before the tariff pause, warned of recession and joined the court challenge. No mark of finance pushing the tariffs", "Dead end. About 1%"]]),
  I("One new lead came out of the digging. Saudi Arabia's central bank quietly left mBridge, a payment system it shared with China and others, on 13 May 2025, the same day as the US and Saudi investment package. The exit was reported only in September 2026, 16 months later. It points to Saudi Arabia choosing US payment rails, which cuts against a three-way alignment. Whether the exit was a term of the US package is a guess (conjecture, about 20%). The test: any statement by the Saudi central bank of its reasons.", "A new lead, graded"),
  {"type": "myth", "myth": "Whatever the official story says, the opposite is what is really happening.", "reality": "That rule can never be wrong, so it can never be tested: it would turn China's public condemnation of the blockade into proof of a secret alliance. The desk logs rules like this and does not use them. Real hidden deals, like the 1974 Treasury window, left marks and were later documented."},

  H("What this means for the big question: will energy replace money?"),
  I("Energy trade has not pulled Gulf money off the dollar. Oil revenue still lands in dollars, still flows into Treasuries, and Saudi Arabia stepped back from a shared payment system with China in 2025. China buys more Gulf energy, but it pays mostly in dollars outside its own trade. For now this fits the desk's leading scenario, the dollar extending itself onto new rails, rather than an energy-backed rival. This is a reading of the evidence, not a forecast, and the dated tests below would change it.", "A reading for the Intelligence stack"),

  H("Dates when the record will speak"),
  T(["Test", "What would confirm the findings", "What would kill them", "When"],
    [["US Treasury data for September 2026", "Gulf holdings stay above $300 billion, and the custody centres stay above Japan and China combined", "Gulf holdings below $280 billion while a fund's US share holdings jump", "About 18 November 2026"],
     ["China customs data for October 2026", "Gulf states stay under half of China's crude imports", "China takes over half of Gulf crude in any month", "About 20 November 2026"],
     ["Bank of Japan meeting", "A rate rise moves the yen less than 5% in a month", "A yen jump over 8% and falling US asset prices, the August 2024 pattern", "17 to 18 December 2026"],
     ["SWIFT payment tracker", "The yuan stays under 5% of world payments", "Over 6% for three months, with Gulf payments near 30%", "Monthly, to June 2027"],
     ["Saudi Aramco annual report for 2026", "No yuan share disclosed, or under 10%", "A disclosed yuan share near 30%", "March 2027"],
     ["Any statement from the Saudi central bank on leaving mBridge", "A technical reason", "A reason that names US terms", "Open"]]),
  {"type": "check", "q": "Gulf Treasury holdings rose by $111 billion while Gulf US share holdings also rose. Does that prove the Gulf is not shifting away from the dollar?", "a": "No. It shows they are not swapping Treasuries for shares. Holdings booked through London, Belgium or other custodians would not show under the Gulf names, so the true size could be larger. The September data and the annual survey due in early 2027 are the next checks."},
  {"type": "deeper", "label": "How the desk dug: the method, the exam and the dead ends", "blocks": [
    P("This was the first run of the desk's Unseen mode. Each question became a chain of links that starts from a documented fact. Before searching, the desk wrote down which public records each guessed link would have to leave marks in. Each link got a grade and a probability under a cap for that grade, and no chain could hold more than two guesses in a row or four in all. Fourteen chains were dug, and every one passed the desk's rule checker. Four rival readings were scored for each question: the official story, a deliberate deal, shared incentives, and accident or measurement."),
    P("Before the digging, a separate agent sat a blind exam on the 1974 question with no access to the desk's files. It found the 1979 audit and the 2016 release on its own and scored 8 of 9 items on a hidden answer key. The miss was a number for the share of Gulf oil sold to Asia."),
    P("Dead ends, kept so the next agent does not dig them again: a secret three-way arrangement between the US, the Gulf and China (no channel found), finance pushing the tariffs on purpose (the evidence points the other way), full 2025 customs tables for the smaller Gulf states (not reached), and a Fed update of the Cayman estimate for 2026 (not published). Sources not used by rule: the US filing database that requires an email address in each request.")]},
  {"type": "callout", "label": "Not advice", "text": "This chapter grades evidence about hidden arrangements. It does not tell anyone what to buy or sell, and every inferred point is labelled as inferred."}]}

d["chapters"].append(ch)
json.dump(d, open(p, "w", encoding="utf-8"), ensure_ascii=False, indent=1)
s = json.dumps(ch, ensure_ascii=False)
print("ls-14 blocks", len(ch["blocks"]), "em", s.count("—"), "en", s.count("–"), "semi", s.count(";"))
