-- This file is autogenerated. Do not edit this file manually. Your changes will be ignored.
-- More information: https://github.com/MWSE/MWSE/tree/master/docs

--- @meta
--- @diagnostic disable:undefined-doc-name

--- A structure that keeps track of combat session data.
--- @class tes3combatSession
--- @field alchemyPriority number No description yet available.
--- @field data table A generic lua table that data can be written to, and synced to/from the save. All information stored must be valid for serialization to json.
--- @field distance number The combat distance.
--- @field lastUseTimestamp number No description yet available.
--- @field mobile tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer *Read-only*. Convenience access back to the associated actor.
--- @field potionUseFlag number No description yet available.
--- @field selectedAction integer The next action. From observed behavior, this roughly maps to:
--- 
--- Value | Behavior
--- ----- | ---------
--- 0     | Undecided
--- 1	  | Use melee weapon
--- 2	  | Use marksman weapon
--- 3	  | Use hand to hand attacks
--- 4	  | Use on-touch offensive spell
--- 5	  | Use on-target offensive spell
--- 6	  | Use summon spell
--- 7	  | Flee
--- 8	  | Cast on-self empowering spell (For example, Ancestor Guardian)
--- 9	  | MaybeEquipUseItem?
--- 10	  | Use enchanted item
--- 
--- @field selectedItem tes3itemStack No description yet available.
--- @field selectedShield tes3equipmentStack *Read-only*. No description yet available.
--- @field selectedSpell tes3spell This field containg the spell the actor is currently casting. If not in casting state this field has `nil` value.
--- @field selectedWeapon tes3equipmentStack *Read-only*. The weapon the actor is using in this combat session.
--- @field selectionPriority number No description yet available.
tes3combatSession = {}

--- This method equips an item to the mobile in this combat sesion.
--- @param equipmentStack tes3equipmentStack An item to equip.
function tes3combatSession:changeEquipment(equipmentStack) end

--- Selects the alchemy item with the greatest value, for a given effect ID and loads it into the `selectedItem` property.
--- @param id integer No description yet available.
--- @return number result No description yet available.
function tes3combatSession:selectAlchemyWithEffect(id) end

