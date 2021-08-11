--- @meta

--- This event is called when determining the price of traveling, and can be used to modify the given price.
--- @class calcTravelPriceEventData
--- @field block boolean If set to `true`, vanilla logic will be suppressed. Returning `false` will set this to `true`.
--- @field claim boolean If set to `true`, any lower-priority event callbacks will be skipped. Returning `false` will set this to `true`.
--- @field price number The adjusted price of travelling.
--- @field destination tes3reference The travel marker that marks the destination.
--- @field reference tes3reference mobile’s related reference.
--- @field mobile tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer The mobile actor of the merchant the player is interacting with.
--- @field basePrice number The price before adjustment.
--- @field companions table A table of companions (tes3references) that will travel with the player, or nil if no companions are present.
calcTravelPrice = {}

