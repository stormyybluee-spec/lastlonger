# The Sampler
## Bottom navigation, textile direction - LAST LONGER

Design direction only. No code changed by this document.

Companion to the live lookbook, where every texture below is rendered rather
than described and the recommended bar is tappable.

---

## 0. The thesis

A sampler is a practice cloth: rows of the same motif worked over and over until
the hand knows them. That is the right object for this nav bar, and it happens to
be the right metaphor for what the app is for.

One rule underneath everything:

> **The cloth is woven, the icons are stitched, and nothing is drawn.**

### Where the two references meet

Two things came in. Probability densities, which are lobed and nodal and
symmetric but not quite. And a sheet of sigils, white on black, ornamental and
slightly menacing.

Embroidery is the join:

- **Satin stitch is a probability plot.** Parallel thread runs filling a closed
  lobe, each overshooting the edge. Laid down in floss, a two-lobe orbital and a
  satin-stitched motif are the same object.
- **A cross-stitch motif is a sigil you can count.** The sigil sheet is white
  marks on black at a fixed grid. So is counted work.

So the orbital lives at **bar scale**, where a lobed form is large enough to
read, and the sigil lives at **motif scale**, where counted work stays legible.
Neither is asked to do the other's job. That split is the whole design.

### Why "bird's eye" matters

Looking down at cloth rather than at a rendering of cloth means three things,
and getting any of them wrong makes it read as a texture overlay instead of a
material:

1. **Threads cross, they do not blend.** Warp over weft, hard edges, no gradient.
2. **Every stitch catches light on one side only.** A single light direction,
   upper-left, is what makes it three-dimensional.
3. **Nothing is perfectly regular.** Jitter every endpoint by a fraction of a
   point. Machine-perfect spacing reads as a grid, not as cloth.

---

## 1. Mood board

Five references. The fourth is the one that changed the direction.

| # | Reference | What it contributes |
|---|---|---|
| 1 | **Aida cloth under raking light** (macro, cross stitch) | The even-weave ground. Square holes, visible warp and weft, light on one side of every thread. |
| 2 | **Blackwork, inverted** (Elizabethan counted work) | Geometric repeats in one thread on one ground. Historically black on white; this runs it the other way, which is where the sigil sheet lives. |
| 3 | **Satin-stitch lobe** (the probability plot) | Parallel runs filling a shape, each overshooting the edge. |
| 4 | **Sashiko and boro** (indigo, running stitch) | White running stitch on indigo, worked to reinforce cloth already worn through. |
| 5 | **Darning sampler** (repair, grid) | A grid of small woven patches, each a different weave, worked as practice. |

**On reference 4.** Sashiko is repetitive reinforcement stitching, and boro is
what you call the cloth afterwards: mended so many times it ends up stronger than
it was new. For an app about training a physical capacity through repetition,
that is not a texture reference, it is the product thesis in cloth. It is why the
selection indicator is a running stitch and not an underline, and why the palette
sits on indigo rather than neutral black.

---

## 2. Three directions

### Concept A - THE SAMPLER  (recommended)

Woven ground. A barely-there satin-stitched orbital ghost bleeding behind the
whole strip. Four counted cross-stitch motifs on top. Selection is a madder
running stitch under the label. The press flips the light from upper-left to
lower-right so the patch reads as sinking.

**Take this one.** It is the only direction where the icons survive at 28pt and
the texture still registers at arm's length. Cheapest of the three to build, and
it touches nothing outside the bar.

### Concept B - TAUT  (high risk)

No patches, no icons in the usual sense. The bar is one continuous woven field
and each tab is a disturbance in it: threads bending around a form pressing up
from underneath, like fabric pulled over an object. Selection deepens the pull
and runs one madder thread through the distortion.

Most surprising and most genuinely textile of the three. Also the only one where
a stranger cannot tell which tab is Settings, because a bulge in cloth is not an
icon.

**Do not ship as navigation.** Keep it for a surface where nothing depends on
being understood - a session background, or the Stats header.

### Concept C - UNWORKED  (the dramatic cut)

Same cloth and same motifs as A, with one change: unselected tabs are not
stitched at all. They are pricked outlines, needle holes in bare cloth where the
thread has not been laid yet. Only the selected tab is worked in floss.

The metaphor is exact, and for an app about practice, unfinished work carrying
meaning is right. The cost is that three of four tabs are close to invisible in a
dim room, which is the exact condition this app is used in.

**Hold in reserve.** Strongest idea here, worst fit for a nav bar. It belongs on
the Challenges screen for locked entries, where invisible-until-earned is the
point.

---

## 3. Specification (Concept A)

### Palette

| Token | Value | Role |
|---|---|---|
| Ground | `#1A1A1E` | `LL.Palette.background`. Unchanged. |
| Weave warp | `LL.Palette.card` at 16-26% | Vertical threads |
| Weave weft | `LL.Palette.rule` at 10-18% | Horizontal threads |
| Dim floss | `LL.Palette.textDim` | Unselected motif |
| Bright floss | white at 92% | Selected motif. Never pure white. |
| Thread highlight | `#C8BCA6` at 30% | Light catch, upper-left leg only |
| Madder | `LL.Palette.edge` | Running-stitch selection line |
| Ghost | `LL.Palette.circuit` at 5% | Satin orbital behind the bar only |

