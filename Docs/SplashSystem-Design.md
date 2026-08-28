# The Interstitial System
## 8 splash variations for tab transitions - LAST LONGER

Design direction, not implementation. No code has been changed by this document.

---

## 0. The thesis

The onboarding splash stays exactly as it is. It is the app introducing itself, and
it is reserved.

This is a different instrument. A tab transition is a **half-second of held breath**
between two rooms. The onboarding splash announces; these interrupt. They should
feel less like a loading screen and more like a frame someone spliced into the film
while you were not looking.

The house style stays Precision Lo-Fi + Retro-Command + Glitch. What is new is the
**second register** underneath it, drawn from the reference imagery:

> Chiaroscuro. Flesh and epidermis. Moisture and gloss. Tension and friction.
> Anatomy implied by a single contour rather than drawn. The moment immediately
> before contact.

The rule that keeps this from becoming decoration: **the machine is rendered in
hard pixels, the body is rendered in one soft line.** Never both. The clash is the
point, and it is the same clash the Angel already makes against the Atlas grid.

### Taste guardrails

- **Suggestion over depiction.** Silhouette, contour, heat, gloss, negative space.
  Nothing anatomical is ever drawn explicitly. Every one of the eight reads as
  abstract geometry to a stranger and as something warmer to the user who knows
  what the app is for. This is also what keeps the set App Store safe, which
  matters given the compliance pass already done on this codebase.
- **Not overly bright.** These fire up to dozens of times a session. Peak
  luminance stays below the Home screen's. No full-white frames except the one
  rare variant, which is three frames long by design.
- **One accent per splash.** Spend the colour in a single place, keep the rest
  near-void. A splash with three competing hues reads as a bug.

### The palette

| Token | Hex | Used for |
|---|---|---|
| Void | `#1A1A1E` | Ground on all eight |
| Card | `#2C2C2E` | Raised plates, rarely |
| Edge | `#FF3B30` | Heat, threshold, overshoot |
| Safe | `#34C759` | Phosphor, recovery |
| Rising | `#FFCC00` | Amber terminal, ember |
| Data | `#0A84FF` | Telemetry, trace, orbit |
| Gold | `#C9A227` | Circuit traces (already `LL.C.pcbTrace`) |
| PCB deep | `#030B16` | Circuit substrate (already `LL.C.pcbDeep`) |
| Rose | `#D96B8A` | **New.** Anatomical contour only. Never UI. |

Rose is the one addition. It comes straight out of the pink construction lines in
the gesture-drawing reference, and it is deliberately *not* an interface colour -
it appears only where a body is implied, so it never competes with the signal
palette. Used on exactly two of the eight.

---

## 1. Timing, motion, and haptics

Every splash shares one envelope so the set feels like one instrument:

```
0.00s  fade in          0.10s   ease-out, opacity 0 -> 1
0.10s  hold / animate   0.30s   the splash does its one gesture
0.40s  fade out         0.10s   ease-in, opacity 1 -> 0
────────────────────────────────
       total            0.50s
```

Matching the existing `SplashView` (`hold = 0.5`, `fade = 0.25`) but compressed,
because this fires between tabs rather than once at launch.

**One gesture only.** Each splash animates exactly one property. A splash that
does two things at once reads as noise at 500ms.

**Haptics.** Fired on appearance, at t=0. The existing `Haptics` vocabulary
already has the right shapes:

| Splash | Haptic | Why |
|---|---|---|
| 1 Contact | `.thresholdHold` | long sustained swell, the held breath |
| 2 Seraph | `.tap` | single light |
| 3 Gooseflesh | `.select` | quick double, the shiver |
| 4 The Bind | `.warning` | sharp triple, the shear |
| 5 Threshold | `.countdownFire` | one heavy hit on the spike |
| 6 Confessional | `.tempoTick` | dry mechanical click |
| 7 Supine | `.cooldown` | slow descending swell |
| 8 Attractor | `.phaseChange` | ascending triple |
| RARE Interrupt | `.emergency` | rapid burst, once in 64 |

**Reduce Motion.** Every splash degrades to a static frame at its most
characteristic pose, still 0.5s, still fading. The app's existing components
(`PixelNoise`, `ChannelSplit`, `Scanlines`, `GlitchText`) already honour this;
follow their pattern rather than adding new motion paths.

---

## 2. The randomness

Requirement is a true roll, repeats allowed, no shuffle bag, no sequence.

```
index = Int.random(in: 0..<8)     // fresh roll per transition
```

