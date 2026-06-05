# PUBG Logitech No Recoil Script

Logitech G Hub Lua script for PUBG (Steam) that compensates weapon recoil with per-weapon patterns and attachment profiles.

> **Note:** Recoil macros may violate PUBG's terms of service. This project is provided for educational use only. You are responsible for how you use it.

---

## AimSync

<p align="center">
  <a href="https://github.com/AimSyncCore/AimSync">
    <img src="https://i.ibb.co/LhHngKZF/Aim-Sync-logo.png" alt="AimSync Logo" width="120" height="120" />
  </a>
</p>

<p align="center"><strong>High-integrity recoil &amp; AI for Makcu HID</strong></p>

<p align="center">
  <a href="https://github.com/AimSyncCore/AimSync"><img src="https://img.shields.io/badge/Repo-AimSync-24292f?style=for-the-badge&amp;logo=github" alt="AimSync on GitHub" /></a>
  <a href="https://github.com/AimSyncCore/AimSync/wiki"><img src="https://img.shields.io/badge/Docs-Wiki-1f6feb?style=for-the-badge" alt="Documentation" /></a>
  <a href="https://github.com/AimSyncCore/AimSync/releases"><img src="https://img.shields.io/badge/Releases-GitHub-24292f?style=for-the-badge&amp;logo=github" alt="Releases" /></a>
</p>

**[AimSync](https://github.com/AimSyncCore/AimSync)** is a desktop utility from **[AimSyncCore](https://github.com/AimSyncCore)** for **Makcu HID** hardware. It runs a local web dashboard to build recoil patterns, manage CS2 weapon profiles, and drive an optional **AI aim engine** over a dual-PC NDI setup.

| Area | What you get |
| --- | --- |
| **Recoil** | Simple sliders, advanced pattern editor, CS2 game engine with sensitivity scaling |
| **Pattern Generator** | Turn spray GIFs/images into weapon data — edit, preview, append to game files |
| **Recoil Lab** | Real-time visualizer, save/load patterns, community share |
| **AI Engine** | YOLO detection, aim assist & triggerbot — NDI capture, CUDA Ultralytics |
| **Hardware** | Native Makcu integration, global hotkeys, safety randomization |

**Stack:** Python · Flask · Tailwind CSS · HTMX · HTML5 Canvas

This repository is the **Logitech G Hub Lua script for PUBG**. For Makcu-based workflows, pattern editing, and the full AimSync dashboard, use the main app:

**→ [github.com/AimSyncCore/AimSync](https://github.com/AimSyncCore/AimSync)**

Support development: **[ko-fi.com/kava4](https://ko-fi.com/kava4)** · **[paypal.me/kava4](https://paypal.me/kava4)**

---

## Features

- Works with Logitech G-series mice (via G Hub scripting)
- Per-weapon profiles: AKM, M416, SCAR-L, Beryl, Groza, Vector, UMP45, and more
- Attachment-aware patterns (Caps Lock + Ctrl + Shift combinations)
- Toggle on/off per weapon; Scroll Lock indicator
- Adjustable strength via `SensSetting` and live G8/G9 tuning (G-keyboard)
- Supports optional Logitech G-keyboard weapon binds

---

## Requirements

- Logitech G-series mouse
- [Logitech G Hub](https://www.logitechg.com/en-us/innovation/g-hub.html)
- PUBG (PC / Steam)
- Windows

---

## Quick start

### 1. Install G Hub

Install G Hub and confirm your mouse appears in the app.

### 2. Configure key binds

Open [`PUBG-Logitech-No-Recoil.lua`](./PUBG-Logitech-No-Recoil.lua) and set your mouse button IDs at the top (they default to `nil`).

See **[Key bindings guide](./docs/KEY-BINDINGS.md)** for button IDs and examples.

### 3. Load the script

1. G Hub → select your **PUBG** profile (or create one)
2. **Scripting** (bottom left) → **Create new Lua script**
3. Paste the contents of [`PUBG-Logitech-No-Recoil.lua`](./PUBG-Logitech-No-Recoil.lua)
4. Save and enable scripting

### 4. Match in-game settings

Follow **[Recommended settings](./docs/RECOMMENDED-SETTINGS.md)** — especially Vertical Sensitivity Multiplier and `SensSetting`.

### 5. Test in training mode

1. Bind a weapon (e.g. `local AKM = 4`)
2. Launch PUBG → press the weapon button → Scroll Lock should turn on
3. Fire at a wall and adjust `SensSetting` or use **G8** / **G9** on a Logitech keyboard

---

## Main settings (script header)

```lua
local SensSetting = 1   -- Match to Vertical Sensitivity Multiplier (see docs)
local click = 1         -- 1 = LMB only, 3 = RMB + LMB
local AKM = 4           -- Example: set each weapon you use
local MACRO_OFF = 3     -- Button to turn macro off
```

### Live recoil strength (G-keyboard)

```lua
-- G8 = stronger compensation, G9 = weaker (built into the script)
```

Change `arg == 8` / `arg == 9` in the script if you prefer other G-keys.

---

## Supported weapons

**AR:** AKM, Beryl, G36C, M416, SCAR-L, QBZ, AUG, Groza, ACE32, K2, FAMAS  
**SMG:** Bizon, Tommy, UMP45, UZI, Vector, MP5K, P90, JS9, MP9  
**LMG:** DP28, M249, MG3  

---

## Troubleshooting

| Problem | Fix |
| --- | --- |
| Nothing happens | Set weapon button IDs (not `nil`); run G Hub as administrator |
| Recoil too strong / weak | Change `SensSetting` or use G8/G9 |
| Wrong pattern | Check Caps Lock / Ctrl / Shift combo (see recommended settings) |
| Script not loading | Restart G Hub; re-paste script; enable Lua scripting |

---

## Project structure

```
PUBG-LOGITECH-NO-RECOIL/
├── PUBG-Logitech-No-Recoil.lua   # Main G Hub script
├── docs/
│   ├── KEY-BINDINGS.md
│   └── RECOMMENDED-SETTINGS.md
├── LICENSE
└── README.md
```

---

## Publish to GitHub

Repository under **[AimSyncCore](https://github.com/AimSyncCore)**:

```bash
git init
git add .
git commit -m "Restore PUBG Logitech no-recoil script"
git branch -M main
git remote add origin https://github.com/AimSyncCore/PUBG-LOGITECH-NO-RECOIL.git
git push -u origin main
```

Related repo: **[AimSync](https://github.com/AimSyncCore/AimSync)**

---

## License

MIT — see [LICENSE](./LICENSE). Provided as-is, without warranty.
