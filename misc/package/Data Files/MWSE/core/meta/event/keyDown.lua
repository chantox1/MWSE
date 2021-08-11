--- @meta

--- The key event fires when a key is pressed.
---
--- [Examples available in online documentation](https://mwse.github.io/MWSE/events/keyDown).
--- @class keyDownEventData
--- @field block boolean If set to `true`, vanilla logic will be suppressed. Returning `false` will set this to `true`.
--- @field claim boolean If set to `true`, any lower-priority event callbacks will be skipped. Returning `false` will set this to `true`.
--- @field keyCode number The scan code of the key that raised the event.
--- @field isSuperDown number True if super (Windows key) is held.
--- @field isControlDown number True if control is held.
--- @field isAltDown number True if alt  is held.
keyDown = {}

