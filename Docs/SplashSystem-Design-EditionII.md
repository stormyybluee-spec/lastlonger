# The Slow Room
## Splash system, Edition II - tab transitions, LAST LONGER

Design direction only. No code changed by this document.

Edition I (`SplashSystem-Design.md`) is not replaced. This is its opposite half.

---

## 0. Why a second edition at all

Edition I was **electric and dry**: hard pixels, CRT phosphor, circuit gold,
chromatic split, sheared type. Its subject was *anticipation* - the moment right
before contact.

Edition II is **thermal and wet**. Same void, other end of the temperature range.
Its subject is the thing the app is actually named after:

> **Duration.** Eight processes that cannot be hurried.

Dilation, falling, decay, diffusion, condensation, tide, dissolution, persistence.
Not one of them can be rushed by wanting it to go faster, which is the entire
premise of the product rendered as physics rather than as iconography.

That is the organising rule, and it is what keeps this set from being a reskin:

**Edition I draws events. Edition II draws processes.**
An event has a moment. A process only has a rate.

### How the two editions relate

Three ways to ship, all valid:

| Option | Behaviour | Reads as |
|---|---|---|
| **A** | Ship Edition II only | Softer, slower, more physical app |
| **B** | Ship Edition I only | Colder, harder, more clinical app |
| **C** | Pool all 16, roll `0..<16` | Widest texture. Risks feeling like two apps. |

Recommendation: **A or B, not C.** Sixteen variants is past the point where a user
can form a sense of the set, and the two editions have deliberately opposed
temperatures - interleaved, they fight. If you want both, ship II now and hold I
as a seasonal swap.

---

## 1. The thermal ramp

Edition II's one new palette idea. A false-colour thermographic ramp, which is a
real instrument's palette and so stays inside the app's existing "everything is an
instrument" language.

| Stop | Hex | Reads as |
|---|---|---|
| Cold floor | `#071A2E` | Unlit, unwarmed |
| Cold | `#0A84FF` | App Data blue. Glass, water, distance. |
| Mid | `#6B4BA8` | **New.** The crossover. Violet, never used in UI. |
| Warm | `#FFCC00` | App Rising. Body heat. |
| Hot | `#FF3B30` | App Edge. Load. |
| White hot | `#FFF1E8` | **New.** Core only, never a field. |
| Wet highlight | `#B8ECFF` | Specular on any liquid surface |

Two additions only - the violet crossover and the white-hot core. Both exist so a
thermal gradient can actually resolve; neither is ever allowed to become an
interface colour.

**Each splash occupies one band of the ramp and stays there.** That is the set's
internal logic: the eight are ordered by temperature, and the order is real
information, not decoration. Cold ones are quiet, hot ones are loud, and a user
who never consciously notices still ends up with the sense that the app has a
temperature range.

Ground stays `#1A1A1E`. Raised plates stay `#2C2C2E`. Nothing here overrides that.

---

## 2. Envelope, haptics, motion

Unchanged from Edition I, deliberately - the envelope is the thing that makes any
set feel like one instrument.

```
0.00s  fade in     0.10s   ease-out, opacity 0 -> 1
0.10s  process     0.30s   the rate is visible
0.40s  fade out    0.10s   ease-in, opacity 1 -> 0
────────────────────────────────────────
       total       0.50s
```

**One difference in how the middle is animated.** Edition I animated one
*property* to a destination. Edition II animates one *rate*, and the splash is cut
off mid-process by the fade. Nothing here completes. The bead never finishes its
run, the block never finishes decaying, the bloom never finishes spreading.

That is the point, and it is worth being stubborn about in review: a process that
visibly finishes inside 300ms is an event, and you have accidentally rebuilt
Edition I.

| Splash | Band | Haptic | Shape |
|---|---|---|---|
| 1 Condensation | Cold | `.tap` | single light |
| 2 Tidemark | Cold | `.cooldown` | slow descending swell |
| 3 Soluble | Cold-mid | `.deselect` | soft descending |
| 4 Afterimage | Mid | `.select` | quick double |
| 5 Half-Life | Mid | `.tempoTick` | dry click |
| 6 Grain | Mid-warm | `.phaseChange` | ascending triple |
| 7 Dilate | Warm | `.thresholdHold` | long sustained swell |
| 8 Thermal | Hot | `.countdownFire` | one heavy hit |
| RARE Dry | - | *(none)* | silence is the point |

