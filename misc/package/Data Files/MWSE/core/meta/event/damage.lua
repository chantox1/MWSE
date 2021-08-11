--- @meta

--- The damage event triggers before an actor is damaged. The damage value can be modified, or the damage can be prevented completely by blocking the event.
---
--- [Examples available in online documentation](https://mwse.github.io/MWSE/events/damage).
--- @class damageEventData
--- @field block boolean If set to `true`, vanilla logic will be suppressed. Returning `false` will set this to `true`.
--- @field claim boolean If set to `true`, any lower-priority event callbacks will be skipped. Returning `false` will set this to `true`.
--- @field activeMagicEffect tes3magicEffect tes3magicEffect which caused damage. Can be nil.
--- @field projectile tes3mobileProjectile|tes3mobileSpellProjectile Projectile that dealt the damage. Can be nil.
--- @field attackerReference tes3reference attacker mobile's associated reference. Can be nil.
--- @field source damageSourceType The origin of damage. Values of this variable can be: "script", "fall", "suffocation", "attack", "magic", "shield" or nil.
--- @field damage number The amount of damage done.
--- @field magicSourceInstance tes3magicSourceInstance tes3magicSourceInstance of a spell that caused damage. Can be nil.
--- @field mobile tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer The mobile actor that is taking damage.
--- @field reference tes3reference mobile’s associated reference.
--- @field attacker tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer The mobile actor dealing the damage. Can be nil.
damage = {}

