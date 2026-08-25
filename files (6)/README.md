# LAST LONGER

Ejaculatory-control training for iPhone and Apple Watch. Runs a voice and haptic
coach alongside external media, logs threshold holds and pullbacks, and scores
control over time.

**Platform:** iOS 16.0+ / watchOS 9.0+
**Business model:** $9.99 one-time (StoreKit 2) + affiliate revenue
**Infrastructure cost:** $0 — no server, no CloudKit, no third-party SDKs, no external APIs
**Storage:** CoreData, local only

---

## Terminology

The codebase and all user-facing copy use clinical register. Keep it consistent —
it is what gets this through App Store review and what keeps the tone credible.

| Use | Not |
|---|---|
| External media | Porn |
| Hold at threshold / threshold hold | Edging |
| Pelvic floor | Perineum |
| Point of no return (PONR) | Nutting |
| Session | Goon session |

---

## Roadmap — 11 weeks to TestFlight

### Phase 1 — Core MVP (4 weeks)

Paywall, onboarding, home, modes, Angel widget, TTS, emergency protocol.

- SwiftUI shell, four-tab navigation
- StoreKit 2 paywall, one-time non-consumable, restore purchases
- Four-screen onboarding
- Home screen, Stamina Score ring, Quick Start
- Mode selection, eight modes, multi-select up to two, auto-switch timing
- Angel widget: draggable, six visual states, hold-streak counter
- AVSpeechSynthesizer coach, four personas, phrase bank with no-repeat-within-3
- Session timer, hold / pullback / emergency logging
- Emergency pullback protocol, ten-second countdown
- Silent mode, haptics-only path
- Post-session summary
- CoreData schema and store
- Heat map calendar
- Focus Mode integration

**Exit criteria:** a full session runs end to end on a physical iPhone, backgrounded, with audio uninterrupted, and persists correctly across a cold launch.

### Phase 2 — Watch, HealthKit, Stack Tracker (2 weeks)

- watchOS app: HOLD / BACK OFF / EMERGENCY / END
- Heart rate via HealthKit (read-only, HR quantity type only)
- Haptic pattern library, escalating PONR warning
- Grip-tension detection via watch CoreMotion
- WatchConnectivity session sync, both directions, with a replay queue for the reachable-transition case
- Stack tracker checklist, correlation rollup in Stats

**Exit criteria:** watch and phone agree on hold count after an airplane-mode-and-back test.

### Phase 3 — Stats, Challenges, Regimens, Rituals, Settings (3 weeks)

- Swift Charts: Stamina Score, duration, pullback rate
- Stamina Score calculation and tap-through breakdown
- Fourteen badges, weekly challenges, anti-cheat rules
- Rule-based insights (no ML, no network)
- Three training regimens
- Pre-session ritual builder
- Real Sex Mode, Tempo Lock, recovery tracker
- Custom phrase injection, failure protection, session playlists, angel skins
- Siri Shortcuts via App Intents
- **Settings, Training Gear, Data Export, Delete All Data — Part E, this drop**

### Phase 4 — Polish, haptics, VoiceOver, privacy labels, TestFlight (2 weeks)

- App icon, splash animation
- Haptic tuning pass on device (the simulator lies about Core Haptics)
- VoiceOver: the Angel widget needs custom accessibility actions, not just a label — hold, back off, emergency and end must all be reachable without gestures
- Dynamic Type audit at the largest accessibility sizes
- Reduce Motion honoured for glitch, scanline and wing animations
- Privacy nutrition labels (see below)
- App Store screenshots
- TestFlight beta

### Phase 5 — Post-launch, optional

- CoreML PONR prediction, trained on-device via CreateML
- Partner Sync via local QR
- WidgetKit lock screen widget
- Ambient sound mixer

---

## Part E deliverables in this drop

| File | Contents |
|---|---|
| `DesignSystem.swift` | Colour and metric tokens, pixel/CRT typography, scanline and glitch primitives, brutalist row components |
| `TrainingGearView.swift` | E-1. Affiliate catalog, flat list UI, `SFSafariViewController` wrapper |
| `DataExportManager.swift` | E-2. CoreData fetch, RFC 4180 CSV writer, JSON envelope, protected temp files, share sheet |
| `PersistenceController+Wipe.swift` | E-2. Full store destruction and rebuild |
| `SettingsView.swift` | E. Settings shell wiring E-1 and E-2; sections 1–5 and 7 are stubs owned by Parts A–D |

**Before you build:**

1. Delete `DesignSystem.swift` if Part A already ships one — keep the Part A version.
2. Delete the `#if LL_STANDALONE_PART_E` block at the bottom of `PersistenceController+Wipe.swift` once the real `PersistenceController` exists, and port the two store options documented there into it.
3. Bundle a pixel font, or headers fall back to heavy monospaced system type. Press Start 2P and Silkscreen are both OFL 1.1 and free for commercial use. Ship the licence file alongside.
4. Replace every `REPLACE_ME` affiliate URL in `TrainingGearCatalog`.
5. Confirm the attribute names in `SessionAttribute` match the Part A CoreData model.

---

## Info.plist

### Background audio — required, and easy to get wrong

```xml
<key>UIBackgroundModes</key>
<array>
    <string>audio</string>
</array>
```

