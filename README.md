# LAST LONGER — Section 1

Data models, onboarding, paywall, home screen, Angel widget.

Swift 5.9 / iOS 17. No third-party packages. No network calls anywhere in this section.

```
LastLongerApp.swift              entry point, splash, flow routing
Core/
  DomainModels.swift             value types, enums, StaminaScore maths
  Persistence.swift              CoreData built in code (no .xcdatamodeld)
  Repository.swift               the only file that knows both layers
Design/
  Theme.swift                    every colour and metric in the app
  PixelType.swift                5×7 bitmap typeface, drawn not shipped
  Effects.swift                  grid, scanlines, pixel noise, channel split
Feedback/
  HapticEngine.swift             CoreHaptics vocabulary + fallbacks
  ToneGenerator.swift            synthesised chimes, audio session policy
  CoachVoice.swift               AVSpeechSynthesizer + persona voices
Components/
  AngelWidget.swift              the hero
Features/
  Onboarding/OnboardingFlow.swift
  Paywall/StoreManager.swift · PaywallView.swift
  Home/HomeView.swift            + tab root, score ring, cards
```

## Setup

1. New iOS App target, SwiftUI lifecycle, minimum iOS 17.0. Delete the generated `App.swift` and `ContentView.swift`.
2. Drop these files in. No model editor step — the CoreData schema is `LastLongerModel.make()`.
3. Capabilities: In-App Purchase. Nothing else. No background modes yet (see below), no HealthKit until Section 2.
4. StoreKit: create a `.storekit` configuration file with one non-consumable, product ID `com.lastlonger.unlock.forever`. Point the scheme at it so the paywall works in Simulator.
5. `Info.plist`: `UIUserInterfaceStyle` = `Dark`. There is no light mode and no toggle for one.

There are `#Preview` blocks in `PixelType`, `AngelWidget` (states and skins), `OnboardingFlow`, `PaywallView` and `HomeView`. Start with the Angel state preview — it is the fastest way to see whether the wing curve is right before touching anything else.

## Decisions worth knowing about

**The pixel typeface is generated, not shipped.** Every decent bitmap face is either licensed per-app or a hobby TTF with unclear provenance. On an app whose whole pitch is "nothing leaves your phone", a font binary is one more thing to audit. `PixelType` is seven rows of `Bool` per glyph, covering A–Z, 0–9 and five punctuation marks. Unknown characters render as a solid block so gaps are loud in review rather than invisible.

**The Angel's wings are procedural.** Six stored bitmaps would snap between states; the 0.3s colour fade is the app's whole visual grammar and a wing that teleports breaks it. `AngelSprite.pixels(spread:eyesClosed:)` takes a 0–1 spread and generates the feathers, so every state interpolates.

**Tap arbitration costs 260 ms.** Supporting single / double / triple on one target means the single tap cannot resolve until the window proves no second tap is coming. That is under the ~300 ms mark where a confirmation starts to feel laggy, but it is real, and it is why the two-finger tap exists (see below).

**Score components are part of the model, not the view.** The breakdown sheet is the app's honesty argument — it shows exactly how 68 became 68. That only works if the components come out of the same function that computes the total.

## Things in the spec that don't work as written

Five of these are corrections I've already applied. Four need a product decision before Section 2.

### 1. The floating overlay is not possible on iOS — this needs a decision

The premise is "app minimises, angel hovers over your content, you tap it to log". iOS has no equivalent to Android's `SYSTEM_ALERT_WINDOW`. Specifically:

- `AVPictureInPictureController` needs actual video playback. The custom-content variant (`AVPictureInPictureVideoCallViewController`) is scoped to video conferencing, snaps to corners rather than being freely draggable, and passes almost no touch through to your content. Shipping a fake video stream to get a draggable widget is the kind of thing review catches.
- **Haptics do not fire from a backgrounded app.** Neither CoreHaptics nor `UIFeedbackGenerator`. This is noted at the top of `HapticEngine.swift`.
- Audio *does* survive backgrounding with the `.playback` session in `AudioSessionController`. TTS coaching over other media works today.

What actually works, in descending order of how close it gets to the intent:

| Surface | Gets you |
|---|---|
| Apple Watch | Real buttons, real haptics, always reachable, no phone contention. This is the Angel's body. |
| Live Activity (Dynamic Island) | Persistent readout + up to a few App Intent buttons while another app is foreground. Not draggable, not a sprite, but visible. |
| Audio session | Voice coaching continues in the background. Already wired. |
| In-app full screen | The Angel as built, for Zen Mode and any session where the phone isn't showing something else. |

The Watch was Phase 2. If the floating widget is the differentiator, the Watch is Phase 1 and the phone is the setup and review surface. That reordering is the single biggest call in the project and I'd rather raise it now than build Sections 2–4 on top of an assumption.