That is the whole rule. `Int.random` is uniform and independent, so a repeat is
not a bug: at eight variants a back-to-back repeat lands ~12.5% of the time,
which is what "truly random" actually looks like and is exactly what a shuffle
bag would wrongly suppress.

**Do not** store the previous index and reroll. **Do not** cycle. **Do not**
weight by tab. Any of those reintroduce a pattern the brief rules out.

### The rare variant

One surprise, off the uniform roll:

```
if Int.random(in: 0..<64) == 0  ->  RARE: The Interrupt
else                            ->  the uniform 0..<8
```

Roughly once every sixty-four transitions the set breaks. Rare enough that a user
doubts they saw it, common enough that a daily user meets it within a week. This
is the "random surprising element" - the whole set is better for having one card
that is not in the deck.

---

## 3. The eight

---

### Splash 1: CONTACT
*was "Flame"*

**Design description.**
Two masses of pure void, one entering from the left edge and one from the right,
each a hard-pixelated silhouette. They do not touch. Between them a vertical gap
of two or three pixels wide, and that gap is the only lit thing on screen: a
gradient bloom running Edge red at the centre to Rising amber at the outer falloff.
Over the 300ms the gap narrows by one pixel and the bloom intensifies. It never
closes.

The flame is not drawn. The flame is the space between two things that are about
to touch.

**Mood / taste.**
Two cold bodies and one hot inch between them.

**Implementation.**
`Canvas`. Two `Path` silhouettes filled with `LL.Palette.void` over a bloom drawn
first: `ctx.drawLayer { $0.addFilter(.blur(radius: 8)) }` stroking a vertical line
in `Theme.edge`, then a tighter unblurred core in `Theme.rising`. Silhouette edges
must be quantised to the pixel grid - build them from `CGRect` runs, not curves.
Animate gap width with a single `withAnimation(.easeOut(duration: 0.3))`.

**Reference.**
The negative-space heat of *Agony*'s tunnels; the two-tone key lighting of
*Catherine*'s nightmare stairwells.

---

### Splash 2: SERAPH
*was "Angel"*

**Design description.**
The pixel cherub from the reference sheet, rendered as a single flat white sprite
on void - wings mid-flap, frozen at the top of the stroke. The halo is not a ring
but one blown-out horizontal bar, overexposed, as if the sensor clipped. A single
specular bead of `#D6F4FF` travels down the leading wing edge over the 300ms, like
a droplet finding a channel.

Nothing else moves. The sprite is completely static; only the bead runs.

**Mood / taste.**
A sprite caught mid-flinch, still wet from rendering.

**Implementation.**
Sprite as a `[[Bool]]` bitmap literal drawn by `Canvas` as filled `CGRect`s at
`Theme.Metric.gridPitch` scale - keeps it authentically low-res and costs nothing.
The bead is a 2x2 rect following a hand-specified point array along the wing, with
`.shadow(color:radius:)` for wet bloom. Halo bar gets its own `drawLayer` with
`.blur(radius: 6)` and additive white at 0.9 opacity.

**Reference.**
Reference image 1 (pixel cherub). The gloss language of *Bayonetta*'s angelic
enemies - holy iconography rendered in something slick.

---

### Splash 3: GOOSEFLESH
*was "Circuit"*

**Design description.**
The circuit board from the Training Board, but read as skin. Gold traces on the
deep blue substrate stop being wiring and start being capillaries - they branch,
they thin, they run under the surface. Then a wave crosses the board left to
right over 300ms, and as it passes, the vias **rise**: each solder pad gains a
one-pixel specular highlight on its upper-left, popping into relief and settling
back after the wave passes.

A board that reacts to being touched.

**Mood / taste.**
A circuit that shivers when you run a finger across it.

**Implementation.**
Reuse `CircuitHeatMapView`'s drawing vocabulary directly - `drawSubstrate`,
`drawTraces` and the via loop already exist and already use `LL.C.pcbSub`,
`pcbDeep`, `pcbTrace`, `pcbTraceHot`. The wave is a single `phase: CGFloat`
driving per-via highlight alpha as a narrow gaussian on `abs(via.x - phase * width)`.
Do not add new colours; `pcbTraceHot` is the highlight.

**Reference.**
The existing `CircuitHeatMapView`. Macro photography of skin at raking light.

---

### Splash 4: THE BIND
*was "Glitch"*