**Reduce Motion.** Each degrades to a static frame at roughly 60% through its
process - mid-decay, mid-bloom, mid-run. Still 0.5s, still fading. A process frozen
part-way still reads as a process, which is why this set degrades better than
Edition I did.

---

## 3. The roll

Identical to Edition I, because the requirement has not changed:

```
let index = Int.random(in: 0..<8)   // fresh, independent, repeats allowed
```

No shuffle bag, no cycle, no weighting by tab. A back-to-back repeat lands about
12.5% of the time at eight variants, and that is what random looks like.

---

## 4. The eight

Ordered by temperature, coldest first. This is also a reasonable build order -
the cold ones are the cheapest.

---

### Splash 1: CONDENSATION
**Band: cold** (`#0A84FF`, `#B8ECFF` on `#071A2E`)

**Design description.**
A cold dark pane, seen close. Scattered across it, two dozen beads of moisture at
varying sizes, each a flat circle with a single specular pixel on its upper-left.
The beads do not move. Over the 300ms one bead - not the largest, off-centre -
grows until it loses grip and **runs**, dragging a narrow wet channel down through
the field and swallowing two smaller beads on the way. It is still running when
the splash fades.

Everything else on screen stays perfectly still. One bead moves.

**Mood / taste.**
Cold glass that has been breathed on, and one drop losing its hold.

**Implementation.**
`Canvas`. Beads are a fixed array of `(x, y, r)` seeded once as a constant - do not
randomise per appearance, the composition should be authored. Draw each as a
filled `Path(ellipseIn:)` in `#0A84FF` at 0.5 alpha, plus a 1pt `#B8ECFF` rect at
the upper-left for specular. The runner is one bead whose `y` is driven by an
`.easeIn` curve and whose trail is a tapering `Path` stroked behind it. Round every
coordinate so the circles stay chunky rather than antialiased into softness.

**Reference.**
Macro photography of a cold window. The bathroom-mirror shots in *Catherine: Full
Body*'s apartment scenes.

---

### Splash 2: TIDEMARK
**Band: cold** (`#0A84FF` on `#1A1A1E`)

**Design description.**
A single horizontal line, one pixel, spanning the full width, descending slowly
from the upper third. Above it the ground is a shade lighter than the void -
territory the line has already crossed. Below it, pure void.

At the line's exact position sits a two-pixel band of `#B8ECFF`, the meniscus. As
it descends it leaves a faint residue: every eight rows, a slightly brighter
horizontal mark stays behind, so by the end the upper field is faintly striped with
the record of where the level has been.

It does not reach the bottom.

**Mood / taste.**
A level dropping in a tank, marking every place it has been.

**Implementation.**
The simplest of the eight, and worth building first as the envelope test rig.
`Canvas`: one `fillRect` for the crossed territory above the line, one bright rect
for the meniscus, and a loop drawing residue marks at fixed intervals whose alpha
is a function of distance from the current level. Animate a single `level: CGFloat`
with `.easeOut` so the descent decelerates and never lands.

**Reference.**
Laboratory graduated cylinders. The waterline stains on a harbour wall.

---

### Splash 3: SOLUBLE
**Band: cold-mid** (`#0A84FF` into `#6B4BA8`)

**Design description.**
A solid rectangular slab sits centre-frame, filling maybe a third of the screen,
in flat cold blue. Then the ground begins to eat it. The dissolution starts at the
corners and works inward as a ragged pixel front - blocks detaching one at a time,
the edge going lacy, the interior still intact. Detached blocks do not fall; they
simply stop existing.

Where the front is currently active, the exposed edge glows one step warmer -
violet - as if dissolving costs energy.

Roughly 40% is gone when the splash fades.

**Mood / taste.**
Something solid discovering it is not.

**Implementation.**
`Canvas` over a coarse cell grid (8 columns × 14 rows is plenty). Precompute a
per-cell `dissolveAt: Double` from a hash of the cell index, biased so corner cells
get low values and centre cells high - that gives a corners-inward front for free
and is deterministic, so it looks authored rather than noisy. Draw a cell if
`t < dissolveAt`; draw its edge in `#6B4BA8` if `dissolveAt` is within a small
window of `t`. No physics, no particles.

**Reference.**
Dithered transparency in early PC games. A sugar cube in the first second.

---

