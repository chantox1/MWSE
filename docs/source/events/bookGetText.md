# bookGetText
<div class="search_terms" style="display: none">bookgettext</div>

<!---
	This file is autogenerated. Do not edit this file manually. Your changes will be ignored.
	More information: https://github.com/MWSE/MWSE/tree/master/docs
-->

This event is raised when a book's text is about to be displayed. By providing your own text, you can overwrite what is going to be displayed.

```lua
--- @param e bookGetTextEventData
local function bookGetTextCallback(e)
end
event.register(tes3.event.bookGetText, bookGetTextCallback)
```

!!! tip
	This event can be filtered based on the **`book`** event data.

!!! tip
	An event can be claimed by setting `e.claim` to `true`, or by returning `false` from the callback. Claiming the event prevents any lower priority callbacks from being called.

## Event Data

* `book` ([tes3book](../../types/tes3book)): *Read-only*. The book whose text is being retrieved.
* `loadOriginalText` (fun(self: bookGetTextEventData): string): Loads the original text for the book from the game files, bypassing this event.
* `text` (string): If set, the book's text will be overwritten with this value. It needs to follow book text conventions as in the Construction Set. In essence, it uses HTML syntax. Important: every book needs to end with a `<BR>` statement to be displayed properly. For more details, please read the page on [book conventions](https://mwse.github.io/MWSE/references/general/books/).

## Examples

!!! example "Example: Change the text of a book"

	This will make every book read Sweetroll.

	```lua
	
	local newText = [[<div align="left"><font color="002200" size="3" face="Magic Cards"><br>
	Sweetroll
	<br>
	]]
	
	local function example(e)
		e.text = newText
	end
	
	event.register(tes3.event.bookGetText, example)

	```

