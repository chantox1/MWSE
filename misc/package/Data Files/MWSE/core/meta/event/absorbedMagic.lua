--- @meta

--- This event is triggered after magic absorption absorbs and cancels a magic effect, and just before magic absorption gives magicka to the target. It can control the amount of magicka restored.
--- 
--- This event occurs once per effect restored, so a multi-effect spell may trigger this multiple times. The default amount restored is equal to the casting cost of the entire spell, which is the vanilla behaviour.
--- @class absorbedMagicEventData
--- @field block boolean If set to `true`, vanilla logic will be suppressed. Returning `false` will set this to `true`.
--- @field claim boolean If set to `true`, any lower-priority event callbacks will be skipped. Returning `false` will set this to `true`.
--- @field target tes3reference The actor that absorbed the spell.
--- @field source tes3alchemy|tes3enchantment|tes3spell The magic source.
--- @field absorb number The amount of magicka to restore to the actor.
--- @field mobile tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer The mobile actor that absorbed the spell.
--- @field sourceInstance tes3magicSourceInstance The unique instance of the magic source.
absorbedMagic = {}

