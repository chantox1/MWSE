-- This file is autogenerated. Do not edit this file manually. Your changes will be ignored.
-- More information: https://github.com/MWSE/MWSE/tree/master/docs

--- @meta
--- @diagnostic disable:undefined-doc-name

--- The menuExit event fires when the player leaves menu mode.
--- @class menuExitEventData
--- @field claim boolean If set to `true`, any lower-priority event callbacks will be skipped. Returning `false` will set this to `true`.
--- @field menuMode boolean *Read-only*. Always true for this event. This parameter is only useful when registering the same callback for menuEnter and menuExit events.
