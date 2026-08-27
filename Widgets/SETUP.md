# Dynamic Island setup — LAST LONGER

The Live Activity code is written and wired. What remains cannot be done from
source: Xcode has to create the Widget Extension target. Follow these steps once.

Files involved:

| File | Belongs to |
|---|---|
| `SessionDynamicIsland.swift` | **Both** targets (app + widget) |
| `DynamicIslandView.swift` | **Widget target only** |
| `Views/Settings/FocusModeController.swift` | **Both** targets (the button intents) |

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
- `DynamicIslandView.swift` → ✅ LastLongerWidgets **only** (untick the app)
- `FocusModeController.swift` → ✅ LAST LONGER **and** ✅ LastLongerWidgets

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
