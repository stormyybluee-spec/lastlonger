# LAST LONGER — Section 2, Part B

Live Session Player, Emergency Protocol, Watch app, and the audio/breathing
layer. Builds directly on Part A.

## New files

```
Shared/
  SessionSignal.swift          Wire protocol. BOTH targets.
Design/
  SilentHaptics.swift          Five Silent Mode patterns + continuous emergency player.
Audio/
  ToneGenerator.swift          Generated success chime, pitch by streak.
Session/
  ThresholdStreak.swift        Streak, resets only on end goal.
  TapRouter.swift              Zero-latency tempo taps vs. emergency triple-tap.
  TempoLock.swift              BPM from 5 taps, 5%/30s decay, voice count.
  CoachInterrupt.swift         3–7 min prompt, tap-count arousal input.
  EmergencyProtocol.swift      Part 11 state machine.
  RecoveryTracker.swift        "Next session in X hours".
  BreathPacer.swift            5-7-8, drives the Angel's wings.
  LiveSessionModel.swift       Coordinator. The view binds only to this.
Persistence/
  SessionStore.swift           Programmatic Core Data model + log writer.
Views/
  AngelWidget.swift            Pixel-art Angel + tappable container.
  GlitchOverlay.swift          Part 11 pixel burst.
  LiveSessionView.swift        The player.
  ResetProtocolView.swift      End sheet + Failure Protection flow.
Phone/
  PhoneWatchLink.swift         iOS target only.
Watch/
  WatchSessionLink.swift       watchOS target only.
  WatchHaptics.swift           watchOS target only.
  HeartRateMonitor.swift       watchOS target only.
  GripSensor.swift             watchOS target only.
  WatchSessionView.swift       watchOS target only.
```

## Target membership

| Files | iOS | watchOS |
|---|---|---|
| `Shared/SessionSignal.swift` | ✓ | ✓ |
| `Design/Theme.swift` | ✓ | ✓ |
| `Watch/*` | | ✓ |
| `Phone/*`, `Views/*`, `Session/*`, `Audio/*`, `Voice/*`, `Models/*`, `Persistence/*` | ✓ | |
| `Design/Typeface.swift`, `Design/Haptics.swift`, `Design/SilentHaptics.swift` | ✓ | |

`Theme.swift` is watch-safe (SwiftUI only). `Typeface.swift` and `Haptics.swift`
import UIKit and will not compile on watchOS — the watch UI uses system fonts
and `WatchHaptics` instead. Add `SessionSignal.swift` to both targets; do not
duplicate it.

## Capabilities

**iOS target**
- Background Modes → Audio (already required by Part A)
- `NSHealthShareUsageDescription` in Info.plist

**watchOS target**
- HealthKit capability, with **Workout Processing** background mode
- `NSHealthShareUsageDescription` and `NSHealthUpdateUsageDescription`
  (`HKWorkoutSession` refuses to start without the update permission even
  though nothing is written)
- Core Motion is entitlement-free but needs `NSMotionUsageDescription`

## Four things the platform won't do as specified

**Continuous vibration on Apple Watch doesn't exist.** watchOS has no Core
Haptics — `WKInterfaceDevice.play(_:)` fires one short system pattern and
returns. `WatchHaptics.startEmergency` repeats `.notification` every 0.35 s,
which reads as unbroken on the wrist because the Taptic Engine's decay outlasts
the gap. Tightening below ~0.3 s makes it *less* dense, not more, because
watchOS coalesces haptics it can't render in time. The phone side is genuinely
continuous via `CHHapticAdvancedPatternPlayer`.

**Triple-tap on a Lock Screen Angel can't work.** Part A flagged that the app
can't minimize itself; the follow-on is that a Live Activity supports only App
Intent buttons, not multi-tap gestures. So the triple-tap emergency works
in-app, and the Lock Screen surface needs an App Intent button instead. The
Watch's orange button is the more reliable path when the phone is away, and it's
wired.

**Heart rate needs a workout session.** Outside one, the watch writes HR every
few minutes — useless for spike detection. `HeartRateMonitor` runs
`HKWorkoutSession` + `HKLiveWorkoutBuilder` for ~1 Hz sampling, which also keeps
the watch app alive for the four buttons. It calls `discardWorkout()` on stop, so
nothing appears in the Health app and nothing is written to HealthKit.

