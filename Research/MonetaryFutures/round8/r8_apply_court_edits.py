"""Apply the Round 8 court edits (r8_court_edits.json) to a copy of site/rulebook.json.
Usage: python3 -I r8_apply_court_edits.py site/rulebook.json out.json round8/r8_court_edits.json
Block numbers in the edits are the DRAFT_R8 numbers (original order). Nested numbers are parent.child.
Same edit format and logic as round7/r7_apply_court_edits.py, for chapter rb-strc.
Writes a new file. It never edits the site file in place. After applying it checks the chapter:
no em-dashes, en-dashes or semicolons in any string, and every bridge, curiosity, radiant and
connects link names a real chapter id. It also prints the court's main-path word count
(the round7/r7_wordcount.py rule: text outside go-deeper boxes, kicker and rules excluded)."""
import json, sys, copy, re
from collections import Counter

def apply(ch, E):
    blocks = copy.deepcopy(ch["blocks"])
    n = len(blocks)
    # nested replaces and deletes first
    for e in E:
        b = e["block"]
        if re.fullmatch(r"\d+\.\d+", b):
            p, c = map(int, b.split("."))
            if e["action"] == "replace": blocks[p]["blocks"][c] = e["new"]
            elif e["action"] == "delete": blocks[p]["blocks"][c] = None
    for b in blocks:
        if b.get("type") == "deeper": b["blocks"] = [x for x in b["blocks"] if x is not None]
    # top-level replaces
    for e in E:
        b = e["block"]
        if e["action"] == "replace" and b.isdigit():
            i = int(b)
            new = copy.deepcopy(e["new"])
            if new.get("blocks") == "KEEP_CHILDREN": new["blocks"] = blocks[i]["blocks"]
            blocks[i] = new
    boxes = {}  # box ids for inserted deeper boxes
    inserts = {}
    for e in E:
        if e["action"] == "insert_after":
            new = copy.deepcopy(e["new"])
            if "box_id" in new: boxes[new.pop("box_id")] = new
            inserts.setdefault(int(e["block"]), []).append(new)
    removed = set()
    for e in E:
        if e["action"] == "delete" and e["block"].isdigit(): removed.add(int(e["block"]))
    # moves (a move with "new" places that content, and removes the source block if it is a number)
    for e in [e for e in E if e["action"] == "move_into"]:
        src = e["block"]
        item = copy.deepcopy(e["new"]) if "new" in e else blocks[int(src)]
        if src.isdigit(): removed.add(int(src))
        t = e["target"]
        tgt = boxes[t] if t in boxes else blocks[int(t)]
        tgt.setdefault("_start" if e["position"] == "start" else "_end", []).append(item)
    out = []
    for i in range(n):
        if i not in removed: out.append(blocks[i])
        for x in inserts.get(i, []): out.append(x)
    for b in out:
        if b.get("type") == "deeper":
            st = b.pop("_start", [])
            en = b.pop("_end", [])
            # "start" moves keep the order they are listed in, ahead of the box's own blocks
            b["blocks"] = st + b["blocks"] + en
    ch2 = copy.deepcopy(ch)
    ch2["blocks"] = out
    for e in E:
        if e["action"] == "set_field": ch2[e["field"]] = e["new"]
    return ch2

def strings(o):
    if isinstance(o, str): yield o
    elif isinstance(o, dict):
        for v in o.values(): yield from strings(v)
    elif isinstance(o, list):
        for v in o: yield from strings(v)

def check(ch, ids):
    bad = [s for s in strings(ch) if re.search("[\u2014\u2013\u003b]", s)]
    links = []
    def walk(bl):
        for b in bl:
            t = b.get("type")
            if t == "bridge": links.extend(("bridge", x["id"]) for x in b["items"])
            if t == "curiosity": links.extend(("curiosity", x["from"]) for x in b["items"] if "from" in x)
            if t == "radiant": links.extend(("radiant", x["link"]) for x in b["rays"] if "link" in x)
            if t == "deeper": walk(b["blocks"])
    walk(ch["blocks"])
    links.extend(("connects", x["id"]) for x in ch.get("connects", []))
    badlinks = [l for l in links if l[1] not in ids]
    return bad, links, badlinks

SKIP = {"type", "id", "link", "from", "score", "max", "decimals", "suffix", "years", "values", "key"}
def words(o):
    if isinstance(o, str): return len(re.findall(r"[A-Za-z0-9$%£.,']+", o))
    if isinstance(o, dict): return sum(words(v) for k, v in o.items() if k not in SKIP)
    if isinstance(o, list): return sum(words(v) for v in o)
    return 0
def mainpath(ch):
    cat = Counter()
    for b in ch["blocks"]:
        t = b["type"]
        if t == "deeper": continue
        g = "prose"
        if t in ("table", "pairbars"): g = "tables"
        if t == "check": g = "checks"
        if t in ("radiant", "diagram", "widget"): g = "pictures"
        cat[g] += words(b)
    return cat

if __name__ == "__main__":
    src, dst, ej = sys.argv[1], sys.argv[2], sys.argv[3]
    if src == dst: sys.exit("refusing to overwrite the source file")
    d = json.load(open(src))
    allE = json.load(open(ej))
    ids = {c["id"] for c in d["chapters"]}
    cid = "rb-strc"
    E = [e for e in allE if e["chapter"] == cid]
    for k, c in enumerate(d["chapters"]):
        if c["id"] == cid:
            before = mainpath(c)
            d["chapters"][k] = apply(c, E)
            after = mainpath(d["chapters"][k])
            bad, links, badlinks = check(d["chapters"][k], ids)
    json.dump(d, open(dst, "w"), ensure_ascii=False, indent=1)
    print("applied", len(E), "edits to", cid)
    nb = lambda c: sum(v for g, v in c.items() if g != "pictures")
    print("main path words before", nb(before), dict(before))
    print("main path words after ", nb(after), dict(after))
    print("strings with an em-dash, en-dash or semicolon:", len(bad))
    for s in bad: print("  ", s[:120])
    print("links checked:", len(links), "invalid:", badlinks)
    if bad or badlinks: sys.exit(1)
