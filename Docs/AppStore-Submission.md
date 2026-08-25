# APP STORE SUBMISSION PACK

---

## 1. Privacy labels — App Store Connect answers

Navigate: **App Store Connect → your app → App Privacy → Get Started**

### Question 1 — "Do you or your third-party partners collect data from this app?"

> **NO**

Selecting **No** produces the **Data Not Collected** label on the product page.
Answer **No** and the questionnaire ends immediately. No further sections appear.

### Exact product-page text this produces

```
Data Not Collected

The developer does not collect any data from this app.
```

### Why this answer is accurate for this build

| Vector | Status |
|---|---|
| Server / backend | None exists |
| CloudKit | Not enabled |
| Analytics SDK | None linked |
| Crash reporting SDK | None linked |
| Advertising / attribution SDK | None linked |
| Network requests | Only StoreKit's own, made by the OS, not by app code |
| Health data | Read on device, written to CoreData locally, never transmitted |
| Microphone / camera / screen recording | Never requested; entitlements absent |
| Identifiers (IDFA / IDFV) | Never read |

**This answer stops being true the instant a third-party SDK is linked.** Apple
audits it against the binary and against SDK-supplied privacy manifests. A single
analytics library turns "Data Not Collected" into a misrepresentation, which is a
removal-grade violation rather than a rejection.

### Privacy Policy URL

A URL is required even at Data Not Collected. Host a static page. Minimum content:

> **LAST LONGER — Privacy Policy**
>
> LAST LONGER does not collect, transmit, or store any personal data.
>
> The app has no server, no account system, and no analytics. All session records,
> settings, and progress are stored in a local database on your device and are
> removed when you delete the app or use Delete All Data in Settings.
>
> The app does not use the microphone, camera, or screen recording. It does not read
> device motion on iPhone. Heart rate, if you enable Apple Watch features, is read
> from HealthKit, used on device, and never transmitted.
>
> Purchases are handled by Apple. We receive no payment information.
>
> Contact: [address]
> Last updated: [date]

---

## 2. StoreKit setup

### Xcode

1. Add `Configuration.storekit` to the project (do **not** add it to Copy Bundle
   Resources — it is a debug artefact only).
2. **Product → Scheme → Edit Scheme → Run → Options → StoreKit Configuration** →
   select `Configuration.storekit`.
3. Replace `REPLACE_WITH_TEAM_ID` with the real Team ID.
4. Add the **In-App Purchase** capability to the app target.

### App Store Connect

| Field | Value |
|---|---|
| Type | Non-Consumable |
| Reference Name | Lifetime Unlock |
| Product ID | `com.lastlonger.app.unlock.lifetime` |
| Price | Tier corresponding to USD 9.99 |
| Family Sharing | Off |
| Display Name | Unlock Forever |

The Product ID must match `StoreManager.unlockProductID` **exactly**. It is
permanent — it cannot be changed or reused after creation.

### Test matrix before submitting

Run each of these against the local `.storekit` file, then again in the sandbox:

- [ ] Fresh install → paywall appears, price renders from `product.displayPrice`
- [ ] Purchase → unlocks, no relaunch required
- [ ] Purchase → force quit → relaunch → still unlocked (entitlement rehydrates)
- [ ] Delete app → reinstall → **Restore purchase** → unlocks
- [ ] Restore with no prior purchase → shows "No previous purchase found"
- [ ] Airplane mode at launch → paywall shows a store error, does not crash or hang
- [ ] Airplane mode with an existing entitlement → **stays unlocked** (this is the one
      that breaks most builds; `Transaction.currentEntitlements` is served from the
      on-device receipt and must not require network)
- [ ] Cancel mid-purchase → returns to idle, no charge, no error banner
- [ ] Ask to Buy enabled → `.pending` state renders, entitlement arrives later via
      `Transaction.updates` without a relaunch
- [ ] Enable **Purchase** failure in the `.storekit` error settings → error copy is
      readable and recoverable

---

## 3. Age rating

Set the rating questionnaire to produce **18+**.

Relevant answers:

