# spellResisted

This event triggers when a magic effect has been resisted by an actor, including magic effects from sources like spells, enchantments and potions. This event can trigger multiple times per source, once for each resisted effect.

```lua
--- @param e spellResistedEventData
local function spellResistedCallback(e)
end
event.register(tes3.event.spellResisted, spellResistedCallback)
```

!!! tip
	This event can be filtered based on the **`reference`** event data.

!!! tip
	An event can be claimed by setting `e.claim` to `true`, or by returning `false` from the callback. Claiming the event prevents any lower priority callbacks from being called.

## Event Data

* `caster` ([tes3reference](../../types/tes3reference)): *Read-only*. The caster of the magic source that contained the magic effect. Can be `nil`.
* `effect` ([tes3effect](../../types/tes3effect)): *Read-only*. The specific effect that triggered the event. This is equal to `e.source.effects[e.effectIndex]`.
* `effectIndex` (number): *Read-only*. The index of the effect in the magic source's effects list.
* `mobile` ([tes3mobileActor](../../types/tes3mobileActor)): *Read-only*. The mobile actor that resisted the magic effect.
* `reference` ([tes3reference](../../types/tes3reference)): *Read-only*. The reference of the mobile actor that resisted the magic effect.
* `source` ([tes3alchemy](../../types/tes3alchemy), [tes3enchantment](../../types/tes3enchantment), [tes3spell](../../types/tes3spell)): *Read-only*. The magic source that contains the effect.
* `sourceInstance` ([tes3magicSourceInstance](../../types/tes3magicSourceInstance)): *Read-only*. The unique instance of the magic source that contains the effect.
* `target` ([tes3reference](../../types/tes3reference)): *Read-only*. The target of the magic source that contained the magic effect. Can be `nil`.

## Examples

!!! example "Example: Learn resisted spells"

	Makes actors learn the spell they resisted.

	```lua
	local function onSpellResisted(e)
		-- We only want this to apply to spells. This event can also trigger for other sources like potions/enchantments.
		if e.source.objectType == tes3.objectType.spell then
			-- Add the resisted spell to the actor that resisted it.
			tes3.addSpell{
				reference = e.reference,
				spell = e.source
			}
	
			-- If it is the player that learned the spell, show a message with the name of the spell.
			if e.reference == tes3.player then
				tes3.messageBox("You learned the '%s' spell.", e.source.name)
			end
		end
	end
	event.register(tes3.register.spellResisted, onSpellResisted)

	```
