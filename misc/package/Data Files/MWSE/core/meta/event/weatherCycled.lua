--- @meta

--- The **weatherCycled** event occurs when region weathers are randomized. This occurs at an interval set by the ini option “Hours Between Weather Changes”. Regions may select the same weather as before, and there will be no transition in this case.
--- @class weatherCycledEventData
--- @field claim boolean If set to `true`, any lower-priority event callbacks will be skipped. Returning `false` will set this to `true`.
