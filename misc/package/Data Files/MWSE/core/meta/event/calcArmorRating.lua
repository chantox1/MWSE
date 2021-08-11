--- @meta

--- This event is fired before an actor's armor rating has been calculated, and can be used to override the armor that the actor is given.
--- @class calcArmorRatingEventData
--- @field block boolean If set to `true`, vanilla logic will be suppressed. Returning `false` will set this to `true`.
--- @field claim boolean If set to `true`, any lower-priority event callbacks will be skipped. Returning `false` will set this to `true`.
--- @field npc tes3npc The NPC object whose AR is being calculated. May not always be available.
--- @field reference tes3reference A shortcut to the mobile's reference. May not always be available.
--- @field armorRating number If set, the given armor rating will be used instead of the one calculated.
--- @field armor tes3armor The armor piece whose AR is being calculated.
--- @field mobile tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer The mobile whose AR is being calculated. May not always be available.
calcArmorRating = {}