### Splash 4: AFTERIMAGE
**Band: mid** (`#6B4BA8`, complementary `#FFCC00`)

**Design description.**
The most conceptual of the eight, and the one that uses the medium itself.

For the first 120ms a simple hard shape - a filled circle, off-centre - burns at
near-full brightness in warm amber. Then it cuts to nothing. And for the remaining
180ms its **complement** hangs in the void where it was: the same shape in cool
violet, at low alpha, decaying.

The splash is a flash and its own retinal ghost, drawn rather than left to the eye.
A 500ms interstitial is already exploiting persistence of vision; this one is about
that.

**Mood / taste.**
The picture you already saw, still deciding whether to leave.

**Implementation.**
Two `Canvas` passes on a time switch, no interpolation between them - the cut must
be instant. Bright pass: `#FFCC00` at 0.9. Ghost pass: `#6B4BA8` with alpha
decaying on an `.easeOut` from 0.35 to 0. Keep the bright phase genuinely short;
the whole effect fails if the flash outlasts the ghost.

**Warning.** The bright phase is the highest-luminance frame in either edition.
Cap it at 0.9 alpha, keep it under 130ms, and verify it does not out-glow the Home
screen. If it reads as a flinch, drop the alpha before you drop the idea.

**Reference.**
Op-art afterimage plates. The negative frames in *Agony*'s transitions.

---

### Splash 5: HALF-LIFE
**Band: mid** (`#6B4BA8` on `#1A1A1E`)

**Design description.**
A dense, perfectly regular block of lit pixels - a full grid, evenly spaced, cold
violet, filling the centre two thirds. Order.

Then it decays. Each frame, a random half of the remaining lit pixels go dark.
Not a wipe, not a fade - individual pixels simply stop, chosen at random, so the
block thins from uniform to sparse to scattered survivors. The decay is
exponential, so the first frame is dramatic and the last few are nearly still.

By the fade there are perhaps a dozen pixels left, scattered, holding on.

**Mood / taste.**
Order thinning out, and a few pixels refusing.

**Implementation.**
The only splash where the randomness is genuinely per-frame rather than authored.
Hold a `Set<Int>` of live cell indices; each tick, remove each with probability
`p` tuned so ~12 survive at t=1. Draw survivors as `fillRect`. Reseed on every
appearance so no two showings decay identically - this is the one place in either
edition where that is correct, because the subject *is* randomness.

Under Reduce Motion, render a single pre-computed 60%-decayed frame rather than
running the process.

**Reference.**
Radioactive decay plots. Dead pixels on a failing panel.

---

### Splash 6: GRAIN
**Band: mid-warm** (`#FFCC00` at low luminance)

**Design description.**
The screen is showing something - a flat warm field, faintly textured, ordinary.
Then it starts to lose material. Individual pixels detach from the field and
**fall**, accelerating under gravity, leaving behind holes of pure void that do not
refill.

The falling pixels are slightly brighter than the field they came from, so the
image reads as shedding sparks downward while going moth-eaten above.

Perhaps sixty pixels have fallen when the splash fades. The field is still mostly
intact. It is only just beginning.

**Mood / taste.**
An image that has started to come loose from itself.

**Implementation.**
`Canvas` with a small particle array - cap it at 80, they are 1×1 rects. Each
particle stores its origin cell (so the hole can be punched in the field) and a
`vy` integrated with a constant gravity. Field is a `fillRect` with holes drawn as
void rects at each departed origin. Do not use a particle library or `SpriteKit`
for eighty rectangles.

**Reference.**
Sand falling out of a torn bag. Film emulsion lifting off its base.

---

### Splash 7: DILATE
**Band: warm** (`#FFCC00` core into `#FF3B30` rim)

**Design description.**
Dead centre, a ring. Not a filled circle - a ring, three pixels thick, quantised
hard to the pixel grid so the curve is visibly stepped rather than smooth. Inside
it, pure void. Outside it, pure void.

Over the 300ms the ring **opens** - radius growing on a decelerating curve, as a
pupil does when the light drops. As it widens, its interior does not stay empty:
a warm bloom builds inside it, amber at the aperture edge falling to nothing at the
centre, so the ring reads as an opening onto something lit rather than a shape on
a ground.

It is still opening when the splash ends.

**Mood / taste.**
An aperture opening one stop onto a room that is warmer than this one.

