--- @meta

--- The equip event fires when an actor is about to equip an item, i.e. just before the item is equipped. This event allows scripts to block equipping. See `equipped`_ for the post-equip event.
--- 
--- The item must not be removed from the inventory during this event, as the item and item data is still being referenced by the initiator of the equip action. If you want to consume the item, block the equip and remove it at a later time. Removing the item during this event can cause inventory desync bugs.
--- @class equipEventData
--- @field block boolean If set to `true`, vanilla logic will be suppressed. Returning `false` will set this to `true`.
--- @field claim boolean If set to `true`, any lower-priority event callbacks will be skipped. Returning `false` will set this to `true`.
--- @field reference tes3reference The reference to the mobile actor that is equipping the item.
--- @field item tes3activator|tes3alchemy|tes3apparatus|tes3armor|tes3birthsign|tes3bodyPart|tes3book|tes3cell|tes3class|tes3clothing|tes3container|tes3containerInstance|tes3creature|tes3creatureInstance|tes3dialogue|tes3dialogueInfo|tes3door|tes3enchantment|tes3faction|tes3gameSetting|tes3globalVariable|tes3ingredient|tes3leveledCreature|tes3leveledItem|tes3light|tes3lockpick|tes3magicSourceInstance|tes3misc|tes3npc|tes3npcInstance|tes3probe|tes3quest|tes3race|tes3reference|tes3region|tes3repairTool|tes3skill|tes3sound|tes3soundGenerator|tes3spell|tes3static|tes3weapon The object being equipped.
--- @field itemData tes3itemData The item data of item.
equip = {}

