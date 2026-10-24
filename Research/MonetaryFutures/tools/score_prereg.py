"""Score pre-registered predictions and report Brier scores (the Scorekeeper's tool).

Usage:
  python3 -I tools/score_prereg.py <research_root> [--today YYYY-MM-DD]
  python3 -I tools/score_prereg.py <research_root> --set P5-01=1 P5-02=0 ...
Reads every round*/prereg.json. An item is due when its date has passed and it has no outcome.
--set writes "outcome" (1 happened, 0 did not) and status "scored" back into the file it came from.
Brier = mean of (p - outcome)^2 with p = probability / 100. Lower is better. Always saying 50 scores 0.25.
"""
import json, sys, pathlib, datetime, collections

if len(sys.argv) < 2:
    sys.exit(__doc__)
root = pathlib.Path(sys.argv[1])
args = sys.argv[2:]
today = datetime.date.today()
if "--today" in args:
    today = datetime.date.fromisoformat(args[args.index("--today") + 1])

files = {f: json.load(open(f, encoding="utf-8")) for f in sorted(root.glob("round*/prereg.json"))}

if "--set" in args:
    sets = dict(a.split("=") for a in args[args.index("--set") + 1:])
    for f, items in files.items():
        changed = False
        for it in items:
            if it["id"] in sets:
                it["outcome"] = int(sets.pop(it["id"]))
                it["status"] = "scored"
                it["scored_on"] = today.isoformat()
                changed = True
        if changed:
            json.dump(items, open(f, "w", encoding="utf-8"), ensure_ascii=False, indent=1)
    if sets:
        print("not found:", ", ".join(sets))

items = [it for v in files.values() for it in v]
due = [it for it in items if "outcome" not in it and it["date"] <= today.isoformat()]
scored = [it for it in items if "outcome" in it]

print(f"{len(items)} predictions, {len(scored)} scored, {len(due)} due and unscored (as of {today})")
for it in sorted(due, key=lambda x: x["date"]):
    print(f"  DUE {it['id']} {it['date']} desk {it['desk']} market {it['market']} | {it['event']} | rule: {it['resolution_rule']}")

def brier(rows, key):
    rows = [r for r in rows if isinstance(r.get(key), (int, float))]
    if not rows:
        return None, 0
    return sum((r[key] / 100 - r["outcome"]) ** 2 for r in rows) / len(rows), len(rows)

if scored:
    b, n = brier(scored, "desk")
    print(f"\nDesk Brier {b:.3f} on {n}")
    both = [r for r in scored if isinstance(r.get("market"), (int, float))]
    if both:
        bd, n = brier(both, "desk")
        bm, _ = brier(both, "market")
        print(f"Head to head with markets on {n}: desk {bd:.3f}, market {bm:.3f}")
    by_lane = collections.defaultdict(list)
    for r in scored:
        by_lane[r.get("lane", "?")].append(r)
    for lane, rows in sorted(by_lane.items()):
        b, n = brier(rows, "desk")
        print(f"  {lane}: {b:.3f} on {n}")
