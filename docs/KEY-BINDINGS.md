# Key Bindings Setup

All weapon buttons start as `nil`. You **must** assign mouse side buttons or Logitech G-keys before the script works.

Open `PUBG-Logitech-No-Recoil.lua` and edit the block at the top:

```lua
-- Mouse side buttons (examples)
local AKM = 4
local M416 = 5
local SCAR_L = 6
local MACRO_OFF = 3

-- Optional: Logitech G-keyboard (G1–G18)
local AKM_Keyboard = nil
local M416_Keyboard = nil
```

## Logitech mouse button IDs

| Button | ID |
| --- | --- |
| Left click | 1 |
| Right click | 3 |
| Middle / wheel click | 2 |
| Side button (back) | 4 |
| Side button (forward) | 5 |
| G1–G6 (on mouse) | Check in G Hub → Assignments |

In **Logitech G Hub**, open your device → assign a test key → the scripting API uses the numeric `arg` from `MOUSE_BUTTON_PRESSED`.

## Workflow in game

1. Press the button bound to a weapon (e.g. AKM = 4) → macro ON, Scroll Lock on.
2. Hold fire (`click = 1` → LMB only).
3. Press `MACRO_OFF` to disable, or press the same weapon button again to toggle off.
4. **G8 / G9** (Logitech keyboard): increase / decrease `SensSetting` live.

## Tips

- Do not assign the same button to two weapons.
- Keep `MACRO_OFF` on a button you can reach quickly.
- If G8/G9 are used elsewhere, change `arg == 8` / `arg == 9` in the script.
