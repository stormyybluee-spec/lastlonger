"""Round 18 cold-reader fixes, second set (retest 1): Test 1 rewritten around one plain picture, the correlation table
given a plain-words column, the ECB and Japan rows of the central bank table moved into a go-deeper box (the Fed row,
which carries the tested comparison, stays on the main path), the printers table shortened with the full version in a
box, and eight fixes. No new facts. Verify after apply.
Usage: python3 -I round18/r18_coldread_fixes2.py site/rulebook.json  (refuses to run twice)"""
import json, sys
p = sys.argv[1]; d = json.load(open(p, encoding="utf-8"))
k = next(i for i, c in enumerate(d["chapters"]) if c["id"] == "rb-printers")
ch = d["chapters"][k]; B = ch["blocks"]; miss = []
P = lambda t: {"type": "p", "text": t}
if any(b.get("type") == "table" and "In plain words" in b.get("cols", []) for b in B):
    sys.exit("already applied")
def idx(kind, start):
    hits = [i for i, b in enumerate(B) if b.get("type") == kind and (b.get("text", "") if kind != "table" else str(b["cols"][0])).startswith(start)]
    if len(hits) != 1: miss.append(("find %d" % len(hits), start[:40])); return None
    return hits[0]
i = idx("p", "If the reader is right, countries that create money fast")
if i is not None:
    B[i] = P("Picture a market with 100 loaves of bread and 100 ringgit to spend on them. Each loaf costs about 1 ringgit. Now double the money to 200 ringgit and keep the bread the same. If people spend it all, each loaf ends up costing about 2 ringgit. That is supply and demand for money. This is a made-up example with round numbers. Does the real world work like this? For this chapter, we used World Bank data to compare 144 countries from 2000 to 2019. It is our own calculation, not a published study. We asked: did countries whose money grew fastest also have prices that rose fastest? We scored the match on a scale where 1 is a perfect match and 0 is no link at all. Across all 144 countries the match scored 0.88, very strong. A few countries with very high inflation pull this score up.")
t = idx("table", "Which countries, and which years")
if t is not None:
    old = B[t]["rows"]
    plain = {"0.88": "Very strong. Countries that made money fastest had the fastest price rises", "0.51": "Middling. In calm countries money and prices often go separate ways",
             "0.14": "Weak. In a single year, more money says little about prices", "0.65": "Fairly strong. Over five years the link shows up again"}
    B[t] = {"type": "table", "cols": ["Which countries, and which years", "Match score", "In plain words"],
            "rows": [[r[0], r[1], plain.get(str(r[1]), "")] for r in old]}
    if any(r[2] == "" for r in B[t]["rows"]): miss.append(("plain gloss missing", ""))
c = idx("table", "Central bank")
box = None
if c is not None:
    rows = B[c]["rows"]
    fed = [r for r in rows if r[0].startswith("America")]
    rest = [r for r in rows if not r[0].startswith("America")]
    if len(fed) != 1 or len(rest) != 2: miss.append(("central bank rows", ""))
    else:
        B[c]["rows"] = fed
        box = {"type": "deeper", "label": "Europe and Japan did the same", "blocks": [
          {"type": "table", "cols": B[c]["cols"], "rows": rest},
          P("Both created huge sums. In both, shop prices rose slowly for years. In Europe they then jumped in 2022.")]}
        B.insert(c + 1, box)
pt = idx("table", "Country")
if pt is not None:
    full = json.loads(json.dumps(B[pt]))
    B[pt] = {"type": "table", "cols": ["Country", "What the printing paid for", "How fast prices rose", "The other big blow"], "rows": [
      ["Germany, 1923", "Almost all government spending", "Doubling about every 3.7 days", "War payments to the victors of the First World War, and the occupation of its industrial heart"],
      ["Hungary, 1946", "A government rebuilding after war", "Doubling about every 15 hours, the fastest ever", "About 40% of the country's wealth destroyed in the war"],
      ["Zimbabwe, 2008", "Central bank spending of many kinds, paid for partly by printing", "Doubling about every 25 hours, by one estimate", "Output had already fallen about 40% after a collapse in farming"],
      ["Venezuela, 2018", "A large government deficit", "Up over 1.6 million percent in a year, by one estimate", "The oil price fell 71%, and later sanctions"]]}
    di = next(i for i, b in enumerate(B) if b.get("type") == "deeper" and i > pt)
    B.insert(di, {"type": "deeper", "label": "The four printers in more detail", "blocks": [full]})
R = [
 ("From October 2008 the central bank also paid interest on reserves, which stopped interest rates from falling lower. So much of the money did not reach the shops.", "From October 2008 the central bank also paid banks interest to keep their reserves. So much of the money did not reach the shops."),
 ("velocity of M2, measured in one quarter of each year", "velocity of cash and deposits, measured in one quarter of each year"),
 ("Rises about 2.1 points, so about 40% of the fall gets through", "Rises about 2.1 percentage points, so about 40% of the fall gets through"),
 ("Hong Kong ties its dollar to the US dollar at a fixed rate.", "Hong Kong pegs, or ties, its dollar to the US dollar at a fixed rate."),
 ("So the link is strong when inflation is high and weaker when it is low, by how much is disputed.", "So the link is strong when inflation is high and weaker when it is low."),
 ("House and share prices did move, by one estimate about 7% and 5%.", "House and share prices did rise, by one estimate about 7% and 5%."),
 ("Both kinds of buying create money against the state's debt.", "Both kinds of buying create new money and take the state's debt in return."),
 ("The short version: they created huge sums, and for years shop prices barely moved.", "The short version: America's central bank created huge sums, and for years shop prices barely moved. Europe and Japan did the same, as a box below shows.")]
jj = lambda x: json.dumps(x, ensure_ascii=False)[1:-1]
s = json.dumps(ch, ensure_ascii=False)
for a, b in R:
    n = s.count(jj(a))
    if n == 1: s = s.replace(jj(a), jj(b))
    else: miss.append(("old count %d" % n, a[:60]))
d["chapters"][k] = json.loads(s)
final = json.dumps(d["chapters"][k], ensure_ascii=False)
miss += [("new text missing", b[:60]) for a, b in R if jj(b) not in final]
json.dump(d, open(p, "w", encoding="utf-8"), ensure_ascii=False, indent=1)
print("blocks", len(d["chapters"][k]["blocks"]), "fixes", len(R), "problems", len(miss))
for m in miss: print("  ", m)
print("em", final.count("—"), "en", final.count("–"), "semi", final.count(";"))
sys.exit(1 if miss else 0)
