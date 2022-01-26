--- @meta

--- The **weatherTransitionFinished** event occurs when the currently simulated weather finished transitioning to a new weather.
--- 
--- Weather will continue transitioning in interiors, and may finish while in an interior. The transition may be interrupted at any time by the `weatherChangedImmediate` event, and this finish event will not be triggered.
--- @class weatherTransitionFinishedEventData
--- @field claim boolean If set to `true`, any lower-priority event callbacks will be skipped. Returning `false` will set this to `true`.
--- @field to tes3weatherAsh|tes3weatherBlight|tes3weatherBlizzard|tes3weatherClear|tes3weatherCloudy|tes3weatherFoggy|tes3weatherOvercast|tes3weatherRain|tes3weatherSnow|tes3weatherThunder The weather object that will be transitioned to.