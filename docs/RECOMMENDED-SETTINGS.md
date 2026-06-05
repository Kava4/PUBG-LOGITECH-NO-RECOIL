# Recommended PUBG Settings

Use these as a starting point. The script is tuned around **Vertical Sensitivity Multiplier = 1.0** and `SensSetting = 1` in the Lua file.

## In-game (PUBG)

| Setting | Recommended |
| --- | --- |
| Mouse Sensitivity | Your preference (does not break the script) |
| Vertical Sensitivity Multiplier | **1.0** (then set `SensSetting = 1`) |
| Aim Down Sights Sensitivity | 50 |
| General Sensitivity | 50 |
| Targeting Sensitivity | 50 |
| Scoped Sensitivity | 50 |
| Raw Input | **On** |
| Motion Blur | Off |
| Smoothness | 0 |

## Vertical Sensitivity → `SensSetting`

| Vertical Sensitivity Multiplier | `SensSetting` in script |
| --- | --- |
| 0.50 | 2.0 |
| 0.75 | 1.33 |
| 1.0 | 1.0 |
| 1.5 | 0.675 |
| 2.0 | 0.50 |

## Attachment profiles (in script)

While the macro is active, hold modifier keys before firing:

| Caps Lock | Ctrl | Shift | Profile |
| --- | --- | --- | --- |
| On | On | On | Max attachments |
| On | Off | On | High attachments |
| Off | On | On | Mid attachments |
| Off | Off | On | Low attachments |
| On | On | Off | Light attachments |
| On | Off | Off | Minimal attachments |
| Off | On | Off | Iron sights / base |
| Off | Off | Off | Default (no mods) |

**Scroll Lock** lights up when a weapon profile is active.

## Mouse fire mode

In the script header:

```lua
local click = 1  -- LMB only
local click = 3  -- RMB + LMB together
```

## Disclaimer

Using recoil macros may violate PUBG's terms of service and can result in a ban. Use at your own risk.
