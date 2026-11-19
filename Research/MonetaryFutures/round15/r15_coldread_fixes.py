"""Round 15 cold-reader fixes (COLDREAD_R15.md, first pass). The chapter was accurate but too dense, so this script
thins the main path: plainer table cells, long paragraphs split, scholars' names moved out of the main path where the
view matters more than the name, the two-data-set output table and the ten-row explanations table moved into go-deeper
boxes (a six-row version stays), and the Asia section given a plain conclusion. No new facts. Verify after apply.
Usage: python3 -I round15/r15_coldread_fixes.py site/rulebook.json  (refuses to run twice)"""
import json, sys
p = sys.argv[1]; d = json.load(open(p, encoding="utf-8"))
k = next(i for i, c in enumerate(d["chapters"]) if c["id"] == "rb-peasant")
ch = d["chapters"][k]; B = ch["blocks"]; miss = []
if any(b.get("type") == "deeper" and b.get("label", "").startswith("The full list of explanations") for b in B):
    sys.exit("already applied")
P = lambda t: {"type": "p", "text": t}
def find(kind, start):
    hits = [i for i, b in enumerate(B) if b.get("type") == kind and (b.get("text", "") if kind != "table" else str(b["cols"][0])).startswith(start)]
    if len(hits) != 1: miss.append(("find %d" % len(hits), kind + " " + start[:40])); return None
    return hits[0]

# Test 1 table
i = find("table", "Place")
if i is not None:
    B[i]["rows"] = [
      ["Spain, 1500s", "First call on the silver of the Americas", "It rose a little by 1600, then fell below where it began by 1650"],
      ["England, 1600 to 1650", "Coins per person rose 2.7 times", "Fell 14%, in the years of the Civil War"],
      ["China, from 1023", "State paper money, centuries before Europe", "In 1090 China was richer per person than England, by one estimate. It later fell far behind. Its paper money worked for long stretches, then lost all trust when the Mongol rulers fell in the 1360s"],
      ["Holland, 1600s", "Very cheap credit for its time. Its government borrowed at 4%, when the English king paid 6% to 30%", "It grew rich first. In 1650 it was at least twice as rich per person as England. Then it stopped growing until 1750"]]
i = find("p", "So four places had plenty of money")
if i is not None:
    B[i]["text"] = "So four places had plenty of money or cheap credit for their time, and none of them kept pulling ahead. But be careful. Each case had another big cause. England fought a civil war. The Mongol state was breaking up. Holland fought costly wars from about 1670. So these cases show that money alone was not enough. They do not show that money did not matter."
i = find("p", "There is evidence on the other side too.")
if i is not None:
    B[i]["text"] = "There is evidence on the other side too. The historian Nuno Palma argues that American silver helped England a great deal, in a quieter way. It let more people buy and sell with coins. In the 1520s about 40% of English households lived on wages. By the 1780s few households were outside the cash economy. Coins did not make the cloth, but they made it easier to sell, and they made taxes easier to collect. Some historians also find that trade suffered when Europe ran short of silver in the 1400s. Others say credit filled the gap."
# Test 2
i = find("table", "Link")
if i is not None:
    for r in B[i]["rows"]:
        if r[0] == "Reading":
            r[1] = "About 30% of men could sign their names in the 1640s, and about 50% by 1714. Other estimates differ"
            r[2] = "Before, and rising slowly"
# Test 3
i = find("p", "The factories borrowed little for their buildings and machines.")
if i is not None:
    B[i:i + 1] = [
      P("The factories borrowed little for their buildings and machines. The first cotton mills were small. A small one cost about 1,000 to 2,000 pounds to start, a large one over 3,000. A famous Manchester firm, M'Connel and Kennedy, began with about 1,700 pounds. Most scholars agree that owners paid for these mainly from their own funds, and from profits put back into the firm."),
      P("Did the state's huge borrowing help the factories or hurt them? Historians disagree. One view is that it hurt. When the state borrowed so much, banks had less left to lend to others, and from 1714 the law let no lender charge more than 5%. The other view is that it helped. Safe government bonds drew the money of rich landowners away from poor farm projects, and left room for new industry.")]
i = find("table", "A promise that was kept")
if i is not None:
    B[i]["rows"][1][1] = "Indiana issued over 10 million dollars of bonds for canals, a railway and roads, but received only about half of that in cash. Part had been sold on credit to a bank that failed in 1839, and work stopped"
# Test 4
i = find("table", "England, then Great Britain from 1700")
old_out = None
if i is not None:
    old_out = B.pop(i)
i = find("p", "And yet the loop was not perfectly closed, even in England.")
j = find("p", "Read each column on its own")
if i is not None and j is not None and j == i + 1:
    B[i:j + 1] = [P("And yet the loop was not perfectly closed, even in England. A day's pay is one measure. Everything the country made, shared out per person, is another, and it tells a softer story. It stayed roughly flat from 1500 to 1600 while a day's pay fell, and it dipped in the civil war. Then it began to rise. By 1800 it was nearly double its level of 1600, on two different data sets. The real break came later still. By 1850 there were three times as many people as in 1700, and a day's pay bought about twice what it had in 1650. More people and better pay at the same time: the loop was broken.")]
