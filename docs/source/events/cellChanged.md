# cellChanged

The cellChanged event is occurs when the player changes cells. This might occur from going through a door, using intervention or recall spells, or from scripted repositioning.

```lua
--- @type e event.cellChanged
local function cellChangedCallback(e)
end
event.register("cellChanged", cellChangedCallback)
```

This event can be filtered based on the **`cell`** event data.

## Event Data

* `previousCell` ([tes3cell](../../types/tes3cell)): The previous cell that the player came from. This will be nil when loading a game.
* `cell` ([tes3cell](../../types/tes3cell)): The new cell that the player has entered.