### 2. Emergency needs a better gesture

Triple tap is the worst available gesture for the highest-urgency action: three accurate taps on a 70pt draggable target, one-handed, while panicking. I've kept it (it's specced) and added `TwoFingerTapCatcher` — a two-finger tap anywhere on the widget fires the emergency protocol instantly with no discrimination window. Two fingers is a gross motor action; three taps is a fine one. Worth considering making the two-finger tap the documented gesture and leaving triple tap as an undocumented alias.

### 3. Focus Mode cannot be enabled programmatically

There is no public API for an app to create or activate a Focus. `INFocusStatusCenter` is read-only — it tells you whether a Focus is currently on, with user authorisation. The realistic version is shipping a Shortcut the user installs once, which they then trigger. `SessionConfig.focusModeOnStart` is in the model, but Phase 1 should scope it to "prompt the user to install the Shortcut", not "auto-enable".

### 4. Watch grip detection and PONR prediction are research, not roadmap items

- The Watch accelerometer cannot read grip pressure. Inferring rigidity from wrist-angle variance during a repetitive motion is a signal-processing project with no ground truth to train against, and it needs an `HKWorkoutSession` running to keep the sensors alive at all.
- Apple Watch heart rate is sampled every ~5 seconds outside workout mode and is smoothed. Predicting a physiological event 10–15 seconds ahead from that is not a CreateML afternoon. If you want it, it belongs in a "we might try this" column, not Phase 5 with a delivery date.

Both are fine to keep as ambitions. Neither should be on a chart that someone plans a launch around.

### 5. Corrections already applied

- **Haptics are CoreHaptics, not AVFoundation.** AVFoundation has no haptics API. The continuous ten-second emergency pattern needs `CHHapticAdvancedPatternPlayer` and a parameter curve; `UIImpactFeedbackGenerator` can only fire discrete taps and is kept as the fallback.
- **TTS rates converted.** `AVSpeechUtterance.rate` runs 0.0–1.0 with `AVSpeechUtteranceDefaultSpeechRate` at 0.5. The spec's `1.2` would clamp to maximum and every persona would sound identically frantic. Ratios preserved in `CoachPersona.voice`.
- **Voice gender is best-effort.** The installed voice set differs per device and per user. `CoachVoice.voice(for:)` filters and ranks by quality; it never assumes an identifier exists.
- **Price is read from StoreKit.** `store.displayPrice`, never a hardcoded `$9.99` — otherwise the paywall lies in every non-US storefront.
- **Onboarding before paywall.** Reasons in the header of `LastLongerApp.swift`.

## Two things outside the code

**App Review.** Guideline 1.1.4 covers overtly sexual material. An app whose stated function is coaching during pornography use is at genuine risk, and a rejection here costs a review cycle each time. You've already moved screen 2 to "external media" — keep that discipline everywhere in the binary, the metadata and the screenshots, rate it 17+, and lean on the fact that stop-start and squeeze techniques are standard first-line behavioural treatment for premature ejaculation. That framing is both true and much easier to defend.

**The stack tracker and the affiliate links are in tension.** The tag list is fine — it's the user's own data, stored locally, and I've built `StackTag` neutrally. The problem is Section 4.7 of the V3 spec, which displays *"Sessions with Kanna: avg 18 min. Sessions without: avg 9 min"* on a screen reachable from a settings page that earns 15% commission on Kanna. Three separate issues stack up:

- That's an efficacy claim drawn from a handful of uncontrolled, self-reported sessions with obvious confounds (mood, sleep, time of day, which mode was running).
- Kanna is a serotonin-reuptake inhibitor. The same tag list offers ALCOHOL. Displaying performance correlations across that combination carries real weight.
- FTC 16 CFR Part 255 requires clear and conspicuous disclosure of the material connection, on the same screen, not buried.

Cheapest fix that keeps the feature: show the correlation only for tags you earn nothing on, require at least five sessions per arm before displaying anything, and put the disclosure inline. That's a Section 3 decision but the data model is being laid down now, which is why it's here.

One last thing, and take it or leave it: "schizo" as a style descriptor is doing you no favours. The voice it's pointing at — blunt, no corporate copy, no "unlock your potential" — is good and it's all over the onboarding copy in this build. The word itself is a psychiatric diagnosis, and it will read badly in review, in press and to anyone in your target demographic who has it. The aesthetic survives losing the label.

## What Section 2 covers

Mode selection with multi-select, the pre-session countdown, the session engine (timers, phase switching, coach line scheduling, streak tracking), the emergency protocol screen, and the post-session summary.

Before I build it I need a call on the overlay question, because the session engine's shape depends entirely on whether it's driving a foreground view, a Live Activity, or a Watch app.
