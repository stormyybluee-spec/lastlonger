# BUILD SETUP

What Xcode needs that the source tree cannot carry on its own, and the two
checklist items that turned out not to be missing.

---

## 1. There is no `.xcodeproj`, and that is the actual blocker

The repository is source only. Nothing here can be opened and built until a
project exists, because target membership — which file compiles into the iPhone
app and which into the Watch app — is stored in the project file, not in the
folder layout.

Create it once:

1. **File → New → Project → iOS → App.**
   Product Name `LAST-LONGER`, Interface **SwiftUI**, Language **Swift**,
   Storage **None** (the CoreData stack is hand-built — see §2).
   Save it beside `App/`, `Models/`, `Views/` so the folders sit inside the
   project directory.
2. Delete the `ContentView.swift` and `Assets.xcassets` Xcode generates, and the
   `LAST_LONGERApp.swift` it generates — `App/LastLongerApp.swift` is the real
   entry point and two `@main` types will not compile.
3. **File → Add Files to "LAST-LONGER"…** and add every folder with
   *Create groups* selected (not *Create folder references* — folder references
   do not compile).
4. Add the watch target: **File → New → Target → watchOS → App**, named
   `LAST-LONGER Watch`. Choose *Watch App for Existing iOS App* if the dialog
   offers it, so the bundle identifiers are nested correctly.
5. Set target membership per §3.
6. Set `INFOPLIST_FILE` and turn **off** `GENERATE_INFOPLIST_FILE` on both
   targets (see §4).

---

## 2. Two checklist items that were not actually missing

**The CoreData model.** `Storage/Persistence.swift` builds the whole schema in
code — `LastLongerModel.make()` returns an `NSManagedObjectModel` assembled from
`NSEntityDescription`s, with all eight entities (`CDSession`, `CDBadge`,
`CDChallenge`, `CDRegimen`, `CDPlaylist`, `CDUserSettings`, `CDStackTag`,
`CDCustomPhrase`), their attributes, defaults and uniqueness constraints, plus
the `@objc` `NSManagedObject` subclasses. The file's own header explains why:
the schema lives under source control as readable text and no one has to open
the Xcode model editor to migrate it.

So **do not add an `.xcdatamodeld`.** Adding one creates a second model, and
`NSPersistentContainer(name:managedObjectModel:)` would then load whichever the
initialiser is handed while Xcode compiles the other into the bundle — the
failure mode is a store that opens against the wrong schema at runtime, which is
much harder to debug than a missing file. Pick **Storage → None** in the project
template for the same reason.

*Loose end worth knowing about:* `Storage/SessionStore.swift` builds a **second,
separate** CoreData stack in code, with its own entities (`SessionRecord`,
`ArousalSample`, `EmergencyEvent`). It compiles and it does not collide with
`Persistence.swift` — different entity names, different container — but two
independent stores in one app is almost certainly not intended. Decide which one
is authoritative before shipping. Nothing in this pass changed either.

**The Info.plist purpose strings.** `NSHealthShareUsageDescription`,
`NSHealthUpdateUsageDescription`, `NSFocusStatusUsageDescription` and
`UIBackgroundModes: [audio]` were all already written, in
`Resources/Info-plist-additions.xml`. That file is an XML *fragment*, not a
plist — it has no `<plist>` root and will not parse — which is probably why it
read as missing. It is now merged into two real plists (§4).

---

## 3. Target membership

This matters more than usual here, because six files are wrapped in `#if
os(watchOS)` / `#if os(iOS)` guards. The guards make a wrongly-assigned file
compile to nothing instead of erupting in errors, which is safe but silent — a
watch file left off the watch target simply will not exist, and you get
"cannot find 'WatchHaptics' in scope" rather than anything pointing at
membership.

| Folder | iPhone | Watch |
|---|---|---|
| `App/` | ✅ | — |
| `Models/` | ✅ | ✅ |
| `Views/Components/` | ✅ | ✅ |
| `Views/` (all other subfolders) | ✅ | — |
| `Audio/` | ✅ | — |
| `Storage/` | ✅ | — |
| `Watch/PhoneWatchLink.swift` | ✅ | — |
| `Watch/` (all other files) | — | ✅ |
| `Resources/Assets.xcassets` | ✅ | — |

