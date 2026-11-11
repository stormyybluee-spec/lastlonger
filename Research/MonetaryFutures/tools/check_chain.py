"""Check a rabbit-hole file (Unseen mode, PLAN.md section 4.7) before the court sees it.

Usage: python3 -I tools/check_chain.py <hole.json> [<hole.json> ...]
       python3 -I tools/check_chain.py --template > roundN/holes/HN-01.json

A hole file is one chain of links from documented ground to a claim about something undisclosed.
The script enforces the rope:
  - every link has a grade: I0 documented, I1 footprint, I2 structural, I3 pattern, I4 conjecture
    (IX, cannot be tested, is never allowed in a chain that is handed in)
  - a link's probability may not exceed the cap for its grade
  - no more than two inferred links in a row without a documented (I0) link, and no more than four in all
  - every inferred link names the footprints it should leave, at least two rival explanations,
    and what would reveal the truth and when
  - an I1 link needs at least two footprints found, from different sources
  - every actor is a named legal entity or office with a kind. A people, a faith or "they" is not an actor
  - at least four rival readings of the whole story, of kinds official, coordination, incentives and accident
  - a claim that two or more actors act together states the coordination level (0 to 3). Level 2 or 3
    must name the channel, what enforces the deal, and how many people must stay silent for how long
It prints the chain probability (the product of the link probabilities). Below 10% the chain may be
published only as an open question. Exit code 1 on any failure.
"""
import json, sys

CAPS = {"I0": 0.99, "I1": 0.80, "I2": 0.60, "I3": 0.45, "I4": 0.30}
KINDS = {"state", "agency", "central bank", "company", "bank", "fund", "person", "office", "party", "international body", "court", "legislature"}
RIVAL_KINDS = {"official", "coordination", "incentives", "accident"}

TEMPLATE = {
    "id": "H0-00", "question": "What is being asked, in one sentence",
    "start": "The documented anchor this hole starts from (claim id or URL)",
    "links": [
        {"n": 1, "claim": "A documented fact", "grade": "I0", "p": 0.95,
         "actor": {"name": "Named entity", "kind": "company"},
         "evidence": [{"what": "what the source shows", "url": "https://", "tier": "T0", "date": "YYYY-MM-DD"}]},
        {"n": 2, "claim": "An inferred link", "grade": "I1", "p": 0.6,
         "actor": {"name": "Named entity", "kind": "fund"},
         "move": "counterparty",
         "footprints_expected": ["what this would have to leave behind, and in which public record"],
         "footprints_found": [{"what": "", "url": "", "date": ""}, {"what": "", "url": "", "date": ""}],
         "footprints_missing": ["looked for and not found, with where it was looked for"],
         "rivals": ["a more boring explanation", "another explanation"],
         "reveal": "what would settle it, and the date or event when it could appear"}],
    "rival_hypotheses": [
        {"kind": "official", "text": "the stated story", "inconsistent_evidence": 0},
        {"kind": "coordination", "text": "the actors agreed to do this", "inconsistent_evidence": 0},
        {"kind": "incentives", "text": "each acted alone on the same incentive", "inconsistent_evidence": 0},
        {"kind": "accident", "text": "error, accident or noise", "inconsistent_evidence": 0}],
    "coordination": {"level": 0, "channel": "", "enforcement": "", "secrecy_load": ""},
    "exit": "finding | test | dead_end | owner_question",
    "budget_used": {"searches": 0, "tokens": 0}}


def check(h):
    errs, warns = [], []
    links = h.get("links", [])
    if not links:
        return ["no links"], warns, 0.0
    if links[0].get("grade") != "I0":
        errs.append("the first link must be documented ground (I0)")
    run = inferred = 0
    p_chain = 1.0
    for l in links:
        tag = f"link {l.get('n')}"
        g = l.get("grade")
        if g == "IX":
            errs.append(f"{tag}: grade IX cannot be tested, so it cannot sit in a chain")
            continue
        if g not in CAPS:
            errs.append(f"{tag}: unknown grade {g}")
            continue
        p = l.get("p")
        if not isinstance(p, (int, float)) or not 0 < p <= 1:
            errs.append(f"{tag}: probability missing or out of range")
            p = 0
        elif p > CAPS[g]:
            errs.append(f"{tag}: p {p} is above the cap {CAPS[g]} for grade {g}")
        p_chain *= p
        a = l.get("actor") or {}
        if not a.get("name") or a.get("kind") not in KINDS:
            errs.append(f"{tag}: actor must be a named entity with a kind from {sorted(KINDS)}")
        if g == "I0":
            run = 0
            if not [e for e in l.get("evidence", []) if e.get("url")]:
                errs.append(f"{tag}: a documented link needs a source URL")
            continue
        run += 1
        inferred += 1
        if run > 2:
            errs.append(f"{tag}: more than two inferred links in a row. Touch documented ground first")
        if not l.get("footprints_expected"):
            errs.append(f"{tag}: name the footprints this link should leave")
        if len(l.get("rivals", [])) < 2:
            errs.append(f"{tag}: give at least two rival explanations")
        if not l.get("reveal"):
            errs.append(f"{tag}: say what would reveal it and when")
        found = [f for f in l.get("footprints_found", []) if f.get("url")]
        if g == "I1" and len({f["url"].split('/')[2] if '//' in f["url"] else f["url"] for f in found}) < 2:
            errs.append(f"{tag}: grade I1 needs two footprints found, from different sources")
        if g in ("I2", "I3", "I4") and not l.get("footprints_missing") and not found:
            warns.append(f"{tag}: no footprint search recorded yet")
    if inferred > 4:
        errs.append(f"{inferred} inferred links. The rope is four")
    kinds = {r.get("kind") for r in h.get("rival_hypotheses", [])}
    if not RIVAL_KINDS <= kinds:
        errs.append(f"rival readings missing kinds: {sorted(RIVAL_KINDS - kinds)}")
    actors = {(l.get('actor') or {}).get('name') for l in links}
    co = h.get("coordination") or {}
    if len(actors) > 1 and co.get("level") not in (0, 1, 2, 3):
        errs.append("two or more actors: state the coordination level 0 to 3")
    if co.get("level") in (2, 3) and not (co.get("channel") and co.get("enforcement") and co.get("secrecy_load")):
        errs.append("coordination level 2 or 3 needs a channel, an enforcement and a secrecy load")
    if h.get("exit") not in ("finding", "test", "dead_end", "owner_question"):
        errs.append("exit must be finding, test, dead_end or owner_question")
    if h.get("exit") == "finding" and p_chain < 0.10:
        errs.append(f"chain probability {p_chain:.0%} is under 10%: publish as an open question, not a finding")
    return errs, warns, p_chain


if __name__ == "__main__":
    if "--template" in sys.argv:
        print(json.dumps(TEMPLATE, indent=1))
        sys.exit(0)
    bad = 0
    for path in sys.argv[1:]:
        h = json.load(open(path, encoding="utf-8"))
        errs, warns, p = check(h)
        n_inf = sum(1 for l in h.get("links", []) if l.get("grade") != "I0")
        print(f"{h.get('id', path)}: {'FAIL' if errs else 'PASS'}  links {len(h.get('links', []))}  inferred {n_inf}  chain probability {p:.0%}")
        for e in errs:
            print("  FAIL", e)
        for w in warns:
            print("  note", w)
        bad += bool(errs)
    sys.exit(1 if bad else 0)
