--- @meta

--- This event fires when a lock is being picked.
--- @class lockPickEventData
--- @field block boolean If set to `true`, vanilla logic will be suppressed. Returning `false` will set this to `true`.
--- @field claim boolean If set to `true`, any lower-priority event callbacks will be skipped. Returning `false` will set this to `true`.
--- @field picker tes3mobileNpc The Mobile NPC doing the disarming.
--- @field chance number The chance the lockpick will be successful.
--- @field tool tes3alchemy|tes3apparatus|tes3armor|tes3book|tes3clothing|tes3ingredient|tes3light|tes3lockpick|tes3misc|tes3probe|tes3repairTool|tes3weapon The item the picker is using to pick the lock.
--- @field reference tes3reference The reference that triggered the event (container, door, etc.).
--- @field lockPresent boolean Indicates if a lock is present on the reference.
--- @field toolItemData tes3itemData The item data for the tool.
--- @field lockData tes3lockAttachmentNode The lock data of the reference.
lockPick = {}

