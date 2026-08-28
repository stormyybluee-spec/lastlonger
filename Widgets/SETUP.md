# Dynamic Island setup — LAST LONGER

The Live Activity code is written and wired. What remains cannot be done from
source: Xcode has to create the Widget Extension target. Follow these steps once.

Files involved:

| File | Belongs to |
|---|---|
| `Widgets/SessionDynamicIsland.swift` | **Both** targets (app + widget) |
| `Widgets/SessionCommandIntents.swift` | **Both** targets (the button intents) |
| `Widgets/DynamicIslandView.swift` | **Widget target only** |

---

## 1. Create the Widget Extension

1. In Xcode: **File → New → Target…**
2. Choose **Widget Extension** (iOS). Click Next.
3. Product Name: **`LastLongerWidgets`**
4. **Tick "Include Live Activity".** Leave "Include Configuration App Intent"
   unticked.
5. Click Finish. When Xcode asks **"Activate scheme?"**, click **Cancel** — you
   want to keep running the app scheme, not the widget scheme.

Xcode generates a folder with a few template files. Delete the generated
`*LiveActivity.swift` and `*Bundle.swift` **contents** later in step 3, or
replace them as described.

## 2. Assign the files to targets

Select each file, open the **File Inspector** (right panel, ⌥⌘1), and set
**Target Membership**:

- `SessionDynamicIsland.swift` → ✅ LAST LONGER **and** ✅ LastLongerWidgets
- `SessionCommandIntents.swift` → ✅ LAST LONGER **and** ✅ LastLongerWidgets
- `DynamicIslandView.swift` → ✅ LastLongerWidgets **only** (untick the app)

> Do NOT add `FocusModeController.swift` to the widget target - the button
> intents were moved to `SessionCommandIntents.swift` precisely so the widget
> doesn't drag in the app's Focus-status code.

> The error `Cannot find 'SessionLiveActivityWidget' in scope` in the bundle
> file means `DynamicIslandView.swift` is not yet a member of the widget target.
> `Cannot find 'SessionActivityAttributes'` or `'LogHoldIntent'` means the two
> shared files above are not members of the widget target. Fix by ticking the
> boxes here.

> `SessionDynamicIsland.swift` must stay in the **app** target — `SessionEngine`
> references `SessionActivityAttributes` and the controller. If you remove it
> from the app target the app will not compile.

## 3. Register the widget

In the generated `LastLongerWidgetsBundle.swift`, make the bundle expose our
widget:

```swift
import WidgetKit
import SwiftUI

@main
struct LastLongerWidgetsBundle: WidgetBundle {
    var body: some Widget {
        SessionLiveActivityWidget()
    }
}
```

Delete the generated template widget/Live Activity files so nothing else is
registered.

## 4. Info.plist — Live Activities

In the **app** target's Info.plist (not the widget's), add:

- Key: `NSSupportsLiveActivities`
- Type: Boolean
- Value: **YES**

(Source form: `<key>NSSupportsLiveActivities</key><true/>`)

## 5. Deployment target

Set the widget target's **Minimum Deployment** to **iOS 16.1** or later
(Live Activities), and **iOS 17.0** if you want the interactive
Hold / Recover / Emergency buttons. Below 17 the expanded view shows a
"Open LAST LONGER to log" line instead — that fallback is already in the code.

## 6. Build and run

Run the app on a **physical device with a Dynamic Island** (iPhone 14 Pro or
later). The Simulator renders Live Activities inconsistently, and the Dynamic
Island only exists on Pro hardware.

Start a session and swipe to the Home Screen — the mini Angel should appear.

---

## What is already done in code

- `SessionEngine.start(_:)` starts the activity, `tick()` pushes an update about
  once a second, and `finish()` / `emergencyStop()` end it.
- `LiveSessionModel` calls `engine.setEmergencyActive(_:)` so the island turns
  deep red the moment the emergency protocol fires, and clears it after.
- Every ActivityKit call is wrapped in `#if canImport(ActivityKit)` +
  `if #available(iOS 16.1, *)` and is a silent no-op when Live Activities are
  unsupported or the user has them switched off. The session behaves identically
  with or without the Dynamic Island.

## Known limits (not bugs)

- **Multi-tap is impossible.** ActivityKit has no tap-once / tap-twice / triple
  tap. A tap on the compact island only opens the app. The supported in-place
  control is the App Intent **buttons** in the expanded region (iOS 17+), which
  is what the widget uses.
