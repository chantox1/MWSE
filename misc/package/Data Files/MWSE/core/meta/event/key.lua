--- @meta

--- The key event fires when a key up or key down input is detected. It is preferred that the keyDown and keyUp events are used instead.
---
--- [Examples available in online documentation](https://mwse.github.io/MWSE/events/key).
--- @class keyEventData
--- @field block boolean If set to `true`, vanilla logic will be suppressed. Returning `false` will set this to `true`.
--- @field claim boolean If set to `true`, any lower-priority event callbacks will be skipped. Returning `false` will set this to `true`.
--- @field keyCode number The scan code of the key that raised the event.
--- @field pressed boolean True if this is a key down event, false for a key up event.
--- @field isSuperDown number True if super (Windows key) is held.
--- @field isAltDown number True if alt  is held.
--- @field isControlDown number True if control is held.
key = {}

