return {
	type = "event",
	description = "The weatherTransitionStarted event occurs when the currently simulated weather has started to gradually transition to a new weather.",
	related = { "weatherCycled", "weatherTransitionFinished", "weatherChangedImmediate", "weatherTransitionStarted", "weatherChangedImmediate" },
	eventData = {
		from = {
			type = "tes3weather",
			readOnly = true,
			description = "The weather object that is the current weather.",
		},
		to = {
			type = "tes3weather",
			description = "The weather object that will be transitioned to.",
		},
	},
}