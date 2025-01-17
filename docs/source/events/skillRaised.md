# skillRaised
<div class="search_terms" style="display: none">skillraised</div>

<!---
	This file is autogenerated. Do not edit this file manually. Your changes will be ignored.
	More information: https://github.com/MWSE/MWSE/tree/master/docs
-->

This event is invoked whenever the player naturally gains a new level a skill. This is typically through exercise, training, or reading books.

```lua
--- @param e skillRaisedEventData
local function skillRaisedCallback(e)
end
event.register(tes3.event.skillRaised, skillRaisedCallback)
```

!!! tip
	This event can be filtered based on the **`skill`** event data.

!!! tip
	An event can be claimed by setting `e.claim` to `true`, or by returning `false` from the callback. Claiming the event prevents any lower priority callbacks from being called.

## Event Data

* `level` (number): *Read-only*. The new level of the skill.
* `skill` (integer): *Read-only*. The skill that gained a new level experience. Maps to values from [`tes3.skill`](https://mwse.github.io/MWSE/references/skills/) table.
* `source` (string): *Read-only*. The source of the skill raise. Maps to values in [`tes3.skillRaiseSource`](https://mwse.github.io/MWSE/references/skill-raise-sources/) enumeration.

