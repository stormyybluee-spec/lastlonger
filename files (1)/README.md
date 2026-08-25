# LAST LONGER — Section 2, Part A

Mode Selection, Pre-Session Countdown, Session Logic, and the TTS system.
SwiftUI, iOS 17+. No server, no third-party SDKs, no external APIs.

## Files

```
Design/
  Theme.swift                  Color + metric tokens. No Color literals elsewhere.
  Typeface.swift               Pixel / label / numeric roles, with a fallback chain.
  CRTEffects.swift             Grid, scanlines, vignette, glitch text, hairline rule.
  Haptics.swift                Core Haptics vocabulary, intensity scaling, UIKit fallback.
Models/
  SessionMode.swift            The 8 modes + difficulty.
  SessionSettings.swift        Every toggle, AutoSwitchPolicy, SessionPlan, persistence.
Voice/
  VoicePersona.swift           The 4 personas and their AVSpeech parameter mapping.
  PhraseLibrary.swift          16 categories × 4 personas + distraction generator.
  VoiceCoach.swift             Synthesizer, rotation, gating, audio session.
Audio/
  BinauralEngine.swift         Theta/Alpha/Beta via AVAudioSourceNode.
Session/
  ModeDriver.swift             8 drivers implementing Part 8. Pure state machines.
  SessionEngine.swift          Clock, mode switching, tempo lock, interrupts, cap.
Views/
  ModeCardView.swift           One Atlas cell.
  ModeSelectionView.swift      Part 6 — the Precision Atlas.
  SessionConfigSheet.swift     Part 6 — the bottom sheet.
  PreSessionCountdownView.swift Part 7 + the flow container.
```

Entry point is `SessionFlowView()` at the bottom of `PreSessionCountdownView.swift`.
It owns the coach, the binaural engine, and the session engine, and moves
selection → countdown → running.

## Required project configuration

1. **Background audio.** `Info.plist` → `UIBackgroundModes: [audio]`, and enable
   Background Modes → Audio in Signing & Capabilities. Without this the coach
   goes silent the moment the user leaves the app, which is the entire use case.
2. **Bitmap font.** Drop a licensed pixel face into the target, list it under
   `UIAppFonts`, and set `Typeface.pixelPostScriptName` to its PostScript name.
   Departure Mono (SIL OFL) and Pixel Operator (CC0) both work at these sizes.
   Without it, headers fall back to heavy monospaced system text rather than
   silently rendering as plain San Francisco.
3. **No `NSMicrophoneUsageDescription` needed** — the app only plays audio.

## Three things in the spec that iOS will not do

These are worth knowing before Part B, because each one needs a design answer
rather than a code answer.

**The app cannot minimize itself.** There is no public API, and the private
selector is a reliable App Review rejection. `PreSessionCountdownView` hands off
to `SessionHandoffView`, which asks for one swipe. The session is already running
by then, so the swipe costs nothing functionally — it just has to be asked for.
The Angel Widget should be an ActivityKit Live Activity (first-party, so it stays
inside the no-SDK rule); start it in `SessionEngine.start` and it will be waiting
on the Lock Screen and Dynamic Island the instant the user swipes.

**Focus cannot be enabled programmatically.** `focusModeAutoEnable` is
implemented as a prompt on the countdown screen. If you want it automatic, the
path is a user-installed Shortcuts automation, not an API.

**Heart-rate warnings need a source.** The `.warning` phrase category is wired
and firing-ready, but nothing calls it yet. HealthKit workout sessions on a
paired Watch are the only first-party live HR feed. Hook it into
`SessionEngine.tick` and call `coach.speak(.warning, force: true)` on a spike.

## Notes on the implementation

**Rate mapping.** The spec's rates (1.2, 0.7, 0.9, 0.5) are multipliers of
natural speech. `AVSpeechUtterance.rate` is not — it's an absolute 0…1 value
where 0.5 is normal. `VoicePersona.resolvedRate` applies the multiplier against
`AVSpeechUtteranceDefaultSpeechRate` and clamps. Setting `rate = 1.2` directly
would produce an unintelligible Drill Sergeant.

**Wall-clock timing.** `SessionEngine` derives elapsed time from `Date`, never by
accumulating timer ticks. A `Timer` in a backgrounded app fires late and
irregularly; accumulating those ticks would drift a 25-minute Threshold Ladder by
minutes. The timer only samples.

**Drivers are pure.** They own no timers, play no audio, and touch no UI — they
take an elapsed time and return a directive. That makes every mode testable by
feeding it a synthetic time series:

```swift
let driver = ThresholdLadderDriver()
_ = driver.begin()
for t in stride(from: 0.0, through: 1800, by: 0.25) {
    if let d = driver.tick(elapsed: t) { print(t, d.phase, d.literal ?? "") }
}
```

**Ducking, not interrupting.** The audio session uses `.playback` +
`.duckOthers` + `.mixWithOthers`, so external media dips under the coach instead
of stopping. This is the difference between a coach and an interruption.

**Phrase rotation.** No line repeats until three others from its category have
played. When a category is small enough that the exclusion window would starve
it, the window shrinks rather than deadlocking. Custom phrases are injected into
optional categories at ~25%, so they feel like part of the rotation rather than a
separate channel.

**`PhraseLibrary.audit()`** prints per-persona line counts and flags empty
categories. Worth a unit test as the bank grows toward the ~70-per-persona
target — all fifteen non-custom categories are populated for all four personas,
currently 57–58 lines each, weighted toward the categories that actually fire
often. The remaining ~12 per persona are best written after you've heard a real
session and know which categories feel repetitive.

**Silent Mode** zeroes speech but leaves haptics carrying the full signal, which
is why the twelve `HapticCue` patterns are distinguishable by rhythm alone rather
than only by strength. Test that mode with the screen off — if you can't tell a
phase change from a warning, the pattern needs more contrast, not more intensity.

## What Part B still needs

The live session HUD, Core Data persistence for the session log
(`SessionEngine.arousalLog` is collected but not yet written), the Live Activity,
and the Partner Interaction Mode that `PhraseCategory.partnerMode` is already
stocked for.
