--- @meta

--- The **equipped** event fires after an actor has successfully equipped an item. This event is preceded by the [equip](https://mwse.github.io/MWSE/events/equip) event.
--- @class equippedEventData
--- @field claim boolean If set to `true`, any lower-priority event callbacks will be skipped. Returning `false` will set this to `true`.
--- @field actor tes3container|tes3containerInstance|tes3creature|tes3creatureInstance|tes3npc|tes3npcInstance *Read-only*. The actor that has equipped the item.
--- @field item tes3activator|tes3alchemy|tes3apparatus|tes3armor|tes3birthsign|tes3bodyPart|tes3book|tes3cell|tes3class|tes3clothing|tes3container|tes3containerInstance|tes3creature|tes3creatureInstance|tes3dialogue|tes3dialogueInfo|tes3door|tes3enchantment|tes3faction|tes3gameSetting|tes3globalVariable|tes3ingredient|tes3leveledCreature|tes3leveledItem|tes3light|tes3lockpick|tes3magicSourceInstance|tes3misc|tes3npc|tes3npcInstance|tes3probe|tes3quest|tes3race|tes3reference|tes3region|tes3repairTool|tes3script|tes3skill|tes3sound|tes3soundGenerator|tes3spell|tes3startScript|tes3static|tes3weapon *Read-only*. The object that has been equipped.
--- @field itemData tes3itemData *Read-only*. The item data of item.
--- @field mobile tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer *Read-only*. The mobile actor that has equipped the item.
--- @field reference tes3reference *Read-only*. The reference to the mobile actor that has equipped the item.