# tes3ui

The tes3ui library provides access to manipulating the game's GUI.

## Functions

### `tes3ui.acquireTextInput`

Sends all text input to the specified element.  Calling this function with a nil argument will release text input and allow keybinds to work. Suppresses most keybinds while active, except the Journal open/close keybind (it's up to the individual menu implementation).

Only one element can have control of input, and there is no automatic restoration of control if one element takes control from another. Be careful of conflicts with other users of this function.

```lua
tes3ui.acquireTextInput(element)
```

**Parameters**:

* `element` ([tes3uiElement](../../types/tes3uiElement))

***

### `tes3ui.captureMouseDrag`

When used in a mouse event, causes the element to capture further mouse events even when the cursor goes outside the element.

```lua
tes3ui.captureMouseDrag(capture)
```

**Parameters**:

* `capture` (boolean): Turns on mouse capture for the element currently processing a mouse event if true, sending all further mouse events to that element. Turns off capture if false.

??? example "Example: Basic Usage"

	```lua
	element:register("mouseDown", function(e)
	    -- Capture must be inside a mouse event.
	    tes3ui.captureMouseDrag(true)
	end)
	
	element:register("mouseRelease", function(e)
	    -- Release may be anywhere.
	    tes3ui.captureMouseDrag(false)
	end)

	```

***

### `tes3ui.createHelpLayerMenu`

Creates a help layer menu. Help layer menus include notifications and tooltips that are always above the rest of the interface. The game realizes this using a separate menu root and set of functions.

Note, to create tooltips with the correct behaviour, use tes3ui.createTooltipMenu.

Unlike standard menus, help layer menus are always created with a fixed frame.

```lua
local result = tes3ui.createHelpLayerMenu({ id = ... })
```

**Parameters**:

* `params` (table)
	* `id` (number): The menu’s ID. The menu can be later accessed by tes3ui.findHelpLayerMenu(id).

**Returns**:

* `result` ([tes3uiElement](../../types/tes3uiElement))

***

### `tes3ui.createMenu`

Creates a top-level menu.

```lua
local result = tes3ui.createMenu({ id = ..., dragFrame = ..., fixedFrame = ..., loadable = ... })
```

**Parameters**:

* `params` (table)
	* `id` (number): The menu’s ID. The menu can be later accessed by tes3ui.findMenu(id).
	* `dragFrame` (boolean): Constructs a draggable and resizeable frame and background for the menu. It is similar to the stats, inventory, magic and map menus in the standard UI. After construction, position and minimum dimensions should be set.
	* `fixedFrame` (boolean): Constructs a fixed (non-draggable) frame and background for the menu. The layout system should automatically centre and size it to fit whatever is added to the menu.
	* `loadable` (boolean): If set to false, calls to loadMenuPosition will fail.

**Returns**:

* `result` ([tes3uiElement](../../types/tes3uiElement))

***

### `tes3ui.createTooltipMenu`

Creates a tooltip menu, which can be an empty menu or an item tooltip. This should be called from within a tooltip event callback. These automatically follow the mouse cursor, and are also destroyed automatically when the mouse leaves the originating element. Creating an item tooltip will invoke the uiObjectTooltip event.

```lua
local result = tes3ui.createTooltipMenu({ item = ..., itemData = ... })
```

**Parameters**:

* `params` (table)
	* `item` ([tes3item](../../types/tes3item), string): The item to create a tooltip for. If not specified, the tooltip will be empty.
	* `itemData` ([tes3itemData](../../types/tes3itemData)): The item data for the item.

**Returns**:

* `result` ([tes3uiElement](../../types/tes3uiElement))

??? example "Example: Add an item tooltip to a new element"

	```lua
	local button = menu:createButton{text = "- Item -"}
	local item = tes3.getObject("iron_shield")
	
	button:register("help", function(e)
		local tooltip = tes3ui.createTooltipMenu{item = item}
		tooltip:createLabel{text = "Additional custom text"}
	end)

	```

***

### `tes3ui.enterMenuMode`

Requests menu mode be activated on a menu with a given id.

```lua
local result = tes3ui.enterMenuMode(id)
```

**Parameters**:

* `id` (number)

**Returns**:

* `result` (boolean)

***

### `tes3ui.findHelpLayerMenu`

Locates a help layer menu through its id. Help layer menus include notifications and tooltips that are always above the rest of the interface. The game realizes this using a separate menu root and set of functions.

```lua
local result = tes3ui.findHelpLayerMenu(id)
```

**Parameters**:

* `id` (number)

**Returns**:

* `result` ([tes3uiElement](../../types/tes3uiElement))

***

### `tes3ui.findMenu`

Locates a top-level menu through its id.

```lua
local result = tes3ui.findMenu(id)
```

**Parameters**:

* `id` (number): The ID of the menu to locate.

**Returns**:

* `result` ([tes3uiElement](../../types/tes3uiElement))

***

### `tes3ui.forcePlayerInventoryUpdate`

Forces the game to update the inventory tile GUI elements. Unlike tes3ui.updateInventoryTiles, this will force-resync the player's inventory to the GUI, rather than updating what is already in the GUI system.

```lua
tes3ui.forcePlayerInventoryUpdate()
```

***

### `tes3ui.getInventorySelectType`

Determines what sort of search is being done when performing an inventory selection, e.g. "alembic" or "ingredient" or "soulGemFilled".

```lua
local result = tes3ui.getInventorySelectType()
```

**Returns**:

* `result` (string)

***

### `tes3ui.getMenuOnTop`

Returns the top-most, active menu.

```lua
local result = tes3ui.getMenuOnTop()
```

**Returns**:

* `result` ([tes3uiElement](../../types/tes3uiElement))

***

### `tes3ui.getPalette`

Gets a standard palette color. Returns an array containing the RGB color values, in the range [0.0, 1.0].

```lua
local result = tes3ui.getPalette(name)
```

**Parameters**:

* `name` (string): The name of the palette color.

**Returns**:

* `result` (table)

***

### `tes3ui.getServiceActor`

Returns the mobile actor currently providing services to the player.

```lua
local result = tes3ui.getServiceActor()
```

**Returns**:

* `result` ([tes3mobileActor](../../types/tes3mobileActor))

***

### `tes3ui.getViewportScale`

Returns the UI scale, set in MGE.

```lua
local scale = tes3ui.getViewportScale()
```

**Returns**:

* `scale` (number): The UI scale value set from MGE.

***

### `tes3ui.getViewportSize`

Returns both the viewport width and the viewport height. Note that this value is not necessarily the real resolution of the screen. For that value, see the same-named function in the tes3 namespace. To get the scale used, check getViewportScale.

```lua
local width, height = tes3ui.getViewportSize()
```

**Returns**:

* `width` (number): The scaled width of the viewport.
* `height` (number): The scaled height of the viewport.

***

### `tes3ui.leaveMenuMode`

Requests menu mode be deactivated on a menu with a given id.

```lua
local result = tes3ui.leaveMenuMode(id)
```

**Parameters**:

* `id` (number)

**Returns**:

* `result` (boolean)

***

### `tes3ui.logToConsole`

Logs a message to the console.

```lua
tes3ui.logToConsole(text, isCommand)
```

**Parameters**:

* `text` (string)
* `isCommand` (boolean)

***

### `tes3ui.menuMode`

Checks if the game is in menu mode.

```lua
local result = tes3ui.menuMode()
```

**Returns**:

* `result` (boolean)

***

### `tes3ui.registerID`

Registers a UI element name, returning a UI_ID. Once a property is registered, this function always returns the same UI_ID. These UI_IDs are used by the API to locate elements that may not exist (a weak reference), instead of by element name.

The registry namespace is shared between Property and UI_ID. It is advisable to use a namespace prefix to avoid collisions with other mods.

```lua
local result = tes3ui.registerID(s)
```

**Parameters**:

* `s` (string)

**Returns**:

* `result` (number)

***

### `tes3ui.registerProperty`

Registers a property name, returning a Property. Once a property is registered, this function always returns the same Property.

The registry namespace is shared between Property and UI_ID. It is advisable to use a namespace prefix to avoid collisions with other mods.

```lua
local result = tes3ui.registerProperty(s)
```

**Parameters**:

* `s` (string)

**Returns**:

* `result` (number)

***

### `tes3ui.showBookMenu`

Displays the book menu with arbitrary text. Paging is automatically handled.

```lua
tes3ui.showBookMenu(text)
```

**Parameters**:

* `text` (string)

***

### `tes3ui.showScrollMenu`

Displays the scroll menu with arbitrary text.

```lua
tes3ui.showScrollMenu(text)
```

**Parameters**:

* `text` (string)

***

### `tes3ui.suppressTooltip`

Controls hiding of world object tooltips.

```lua
tes3ui.suppressTooltip(suppress)
```

**Parameters**:

* `suppress` (boolean): Turns on suppression if true, immediately hiding any active tooltip and further world object tooltips. Turns off suppression if false.

***

### `tes3ui.updateBarterMenuTiles`

Forces the game to update the barter tile GUI elements.

```lua
tes3ui.updateBarterMenuTiles()
```

***

### `tes3ui.updateInventoryCharacterImage`

Tells the game to update the character image in the player's inventory. It will update immediately if the inventory is open, or the next time the inventory is opened otherwise.

```lua
tes3ui.updateInventoryCharacterImage()
```

***

### `tes3ui.updateInventorySelectTiles`

Forces the game to update the inventory selection GUI elements.

```lua
tes3ui.updateInventorySelectTiles()
```

***

### `tes3ui.updateInventoryTiles`

Forces the game to update the inventory tile GUI elements.

```lua
tes3ui.updateInventoryTiles()
```

***
