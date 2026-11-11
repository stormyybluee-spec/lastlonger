"""Reading-level lint for reader chapters. Runs before any cold-reader agent, so the cheap
mistakes are caught by a script and the agent's tokens go to what a script cannot see.

Usage: python3 -I tools/lint_chapter.py <rulebook.json> <chapter_id> [--strict]
Main path only: "go deeper" boxes and the answers of check and curiosity questions are skipped,
the same rule the cold readers use. It flags:
  1. banned punctuation (em-dash, en-dash, semicolon)
  2. short forms (STRC, SOFR, mNAV) used with no meaning next to their first use
  3. finance words from a watchlist used with no meaning next to their first use
  4. long sentences (over 28 words)
  5. a main path that is more than 35% tables, or longer than 4,500 words
  6. an estimated school grade above 10 for the prose
A term counts as explained when it is in the Rulebook glossary, is a card in the same chapter,
or its first use is followed by a bracket, a colon, "is", "means" or a comma clause.
The lint is a filter, not a judge: every flag is a question for the writer. --strict exits 1 on any flag.
"""
import json, re, sys

WATCH = ["yield", "coupon", "par", "preferred", "convertible", "put", "collateral", "spread", "basis point",
         "liquidity", "custody", "leverage", "hedge", "derivative", "sovereign", "repo", "swap", "peg",
         "default", "maturity", "perpetual", "junk", "rating", "consols", "estate tax", "wrapper", "tranche",
         "securitiz", "refinanc", "dividend", "premium", "discount", "principal", "cumulative", "dilut",
         "issuer", "reserve", "regime", "attestation", "arbitrage", "counterparty", "mark to market"]
ALLOW = {"US", "UK", "EU", "AI", "RM", "CEO", "TV", "OK", "II", "III", "IV", "USA", "UN"}
SIGNAL = re.compile(r"^(\)|\s*\(|\s*:|,\s|\s+is\s|\s+are\s|\s+means\s|\s+stands\s)")


def main_path(ch):
    """Yield (block number, kind, text) for every string a main-path reader sees."""
    for i, b in enumerate(ch["blocks"]):
        t = b.get("type")
        if t == "deeper":
            continue
        kind = "table" if t == "table" else "prose"
        if t in ("p", "insider", "callout", "h", "quote"):
            yield i, kind, b.get("text", "")
        elif t in ("list", "steps", "tldr"):
            for x in b.get("items", []):
                yield i, kind, x
        elif t == "cards":
            for x in b.get("items", []):
                yield i, kind, x.get("d", "")
        elif t == "table":
            for c in b.get("cols", []):
                yield i, kind, str(c)
            for r in b.get("rows", []):
                for c in r:
                    yield i, kind, str(c)
        elif t == "check":
            yield i, kind, b.get("q", "")
        elif t == "curiosity":
            for x in b.get("items", []):
                yield i, kind, x.get("q", "")
        elif t == "bridge":
            for x in b.get("items", []):
                yield i, kind, x.get("text", "")
        elif t == "myth":
            yield i, kind, b.get("myth", "") + " " + b.get("reality", "")
        elif t in ("diagram", "widget", "bars", "pairbars", "timeline"):
            yield i, kind, b.get("caption", "")
        elif t == "radiant":
            for r in b.get("rays", []):
                yield i, kind, r.get("t", "") + ". " + r.get("s", "")
        elif t == "gauge":
            yield i, kind, b.get("intro", "")
            for dl in b.get("dials", []):
                yield i, kind, dl.get("q", "")


def syllables(w):
    w = w.lower()
    n = len(re.findall(r"[aeiouy]+", w))
    if w.endswith("e") and n > 1 and not w.endswith(("le", "ee")):
        n -= 1
    return max(n, 1)


def lint(book, cid):
    ch = next(c for c in book["chapters"] if c["id"] == cid)
    known = " | ".join(g["t"].lower() for g in book.get("glossary", []))
    for b in ch["blocks"]:
        if b.get("type") == "cards":
            known += " | " + " | ".join(x.get("t", "").lower() for x in b.get("items", []))
    flags, seen = [], set()
    words = {"prose": 0, "table": 0}
    sentences, long_s, syl, prose_words = 0, [], 0, 0
    for i, kind, text in main_path(ch):
        if not text:
            continue
        for bad, name in (("—", "em-dash"), ("–", "en-dash"), (";", "semicolon")):
            if bad in text:
                flags.append((i, "punctuation", f"{name} in: {text[:60]}"))
        ws = re.findall(r"[A-Za-z0-9$%.,'’-]+", text)
        words[kind] += len(ws)
        for m in re.finditer(r"\b[a-z]?[A-Z]{2,}[A-Za-z0-9]*\b", text):
            a = m.group(0)
            if a in ALLOW or a in seen or re.match(r"^[A-Z]{1,3}\d", a):
                continue
            seen.add(a)
            before = text[max(0, m.start() - 1):m.start()]
            if re.search(r"\b" + re.escape(a.lower()) + r"\b", known) or before == "(" or SIGNAL.match(text[m.end():m.end() + 12]):
                continue
            flags.append((i, "short form", f"{a} has no meaning next to its first use: ...{text[max(0, m.start() - 30):m.end() + 30]}..."))
        low = text.lower()
        for wd in WATCH:
            if wd in seen:
                continue
            m = re.search(r"\b" + re.escape(wd), low)
            if not m:
                continue
            seen.add(wd)
            if re.search(r"\b" + re.escape(wd), known):
                continue
            tail = low[m.end():m.end() + 110]
            if re.search(r"\(|:| means | is a | is an | is the |, which |, or |, meaning ", tail):
                continue
            flags.append((i, "finance word", f"'{wd}' has no meaning near its first use: ...{text[max(0, m.start() - 30):m.end() + 40]}..."))
        if kind == "prose":
            for s in re.split(r"(?<=[.!?])\s+(?=[A-Z\"$(0-9])", text):
                n = len(s.split())
                if n < 2:
                    continue
                sentences += 1
                prose_words += n
                syl += sum(syllables(w) for w in re.findall(r"[A-Za-z]+", s))
                if n > 28:
                    long_s.append((n, i, s[:90]))
    total = words["prose"] + words["table"]
    for n, i, s in sorted(long_s, reverse=True)[:8]:
        flags.append((i, "long sentence", f"{n} words: {s}..."))
    share = words["table"] / total if total else 0
    if share > 0.35:
        flags.append(("-", "tables", f"{share:.0%} of the main path is tables (limit 35%)"))
    if total > 4500:
        flags.append(("-", "length", f"main path is {total} words (limit 4,500)"))
    grade = 0.39 * prose_words / max(sentences, 1) + 11.8 * syl / max(prose_words, 1) - 15.59
    if grade > 10:
        flags.append(("-", "grade", f"estimated school grade {grade:.1f} (limit 10)"))
    mins = words["prose"] / 120 + words["table"] / 80
    return flags, {"main_path_words": total, "table_share": round(share, 2), "sentences": sentences,
                   "long_sentences": len(long_s), "grade": round(grade, 1), "minutes_slow_reader": round(mins)}


if __name__ == "__main__":
    book = json.load(open(sys.argv[1], encoding="utf-8"))
    flags, stats = lint(book, sys.argv[2])
    print(sys.argv[2], stats)
    for i, kind, msg in flags:
        print(f"  [{i}] {kind}: {msg}")
    print(f"{len(flags)} flags")
    if "--strict" in sys.argv and flags:
        sys.exit(1)