**Design description.**
"LAST LONGER" set in the pixel face, centred, but under load. The wordmark is
anchored at both ends and stretched horizontally - letterforms elongate, the
inter-letter gaps open, the tracking strains. Chromatic split widens with the
strain: red drifting left, Data blue drifting right. At roughly 240ms the pixels
**shear** - one horizontal band of the wordmark offsets hard by six pixels - and
then the whole thing snaps back to rest for the final 60ms.

The type is the material, and the material is being pulled.

**Mood / taste.**
Type pulled until the pixels give, then let go.

**Implementation.**
`PixelText("LAST LONGER", pixel:)` with an animated `.scaleEffect(x:)` and rising
`tracking`. Strain drives `.channelSplit(active:amount:)` - already in
`Effects.swift`. The shear is a `mask` splitting the view into three horizontal
bands with the middle band `.offset(x: 6)` for two frames. Both `ChannelSplit` and
`Jitter` already suppress themselves under Reduce Motion.

**Reference.**
Reference image 4 (the Y2K 3D-suite screenshot) for the clinical-tool framing;
tension of stretched latex for the letterforms.

---

### Splash 5: THRESHOLD
*was "Heart Rate"*

**Design description.**
A single ECG trace, one pixel thick, in Data blue, entering flat from the left at
exact vertical centre. Dead flat. Boring. It crosses two thirds of the screen
still flat - and then commits to one enormous spike that overshoots the top of
the frame entirely and blows out into Edge red at the clipping point, with a
bloom where it exits. It falls, undershoots, and settles.

Most of this splash is a flat line. That is what makes the spike land.

**Mood / taste.**
One honest spike on a long flat line.

**Implementation.**
`Canvas` stroking a `Path` built from an array of points, with the head clipped by
the canvas bounds so the overshoot genuinely leaves frame. Trace in
`Theme.data`; where `y < 0`, switch stroke colour to `Theme.edge` and add a
`drawLayer` blur bloom at the exit point. Animate by revealing the path with a
`trim(from:to:)` over 300ms - the flat portion consumes most of the duration, so
ease the trim with `.easeIn` to make the spike feel sudden.

**Reference.**
Instrument panels; the flatline-to-spike beat in horror sound design.

---

### Splash 6: CONFESSIONAL
*was "Retro Command"*

**Design description.**
Full CRT. Heavy scanlines, vignette, amber phosphor (`#FFCC00` at low luminance,
never full brightness). A single line of monospaced text types itself in at the
left margin, character by character, with a hard block cursor - then, before it
finishes the sentence, it **deletes itself** and the cursor blinks alone.

The line should be clinical and slightly too knowing. Rotate from a small set:

```
> SESSION 041 LOGGED
> SUBJECT DID NOT REPORT
> HOLDING...
> RECORD SEALED
> NO WITNESS
```

Phosphor persistence: deleted characters leave a decaying ghost for ~80ms.

**Mood / taste.**
A machine keeping score in the dark, and thinking better of saying so.

**Implementation.**
`.crtScreen(grid:scanlines:vignette:)` already exists in `CRTEffects.swift` - use
it wholesale. Text is `LLFont.terminal(11)` in `Theme.rising` at ~0.75 opacity.
Type-on is a `String.prefix(n)` driven by a timer; ghosting is a second `Text`
layer at low opacity with a delayed opacity animation. Cursor is a filled
`Rectangle` toggling on a 0.12s repeat.

**Reference.**
Reference image 5 (green datacentre hologram) for the ambient-machine feel,
retuned from green to amber so it does not read as Matrix cosplay.

---

### Splash 7: SUPINE
*was "The Grid"*

**Design description.**
The most restrained of the eight, and the one that carries the brief's second
register most directly.

A perspective grid recedes into total darkness - horizon high, lines converging,
pitch quantised to hard pixels, drawn in `#2C2C2E` and fading to nothing before it
reaches the vanishing point. Lying across that grid, in **rose** `#D96B8A`, a
single unclosed contour line: one continuous gesture describing the curve of a
spine and shoulder, exactly as an artist's construction line describes a figure
before any rendering happens.

No body. No fill. No face. One line, and the grid does the rest.

Over the 300ms, the grid drifts one pixel-row toward the viewer and the contour
brightens by 15%. That is all.

**Mood / taste.**
A figure implied by one line on an infinite floor, in a room with the lights off.

**Implementation.**
Grid: `Canvas` with rows spaced by a quadratic so they compress toward the horizon;
snap every y to `round()` so the perspective stays pixelated rather than smooth.
Contour: a hand-authored `Path` of ~8 `addQuadCurve` segments, stroked at
`lineWidth: 2` with `lineCap: .round` in rose, plus a `blur(radius: 5)` bloom pass
underneath at 0.35 alpha for the damp-air glow. Keep the stroke under 40% screen
height - it should feel found, not presented.

