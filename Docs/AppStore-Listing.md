# APP STORE LISTING COPY

Everything a reviewer or a shopper reads. Written against the three risks in
`AppStore-Submission.md` §5 — 1.1.4 (overtly sexual material), 1.4.1 (medical
claims), 2.3 (accurate metadata).

**The vocabulary rule is absolute.** "External media", never the word the V2/V3
drafts used. It applies here, in the screenshots, in onboarding, and in the
in-app strings, because a reviewer sees all four. The rule is not squeamishness:
an app positioned as an accessory to pornography consumption is the specific
thing 1.1.4 rejects, and the same app positioned as stamina training is not.

**The claims rule is equally absolute.** This app paces, times, logs and
coaches. It does not treat, cure, improve or fix anything. Every sentence below
describes an activity, never an outcome. Do not add a testimonial, a statistic,
or a before/after to any of it.

---

## 1. Name and subtitle

| Field | Value | Limit |
|---|---|---|
| App Name | `Last Longer` | 30 |
| Subtitle | `Stamina training and control` | 30 |

The name is already on the discreet side of the line — it reads as endurance
training. Do not add a clarifying subtitle that undoes that; the icon and the
name are both seen by people who are not the user.

---

## 2. Promotional text (170 chars)

Editable without a new build — use it for release notes, not positioning.

```
Eight training modes, a paced voice coach, and a session log that never leaves
your phone. No account, no upload, no analytics.
```

---

## 3. Description

```
Last Longer is a training tool for ejaculatory control. It gives you structure —
a timer, a paced voice, and a record of what you did — so a session is training
rather than repetition.

Everything happens on your phone. There is no account, no sign-in, and nothing
is uploaded.


EIGHT TRAINING MODES

Free Edge         No structure. Occasional breath cues.
Beginner 5-3-2    Counted phases: five slow, three fast, two still.
Threshold Ladder  Holds that climb from thirty seconds to ten minutes.
Random Edge       Prompts arrive without warning. You react.
Discipline Drill  Fixed intervals, no negotiation.
Grip Repair       Deliberately loose. Retrains a heavy grip.
Pressure Release  A reset session, not a drill.
Zen               Screen black, audio only.

Pair any two modes and switch between them mid-session.


A COACH THAT PACES YOU

Four voices — Drill Sergeant, Calm Yogi, Dominant, Hypnotherapist — each with
its own cadence and tone. Set how often it speaks, or mute it entirely and run
Silent Mode, where the whole coaching vocabulary comes through haptics you can
tell apart by rhythm alone.


APPLE WATCH

Four controls on the wrist: threshold, cooldown, emergency, end. The Watch reads
heart rate during a session and warns you when your grip locks up. Nothing is
written to the Health app.


WHAT IT RECORDS

Session length, holds, pull-backs, best streak, and a stamina score over time.
Charts by week and by circuit. Badges and weekly challenges if you want them,
and a thirty-day regimen if you want to be told what to do next.

Tag a session with context — sleep, alcohol, supplements — and see it alongside
your own numbers. The app never gives dosing guidance and never changes its
coaching based on a tag.


PRIVACY

The session database is on your device and encrypted while the phone is locked.
It is excluded from iCloud and from encrypted backups. There is no account, no
server, no analytics SDK, and no crash reporter. Delete everything from Settings
in one step.

You can also work with external media if that is part of your routine. The app
never sees it, never asks about it, and never connects to it.


Educational purposes. Not medical advice. Persistent difficulty with ejaculatory
control is treatable — a urologist or a sex therapist can help, and this app is
not a substitute for either.


Last Longer Pro unlocks all eight modes, the full stats history, regimens and
challenges. Details in-app.
```

**Word-level notes for whoever edits this later**

- "training tool for ejaculatory control" is the safest accurate framing. It is
  the activity, not a claim about a condition.
- "external media" appears once, deliberately, in the privacy section. It is
  there so a user who needs to know the app does not monitor them can find that
  out, and phrased so the sentence is about what the app does *not* do.
- Never write "premature ejaculation" in the listing. Naming the condition turns
  the description into a treatment claim under 1.4.1 even when the surrounding
  sentence is careful. The disclaimer paragraph names the clinicians instead,
  which is the referral without the claim.
