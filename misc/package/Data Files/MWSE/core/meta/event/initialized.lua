--- @meta

--- The initialized event fires when game code has finished initializing, and all .esm and .esp files have been loaded.
--- @class initializedEventData
--- @field block boolean If set to `true`, vanilla logic will be suppressed. Returning `false` will set this to `true`.
--- @field claim boolean If set to `true`, any lower-priority event callbacks will be skipped. Returning `false` will set this to `true`.
initialized = {}