Notes:

- `Models/` and `Views/Components/` go in **both** targets: the watch UI reads
  `Theme`, `SessionSignal`, `WatchState` and `SilentSignal` from them.
  `Views/Components/WatchHaptics.swift` is watchOS-guarded and inert on iPhone.
- `Watch/PhoneWatchLink.swift` is the one file in `Watch/` that belongs to the
  **iPhone**. It is `#if os(iOS)` guarded.
- `Views/Components/HapticEngine.swift` contains a watchOS-only section at the
  bottom (`WatchPatternHaptics`), which is why it is in both targets.

---

## 4. Info.plist wiring

Two plists, because the two targets need different purpose strings and shipping
the union on both is what draws purpose-string rejections.

| Target | Build setting | Value |
|---|---|---|
| iPhone | `INFOPLIST_FILE` | `Resources/Info.plist` |
| iPhone | `GENERATE_INFOPLIST_FILE` | `NO` |
| Watch | `INFOPLIST_FILE` | `Resources/Info-Watch.plist` |
| Watch | `GENERATE_INFOPLIST_FILE` | `NO` |

Leaving `GENERATE_INFOPLIST_FILE` at its default `YES` makes Xcode synthesise a
plist and ignore these files entirely — the app then launches with no background
audio mode and no purpose strings, and the first HealthKit call crashes.

`Resources/Info-plist-additions.xml` is kept only as the annotated source of
those decisions. It is not built and must not be added to a target.

---

## 5. Capabilities

Signing & Capabilities, per target. No plist key substitutes for these.

**iPhone**
- In-App Purchase
- HealthKit — only if you ship phone-side heart rate. If not, remove
  `NSHealthShareUsageDescription` from `Info.plist` too; an unused purpose
  string is itself a review flag.

**Watch**
- HealthKit
- Background Modes → **Workout Processing**

Without Workout Processing the watch app suspends the moment the wrist drops,
which kills heart rate, the four control buttons and the emergency haptic. See
the header of `Watch/HeartRateMonitor.swift`.

---

## 6. Assets

`Resources/Assets.xcassets` now contains:

- `AppIcon.appiconset/AppIcon-1024.png` — 1024×1024, sRGB, **no alpha**, five
  colours exactly, rendered from `Resources/AppIcon-1024-Spec.md` at 32×32 and
  scaled ×32 with nearest-neighbour so the pixel edges stay hard. Verified
  legible at 60/40/29 px with the halo cell still reading as a separate dot.
- `LaunchBackground.colorset` — `#000000` in both Any and Dark, referenced by
  `UILaunchScreen`.

Set `ASSETCATALOG_COMPILER_APPICON_NAME = AppIcon` on the iPhone target. The
Watch app needs its own icon set before submission; it is not included here.

Re-verify the alpha channel after any re-export:

```sh
sips -g hasAlpha Resources/Assets.xcassets/AppIcon.appiconset/AppIcon-1024.png
# hasAlpha: no
```

---

## 7. Font

`UIAppFonts` declares `Silkscreen-Bold.ttf`, which is **not in the repository** —
it is OFL-licensed and has to be downloaded and added deliberately, with its
`LICENSE.txt` shipped alongside it in the bundle.

Both type stacks degrade to a heavy monospaced system face when it is absent, so
the app builds and runs without it; it just does not look finished. After adding
the file, confirm the PostScript name matches:

```swift
UIFont.familyNames.forEach { print($0, UIFont.fontNames(forFamilyName: $0)) }
```

`LLFont` resolves `Silkscreen-Bold` → `Silkscreen` → `PressStart2P-Regular` →
`DepartureMono-Regular` and `PixelFont` resolves `Silkscreen-Bold`, so any of
those four will be picked up; the list is ordered so the two stacks cannot
select different faces.

---

## 8. First build

Expect the first compile to surface a handful of errors this pass could not
catch: no Swift toolchain and no iOS SDK exist in the environment these fixes
were made in, so everything here is static analysis. The type-level collisions
are resolved and the platform guards are balanced, but argument-level mismatches
inside function bodies are exactly the class of problem that only a compiler
finds. Work them top-down — in a tree this size one missing member often
accounts for a long tail of downstream errors.
