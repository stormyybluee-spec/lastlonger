"""Round 13, epilogue rb-promise, third version: makes the story stand alone for a reader who has not read the two
earlier chapters (COLDREAD_R13.md, first pass). Sets up the charge, says what hard money and the toll are, names the
reader, thins the numbers in the last third, and moves the not-advice note to the top. No new facts.
Run after r13_epilogue_v2.py. Verify after apply. Usage: python3 -I round13/r13_epilogue_v3.py site/rulebook.json"""
import json, sys
p = sys.argv[1]; d = json.load(open(p, encoding="utf-8"))
k = next(i for i, c in enumerate(d["chapters"]) if c["id"] == "rb-promise")
ch = d["chapters"][k]
P = lambda t: {"type": "p", "text": t}
H = lambda t: {"type": "h", "text": t}
if not any(b.get("text", "").startswith("Some people say that printing money") for b in ch["blocks"]):
    i = next(i for i, b in enumerate(ch["blocks"]) if b.get("type") == "h" and b["text"] == "The field")
    ch["blocks"][i:i] = [
      H("Two angry voices"),
      P("Some people say that printing money is a scam. Governments and banks make new money from nothing, they say, and everyone who saved the old money is quietly robbed. They want hard money: money tied to something scarce, like gold, that nobody can make more of at will."),
      P("Other people say the opposite. One of them, a reader of this site, wrote in to argue that money made from promises is the reason most of us are no longer poor farmers. Without it, the reader says, nobody could build anything before they had saved for it."),
      P("Two chapters tested both voices with numbers. This chapter walks through what they found, by way of the people who lived it.")]
    # the not-advice note moves up beside the reading note
    ch["blocks"] = [b for b in ch["blocks"] if not (b.get("type") == "callout" and b.get("label") == "Not advice")]
    j0 = next(i for i, b in enumerate(ch["blocks"]) if b.get("type") == "callout")
    ch["blocks"].insert(j0 + 1, {"type": "callout", "label": "Not advice", "text": "This chapter tells a story about how money works. It does not tell you to borrow, save or buy anything."})
R = [
 ("but it charges a quiet toll, and its gate opens", "but it charges a quiet toll, the slow loss of what each coin can buy, and its gate opens"),
 ("Money is hard in her world.", "Money is hard in her world. It is tied to gold, and nobody can simply make more."),
 ("That makes debts about a third heavier.", "That makes debts about a third heavier, because a borrower still owes the same dollars and each dollar is harder to earn."),
 ("This is the old Monopoly board from the first chapter. The streets were bought long before she sat down.", "Think of a game of Monopoly that began long before she sat down. The streets were already bought."),
 ("Printing is not a scam in the plain sense. It is a toll,", "Is printing money a scam? Not in the plain sense, because nothing about it is hidden. It is a toll,"),
 ("While she saves, the coins gain value. Most of them are held by people who came before her.", "While she saves, money gains value. But most of the money is already held by people who came before her."),
 ("A reader of this site calls credit a token we borrow from our own future.", "The reader who wrote in calls credit a token we borrow from our own future."),
 ("The same reader has a sharper way to say what changed.", "The reader who wrote in has a sharper way to say what changed."),
 ("Ask the farmer whose debt grew heavier every year he worked.", "Ask the farmer of the 1930s, whose debt grew heavier every year he worked."),
 ("In 2019 the median house in Malaysia cost 4.1 times what the median household earns in a year.", "In 2019 the middle-priced house in Malaysia cost 4.1 times what the middle household earns in a year."),
 ("He is wrong, and it will hurt.", "He is wrong, and it will hurt. He will grow old in a country where everything costs more."),
 ("And the inflation stops, and trade begins to move again.", "And the rising prices stop, and trade begins to move again."),
 ("It begins as a debt.", "So the bank begins with a loan to the king."),
 ("Italy holds 24 million dollars' worth. If gold had been", "Some ruined countries hold almost none. If gold had been"),
 ("Who wrote the rules of this system? Insiders had a large hand. The plan behind America's central bank law was drawn up in private in 1910, on a trip its authors called a duck hunt. Congress passed a changed version in 1913. Voters were seldom asked directly. When Swiss voters were asked, in 2018, whether to stop banks creating money, 75.7% said no.",
  "Who wrote the rules of this system? Insiders had a large hand, and lawmakers passed them. Voters were seldom asked directly. Here is one time they were. Banks make new money when they lend. In 2018 Swiss voters were asked whether to stop them, and 75.7% said no."),
 ("What it brought was room. In America all credit to households, firms and government went from about 133% of a year's output in 1971 to about 251% in 2024. Room to build, and room to overreach.",
  "What it brought was room. In 1971 all the debts of American households, firms and government came to about one and a third years of what the country makes. By 2024 they came to about two and a half years. Room to build, and room to overreach."),
 ("If the answer is no, there is the licensed moneylender, where the law caps interest at 12% a year with a pledge and 18% without. She is still luckier than many.", "If the answer is no, there is the licensed moneylender, who may charge more. She is still luckier than many."),
 ("By one American count, about 58% of the early baby boomers owned a home at 30. Of the early millennials, about 41% did.", "By one American count, about 58% of one older generation owned a home by the age of 30. Of a younger one, about 41% did."),
 ("Years later the typical owner is worth $396,200, against $10,400 for the typical renter. Owners and renters differ in many ways, so the house is not the whole reason. But about half of that wealth is the home.",
  "Years later, everything the typical owner has, after debts, is worth $396,200. For the typical renter it is $10,400. Owners and renters differ in many ways, so the house is not the whole reason. But about half of that wealth is the home."),
 ("They owe about 80% of the value of what they own. Then prices fall. By 2010 a net worth of about $30,000 has become almost nothing.",
  "For every 100 dollars of things they own, they owe about 80. Then house prices fall. In 2007 they were worth about $30,000 after debts. By 2010 it is almost nothing."),
 ("Remember the imagined collector from the first chapter, who paid 100,000 ringgit for a sword.", "Picture a collector who pays 100,000 ringgit for a hand-made sword. People sometimes say that money spent like this is gone."),
 ("The money was not destroyed.", "It is not gone."),
 ("The reader's largest hope goes further.", "The largest hope of the reader who wrote in goes further."),
 ("The reader who began all this has replied with four new points.", "The reader who wrote in has replied with four new points."),
 ("after it on governance alone.", "after it on the judgment of governments and central banks alone.")]
j = lambda x: json.dumps(x, ensure_ascii=False)[1:-1]
s = json.dumps(ch, ensure_ascii=False); miss = []
for a, b in R:
    if j(b) in s: continue
    if s.count(j(a)) == 1: s = s.replace(j(a), j(b))
    else: miss.append(("old count %d" % s.count(j(a)), a[:60]))
d["chapters"][k] = json.loads(s)
final = json.dumps(d["chapters"][k], ensure_ascii=False)
miss += [("new text missing", b[:60]) for a, b in R if j(b) not in final]
json.dump(d, open(p, "w", encoding="utf-8"), ensure_ascii=False, indent=1)
print("blocks", len(d["chapters"][k]["blocks"]), "fixes", len(R), "problems", len(miss))
for m in miss: print("  ", m)
print("em", final.count("—"), "en", final.count("–"), "semi", final.count(";"))
sys.exit(1 if miss else 0)
