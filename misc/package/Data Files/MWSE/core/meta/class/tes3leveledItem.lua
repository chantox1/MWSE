--- @meta

--- A leveled creature game object.
--- @class tes3leveledItem : tes3physicalObject, tes3object, tes3baseObject
--- @field calculateForEachItem boolean If true, each entry is rolled in the leveled list when resolving items. This can result in multiple items from one list being added.
--- @field calculateFromAllLevels boolean If true, the leveled list is picked from the entire level range, instead of just the highest.
--- @field chanceForNothing number The percent chance, from 0 to 100, for no object to be chosen.
--- @field count number *Read-only*. The number of possible options in the leveled object container.
--- @field flags number A numerical representation of bit flags for the object.
--- @field list tes3iterator *Read-only*. The collection that itself, containing tes3leveledListNodes.
tes3leveledItem = {}

--- This function inserts given item in the leveled list. True is returned if the operation was successful.
--- @param entry tes3activator|tes3alchemy|tes3apparatus|tes3armor|tes3birthsign|tes3bodyPart|tes3book|tes3cell|tes3class|tes3clothing|tes3container|tes3containerInstance|tes3creature|tes3creatureInstance|tes3dialogue|tes3dialogueInfo|tes3door|tes3enchantment|tes3faction|tes3gameSetting|tes3globalVariable|tes3ingredient|tes3leveledCreature|tes3leveledItem|tes3light|tes3lockpick|tes3magicSourceInstance|tes3misc|tes3npc|tes3npcInstance|tes3probe|tes3quest|tes3race|tes3reference|tes3region|tes3repairTool|tes3skill|tes3sound|tes3soundGenerator|tes3spell|tes3static|tes3weapon An item to insert.
--- @param level number At which player level the item can be resolved from the leveled list.
--- @return boolean result No description yet available.
function tes3leveledItem:insert(entry, level) end

--- Chooses a random item from the list, based on the player's level.
--- @return tes3alchemy|tes3apparatus|tes3armor|tes3book|tes3clothing|tes3ingredient|tes3light|tes3lockpick|tes3misc|tes3probe|tes3repairTool|tes3weapon result No description yet available.
function tes3leveledItem:pickFrom() end

--- This function removes an item from the leveled list. True is returned if the operation was successful.
--- @param entry tes3activator|tes3alchemy|tes3apparatus|tes3armor|tes3birthsign|tes3bodyPart|tes3book|tes3cell|tes3class|tes3clothing|tes3container|tes3containerInstance|tes3creature|tes3creatureInstance|tes3dialogue|tes3dialogueInfo|tes3door|tes3enchantment|tes3faction|tes3gameSetting|tes3globalVariable|tes3ingredient|tes3leveledCreature|tes3leveledItem|tes3light|tes3lockpick|tes3magicSourceInstance|tes3misc|tes3npc|tes3npcInstance|tes3probe|tes3quest|tes3race|tes3reference|tes3region|tes3repairTool|tes3skill|tes3sound|tes3soundGenerator|tes3spell|tes3static|tes3weapon An item to remove.
--- @param level number At which player level the item could be resolved from the leveled list.
--- @return boolean result No description yet available.
function tes3leveledItem:remove(entry, level) end