| Question | Answer |
|---|---|
| Sexual Content or Nudity | Frequent/Intense |
| Medical/Treatment Information | Infrequent/Mild |
| Unrestricted Web Access | No |
| Gambling | No |

Do not attempt to rate this lower. An under-rated app in this category is pulled
after release rather than rejected before it, which is far more expensive.

---

## 4. App Review notes

Paste into **App Review Information → Notes**:

> LAST LONGER is a sexual-health training tool for adults addressing ejaculatory
> control, a recognised clinical concern (premature ejaculation, ICD-11 HA03.0).
>
> The app contains no sexual imagery, no video, no audio recordings, and no
> user-generated content. It is a timer, a text-to-speech pacing coach, and a local
> statistics database. All copy uses clinical terminology.
>
> The app has no server, no account, and no network calls other than StoreKit's.
> Nothing leaves the device.
>
> Test account is not required — tap through the paywall using the reviewer's sandbox
> account, or use Restore Purchase.
>
> Background audio mode is used solely so the spoken coach remains audible while the
> user's screen is on another app. The app produces continuous audible output for the
> duration of every session.

---

## 5. Known review risks — read before you build screenshots

Three things will decide whether this ships:

**Guideline 1.1.4 (overtly sexual material).** Apple permits sexual-health and
sexual-wellness apps; several are on the store. What it does not permit is an app
positioned as an accessory to pornography consumption. The V2/V3 marketing framing
("Porn is your gym", "trains your stamina while you watch porn") is the specific
thing that gets a rejection under 1.1.4, and the clinical-terminology directive is
the correct fix. Apply it everywhere the reviewer looks: App Store description,
screenshots, onboarding copy, and the in-app strings. "External media" throughout,
no exceptions.

**Guideline 1.1.6 / 2.3 (accurate metadata).** The privacy claims on the paywall and
in the onboarding are strong and absolute. They are also true of this build. Keep
them true. If Phase 5 ever adds a crash reporter, the paywall copy, the privacy
manifest, and the App Privacy answers all have to change in the same commit.

**Guideline 1.4.1 (physical harm / medical claims).** The disclaimer string is in
Settings, which is necessary but not sufficient. Anything in the description or
screenshots that reads as a treatment claim — curing premature ejaculation,
improving erectile function, a therapeutic outcome — invites a 1.4.1 rejection and,
separately, is a regulatory claim you do not want to make. Describe what the app
does (paces, times, logs, coaches) rather than what it will fix.

**Also worth a second look:** the substance-correlation tracker ships a feature that
surfaces "sessions with alcohol lasted longer than sessions without." That is a
reinforcement loop pointed at alcohol and cannabis use, presented as a personal
finding with the authority of the user's own data. It is not an App Store problem —
it will pass review — but it is the one feature in the spec that can make a user
worse off, and it is trivially fixable: keep the tagging, drop the automatic
correlation surfacing for anything intoxicating, or gate it behind a plain statement
that a longer session under alcohol is a sedation effect rather than a training gain.
Your call, but it should be a decision rather than an oversight.

---

## 6. Pre-flight checklist

- [ ] `PrivacyInfo.xcprivacy` added to the app target (and the Watch target)
- [ ] `UIBackgroundModes: [audio]` present; no other background modes
- [ ] `NSMotionUsageDescription` present on the **Watch target only**
- [ ] No unused purpose strings on the iPhone target
- [ ] Pixel font bundled, licence file retained, `UIAppFonts` name matches PostScript name
- [ ] App icon has no alpha channel (`sips -g hasAlpha`)
- [ ] `LaunchBackground` colour set is `#000000` in both appearances
- [ ] VoiceOver pass: every screen navigable, no SF Symbol name spoken aloud
- [ ] Dynamic Type pass at accessibility XXXL: no clipped text, no overlapping panels
- [ ] Reduce Motion pass: no burst, no glitch, no sweep — nothing strobes
- [ ] Reduce Transparency pass: scanlines and grid suppressed, contrast holds
- [ ] Age rating set to 18+
- [ ] Privacy Policy URL live and reachable
- [ ] Screenshots contain no sexual imagery and no non-clinical vocabulary
