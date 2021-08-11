# determineAction

This event fires when an actor determines an action in a combat session.

```lua
--- @type e event.determineAction
local function determineActionCallback(e)
end
event.register("determineAction", determineActionCallback)
```

## Event Data

* `session` ([tes3combatSession](../../types/tes3combatSession)): The combat session the action is being determined for.
