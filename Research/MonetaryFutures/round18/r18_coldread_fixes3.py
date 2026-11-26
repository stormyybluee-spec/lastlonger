"""Round 18 cold-reader fixes, third set (retest 2): Test 4 retold as a story. It now opens with the Kuala Lumpur
market scene, explains imported inflation with one made-up picture, keeps Bank Negara's estimate and a short 1998
against 2022 table on the main path, and moves the full table into the go-deeper box. Plus seven fixes. No new facts.
Verify after apply. Usage: python3 -I round18/r18_coldread_fixes3.py site/rulebook.json  (refuses to run twice)"""
import json, sys
p = sys.argv[1]; d = json.load(open(p, encoding="utf-8"))
k = next(i for i, c in enumerate(d["chapters"]) if c["id"] == "rb-printers")
ch = d["chapters"][k]; B = ch["blocks"]; miss = []
P = lambda t: {"type": "p", "text": t}
if any(b.get("type") == "p" and b["text"].startswith("Picture a bag of flour") for b in B):
    sys.exit("already applied")
h = next(i for i, b in enumerate(B) if b.get("type") == "h" and b["text"].startswith("Test 4."))
ins = next(i for i, b in enumerate(B) if i > h and b.get("type") == "insider")
box = next(i for i, b in enumerate(B) if i > ins and b.get("type") == "deeper")
old = B[h + 1:ins]
def get(kind, start):
    hits = [b for b in old if b.get("type") == kind and (b.get("text", "") if kind != "table" else str(b["cols"][0])).startswith(start)]
    if len(hits) != 1: miss.append(("find %d" % len(hits), start[:40])); return None
    return hits[0]
bn_table = get("table", "If the ringgit falls 5%")
full_table = next((x for x in old if x.get("type") == "table" and len(x["cols"]) == 3 and x["cols"][1] == "1998"), None)
quote = next((b for b in old if b.get("type") == "quote"), None)
hk = get("p", "A country can also catch falling prices.")
gov = get("p", "In 2017 Bank Negara's governor said")
chicken = get("p", "The government had capped the price of a standard chicken")
if None in (bn_table, full_table, quote, hk, gov, chicken): miss.append(("missing block", ""))
else:
    new = [
      P("In February 2022 a shopper named Meena Tharshini was buying food at a market in Kuala Lumpur. She told a reporter how her family's chicken had changed. They used to buy two a week."),
      quote,
      chicken,
      P("Picture a bag of flour that Malaysia buys from abroad for 1 US dollar. If 1 dollar costs 4 ringgit, the bag costs 4 ringgit. If the ringgit falls and 1 dollar costs 5 ringgit, the same bag now costs 5 ringgit, though nothing about the flour has changed. That is imported inflation. This is a made-up example with round numbers. Malaysia buys much of its food and many goods from abroad, and by an IMF estimate most of its trade is priced in US dollars."),
      P("So how much of a fall in the ringgit reaches the shops? Bank Negara measured it."),
      bn_table,
      P("Why so little? About a quarter of what Malaysian households spend is imported, counting imported parts. Firms often take some of the extra cost themselves. And the state caps some prices and pays part of the cost, called a subsidy. The test came twice."),
      {"type": "table", "cols": ["", "1998", "2022"], "rows": [
        ["How far the ringgit fell against the dollar", "28.3%, comparing yearly averages", "5.4% over the year"],
        ["Malaysia's inflation", "5.3%", "3.3%"],
        ["Inflation elsewhere", "Indonesia 58.4%. America 1.5%", "America 8.0%. Britain 9.1%"]]},
      P("In 1998 Malaysia's prices rose by about as much as Bank Negara's own rough rule predicted, far less than Indonesia's but far more than America's. From September 1998 the ringgit was also fixed at 3.80 to the dollar. Economists still argue how much that helped. In 2022 Malaysia's inflation was less than half of America's. Fixed pump prices and price caps held it down. The state planned 37.3 billion ringgit of fuel subsidies that year, so the calm was paid for partly by the state's budget, now and later."),
      hk,
      gov]
    B[h + 1:ins] = new
    bi = next(i for i, b in enumerate(B) if b.get("type") == "deeper" and b.get("label") == "More on Malaysia and Hong Kong")
    B[bi]["blocks"].insert(0, {"type": "table", "cols": full_table["cols"], "rows": full_table["rows"]})
R = [
 ("A 5% fall in the ringgit lifts import prices about 2.1 points and core inflation about 0.2 points on average. In 1998 inflation rose about as much as Bank Negara's rule predicted", "A 5% fall in the ringgit lifts import prices about 2.1 points and core inflation about 0.2 points on average. In 1998 inflation rose about as much as Bank Negara's rule predicted. Hong Kong, tied to the US dollar, saw prices fall for 68 months"),
 ("It looks like a clean line. In the 2010s", "It looks like a clean line between buying bonds and printing for bills. In the 2010s"),
 ("Rises about 2.1 percentage points, so about 40% of the fall gets through", "Rises about 2.1 points, so about 40% of the fall gets through"),
 ("most of the rise came from shocks, such as", "most of the rise came from sudden blows, such as"),
 (" This is the fifth of seven deeper chapters that follow the overview in chapter 02.", " This is the fifth of seven deeper chapters."),
 ("Argentina, which has had high inflation for most of the last fifty years apart from the 1990s, saw", "Argentina, which has had high inflation for most of fifty years, saw")]
jj = lambda x: json.dumps(x, ensure_ascii=False)[1:-1]
s = json.dumps(ch, ensure_ascii=False)
for a, b in R:
    n = s.count(jj(a))
    if n == 1: s = s.replace(jj(a), jj(b))
    else: miss.append(("old count %d" % n, a[:60]))
d["chapters"][k] = json.loads(s)
final = json.dumps(d["chapters"][k], ensure_ascii=False)
miss += [("new text missing", b[:60]) for a, b in R if jj(b) not in final]
for must in ("Meena Tharshini", "8.90 ringgit", "37.3 billion", "68 months", "pegging the ringgit"):
    if must not in final: miss.append(("lost", must))
json.dump(d, open(p, "w", encoding="utf-8"), ensure_ascii=False, indent=1)
print("blocks", len(d["chapters"][k]["blocks"]), "fixes", len(R), "problems", len(miss))
for m in miss: print("  ", m)
print("em", final.count("—"), "en", final.count("–"), "semi", final.count(";"))
sys.exit(1 if miss else 0)
# One hand edit after this script, so the chicken paragraph points ahead to the flour picture:
# "That is imported inflation too." became "That is imported inflation, as the next picture shows."
