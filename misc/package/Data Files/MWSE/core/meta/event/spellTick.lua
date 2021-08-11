--- @meta

--- The spellTick event happens every frame that an effect is active on a target. This can be used to aid in scripted spells, cancel active spells, or otherwise monitor spell activity on actors.
--- @class spellTickEventData
--- @field block boolean If set to `true`, vanilla logic will be suppressed. Returning `false` will set this to `true`.
--- @field claim boolean If set to `true`, any lower-priority event callbacks will be skipped. Returning `false` will set this to `true`.
--- @field deltaTime number The number of seconds since the last spell tick.
--- @field caster tes3reference The caster of the spell.
--- @field effectIndex number The index of the effect in source’s effects list.
--- @field target tes3reference The target of the spell. For self-targeted spells, this matches caster.
--- @field effectInstance tes3magicEffectInstance The unique instance of the magic effect.
--- @field effectId number The magic effect ID that is being ticked.
--- @field source tes3alchemy|tes3enchantment|tes3spell The magic source.
--- @field effect tes3magicEffect The individual effect structure on source.
--- @field sourceInstance tes3magicSourceInstance The unique instance of the magic source.
spellTick = {}

