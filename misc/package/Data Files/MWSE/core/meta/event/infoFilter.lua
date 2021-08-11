--- @meta

--- This event fires when a dialogue info object is filtered.
--- @class infoFilterEventData
--- @field block boolean If set to `true`, vanilla logic will be suppressed. Returning `false` will set this to `true`.
--- @field claim boolean If set to `true`, any lower-priority event callbacks will be skipped. Returning `false` will set this to `true`.
--- @field source number The source.
--- @field dialogue tes3dialogue The dialogue object.
--- @field reference tes3reference The reference.
--- @field info tes3dialogueInfo The dialogue info object.
--- @field passes boolean Indicates if the filter passes.
--- @field actor tes3activator|tes3alchemy|tes3apparatus|tes3armor|tes3bodyPart|tes3book|tes3clothing|tes3container|tes3containerInstance|tes3creature|tes3creatureInstance|tes3door|tes3enchantment|tes3ingredient|tes3leveledCreature|tes3leveledItem|tes3light|tes3lockpick|tes3misc|tes3npc|tes3npcInstance|tes3probe|tes3reference|tes3repairTool|tes3spell|tes3static|tes3weapon The actor.
infoFilter = {}