This alone is not enough. The declaration only grants permission; iOS suspends the
app anyway the moment the audio graph goes silent. The coach speaks in bursts with
long gaps between them, so:

- Configure the session **once at launch**, not per utterance:

  ```swift
  try AVAudioSession.sharedInstance().setCategory(
      .playback,
      mode: .spokenAudio,
      options: [.mixWithOthers, .duckOthers]
  )
  try AVAudioSession.sharedInstance().setActive(true)
  ```

- `.mixWithOthers` keeps the user's external media playing. Without it the coach
  stops their video the first time it speaks, which kills the entire product.
- `.duckOthers` drops the media volume under the coach instead of talking over it.
- **Keep a continuous silent stream running for the session's duration.** Either
  run the binaural generator at zero amplitude when the user has beats off, or
  feed an `AVAudioPlayerNode` a silent buffer on loop. A gap of more than a few
  seconds gets the app suspended and the next utterance never fires.
- Deactivate with `.notifyOthersOnDeactivation` at session end so the media app
  gets its volume back.
- Handle `AVAudioSession.interruptionNotification`: a phone call mid-session must
  pause cleanly and resume, not silently kill the coach.

### Usage descriptions

```xml
<key>NSHealthShareUsageDescription</key>
<string>Heart rate is read during a session to time coaching cues. It stays on your device.</string>

<key>NSMotionUsageDescription</key>
<string>Apple Watch motion is used to detect grip tension during a session. It stays on your device.</string>
```

There is no camera, microphone, photo library, contacts or location key, and there
must never be one. `NSMotionUsageDescription` covers the **watch** target only —
the iPhone target requests no motion access.

### Encryption declaration

```xml
<key>ITSAppUsesNonExemptEncryption</key>
<false/>
```

Skips the export-compliance prompt on every upload. Accurate here: the app uses
only Apple's own file protection.

---

## App Store privacy labels

Answer **"Data Not Collected"** to the entire questionnaire.

This is only true because it is architecturally enforced — no server, no analytics
SDK, no crash reporter, no ad network. Verify before every submission:

- [ ] No third-party SDKs in `Package.resolved` or the Podfile
- [ ] No `URLSession` calls anywhere outside `SFSafariViewController`
- [ ] No `os_log` or `print` statements containing session data
- [ ] Affiliate links open in Safari — a tap sends data to the merchant, not to us,
      so it does not change the answer, but keep the disclosure in `TrainingGearView`
      visible regardless

The privacy label is checked against the binary. A single analytics dependency
turns "Data Not Collected" into a false declaration and gets the app pulled.

---

## Pre-submission risk register

Read this before you spend eleven weeks building.

**1. Guideline 1.1.4 — the copy, not the app.** The binary contains no explicit
content, which is fine. But onboarding copy of the form "Porn is your gym" and
mode names built around it will read to a reviewer as an app whose primary purpose
is pornography use. The clinical vocabulary in this README is the mitigation:
"external media", "threshold hold", "session". Apply it to every string, every
screenshot and the App Store description. Position the app as ejaculatory-control
training — which is what it actually is, and which is a well-established clinical
indication. Expect a 17+ rating either way.

**2. The floating widget over other apps is the hardest technical constraint.**
iOS has no system-wide overlay API. The spec proposes `AVPictureInPictureController`.
That works only while the app is presenting real video, and using PiP as a general
overlay surface is a documented rejection path under 2.5.1 (private-API-adjacent
misuse of a public API). Validate this in week one, not week ten. Realistic
fallbacks, in order of safety:

- Live Activity / Dynamic Island — sanctioned, persistent, tappable, no video
  required. Interaction is more limited than a draggable widget but it survives review.
- Audio-and-haptics-only backgrounded coaching, with the Apple Watch as the
  interaction surface. This is the safest design and arguably the better one:
  the user's hands are busy and their phone is showing something else.
- Keep the Angel widget as an in-app foreground element for Zen Mode.

**3. Guideline 1.4.1 — health claims.** Never state that a supplement or device
improves control. `TrainingGearView` uses "marketed for" phrasing throughout for
this reason. Do not "improve" that copy.

**4. Affiliate links are fine; the disclosure is mandatory.** Physical goods sold
off-device are exempt from IAP (3.1.1). FTC 16 CFR Part 255 requires the disclosure
that ships in `TrainingGearView`. Leave it in.

**5. HealthKit review.** Apps requesting HealthKit must have a primary health
purpose and must not be rejected-on-sight for the surrounding context. Keep the
HR read narrow — one quantity type, read-only, no write, no background delivery.

---

## Testing notes

- Haptics and Core Motion do not work in the simulator. Phase 2 and the Phase 4
  haptics pass are device-only.
- Test the export path with an empty store: it must surface "No sessions recorded
  yet", not an empty file.
- Test `wipeAllData()` while a `@FetchRequest` view is on screen. Destroying a
  store does not emit ordinary change notifications — that is what
  `.llDataWasWiped` is for. Every view model holding fetched results must observe
  it and reset.
- Test the share sheet on iPad. An unanchored `UIActivityViewController` popover
  is a hard crash; `ShareSheet` sets the anchor, but verify after any refactor.
- Test with Reduce Motion and Reduce Transparency both enabled. The CRT and glitch
  layers must degrade, not disappear into unreadable contrast.