else:
    miss.append(("output paragraphs not adjacent", ""))
i = find("table", "The explanation")
old_expl = None
if i is not None:
    old_expl = json.loads(json.dumps(B[i]))
    B[i]["rows"] = [
      ["People", "Thomas Malthus, Gregory Clark", "More food meant more people, until the land could feed no more. Something had to break that link"],
      ["Rules", "Douglass North and Barry Weingast", "After 1688 the king could no longer seize property or cancel his debts at will, so people dared to lend and invest"],
      ["Prices", "Robert Allen", "English wages were high and coal was cheap, so it paid to invent machines that saved workers and burned coal"],
      ["Knowledge", "Joel Mokyr", "A culture grew up that treated useful knowledge as something to be shared, tested and improved"],
      ["The state", "John Brewer, Mark Dincecco", "A state that could tax and borrow could keep order and fight"],
      ["Money and finance", "Nuno Palma, Peter Rousseau and Richard Sylla", "More silver coin drew people into markets, and banks helped to start growth. Critics answer that Spain got the silver first and fell behind, and that English law held private credit down"]]
R = [
 ("Scholars have argued for two hundred years, and each has part of the evidence.", "Scholars have argued for two hundred years, and each has part of the evidence. Here are six of the main answers. Do not try to learn the list. Just notice how many different causes are named. A box at the end gives four more, with the critics of each."),
 ("Read down that list. Money and credit lead in two rows, and both have strong critics. Credit also sits inside the rules and state rows. But read it again and the reader's larger point survives. Nearly every scholar names a different link, and some look outside Britain.",
  "Read down that list. Money and credit lead in one row of six, and that row has strong critics. Credit also matters inside the rules row and the state row, because lenders need to trust the state. But read it again and the reader's larger point survives. Nearly every scholar names a different link."),
 ("Two give money or credit a leading part, and both are disputed.", "A few give money or credit a leading part, and they are disputed."),
 ("What a day's pay could buy (an index, Bank of England data set)", "What a day's pay could buy (a higher number is better)"),
 ("John Munro finds a slower rise, over a generation, because prices rose too. Either way, survivors lived better for a century.", "Some historians find a slower rise, over a generation. Either way, survivors lived better for a century."),
 ("the cycle of money and credit that creates output was scarce", "money and credit, which help people make and trade things, were scarce"),
 ("close to 180% of a year's output on one measure, and about 150% on another", "about 150% to 180% of a year's output, depending on the measure"),
 ("The reader's figure, a 70% chance that a child goes to school, matches the world in 1970.", "The reader who wrote in said a child has had about a 70% chance of going to school since the 1970s. That matches the world in 1970."),
 ("400,000 families of cottagers and paupers", "400,000 families of cottagers and paupers, the poorest of the poor"),
 ("That limits the verdict.", "That limits the verdict. It fits Europe best."),
 ("A promise with nothing behind it often failed. Every state that refused to pay had also borrowed to fund banks. A few cases show a pattern, not a law.", "A promise with nothing behind it often failed. A few cases show a pattern, not a law."),
 ("Whether colonial rule, or the profits of slavery, shaped who grew rich is a large open question that this chapter has not weighed.", "Whether colonial rule, or the profits of slavery, shaped who grew rich is a large open question. This chapter has not weighed it. So for Asia the fair answer is: more money did come with more trade in some places, and why the take-off came elsewhere is not settled here.")]
jj = lambda x: json.dumps(x, ensure_ascii=False)[1:-1]
s = json.dumps(ch, ensure_ascii=False)
for a, b in R:
    if s.count(jj(a)) == 1: s = s.replace(jj(a), jj(b))
    else: miss.append(("old count %d" % s.count(jj(a)), a[:60]))
ch = json.loads(s)
# the two tables taken off the main path go into go-deeper boxes, before the sources box
di = next(i for i, b in enumerate(ch["blocks"]) if b.get("type") == "deeper")
new = []
if old_expl: new.append({"type": "deeper", "label": "The full list of explanations, with the critics of each", "blocks": [old_expl]})
if old_out: new.append({"type": "deeper", "label": "England's output per person on two data sets", "blocks": [old_out, P("Read each column on its own, since the dollars differ. Both show output flat or falling up to 1650, then rising. The jump to 1700 is about two thirds in one and two fifths in the other. Part of it is only because 1650 was a low year after civil war, and because the number of people had stopped growing. The series also changes from England to Great Britain in 1700.")]})
ch["blocks"][di:di] = new
d["chapters"][k] = ch
final = json.dumps(ch, ensure_ascii=False)
miss += [("new text missing", b[:60]) for a, b in R if jj(b) not in final]
json.dump(d, open(p, "w", encoding="utf-8"), ensure_ascii=False, indent=1)
print("blocks", len(ch["blocks"]), "problems", len(miss))
for m in miss: print("  ", m)
print("em", final.count("—"), "en", final.count("–"), "semi", final.count(";"))
sys.exit(1 if miss else 0)
