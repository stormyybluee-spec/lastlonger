"""Round 10 cold-reader fixes (COLDREAD_R10.md) for ls-14, with verify-after-apply.
Usage: python3 -I round10/r10_coldread_fixes.py site/landscape.json"""
import json, sys
p = sys.argv[1]; d = json.load(open(p, encoding="utf-8"))
ch = next(c for c in d["chapters"] if c["id"] == "ls-14")
R = [
 ("In this small test it did no better than the plain lens (structural, about 46%). Whether it adds anything is an open question (about 1%).",
  "In this small test it did no better than the plain lens. The desk puts about 46% on that result holding up (structural). The chance that the lens adds real predictive power is about 1% on this evidence, but that stays an open question, not a finding, because so few countries had data."),
 ("Likelihood words: remote is under 15%, unlikely 15 to 40%, about even 40 to 65%, likely 65 to 90%.",
  "A percent beside a grade is the desk's chance that the point is true. Likelihood words: remote is under 15%, unlikely 15 to 40%, about even 40 to 65%, likely 65 to 90%. A very low chance is called open, not closed, because missing marks in public records cannot rule out a small quiet deal."),
 ("Saudi holdings fell $19 billion in the 2026 Hormuz crisis.", "Saudi holdings fell $19 billion in the 2026 crisis over the Strait of Hormuz, the narrow sea gate that most Gulf oil ships through."),
 ("safe passage through Hormuz (levels 0 and 1, about 46%)", "safe passage through Hormuz (levels 0 and 1 on a scale from 0 to 3, where 3 means one command, about 46%)"),
 ("close to what Japan spent defending the yen, not a carry trade unwind",
  "close to what Japan spent to hold up the yen, which means selling dollar assets to buy yen. It was not investors repaying cheap yen loans they had used to buy higher paying assets"),
 ("Their US share holdings grew too, as at Norway's oil fund", "The UAE's US share holdings grew too, as at Norway's oil fund, while Saudi Arabia's main fund cut its filed US shares"),
 ("Not a treaty on oil prices. Nothing expired in June 2024", "Not a treaty on oil prices. A popular story says the deal ran out in June 2024. No such end date is documented, so nothing expired then"),
 ("Saudi holdings were reported only inside a group total.", "Saudi holdings were reported only inside one combined total for several oil exporting countries, so no one could see Saudi Arabia's own number."),
 ("Who holds the government's debt", "Who holds the government's debt, checked in 5 countries"),
 ("4 of 5 right (missed Japan)", "4 of 5 countries right (missed Japan)"),
 ("Not a test, true by how the boxes were drawn", "Not a fair test, because the three kinds are defined by who controls capital, so the answer was built in"),
 ("A quiet deal that can be denied (level 2) is not shown, and public data could miss a small one.", "A quiet deal that can be denied (level 2) is not shown, but public data could miss a small one, so the desk cannot call it ruled out."),
 ("They correct the second part.", "The records correct the second part."),
 ("Money funds, hedge funds, the Fed and private foreigners grew", "Money funds, hedge funds, the Fed (the US central bank) and private foreigners grew"),
 ("and that the world-war story is optics", "and that the talk of a coming world war is only for show"),
 ("leans more on leveraged private money than it did in 2019", "leans more on private money that is partly borrowed than it did in 2019"),
 ("a payment system it shared with China and others", "a cross-border payment system run by several central banks, China's among them")]
s = json.dumps(ch, ensure_ascii=False); miss = []
for a, b in R:
    aj = json.dumps(a, ensure_ascii=False)[1:-1]
    n = s.count(aj)
    if a == "4 of 5 right (missed Japan)" and n == 1 or n == 1:
        s = s.replace(aj, json.dumps(b, ensure_ascii=False)[1:-1]); continue
    miss.append((n, a[:60]))
ch2 = json.loads(s)
# the plain-lens cell of the same row also says "4 of 5 right"
for b in ch2["blocks"]:
    if b.get("type") == "table":
        for r in b["rows"]:
            if str(r[0]).startswith("Who holds the government's debt") and r[-1] == "4 of 5 right":
                r[-1] = "4 of 5 countries right"
# a note under the dates heading
i = next(k for k, b in enumerate(ch2["blocks"]) if b.get("type") == "h" and b["text"].startswith("Dates when the record will speak"))
ch2["blocks"].insert(i + 1, {"type": "p", "text": "Each row names a date, what would back the findings above and what would break them. If a number lands in between, the desk records it and checks again at the next date."})
ch.clear(); ch.update(ch2)
json.dump(d, open(p, "w", encoding="utf-8"), ensure_ascii=False, indent=1)
final = json.dumps(ch, ensure_ascii=False)
lost = [b[:60] for a, b in R if json.dumps(b, ensure_ascii=False)[1:-1] not in final]
print("missed:", miss, "| not found after apply:", lost, "| em", final.count("—"), "en", final.count("–"), "semi", final.count(";"))
