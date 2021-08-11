# addTempSound



```lua
--- @type e event.addTempSound
local function addTempSoundCallback(e)
end
event.register("addTempSound", addTempSoundCallback)
```

This event can be filtered based on the **`sound`** event data.

## Event Data

* `path` (string): The path to the sound to play, relative to Data Files\Sounds
* `pitch` (number): Pitch of the sound.
* `flags` (number): 
* `reference` ([tes3reference](../../types/tes3reference)): The reference which is emiting the sound.
* `volume` (number): The volume of the sound. Volume = 1 means 100 % loudness. Values lower than 1 the sound quiter.
* `sound` ([tes3sound](../../types/tes3sound)): 
* `isVoiceover` (boolean): 
