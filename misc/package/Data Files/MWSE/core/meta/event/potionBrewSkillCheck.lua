--- @meta

--- This event is triggered when the player attempts to brew a potion. It controls both the strength of the potion's effects, and if the brew is successful. These both use the player's stats, so the game combines them into one function. Because the potion effects are not determined yet, the potion data is not available. When using this event, use the example as a template for your own code.
---
--- [Examples available in online documentation](https://mwse.github.io/MWSE/events/potionBrewSkillCheck).
--- @class potionBrewSkillCheckEventData
--- @field block boolean If set to `true`, vanilla logic will be suppressed. Returning `false` will set this to `true`.
--- @field claim boolean If set to `true`, any lower-priority event callbacks will be skipped. Returning `false` will set this to `true`.
--- @field calcinator tes3apparatus The calcinator apparatus used to create the potion.
--- @field ingredients table An array of up to 4 tes3ingredient objects, which were used to create the potion.
--- @field alembic tes3apparatus The alembic apparatus used to create the potion.
--- @field potionStrength number Can be modified. The strength multiplier used to scale the potion effects. For each different effect, it can modify magnitude, duration, or both. This is initially equal to -1 if the potion failed to brew.
--- @field retort tes3apparatus The retort apparatus used to create the potion.
--- @field mortar tes3apparatus The mortar apparatus used to create the potion.
--- @field success boolean Can be modified. Whether the brewing is successful.
potionBrewSkillCheck = {}

