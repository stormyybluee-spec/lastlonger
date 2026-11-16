"""Round 13 draft: the Level 3 epilogue, rb-promise, "The promise: the story of money in ten questions".
Usage: python3 -I round13/r13_build_epilogue.py site/rulebook.json  (in place, refuses to run twice)
A narrated chapter. Every fact is taken from the published text of rb-print and rb-credit. No new research.
The people in the scenes are imagined and are marked by the word "picture"."""
import json, sys
p = sys.argv[1]
d = json.load(open(p, encoding="utf-8"))
if any(c["id"] == "rb-promise" for c in d["chapters"]):
    sys.exit("already applied")
P = lambda t: {"type": "p", "text": t}
H = lambda t: {"type": "h", "text": t}
T = lambda c, r: {"type": "table", "cols": c, "rows": r}

ch = {"id": "rb-promise", "num": "03", "level": 3,
 "title": "Epilogue. The promise: the story of money in ten questions",
 "kicker": "Two chapters put money on trial with tables and tests. This one tells what they found as a story, through the people who lived it. The people are imagined. The numbers are not.",
 "blocks": [
  {"type": "tldr", "items": [
    "Money is a promise people make to each other about a future nobody has seen. Gold was one way to make the promise hard to break. Credit was always the other way, and it is older.",
    "Hard money keeps the promise scarce and safe, and it makes the borrower and the young wait. Money that stretches lets more people start, and it charges a quiet toll and guards a gate.",
    "No system ended the argument. Every generation decides again who pays, who decides, and who is let in."]},
  {"type": "bridge", "label": "This story is built on two chapters", "items": [
    {"id": "rb-print", "text": "Questions 1 to 3: the rebuild after the war, the old board and the new players, and the sword. The finding was a toll, not a scam."},
    {"id": "rb-credit", "text": "Questions 4 to 10: the peasants, 1971, borrowing from the future, the law, the printers, the gate and the lever."}]},
  {"type": "callout", "label": "How to read this chapter", "text": "This is a story, about 20 minutes long. When you see the word picture, the person is imagined. Every number comes from the two chapters before, where its source is given. A table at the end ties each scene to its question."},

  H("The field"),
  P("Picture a man in an English field in the year 1522. About two of every three working men in his country do what he does. He is not lazy and he is not a fool. He works from first light to dark, as his father did, and his father before him. In all those lives almost nothing changed but the weather. What his country makes per person is growing by about a fifth of one percent a year. That is too slow for any one life to feel."),
  P("He has few coins. But coins are not the thing he is missing most. A bad harvest means hunger no matter how many coins the king holds. What he lacks is a way to make more with the same two hands."),
  P("And notice what he does when he needs seed before the harvest. He does not go to a bank. He goes to a neighbour, and the neighbour remembers. In the England of his time most everyday buying and selling ran this way, on trust between households. One of the oldest written records of a loan is about 4,400 years old. So the oldest money is not gold. It is a sentence: I will pay you after the harvest."),
  P("There is hope in that sentence, and there is fear in it too. If the harvest fails, the debt does not."),

  H("The ships"),
  P("Now picture a boy on the docks of Spain in that same century. The ships are coming in from the Americas, low in the water with silver. By one historian's count about 210 million silver pesos landed in those hundred years. The boy must think his country can never be poor again."),
  P("He is wrong, and it will hurt. Across Western Europe prices rise three to four times in that century, by one estimate. The king of Spain, with all that silver, fails to pay his debts four times. Historians still argue about why. But the silver could buy things. It could not make them."),
  P("Further north and a century earlier there had been the opposite fear. Europe ran short of silver, and the mints in Ghent and Bruges stopped making coins. Picture a weaver there with good cloth to sell and neighbours who want it, and nothing to pay with. Too much money is one sickness. Too little is another. People have been afraid of both for a very long time."),

  H("The king's promise"),
  P("London, 1694. A group of merchants lends the Crown 1.2 million pounds at about 8% interest, and the Bank of England is born. It is founded on a debt. By 1815, after the long wars with Napoleon, Britain owes more than two years of everything it makes. A careful person would have called that country ruined."),
  P("It was not ruined. It led the industrial age, and by the early 1900s the debt had shrunk to about 30% of a year's income. The promise was kept, because what grew behind the promise grew faster than the debt."),
  P("A reader of this site calls credit a token we borrow from our own future. It is a fine picture, and it needs one gentle correction. Nobody can ship cement back from the year 2050. A bridge built this year is built with this year's hands. What travels through time is only the promise: who will be paid, later, out of what is made later."),
  P("If the bridge makes the children richer, they pay for it easily and hardly notice. If the money was simply eaten, the children pay for a meal they never tasted. Latin America's debt grew from 29 billion dollars in 1970 to 327 billion in 1982. Then interest rates rose, and income per person fell by roughly a tenth in the 1980s. Behind that number were parents explaining to grown children why there was no work."),

  H("The queue"),
  P("America, 1931. Picture a woman standing in a line outside a bank before dawn, in the cold, holding a small book that says how much she has saved. About 2,300 banks shut that year. There is no insurance. If she is too far back in the line, the savings of her working life are gone, and nothing she did caused it."),
  P("Money is hard in her world, tied to gold. From 1930 to 1933 the supply of money falls by nearly 30% and prices by about a quarter. That makes every debt about a third heavier. Picture a farmer who borrowed honestly and never borrowed another cent. Each year he owes more in real things than the year before. Economists still argue whether the gold rules or the central bank's own choices did more harm. The woman in the queue does not care which."),
  P("The memory of that queue wrote the laws that came next. Deposit insurance became law in America in 1933. In 1934 only 61 banks failed. Other things helped too, and Canada got through those years with no insurance and no failed banks. But from then on a promise from a bank was made nearly as good as money from the state."),
  P("Who wrote those rules? Insiders had a large hand. One early plan was drawn up in secret in 1910, on a trip its authors called a duck hunt. Elected lawmakers passed a changed version. The woman in the queue was never asked. Yet when Swiss voters were asked, in 2018, whether to stop banks creating money, 75.7% said no. The fear of the queue has been stronger than the anger at the toll."),

  H("The ruins"),
  P("1945. Much of Europe and Japan is rubble. America holds most of the world's official gold, and its share will peak at about 70% in 1948. Italy holds 24 million dollars' worth. If gold were the only way to begin again, the ruined countries would have waited for generations."),
  P("They did not wait. Western Europe's industry passed its level of 1938 by 1949, and Japan's spending passed its pre-war level by 1951. Work and saving inside each country paid for most of it. Aid helped: it came to about 2.5% of the income of the countries that received it. Credit between neighbours helped too."),
  P("Picture a mother in a German city in 1948, buying bread with a new currency. Her old savings have just been converted at 6.5 new marks for every 100 old ones. Nearly everything she saved through the war is gone. And the shops have bread, and her children eat. Both things are true on the same morning. That is what a new start costs, and somebody always pays it."),

  H("The weekend"),
  P("August 1971. An American president and fifteen advisers spend a weekend at Camp David. On Sunday evening he tells the country on television that the dollar will no longer be traded for gold. It is his decision. The last metal limit on money is gone."),
  P("The same reader has a sharper way to say what changed. Before that weekend, every promise leaned in the end on something scarce. After it, promises lean only on laws, central banks and human judgment. That is right. Whether the judgment has been good enough is the argument of our time."),
  P("What followed was not a simple triumph. In the rich countries income per person had grown 3.5% a year from 1951 to 1973. From 1974 to 1989 it grew 2.1%. The end of gold brought no speed-up there, though these numbers cannot say it caused the slowdown. What it brought was room. In America all credit to households, firms and government went from about 133% of a year's output in 1971 to about 251% in 2024. Room to build, and room to overreach."),
  P("And it brought the toll. A dollar today buys what 3 cents bought in 1913. A ringgit buys what 18 sen bought in 1971. Picture a grandmother in Malaysia who kept her ringgit in a tin. Over those years the tin lost about 82% of what it could buy, and nobody asked her. In a bank she would have done better, since deposits beat inflation in most of those decades. Now picture her granddaughter. Income per person in Malaysia is about six times what it was in 1971, after inflation. The same years that emptied the tin built the schools and the roads. It is hard to hold both in one heart, and both are true."),

  H("The counter"),
  P("Today. Picture a young woman in Kuala Lumpur, in her first job, sitting at a bank counter. She wants a small flat. In 2019 the median house in Malaysia cost 4.1 times what the median household earns in a year."),
  P("The officer asks three questions. Do you have income? Do you have something to put up as security? Do you have a record of paying on time? Each is easier to answer if you already have money."),
  P("If the answer is yes, she gets a key and a debt. The middle new borrower in Malaysia pays 41% of income on loans. If the answer is no, there is the licensed moneylender, capped by law at 12% with a pledge and 18% without. Past that there are lenders this site cannot put a number on. Around the world 1.3 billion adults have no account at all."),
  P("This is the old Monopoly board from the first chapter. The streets were bought long before she sat down. Hard money would tell her to save first, and the coin would gain value while she waits, in the hands of people who came before her. Money that stretches tells her to start now and owe. Neither gives her an even start. About 58% of the first American baby boomers owned a home at 30. Of the first millennials, about 41% did."),

  H("The lever"),
  P("Picture two families in America in 2007. Both borrowed to buy a home. One is the typical owner, and by 2022 that owner's net worth is $396,200, against $10,400 for the typical renter. The other family is among the poorest fifth of owners. They owe about 80% of the value of everything they have. When prices fall, their net worth goes from about $30,000 to almost nothing by 2010."),
  P("It was the same tool. One family tells the story of the house that made them. The other family does not tell the story at all."),
  P("Malaysia recorded 5,977 bankruptcies in 2024, nearly half of them from personal loans. Behind each one is a person who learned to dread the post. The law is kinder than it was. England stopped jailing most debtors in 1869, and in Malaysia a bankrupt can be released after three years if the conditions are met. But an old line in the book of Proverbs still stands: the borrower is servant to the lender. Credit multiplies what you already are. Your income, your judgment and your luck."),

  H("The sword and the rocket"),
  P("Remember the collector who paid 100,000 ringgit for a sword. The money was not destroyed. It became the blacksmith's income and went on moving, because one person's spending is another person's pay. That is the quiet wonder inside the whole system. It is also why it is so frightening when everyone stops spending at once."),
  P("The reader's largest hope goes further. It is that promises about the future are how people attempt things no saver could pay for alone: a railway, a power grid, a rocket built for years before it earns anything. The two chapters support one part of that hope. America's interstate highways gave a large one-time lift to the industries that used them."),
  P("They do not prove the rest. The test for a rocket is the same as the test for a road. Does it leave the future richer than the debt it leaves behind? Some bets will. Some will not, and then somebody pays. Who that somebody is has been the whole argument, from the field to the counter."),

  H("What the story says"),
  P("So here is the verdict again, this time with the people in it."),
  P("Printing is not a scam. It is a toll, and the grandmother with the tin paid it. Hard money is not innocent. Ask the woman in the queue and the farmer whose debt grew while he slept. Credit is not a gift. It is a lever with a gate in front of it, and the young woman at the counter is standing at the gate."),
  P("Plenty comes from what people make. Spain's silver could not make it. But making takes time, and people must eat while they build. Money of every kind is the promise that lets them start."),
  P("People kept choosing the promise over the metal. They were not simply fooled. Many of them had stood in the queue. They pay for that choice with the toll and the gate. And each generation has to decide again who pays, how much, who decides and who is let in."),
  P("The man in the field of 1522 could not have imagined the counter in Kuala Lumpur. He would have understood the promise, though. He made one every spring."),

  T(["Question", "Scene", "What the chapters found"],
    [["1. Could a world on gold have rebuilt after the war?", "The ruins", "Europe and Japan rebuilt in about five years, mostly by their own work and saving, with aid and credit helping. Gold was not the engine, and its lack was not the brake"],
     ["2. Which money is fairer to new players?", "The counter", "Both tilt the board. Hard money favours those who already hold it. Credit money favours those who already own houses and shares"],
     ["3. Does the sword explain the 2% target?", "The sword and the rocket", "No. It shows that spending is someone else's income"],
     ["4. Scarce money or scarce output?", "The field, the ships", "Scarce output was the bigger cause of old poverty. Scarce coins hurt trade at times"],
     ["5. Was credit born in 1971?", "The king's promise, the weekend", "No. Credit is thousands of years old. 1971 removed the last metal limit"],
     ["6. Can a society borrow from the future?", "The king's promise", "It borrows a promise, not goods. The promise is light if the money built something lasting"],
     ["7. Why does the law lean toward money made from nothing?", "The queue", "The state gains, the banks gain, and voters who were asked kept it. Bank panics were the reason given"],
     ["8. Why are the biggest printers poor?", "The ships", "Money buys things. It does not make them. What new money is used for decides the result"],
     ["9. Who gets through the credit gate?", "The counter", "Those who already have income, security and a record. Loans with less security cost more"],
     ["10. Free or owned?", "The lever", "Credit is a lever. It multiplies what the borrower already is"]]),
  {"type": "insider", "label": "The argument goes on", "text": "The reader who began all this has replied with four sharper points. Before 1971 credit rested on scarce gold, and after it on governance alone. Output was scarce in the past because the whole chain of money, schooling, knowledge and central power was missing. Moving money was once dangerous, because a merchant on the road could be robbed. And new technology costs an enormous price before it pays, so someone must issue the promises that fund it. None of these has been tested yet. Each of the seven questions will get a chapter of its own, and these points will be tested there."},
  {"type": "callout", "label": "Not advice", "text": "This chapter tells a story about how money works. The people in it are imagined. It does not tell you to borrow, save or buy anything."}]}

i = next(k for k, c in enumerate(d["chapters"]) if c.get("level") == 4)
d["chapters"].insert(i, ch)
# chapter 02 keeps its grading section under a plainer name, so there is one epilogue in Level 3
c2 = next(c for c in d["chapters"] if c["id"] == "rb-credit")
for b in c2["blocks"]:
    if b.get("type") == "h" and b["text"] == "Epilogue. The claim, graded":
        b["text"] = "The claim, graded"
    if b.get("type") == "callout" and "Seven questions and an epilogue" in b.get("text", ""):
        b["text"] = b["text"].replace("Seven questions and an epilogue", "Seven questions and a grading of the claim")
s2 = json.dumps(c2, ensure_ascii=False)
c2k = d["chapters"].index(c2)
s2 = s2.replace("and the epilogue grades it line by line", "and the last section grades it line by line")
d["chapters"][c2k] = json.loads(s2)
json.dump(d, open(p, "w", encoding="utf-8"), ensure_ascii=False, indent=1)
s = json.dumps(ch, ensure_ascii=False)
print("rb-promise blocks", len(ch["blocks"]), "em", s.count("—"), "en", s.count("–"), "semi", s.count(";"))
