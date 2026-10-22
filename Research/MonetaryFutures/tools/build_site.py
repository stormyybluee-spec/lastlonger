"""Inject the latest data files into site/index.html between their markers.

Usage: python3 -I tools/build_site.py <research_root>
Each block is optional: a missing file leaves the block as null or {}.
LEARN and ODDS merge every matching file so new rounds only add files.
"""
import json, sys, pathlib

root = pathlib.Path(sys.argv[1])
page = root / "site" / "index.html"
s = page.read_text()

def load(rel):
    f = root / rel
    return json.loads(f.read_text()) if f.exists() else None

def merged(rels):
    out = {}
    for r in rels:
        d = load(r)
        if d: out.update(d)
    return out

blocks = [
    ("ROUND2_DATA", "R2", load("round2/r2_data.json")),
    ("ROUND3_DATA", "R3", load("round3/r3_data.json")),
    ("DECODE_DATA", "DC", load("round3/dc_data.json")),
    ("LEARN_DATA", "LEARN", merged(["site/learn101.json", "site/r3_learn.json", "site/dc_learn.json"])),
    ("ODDS_DATA", "ODDS", merged(["site/r2_odds.json", "site/r3_odds.json", "site/dc_odds.json"])),
    ("RULEBOOK_DATA", "RULEBOOK", load("site/rulebook.json")),
    ("LANDSCAPE_DATA", "LANDSCAPE", load("site/landscape.json")),
]
for marker, name, data in blocks:
    a, b = f"/* {marker}_START */", f"/* {marker}_END */"
    i, j = s.index(a), s.index(b)
    js = json.dumps(data, ensure_ascii=False).replace("</", "<\\/")
    s = s[:i] + a + f"\nconst {name} = {js};\n" + s[j:]
    print(f"{name}: {'set' if data else 'empty'}")
page.write_text(s)