One addition, `#C8BCA6`, a linen highlight. It is not an interface colour and
appears only as the light catch on thread.

### Geometry

| Element | Value | Note |
|---|---|---|
| Bar height | 58pt | Unchanged. `InstrumentTabBar.height`. |
| Weave pitch | 3pt | Below 3pt it moires on 3x panels |
| Icon box | 28pt | Up from 16pt. Counted work needs room. |
| Icon grid | 11 x 11 | 2.55pt per cell |
| Stitch stroke | 0.9pt | 2.7px at 3x. Thinner vanishes. |
| Stitch jitter | 0.35pt | Hashed on index, never random |
| Running stitch | 4pt on, 3pt off, 2pt tall | Selection line |
| Label | 8pt, 1.1 kerning | Unchanged |

### The four motifs

All 11 x 11 counted grids, authored as string bitmaps in the same style as
`PixelType.glyphs`:

- **Home** - four filled quadrant blocks, a map grid
- **Stats** - three ascending bars
- **Challenges** - concentric ring with a solid centre
- **Settings** - three slider tracks with knobs at different positions

Bars rather than an ECG line for Stats: at 11 cells a waveform turns to mush,
and bars read as "stats" instantly at any size.

### States

| State | Motif | Cloth | Light |
|---|---|---|---|
| Rest | Dim floss, no highlight pass | Flat weave | None |
| Selected | Bright floss + highlight pass | Weave 15% denser | Upper-left catch |
| Pressed | Bright floss, highlight inverted | Weave compressed 3% | Lower-right catch |

**The press is the one that matters.** Colour alone reads as software. Flipping
the light from upper-left to lower-right is what a real surface does when it goes
from proud to sunk, and it is the entire trick: two draws, no shadow layers, and
the button stops feeling like a rectangle that changed colour.

Haptic stays `HapticEngine.shared.play(.tick)` on the tap itself, so the press
visual and the tap land on the same frame.

---

## 4. Implementation notes

Everything is `Canvas`. No Core Image, no blur stacks, no image assets. The bar
is one Canvas for the cloth plus one per icon, and it redraws only on selection
change.

### The cloth

```swift
Canvas { ctx, size in
    for x in stride(from: 0, to: size.width, by: 3) {
        let a = 0.16 + hash(Int(x)) * 0.10
        ctx.fill(Path(CGRect(x: x, y: 0, width: 1, height: size.height)),
                 with: .color(LL.Palette.card.opacity(a)))
    }
    for y in stride(from: 0, to: size.height, by: 3) {
        let a = 0.10 + hash(Int(y) & 977) * 0.08
        ctx.fill(Path(CGRect(x: 0, y: y, width: size.width, height: 1)),
                 with: .color(LL.Palette.rule.opacity(a)))
    }
}
.drawingGroup()
```

### One cross stitch

Two diagonals plus a light catch on the upper-left leg. Jitter the endpoints or
the grid reads as machine work.

```swift
func stitch(_ ctx: inout GraphicsContext, _ r: CGRect, _ c: Color, lit: Bool) {
    var a = Path(); a.move(to: r.topLeftJittered); a.addLine(to: r.bottomRightJittered)
    var b = Path(); b.move(to: r.topRightJittered); b.addLine(to: r.bottomLeftJittered)
    ctx.stroke(a, with: .color(c), lineWidth: 0.9)
    ctx.stroke(b, with: .color(c), lineWidth: 0.9)
    if lit {
        ctx.stroke(a, with: .color(Color(hex: 0xC8BCA6).opacity(0.30)), lineWidth: 0.4)
    }
}
```

### Running stitch

```swift
var line = Path()
line.addRect(CGRect(x: x0, y: y, width: w, height: 2))
ctx.stroke(line, with: .color(LL.Palette.edge),
           style: StrokeStyle(lineWidth: 2, dash: [4, 3]))
```

Plus a small dark circle at each end. The needle holes are what sell it as hand
work rather than a dashed border.

### Rules that keep it from breaking

- **Draw the cloth once.** Its own `Canvas` with `.drawingGroup()`. It changes
  only on selection, so it must not sit in a per-frame path.
- **Hash, never random.** Thread jitter must be a pure function of stitch index.
  Random per frame makes the cloth crawl, which is the fastest way to make this
  look like a rendering bug.
- **Keep the 58pt height.** The icon box grows 16pt to 28pt inside the existing
  bar and the label stays. No layout elsewhere moves.
- **Reduce Motion** keeps every texture and drops only the press animation.
  Texture is not motion; removing it would remove the design.
- **Reduce Transparency** should raise weave alpha rather than hide it, so the
  cloth stays legible when the system flattens.

---

## 5. The honest limit

At 28pt an 11 x 11 grid gives 2.55pt cells. A cross stitch that small does not
read as an X. It reads as a slightly restless square.

That is the correct outcome and the point of the whole direction: at arm's length
this is **texture**, not detail. You feel the cloth more than you see it. Anyone
who leans in finds real stitching, and nobody needs to.

Judge the concepts small. Small is where they live.

If the texture turns out to be invisible on a real panel in a dark room, the dial
is weave alpha, not stitch size - raising warp to 26% and weft to 18% brings the
cloth up without touching the motifs.
