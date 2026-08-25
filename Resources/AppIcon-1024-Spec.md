# APP ICON — PRODUCTION SPEC

**Asset:** `AppIcon` · 1024 × 1024 px · sRGB · PNG, no alpha channel, no transparency
**Rule:** flattened RGB only. Apple rejects icons containing an alpha channel.
**Rule:** no rounded corners, no drop shadow, no border. Ship a hard square; iOS applies the mask.

---

## Concept

A low-resolution pixel flame reading as an abstract angel silhouette at a glance —
one mark, two readings. Vivid red and amber against pure black. Brutalist: hard
pixel edges, zero anti-aliasing, no gradient smoothing, no gloss.

The icon sits on a home screen next to polished, rounded, gradient-heavy apps. Its
job is to look like a piece of instrumentation rather than a lifestyle product.

---

## Canvas and grid

| Property | Value |
|---|---|
| Canvas | 1024 × 1024 px |
| Pixel grid | 32 × 32 logical cells → **32 px per cell** |
| Scaling | Nearest-neighbour only. Never bilinear or bicubic. |
| Background | `#000000`, edge to edge, 100% opacity |
| Safe area | Keep the mark inside the central 820 × 820 px; iOS crops ~100 px per side under the squircle mask |
| Optical centre | Centre the mark on **y = 500**, not 512 — a flame reads bottom-heavy and sits low if mathematically centred |

Build the artwork at **32 × 32 px**, then export at 3200% with nearest-neighbour
interpolation. Drawing at 1024 and "adding a pixel look" produces soft edges that
show as grey fringing on device.

---

## Palette

Exactly five values. No sixth.

| Role | Hex | Where |
|---|---|---|
| Void | `#000000` | Background, negative space |
| Core | `#FFCC00` | Innermost flame, 3–4 cells, the hottest point |
| Body | `#FF9500` | Mid-flame transition band |
| Edge | `#FF3B30` | Outer flame body, the dominant colour by area |
| Ember | `#7A0F0A` | Base shadow, 2-cell foot only. Never elsewhere. |

Colour transitions are **hard cell boundaries**. No dithering, no gradient ramp, no
intermediate tones. The step from `#FF3B30` to `#FF9500` happens on one cell edge.

---

## Form

Read from the bottom up:

1. **Base (rows 26–30)** — two-cell `#7A0F0A` foot, four cells wide. Grounds the mark.
2. **Body (rows 14–26)** — `#FF3B30` mass, widest at row 21 (approx. 14 cells across),
   tapering both directions. Asymmetric: the left edge steps in one cell higher than
   the right. Perfect symmetry reads as a generic flame glyph.
3. **Wing notches (rows 15–19)** — two single-cell indentations cut into the outer
   silhouette, left and right, at the widest point. These are what make the flame read
   as an angel on second look. Subtle: a single cell each, no more.
4. **Mid band (rows 10–17)** — `#FF9500`, roughly 55% of the body's width, offset one
   cell right of centre so the flame reads as leaning.
5. **Core (rows 7–13)** — `#FFCC00`, three to four cells wide, the brightest point at
   row 10.
6. **Tip (rows 4–7)** — the flame narrows to a **single cell** at row 4, with one
   detached cell floating at row 2. That gap is the halo. It carries the angel
   reading and is the single most important cell in the icon — do not close it.

---

## What is forbidden

- Any emoji, or any glyph traced from an emoji
- Anti-aliased or feathered edges
- Gradient meshes, glows, bloom, or outer shadow
- Text, wordmark, or lettering of any kind
- A literal figure, wings drawn as wings, halos drawn as rings, or any rendering
  that resembles anatomy
- Apple-style gloss, bevel, or inner highlight
- Any colour outside the five listed above

---

## Verification

Before submitting, confirm all of the following:

- **Home-screen scale** — at 60 × 60 px the mark is still legible as a flame and the
  halo cell is still visible as a separate dot. If the halo merges into the tip, the
  gap is too small.
- **Spotlight scale** — at 40 × 40 px the silhouette holds. If it turns into an
  orange blob, the body is too wide relative to the tip.
- **Settings scale** — at 29 × 29 px the mark reads as a single vertical form.
- **Mask crop** — overlay the iOS squircle. Nothing meaningful outside the central
  820 px.
- **Alpha check** — `sips -g hasAlpha AppIcon.png` must report `no`.
- **Discretion check** — glance at it on a lock screen from arm's length. It must
  read as a utility or fitness app. A stranger seeing this icon over the user's
  shoulder should learn nothing. This is a real product requirement, not a nicety —
  the entire privacy promise on the paywall is undermined by an icon that announces
  what the app is for.

---

## Export

```
AppIcon.png                 1024×1024   → Assets.xcassets/AppIcon.appiconset
```

Single-size app icon (Xcode 14+). Xcode generates every downstream size. Set
**Appearances: None** — do not supply a light variant. This app is dark only, and a
light-mode icon variant would be the one surface that breaks that.

For iOS 18+ tinted and dark home-screen icon variants, supply the same artwork with
the background alpha-cut for the tinted slot; the flame silhouette holds up as a
monochrome mask because the form is already a single connected shape.
