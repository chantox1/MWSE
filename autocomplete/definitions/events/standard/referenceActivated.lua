return {
	type = "event",
    description = "This event is triggered when a reference is activated.",
	related = { "referenceActivated", "referenceDeactivated" },
    eventData = {
        ["reference"] = {
            type = "tes3reference",
            readOnly = true,
            description = "The reference which was deactivated.",
        },
    },
    filter = "reference",
}