**Reference.**
Reference image 2 (the pink construction-line gesture study) is the direct source.
Chiaroscuro staging from *Catherine: Full Body*'s dream sequences.

---

### Splash 8: ATTRACTOR
*was "Chaos"*

**Design description.**
The Rossler orbit the Stats screen already draws, but wet and in miniature. The
full trajectory sits at ~35% opacity in Data blue, a cold ghost of the whole
attractor. Riding it, a bright head bead in `#B8ECFF` runs one full lap in 300ms,
dragging a glossy tail that decays behind it - and where the tail passes, the cold
trajectory briefly brightens, as if the line were being wetted.

The orbit visibly tightens over the lap: the last quarter is a cleaner loop than
the first.

**Mood / taste.**
Chaos learning to hold a shape.

**Implementation.**
`RosslerAttractor` and `AttractorBuilder` already exist in `Views/Stats/`. Build
one trajectory at a low `c` (ordered end, `RosslerAttractor.cOrdered`), cache it -
do not integrate per transition, that is 7k RK4 steps for a 500ms splash. Draw the
full path once, then stroke `trim(from: head - 0.12, to: head)` for the wet tail
with an additive blur pass. `AttractorGraphView` already demonstrates the exact
bloom-then-core stroke pattern.

**Reference.**
The app's own `AttractorGraphView`. Long-exposure light painting.

---

### RARE: THE INTERRUPT
*not in the deck - 1 in 64*

**Design description.**
Three frames. That is the entire splash.

Frame 1: full-frame inversion - the void goes bone white, and the Seraph sprite
appears as a **black** silhouette, wings down.
Frame 2: pure `#1A1A1E`, empty.
Frame 3: the sprite again, white on void, wings up, one frame only.

Then the normal fade. Roughly 90ms total of content inside a 500ms envelope. The
user will not be sure it happened.

**Mood / taste.**
Something got spliced into the reel.

**Implementation.**
Hard-cut opacity swaps on a `TimelineView(.animation)` or three chained
`asyncAfter` calls - no easing, no interpolation, the cuts must be instant.
`Haptics.shared.play(.emergency)` on frame 1.

**Accessibility is non-negotiable here.** This is a high-contrast flash and a
genuine strobe/photosensitivity concern. Under `accessibilityReduceMotion` **it
must not fire at all** - fall through to the uniform 0..<8 roll instead. Do not
merely slow it down.

---

## 4. Build order

Recommended sequence, cheapest to most involved, so the system can ship in stages:

| Stage | Splashes | Why |
|---|---|---|
| 1 | 6 Confessional, 7 Supine, 5 Threshold | Pure `Canvas` + existing effects. No new assets. |
| 2 | 4 The Bind, 8 Attractor | Reuse `PixelText` / `ChannelSplit` / `AttractorBuilder`. |
| 3 | 2 Seraph, RARE Interrupt | Needs the sprite bitmap authored once, shared by both. |
| 4 | 1 Contact, 3 Gooseflesh | Most bespoke drawing work. |

Everything above composes from components already in the repo:
`Canvas`, `PixelText`, `Wordmark`, `PixelNoise`, `ScanlineOverlay`, `Scanlines`,
`CircuitGrid`, `PrecisionGrid`, `RadialGridBackdrop`, `CRTVignette`, `GlitchText`,
`.crtScreen()`, `.channelSplit()`, `.jitter()`, `.glitch()`, `AttractorBuilder`,
`CircuitHeatMapView`, `Haptics`.

No new dependencies. No image assets except one hand-authored sprite bitmap.

---

## 5. What would make this fail

Worth stating, because these are the failure modes that turn a good set into
visual noise:

- **Too long.** At 0.5s this is a texture. At 0.8s it is an obstacle, and users
  will feel the app getting in their way on the fourth tab switch.
- **Too bright.** These fire constantly. If any splash out-glows the screen it
  interrupts, it becomes a flinch rather than a beat.
- **Too busy.** One gesture, one accent, per splash. The temptation is to combine
  glitch plus bloom plus scanlines plus type on every one. Resist it - the set
  reads as eight distinct things only if each is nearly empty.
- **A shuffle bag.** Suppressing repeats makes it feel curated, which is exactly
  what the brief rules out.
- **Skipping the Reduce Motion path**, especially on RARE.
