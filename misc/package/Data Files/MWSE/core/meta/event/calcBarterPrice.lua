--- @meta

--- This event is raised when an item price is being determined when bartering.
--- @class calcBarterPriceEventData
--- @field block boolean If set to `true`, vanilla logic will be suppressed. Returning `false` will set this to `true`.
--- @field claim boolean If set to `true`, any lower-priority event callbacks will be skipped. Returning `false` will set this to `true`.
--- @field buying boolean If true, the player is buying, otherwise the player is selling.
--- @field price number The price of the item. This can be modified, but ensure that the buy/sell price is matched or there will be odd behavior.
--- @field count number The number of items being bartered.
--- @field item tes3alchemy|tes3apparatus|tes3armor|tes3book|tes3clothing|tes3ingredient|tes3light|tes3lockpick|tes3misc|tes3probe|tes3repairTool|tes3weapon The item, if any, that is being bartered.
--- @field reference tes3reference A shortcut to the mobile's reference. May not always be available.
--- @field itemData tes3itemData The item data for the bartered item.
--- @field basePrice number The base price of the item, before any event modifications.
--- @field mobile tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer The mobile actor for who is selling or buying. May not always be available.
calcBarterPrice = {}

