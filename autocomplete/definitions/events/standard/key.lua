return {
	type = "event",
	description = "The key event fires when a key up or key down input is detected. It is preferred that the keyDown and keyUp events are used instead.",
	eventData = {
		["keyCode"] = {
			type = "number",
			readOnly = true,
			description = "The scan code of the key that raised the event.",
		},
		["pressed"] = {
			type = "boolean",
			readOnly = true,
			description = "True if this is a key down event, false for a key up event.",
		},
		["isShiftDown"] = {
			type = "number",
			readOnly = true,
			description = "True if either shift key is held.",
		},
		["isControlDown"] = {
			type = "number",
			readOnly = true,
			description = "True if either control key is held.",
		},
		["isAltDown"] = {
			type = "number",
			readOnly = true,
			description = "True if either alt key is held.",
		},
		["isSuperDown"] = {
			type = "number",
			readOnly = true,
			description = "True if super (Windows key) is held.",
		},
	},
	filter = "keyCode",
	examples = {
		["PrintCtrlZ"] = {
			title = "Show a Message when Ctrl-Z is Pressed",
			description = "Displays a simple message when Z is pressed while control is held.",
		},
	},
}