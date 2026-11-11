"""Owner-approved Round 8 follow-ups (approved 2026-11-11): P-4 and P-5 (the word "compliant" plus the
Tether example in two Level 1 chapters) and P-7 (the Round 1 basket belief restated as five readings).
Usage: python3 -I round8/r8_owner_approved.py .   (edits site/rulebook.json, site/index.html, REPORT.md, PLAN.md in place)"""
import json, sys, os
root = sys.argv[1]
def sub(path, pairs):
    p = os.path.join(root, path); s = open(p, encoding="utf-8").read()
    for o, n in pairs:
        assert s.count(o) == 1, (path, s.count(o), o[:60]); s = s.replace(o, n)
    open(p, "w", encoding="utf-8").write(s)

# P-4, P-5: Level 1 chapters
p = os.path.join(root, "site/rulebook.json")
d = json.load(open(p, encoding="utf-8"))
C = {c["id"]: c for c in d["chapters"]}
tether = "Offshore coins are not bound the same way: Tether's USDT also reported about $8.4 billion of Bitcoin and $19.1 billion of gold in its reserves on 30 September 2026."
def rep(cid, old, new):
    s = json.dumps(C[cid], ensure_ascii=False)
    o = json.dumps(old, ensure_ascii=False)[1:-1]; n = json.dumps(new, ensure_ascii=False)[1:-1]
    assert s.count(o) == 1, (cid, s.count(o), old); C[cid].clear(); C[cid].update(json.loads(s.replace(o, n)))
rep("rb-12", "That means every new stablecoin dollar is new demand for Set 1 assets.",
    "That means every new compliant stablecoin dollar is new demand for Set 1 assets. " + tether)
rep("rb-crypto", "and every new stablecoin dollar is a new buyer of US Treasury bills.",
    "and every new compliant stablecoin dollar is a new buyer of US Treasury bills. " + tether)
json.dump(d, open(p, "w", encoding="utf-8"), ensure_ascii=False, indent=1)

# P-7: the official view, restated
new_view = ("Set 1 (gold, bonds, credit) and Set 2 (stablecoins, crypto rails) are joining on Set 1's terms. "
            "Round 8 restated the old one-line view (\"Set 1 is absorbing Set 2, an acquisition, not a merger\") as five readings with dated tests: "
            "A absorption (old wrappers swallow Bitcoin, fits), B leakage (dollars drain into Bitcoin, fails the money meter), "
            "C two-way valve (toward Bitcoin in booms, back in busts, live), D risk transfer (savers carry Bitcoin's risk under a credit label, fits), "
            "E collateral bridge (Bitcoin starts to back new dollars, real but too small to measure). First check: 31 December 2026.")
sub("REPORT.md", [("Set 1 (gold, bonds, credit) is absorbing Set 2 (stablecoins, crypto rails): an acquisition, not a merger.", new_view)])
sub("PLAN.md", [("Set 1 is absorbing Set 2, an acquisition not a merger (65). Scenario odds H0: S1 62, S2 15, S3 1, S4 22.",
                 "Set 1 is absorbing Set 2, an acquisition not a merger (65). Scenario odds H0: S1 62, S2 15, S3 1, S4 22.\n"
                 "Restated 2026-11-11 (owner approved, from Round 8): the Set 1 and Set 2 view is now five readings with dated tests. A absorption (fits), B leakage (fails the money meter), C two-way valve (live), D risk transfer (fits), E collateral bridge (real, too small to measure). Working wording: Set 1 wrappers are absorbing Bitcoin, some Set 1 savers carry Bitcoin's risk under a credit label, the wrapper sells back in a bust, and at the edges Bitcoin starts to back new dollars. First check 31 December 2026 (Rulebook Level 4, chapter 1).")])
sub("site/index.html", [('["Db-10","strategy","The merger is an acquisition: Set 1 absorbs Set 2","plausible",65,"H1"]',
                         '["Db-10","strategy","Set 1 absorbs Set 2: restated in Round 8 as five readings with dated tests (Rulebook Level 4)","plausible",65,"H1"]')])
print("applied")
