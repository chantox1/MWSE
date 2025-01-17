# playItemSound
<div class="search_terms" style="display: none">playitemsound</div>

<!---
	This file is autogenerated. Do not edit this file manually. Your changes will be ignored.
	More information: https://github.com/MWSE/MWSE/tree/master/docs
-->

This event is triggered when the game is about to play a sound from an item. Can be blocked to play custom sound instead.

```lua
--- @param e playItemSoundEventData
local function playItemSoundCallback(e)
end
event.register(tes3.event.playItemSound, playItemSoundCallback)
```

!!! tip
	This event can be filtered based on the **`item`** event data.

!!! tip
	This event supports blocking by setting `e.block` to `true` or returning `false`. Blocking the event prevents vanilla behavior from happening. For example, blocking an `equip` event prevents the item from being equipped.

!!! tip
	An event can be claimed by setting `e.claim` to `true`, or by returning `false` from the callback. Claiming the event prevents any lower priority callbacks from being called.

## Event Data

* `item` ([tes3baseObject](../../types/tes3baseObject)): *Read-only*. The item for which the sound is about to be played.
* `reference` ([tes3reference](../../types/tes3reference)): *Read-only*. The actor reference that picked or dropped the item that's now about to play the sound.
* `state` (number): *Read-only*. Maps to values in [tes3.itemSoundState](https://mwse.github.io/MWSE/references/item-sound-states/) namespace.

