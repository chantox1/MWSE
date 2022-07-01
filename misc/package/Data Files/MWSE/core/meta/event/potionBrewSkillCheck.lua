-- This file is autogenerated. Do not edit this file manually. Your changes will be ignored.
-- More information: https://github.com/MWSE/MWSE/tree/master/docs

--- @meta
--- @diagnostic disable:undefined-doc-name

--- This event is triggered when the player attempts to brew a potion. It controls both the strength of the potion's effects, and if the brew is successful. These both use the player's stats, so the game combines them into one function. Because the potion effects are not determined yet, the potion data is not available. When using this event, use the example as a template for your own code.
---
--- [Examples available in online documentation](https://mwse.github.io/MWSE/events/potionBrewSkillCheck).
--- @class potionBrewSkillCheckEventData
--- @field claim boolean If set to `true`, any lower-priority event callbacks will be skipped. Returning `false` will set this to `true`.
--- @field alembic tes3apparatus *Read-only*. The alembic apparatus used to create the potion.
--- @field calcinator tes3apparatus *Read-only*. The calcinator apparatus used to create the potion.
--- @field ingredients tes3ingredient[] *Read-only*. Ingredients which were used to create the potion.
--- @field mortar tes3apparatus *Read-only*. The mortar apparatus used to create the potion.
--- @field potionStrength number Can be modified. The strength multiplier used to scale the potion effects. For each different effect, it can modify magnitude, duration, or both. This is initially equal to -1 if the potion failed to brew.
--- @field retort tes3apparatus *Read-only*. The retort apparatus used to create the potion.
--- @field success boolean Can be modified. Whether the brewing is successful.