**Focus still can't be enabled programmatically** (unchanged from Part A).

## Decisions worth reviewing

**The tap conflict.** Tempo taps and the emergency triple-tap share the Angel.
Using `.onTapGesture(count: 3)` would delay every single tap ~300–400 ms while
the recogniser waits — a 400 ms error on a 60 BPM tap is 40% BPM error, which
makes Tempo Lock worthless. `TapRouter` inverts it: every tap fires immediately
and is timestamped, and the router looks *backwards* to see if the last three
landed inside 500 ms, retracting them from the tempo buffer if so. Safe because
three taps in 500 ms is 360 BPM, which nobody paces at.

**BPM uses the median, not the mean.** Five taps give four intervals. One
hesitant tap produces a huge outlier that drags a mean estimate badly low; the
median discards it entirely. That's the failure mode that actually happens.

**Emergency speech overrides Silent Mode.** The opening instruction is the one
line in the app that always speaks. Someone who triple-tapped for help needs to
hear "squeeze" — the continuous haptic runs alongside it regardless. The
protocol is also always cancellable; a pocket-tap false trigger must not hold
someone for ten seconds.

**The glitch effect is flash-limited.** Full-field black/white alternation at
10–15 Hz sits squarely in the photosensitive-seizure band, and would run for ten
unbroken seconds on someone alone and not thinking clearly. `GlitchOverlay`
keeps per-frame coverage under 35%, rerandomises texture at 12 Hz while holding
the large-area luminance envelope under 3 Hz, and swaps to a static frame under
Reduce Motion. It reads as a hard glitch and stays clear of the WCAG threshold.
The visual is an attention signal, not the protocol — with it disabled entirely
the emergency still works.

**"Failure Protection" never says "failure" to the user.** The code keeps the
spec's name; the copy is flat and procedural. Scolding someone at that exact
moment teaches them to stop logging honestly, which destroys the streak data and
the recovery estimate built on it.

**Streak resets on end goal only.** An emergency pullback *increments* it. If
emergencies broke the streak, the app would be training people to avoid the
emergency protocol.

**Binaural Low Beta is 14 Hz.** Part A's spec said Beta 20 Hz, Part 13 says Low
Beta 14 Hz. `BinauralProgram.beta` is renamed `.lowBeta` at 14 Hz — a breaking
rename, so any stored settings with `"beta"` will fail to decode and fall back to
`.off`. Add a migration if you have test data worth keeping.

**Part A's engine-side Coach Interrupt is disabled**, not deleted.
`CoachInterrupt` now owns the 3–7 minute cadence and the tap-count answer flow;
`SessionEngine.nextInterruptAt` is pinned to `.infinity` so the engine still runs
standalone in tests without double-prompting.

## The grip sensor needs calibration before you trust it

`GripSensor` defaults to `.off` deliberately. The thresholds
(`rigidityThreshold: 0.72`, `cadenceThreshold: 1.1`, the 0.02 rad² variance
reference) are derived from the physics of a locked versus articulating wrist,
**not from recorded data**. Wrist articulation varies with technique, watch fit,
and which arm the watch is on.

`debugSnapshot` prints live rigidity and cadence. Log it across real sessions,
set the thresholds from evidence, then raise the default sensitivity. A false
"loosen your wrist" mid-session is worse than no warning — it teaches people to
ignore the feature permanently.

## Core Data

The model is built programmatically in `SessionStore.makeModel()` rather than in
an `.xcdatamodeld`. Three entities, ~20 attributes: a visual editor buys nothing
at that size, a programmatic model diffs properly in git where a model bundle
produces unreviewable conflicts, and these files compile on drop-in with no
"open Xcode and click through the editor" step.

The store sets `completeUntilFirstUserAuthentication` file protection. Given what
this data is, that's the floor — consider `complete` if you can accept that
background writes fail while locked.

## What's left

Part A's Live Activity (`ActivityKit`) for the Lock Screen Angel, session history
and trend views over `SessionRecord`, the Pre-Session Ritual editor, and Partner
Interaction Mode — `PhraseCategory.partnerMode` has been stocked since Part A but
nothing drives it yet.
