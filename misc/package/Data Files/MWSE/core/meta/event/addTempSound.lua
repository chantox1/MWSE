--- @meta

--- 
--- @class addTempSoundEventData
--- @field block boolean If set to `true`, vanilla logic will be suppressed. Returning `false` will set this to `true`.
--- @field claim boolean If set to `true`, any lower-priority event callbacks will be skipped. Returning `false` will set this to `true`.
--- @field path string The path to the sound to play, relative to Data Files\Sounds
--- @field pitch number Pitch of the sound.
--- @field flags number 
--- @field reference tes3reference The reference which is emiting the sound.
--- @field volume number The volume of the sound. Volume = 1 means 100 % loudness. Values lower than 1 the sound quiter.
--- @field sound tes3sound 
--- @field isVoiceover boolean 
addTempSound = {}

