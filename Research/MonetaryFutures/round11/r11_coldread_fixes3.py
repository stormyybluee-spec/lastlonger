"""Round 11 cold-reader fixes, third set: retest 1 fixes (11) and two plain summary lines.
Usage: python3 -I round11/r11_coldread_fixes3.py site/rulebook.json"""
import json, sys
p = sys.argv[1]; d = json.load(open(p, encoding="utf-8"))
k = next(i for i, c in enumerate(d["chapters"]) if c["id"] == "rb-print")
R = [
 ("Whether that can go on depends on two numbers:", "Doing this is not the same as collapsing. Whether that can go on depends on two numbers:"),
 ("So by the strict test today's answer is a warning, not a collapse. Watch both.",
  "So by the strict test today's answer is a warning, not a collapse. The rate against growth passes. The deficit before interest fails. Watch both."),
 ("though few people are ever shown who pays.", "though few people are ever shown who pays. Not theft in law, but in effect a transfer nobody voted on."),
 ("The question assumed three things that need fixing.", "People who ask this question often assume three things that need fixing."),
 ("So gold did not do the rebuilding, and a shortage of gold did not stop it.",
  "So gold did not do the rebuilding, and a shortage of gold did not stop it. Work, saving, aid and credit did the job. That is a point for neither side."),
 ("in only 5 or 6 of the 25 years from 2001, but in 24 of the 64 years from 1962.",
  "in only 5 or 6 of the 25 years from 2001. It was the bad case in 24 of the 64 years from 1962."),
 ("The defence says money is like this too, because once it is spent some of its value seems to vanish.",
  "The defence says money is like this too. Once you spend it, some of its value seems to vanish, so money must lose value each year."),
 ("starting with a question put to this site.", "starting with a question readers often ask."),
 ("In Monopoly every player gets $200 for passing Go, but real new money enters as loans to people with income or property.",
  "In Monopoly every player gets $200 for passing Go. Real new money is not shared like that. It enters as loans to people with income or property."),
 ("Why? A Bank of England study", "Why are houses so dear? A Bank of England study"),
 ("The measuring stick runs fast", "The price index overstates inflation"),
 ("The question's instinct is right on one point.", "The question is right on one point.")]
j = lambda x: json.dumps(x, ensure_ascii=False)[1:-1]
s = json.dumps(d["chapters"][k], ensure_ascii=False); miss = []
for a, b in R:
    if j(b) in s:
        continue
    if s.count(j(a)) == 1:
        s = s.replace(j(a), j(b))
    else:
        miss.append(("old count %d" % s.count(j(a)), a[:60]))
d["chapters"][k] = json.loads(s)
final = json.dumps(d["chapters"][k], ensure_ascii=False)
for a, b in R:
    if j(b) not in final:
        miss.append(("new text missing", b[:60]))
json.dump(d, open(p, "w", encoding="utf-8"), ensure_ascii=False, indent=1)
print("fixes", len(R), "problems", len(miss))
for m in miss: print("  ", m)
print("em", final.count("—"), "en", final.count("–"), "semi", final.count(";"))
sys.exit(1 if miss else 0)
