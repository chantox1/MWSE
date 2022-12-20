# Storing Data

MWSE offers various ways to store data persistently. Be at across save sessions for the same character or even persistently across different player characters. To store data that is meant to persist between different characters, you can used provided [json API](https://mwse.github.io/MWSE/apis/json/). It provides a set of functions needed to save Lua's values to json files and load the data to Lua's tables. This process is called serialization. One requirement is that the value can be serialized. Even functions used to work with configuration files `mwse.saveConfig` and `mwse.loadConfig` are implemented with json API.


## Serialization

Serializible values are Lua's primitive types:
 - `boolean`
 - `number`
 - `string`
 - `table`'s made of above values

You can't serialize MWSE classes such as `tes3reference`, `tes3mobilePlayer`, etc.

## Persistent Storage for the Same Player Character

Besides saving your data to files, you can save your data to some of the MWSE's classes that have a `data` or `tempData` property. Those are:
- `tes3combatSession.data`
- `tes3itemData.data`
- `tes3reference.data`
- `tes3itemData.tempData`
- `tes3reference.tempData`

!!! note
	Both `data` and `tempData` tables can only be used to store *serializible* data.

Data stored in `data` table on a certain object will persist between savegame sessions, while data stored in `tempData` table will be cleared on game reload. There are some peculiarities when working with these tables - each of the table fields needs to be declared one by one.


!!! example "Example: creating a table inside `data` table on the player's reference"
	```Lua
	-- Correct way
	tes3.player.data.myMod = {}
	tes3.player.data.myMod.var1 = {}
	tes3.player.data.myMod.var2 = 32

	-- Wrong way, this would rise an error
	tes3.player.data.myMod = {
		var1 = {},
		var2 = 32
	}


	-- On the other hand we can save our created
	-- table to a local variable for easy access
	-- Let's create our table first
	tes3.player.data.myMod = {}

	-- Now let's save it to a local variable
	local myData = tes3.player.data.myMod

	-- Let's save something now
	myData.var1 = {}
	myData.var2 = 32
	```

The field `data` on the player's reference could be perfect way to store some mod-related player's statistics. For example, a mod implementing karma system could save the player's current karma level inside that table, so that it can persist between save sessions. On the other hand, the data that mod's user would want to persist between whichever character the player or savegame is played would should be saved to a configuration file insted. For instance, keybindings for new abilities are a good candidate for that.

### Usage of data table

Here an example of a simple mod is given which stores some variables to `tes3.player.data` and `tes3.player.tempData`.

```Lua
local shrineIds = {
	["fields of kummu"] = true,
	["vivec, temple"] = true,
	["vivec, puzzle canal, center"] = true,
	["gnisis, temple"] = true,
	["koal cave"] = true,
	["ghostgate, temple"] = true
}
local regions = {
	["balmora"] = true,
	["seyda neen"] = true,
	["ald-ruhn"] = true
}

-- This is the default layout for the table
-- stored on tes3.player.data
local defaults = {
	reginalBounties = {
		["balmora"] = 0,
		["seyda neen"] = 0,
		["ald-ruhn"] = 0
	},
	karma = 0,
	shrinesVisited = {}
}

--- This function will recursively set all the fields on our
--- tes3.player.data table if they don't exist already
---@param data table
---@param t table
local function initTableValues(data, t)
	for k, v in pairs(t) do
		-- If a field already exists - we did work with
		-- this character before. Don't do anything.
		if data[k] == nil then
			if type(v) ~= "table" then
				data[k] = v
			elseif v == {} then
				data[k] = {}
			else
				-- Fill out the sub-table
				data[k] = {}
				initTableValues(data[k], v)
			end
		end
	end
end

--- This is a standard function that will create
--- a table for our mod's storage in tes3.player.data
local function initializeData()
	local data = tes3.player.data
	data.myMod = data.myMod or {}
	local myData = data.myMod
	initTableValues(myData, defaults)
end
event.register(tes3.event.loaded, initializeData)

--- This is a convinience function to get our storage
---@return table myData
local function getData()
	return tes3.player.data.myMod
end

--- This function will handle update the player's Current
--- karma level, and handle if it passes over -100 or 100
---@param delta integer
local function modKarma(delta)
	local myData = getData()
	local oldKarma = myData.karma
	myData.karma = myData.karma + delta

	local barrierCrossed = (math.abs(oldKarma) >= 100 and math.abs(myData.karma) < 100) or
									(math.abs(myData.karma) > 100 and math.abs(oldKarma) <= 100)

	if barrierCrossed then
		-- Let's log to see what's happening
		tes3.messageBox("Current karma: %s", myData.karma)
		if myData.karma < -100 then
			tes3.messageBox("Because of your deeds your karma now reached evil level.")

			-- Now let's store that to tes3.player.tempData for later use
			-- We can use table.getset to create a table for our mod in
			-- tes3.player.tempData if it doesn't exist yet.
			local temp = table.getset(tes3.player.tempData, "myMod", {})

			-- Now actually store player's karma range
			temp.encounter = "bad"

		elseif myData.karma < 100 then
			-- -100 < karmy < 100
			tes3.messageBox("Because of your deeds your karma now reached neutral level.")
			local temp = table.getset(tes3.player.tempData, "myMod", {})
			temp.encounter = "neutral"

		elseif myData.karma >= 100 then
			tes3.messageBox("Through your deeds your karma now reached good level.")
			local temp = table.getset(tes3.player.tempData, "myMod", {})
			temp.encounter = "good"
		end
	end
end

---@param e cellChangedEventData
local function onCellChange(e)
	local cell = e.cell
	local cellId = cell.id:lower()

	-- Check if visited cell is on
	-- the list of valid shrines
	if shrineIds[cellId] then
		local data = getData()

		-- Make sure player didn't already visit this shrine,
		-- not to award the karma boost twice.
		if not data.shrinesVisited[cellId] then
			-- Player visited this shrine for the first time,
			-- award some karma points
			modKarma(50)

			-- Lets save that to the list of visited shrine in
			-- a table on tes3.player.data, so it can persist
			-- between savegames.
			data.shrinesVisited[cellId] = true
		end
	end
end
event.register(tes3.event.cellChanged, onCellChange)


---@param e lockPickEventData|trapDisarmEventData
local function onPick(e)
	local doorReference = e.reference
	local hasAccess = tes3.hasOwnershipAccess({ target = doorReference })

	if not hasAccess then
		tes3.messageBox("That isn't allowed!")
		modKarma(-25)
		local cellId = tes3.player.cell.id:lower()
		if regions[cellId] then
			local myData = getData()
			myData.reginalBounties[cellId] = myData.reginalBounties[cellId] + 25
		end

	end
end
event.register(tes3.event.lockPick, onPick)
event.register(tes3.event.trapDisarm, onPick)

---@param e calcRestInterruptEventData
local function onCalcRestInterrupt(e)
	if not tes3.player.tempData.myMod then return end

	local roll = math.random(100)
	if roll > 60 then return end

	local encounterType = tes3.player.tempData.myMod.encounter
	if encounterType == "good" then
		-- The player has good karma, let's block
		-- the rest interruption
		e.count = 0

		-- Log what happened. This kind of message wouldn't
		-- be in the final release of the mod.
		tes3.messageBox("Blocking encounter!")
	elseif encounterType == "neutral" then
		local roll = math.random(100)
		if roll < 50 then
			e.count = 0
			tes3.messageBox("Blocking encounter!")
		end
	else
		-- Player is bad, let's increase the amount
		-- of spawned creatures by a random number
		local mod = math.random(10)
		e.count = e.count + mod
		tes3.messageBox("Increased the spawned enemy count!")
	end
end
event.register(tes3.event.calcRestInterrupt, onCalcRestInterrupt)
```