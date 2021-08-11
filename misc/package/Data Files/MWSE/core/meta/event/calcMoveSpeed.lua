--- @meta

--- This event is called when an actor’s movement speed is calculated. The event allows modification of this value, to dehardcode actor movement speeds. Invoked after all other movement speed events are finished.
---
--- [Examples available in online documentation](https://mwse.github.io/MWSE/events/calcMoveSpeed).
--- @class calcMoveSpeedEventData
--- @field block boolean If set to `true`, vanilla logic will be suppressed. Returning `false` will set this to `true`.
--- @field claim boolean If set to `true`, any lower-priority event callbacks will be skipped. Returning `false` will set this to `true`.
--- @field reference tes3reference mobile’s related reference.
--- @field mobile tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer The mobile actor whose speed is being calculated.
--- @field type number The type of movement that was calculated. This is always 0 for this event.
--- @field speed number The previous speed calculated, starting with the base engine values.
calcMoveSpeed = {}

