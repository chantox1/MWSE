# menuExit
<div class="search_terms" style="display: none">menuexit</div>

<!---
	This file is autogenerated. Do not edit this file manually. Your changes will be ignored.
	More information: https://github.com/MWSE/MWSE/tree/master/docs
-->

The menuExit event fires when the player leaves menu mode.

```lua
--- @param e menuExitEventData
local function menuExitCallback(e)
end
event.register(tes3.event.menuExit, menuExitCallback)
```

!!! tip
	An event can be claimed by setting `e.claim` to `true`, or by returning `false` from the callback. Claiming the event prevents any lower priority callbacks from being called.

## Event Data

* `menuMode` (boolean): *Read-only*. Always true for this event. This parameter is only useful when registering the same callback for menuEnter and menuExit events.