- Never write "lasts longer in bed", "performance", or any partner-facing
  outcome. Those are outcome claims and they also read as sexual positioning.

---

## 4. Keywords (100 chars, comma-separated, no spaces)

```
stamina,control,endurance,pelvic,kegel,breathing,timer,coach,training,tracker,discipline,focus
```

Do not buy or include a competitor's app name, and do not include the word the
vocabulary rule forbids — keywords are indexed metadata and are reviewed under
2.3 like everything else.

---

## 5. Screenshots — six frames

6.9" and 6.5" required; iPad not applicable (portrait iPhone only).

**Every frame is a real screen capture with a caption bar composited above it.**
No lifestyle photography, no models, no bedroom, no skin. The device frame on
black, the caption in the pixel face. A reviewer opening these should see
instrumentation.

| # | Screen | Caption (≤ 6 words) | Why it earns a slot |
|---|---|---|---|
| 1 | Mode Selection — the eight-mode Atlas grid | `EIGHT MODES. PICK YOUR STRUCTURE.` | Leads with structure, not sex. Sets the instrumentation tone immediately. |
| 2 | Live Session — timer, phase band, Angel widget mid-session | `PACED, TIMED, COUNTED.` | The core loop. Shows the product is a timer with a voice. |
| 3 | Session Config — persona picker and Silent Mode toggle | `FOUR VOICES. OR NONE.` | Coach + the mute path. Answers "does it talk" before download. |
| 4 | Stats — stamina score curve and the circuit heat map | `YOUR NUMBERS, ON YOUR PHONE.` | The retention feature and the privacy claim in one frame. |
| 5 | Watch — the four-button control deck | `FOUR CONTROLS ON YOUR WRIST.` | The differentiator. Also the most obviously non-sexual frame. |
| 6 | Settings → Privacy — the delete-everything row | `NO ACCOUNT. NO UPLOAD. NO TRACE.` | Closes on privacy. This is the objection that stops the download. |

Build rules:

- Capture on a device with the pixel font actually installed, or frames 1 and 6
  ship with the system fallback face and look unfinished.
- Frame 2 must show a mid-session state with a real elapsed time, not `00:00`.
- No frame may contain a body, a silhouette of a body, or the Angel widget
  rendered large enough to read as one.
- Check every captured screen for stray non-clinical vocabulary before export —
  in-app strings are the easiest place for it to survive.
- Localise nothing for v1. A mistranslated euphemism is a 1.1.4 risk in a
  language nobody on the team reads.

---

## 6. Disclaimer — exact strings

One sentence is the short form used in-app; the full paragraph carries the
clinician referral and is what belongs anywhere a reviewer looks.

**Short form** — `LL.Copy.disclaimer`, Theme.swift:

```
Educational purposes. Not medical advice.
```

**Full form** — SettingsView.swift, and the last paragraph of the App Store
description:

```
Educational purposes. Not medical advice. Persistent difficulty with ejaculatory
control is treatable — a urologist or a sex therapist can help, and this app is
not a substitute for either.
```

These two strings must stay in sync across three places: the App Store
description, `SettingsView`, and `SettingsPrivacySection`. They are currently
identical — keep them that way, because a disclaimer that differs between the
listing and the app is a 2.3 metadata problem on top of a 1.4.1 one.

Placement:

- Settings → About, always visible, not behind a disclosure triangle.
- Onboarding, on the final screen, before the paywall.
- The last paragraph of the App Store description, above the Pro line.

---

## 7. Age rating

18+. Already set in `AppStore-Submission.md` §3 — do not lower it to widen the
funnel. A 17+ rating on this app is a 2.3 problem and the ratings questionnaire
answers that produce 18+ are the accurate ones.

---

## 8. Review notes addendum

Add to the notes already in `AppStore-Submission.md` §4:

```
This app is a training timer for ejaculatory control. It contains no sexual
imagery, no video, no audio recordings of people, and no user-generated content.
The voice coach is AVSpeechSynthesizer reading built-in phrases; the phrase
library is in-app and is not downloadable.

No account is required and the app makes no network requests except StoreKit
purchase validation. The session database is local, encrypted at rest, and
excluded from backup. There is no analytics SDK and no crash reporter.

Full functionality is available without a paired Apple Watch. To review the
Watch features, use the Watch simulator paired to the iPhone simulator; heart
rate will report a simulated value.
```