- The widget shows elapsed time and state; `streak` is carried in the state
  struct but the engine pushes `0` because the streak lives in
  `LiveSessionModel`, not the engine. Nothing in the widget renders it today.

---

## Troubleshooting: extension not installing / `unsupportedTarget`

Symptom set: `LiveActivity start failed: unsupportedTarget`, **no** Live Activities
toggle under Settings → LAST LONGER, and no widget in iPhone Storage — even though
the widget compiles, is embedded, and every checklist box is ticked.

Your controller only calls `Activity.request` after `areActivitiesEnabled` is
true, so reaching the error means `NSSupportsLiveActivities` IS present. The
error therefore means: **iOS installed the app but does not recognise an
installed widget extension that declares an `ActivityConfiguration`.** After the
standard checklist, exactly two things cause that.

### The one decisive check — inspect the built app on disk

1. Xcode Project navigator → **Products** → right-click `LAST LONGER.app` →
   **Show in Finder**.
2. Right-click the `.app` → **Show Package Contents**.
3. Look for a **`PlugIns/`** folder:
   - **No `PlugIns/` folder, or it's empty** → the extension is NOT actually
     being installed. It's a **signing/entitlements** problem (Fix B).
   - **`PlugIns/LastLongerWidgetsExtension.appex` is present** → open it
     (Show Package Contents) → open its **`Info.plist`** → confirm it contains:
     ```
     NSExtension
       └─ NSExtensionPointIdentifier = com.apple.widgetkit-extension
     ```
     If that key is **missing or wrong**, iOS treats the .appex as a dead bundle
     and never registers the widget → `unsupportedTarget` (Fix A).

### Fix A — widget Info.plist is missing the WidgetKit extension point

This is the likely fallout of the earlier "Multiple commands produce Info.plist"
surgery. The widget extension's Info.plist MUST contain the `NSExtension` dict
above. Easiest correct state:

- Widget target → Build Settings → **Generate Info.plist File = YES**, and leave
  **Info.plist File (`INFOPLIST_FILE`) empty** for the widget. Xcode then
  synthesises the correct `NSExtension` dict automatically.
- If instead you point the widget at a hand-written Info.plist, it MUST include:
  ```xml
  <key>NSExtension</key>
  <dict>
      <key>NSExtensionPointIdentifier</key>
      <string>com.apple.widgetkit-extension</string>
  </dict>
  ```
  (No `NSExtensionPrincipalClass` / `NSExtensionMainStoryboard` — WidgetKit uses
  the `@main WidgetBundle`, not a principal class.)

### Fix B — the extension fails to sign, so it's stripped at install

An extension that can't be signed is silently dropped; the app still installs.

- Widget target → **Signing & Capabilities**: same **Team** as the app,
  **Automatically manage signing** ON, no red errors.
- **Remove every capability/entitlement the widget doesn't need.** If the widget
  has an entitlements file requesting App Groups, HealthKit, Background Modes,
  Focus, etc. that its profile doesn't grant, signing fails. This widget needs
  **nothing** beyond the default — it does not use an App Group (the button
  intents run in the app process). An empty/absent entitlements file is correct.
- On a **free / personal Apple ID team**, extensions and certain entitlements are
  limited and can fail to provision. Use a paid Apple Developer team if so.

### If you've spent hours — re-create the target from scratch (fastest)

Manual target/plist surgery leaves subtle breakage. Re-creating is ~10 minutes
and regenerates a correct Info.plist, Embed phase, dependency and signing:

1. Delete the `LastLongerWidgets` target (project → target → `–`). Keep your
   `Widgets/*.swift` files.
2. **File → New → Target → Widget Extension**, name `LastLongerWidgets`, tick
   **Include Live Activity**, **Cancel** the "Activate scheme?" prompt.
3. **Do NOT touch the new target's Info.plist or build settings.**
4. Delete the generated template `.swift` files (the widget, the control widget,
   the LiveActivity, and the bundle body) — see step 3 above and the
   template-deletion notes.
5. Set `LastLongerWidgetsBundle` body to `SessionLiveActivityWidget()`.
6. Add `SessionDynamicIsland.swift`, `SessionCommandIntents.swift` (both targets)
   and `DynamicIslandView.swift` (widget only) via Target Membership.
7. Product → Clean Build Folder, delete the app from the device, Run.

### Confirming success
The reliable signal is **Settings → LAST LONGER shows a "Live Activities"
toggle** after you start a session once. When that toggle is present, the
extension is registered and `Activity.request` will succeed.
