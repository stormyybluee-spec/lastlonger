# Debate Court Protocol (Round 1)

Today is 2026-10-22. You are a debate panel. Read BRIEF.md (same folder) for evidence tiers and style rules, then read the lane files you are assigned in round1/lanes/ and round0/calibration.md where relevant.

Web search budget for this session is exhausted. Argue from the lane files. You may use WebFetch on a specific primary URL only to settle a decisive factual dispute (max 5 fetches). Never invent numbers. If a number is missing, say so and list it as a gap.

## Run the panel in this order. Write each role's section honestly and independently.
1. **Proponent:** strongest case for the cluster's thesis, using the best evidence in the lanes.
2. **Skeptic:** attacks the proponent's single strongest point first, then the rest. Uses base rates and contrary evidence.
3. **Accountant:** checks the balance-sheet logic. Whose asset is whose liability? Where does the money come from? Flags any claim that does not balance.
4. **Historian:** nearest precedents (1933, 1944, 1971, 1974, 1985 Plaza, 1998, 2008, 2020, Technocracy 1930s, etc.) and what they predict.
5. **Incentive mapper:** who gains, who loses, who decides. Say/do gaps.
6. **Judge:** rules on each sub-thesis. Status: Confirmed / Plausible / Speculative / Refuted. Confidence 0 to 100. Lists the decisive evidence, the strongest dissent, and the gaps that a reloop must fill.

## Outputs
A. Markdown file at the path in your task with the six sections plus a "Thesis cards" section.
B. A JSON file (same name, .json) containing an array of thesis cards:
```json
{
  "id": "Da-01",
  "cluster": "energy-money",
  "title": "short name",
  "statement": "one or two sentences, plain English",
  "status": "Confirmed|Plausible|Speculative|Refuted",
  "confidence": 0,
  "horizon": "H0|H1|H2|H3",
  "evidence": [{"text": "...", "tier": "T0", "url": "...", "date": "YYYY-MM-DD"}],
  "mechanism": ["step 1", "step 2"],
  "falsifier": "what would prove it wrong",
  "tripwires": [{"indicator": "...", "current": "...", "threshold": "...", "meaning": "..."}],
  "dissent": "strongest counter-argument in one or two sentences",
  "views": {"governance": "...", "business": "...", "uhi_citizen": "..."}
}
```
"views" means: what this card implies for (1) governments and policymakers, (2) business owners and investors, (3) ordinary people living on UHI or wages.

C. Final reply to orchestrator: the judge's rulings table (id, title, status, confidence, horizon) and the reloop gap list, max ~800 words.

Validate the JSON with `python3 -I -c "import json,sys; json.load(open(sys.argv[1]))" <file>` before finishing.
Style rule: never use em-dashes or semicolons. Write plainly. Do not commit or push.