**Implementation.**
`Canvas`. Draw the ring by stepping angle and rounding each point to the pixel
grid - `Circle().stroke()` will antialias and lose the whole aesthetic. The
interior bloom is a `RadialGradient` clipped to the ring's inner radius, amber at
the rim to clear at the centre, plus a `drawLayer { .blur(radius: 6) }` pass on the
ring itself in `#FF3B30` for rim heat. Animate radius with
`.easeOut(duration: 0.3)`.

**Reference.**
Iris shutters. The lighting transitions in *Catherine*'s confessional booth.

---

### Splash 8: THERMAL
**Band: hot** (full ramp, `#071A2E` through `#FFF1E8`)

**Design description.**
The only splash that uses the entire ramp at once, and therefore the loudest of the
eight. Use it as the set's ceiling.

The frame is a cold field - deep blue, faintly noisy, like a thermal camera looking
at an empty room. Then a mass warms, off-centre and low. It does not appear; it
**diffuses** into existence, spreading outward through the false-colour ramp as it
goes: the core climbing blue to violet to amber, a white-hot centre resolving last,
each isochrome a visible hard-edged band because the whole thing is quantised to
the pixel grid.

The bands are the point. This is thermography, not a glow.

**Mood / taste.**
An empty room, and something in it warming up faster than it should.

**Implementation.**
`Canvas`, per-cell. For each cell compute `heat = f(distance to source, t)` with a
diffusion falloff, then quantise `heat` into six bands and look the colour up from
a fixed ramp array - do not interpolate, the hard bands are the aesthetic. A 32×56
cell grid is ample and stays cheap. Cold-field noise is a static per-cell offset
seeded once, not per frame, so the background does not crawl.

**Reference.**
FLIR imagery. Medical thermography plates.

---

### RARE: DRY
*not in the deck - 1 in 64*

**Design description.**
Void. `#1A1A1E`, edge to edge, for 420ms. Nothing fades in, nothing moves, nothing
is drawn.

Then, for the last three frames, **one pixel** lights at exact centre in
`#FFF1E8`. One. Then the normal fade out.

No haptic. The set's only silent card.

**Mood / taste.**
The process declining to start.

**Implementation.**
Trivial - a `Color` and one `Rectangle` on a time switch. It costs nothing to build
and it is the only splash that will make a user stop and wonder.

**The risk, stated plainly.** On first encounter this reads as a hitch or a dropped
frame. That is exactly why it works on the second encounter, and why the single
centre pixel is non-negotiable - without it there is no evidence of intent and it
is simply a bug. If the team is not comfortable shipping something that will be
mistaken for a stutter, cut it rather than compromising it; a diluted version of
this idea is worse than not having it.

Unlike Edition I's rare card, this one is **safe under Reduce Motion** - there is
no flash, no strobe, nothing to suppress. It can fire normally.

---

## 5. Build order

| Stage | Splashes | Why |
|---|---|---|
| 1 | 2 Tidemark, RARE Dry | Rects and a timer. Build the envelope here. |
| 2 | 5 Half-Life, 3 Soluble | Cell grids, no physics. |
| 3 | 4 Afterimage, 7 Dilate | Timing and quantised curves. |
| 4 | 1 Condensation, 6 Grain | Authored composition, light particle work. |
| 5 | 8 Thermal | Per-cell ramp lookup. Most expensive, ship last. |

Every one is `Canvas` plus the app's existing envelope and `Haptics` vocabulary.
No new dependencies. **No sprite assets at all** - unlike Edition I, nothing here
needs a hand-authored bitmap, which makes this the cheaper edition to ship.

---

## 6. What would make this fail

- **Letting a process finish.** If it completes inside 300ms it is an event, and
  the edition's whole thesis is gone. Tune every rate so the fade interrupts it.
- **Smooth curves.** Every circle, ring, bead and isochrome must be quantised to
  the pixel grid. `Circle().stroke()` antialiases and quietly turns this set into
  generic motion graphics.
- **Afterimage too bright.** It is the luminance ceiling of both editions. Verify
  it on a real panel in a dark room, not in the simulator.
- **Reseeding what should be authored.** Only Half-Life reseeds per appearance.
  Condensation's beads and Thermal's noise are compositions and must be constants,
  or they will look accidental.
- **Pooling all sixteen.** Two opposed temperatures interleaved reads as
  indecision, not range.
