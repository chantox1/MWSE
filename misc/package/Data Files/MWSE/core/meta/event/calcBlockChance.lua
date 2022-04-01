--- @meta

--- This event is raised when determining the block chance for an actor. This does not affect ranged or magic attacks and ignores attacks outside of the normal blocking angles, like being attacked from behind.
--- @class calcBlockChanceEventData
--- @field claim boolean If set to `true`, any lower-priority event callbacks will be skipped. Returning `false` will set this to `true`.
--- @field attacker tes3reference *Read-only*. A shortcut to the attacker mobile's reference.
--- @field attackerMobile tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer *Read-only*. The mobile that is attacking.
--- @field blockChance number The block chance for the actor. This can be adjusted.
--- @field target tes3reference *Read-only*. A shortcut to the target mobile's reference.
--- @field targetMobile tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer *Read-only*. The mobile that is being attacked.
