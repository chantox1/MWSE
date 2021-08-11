--- @meta

--- The save event fires when the game is about to save. This event allows scripts to block saving.
--- @class saveEventData
--- @field block boolean If set to `true`, vanilla logic will be suppressed. Returning `false` will set this to `true`.
--- @field claim boolean If set to `true`, any lower-priority event callbacks will be skipped. Returning `false` will set this to `true`.
--- @field name string The user facing name of the save, shown in the load/save game menu.
--- @field filename string The filename of the save, not including file extension.
save = {}

