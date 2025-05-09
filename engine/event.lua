--- @meta

--- @class balatro.Event: balatro.Object
--- @field trigger balatro.Event.TriggerType
--- @field blocking boolean
--- @field blockable boolean
--- @field complete boolean
--- @field self_timer boolean
--- @field func fun(n: number?): boolean
--- @field delay number
--- @field no_delete boolean
--- @field created_on_pause boolean
--- @field timer balatro.TimerType
--- @field time number
--- @field ease balatro.Event.Ease?
--- @field condition balatro.Event.Condition?
--- @field start_timer boolean
local IEvent = {}

--- @param config balatro.Event.Config
function IEvent:init(config) end

--- @param resultTarget balatro.Event.Result Result object to return to
function IEvent:handle(resultTarget) end

--- @type balatro.Event | fun(config: balatro.Event.Config): balatro.Event
Event = function() end

--- @class balatro.Event.Config
--- @field trigger balatro.Event.TriggerType?
--- @field blocking boolean?
--- @field blockable boolean?
--- @field start_timer boolean?
--- @field func? fun(n: number?): boolean?
--- @field delay number?
--- @field no_delete boolean?
--- @field pause_force boolean?
--- @field timer balatro.TimerType?
--- @field ref_table table? Only for trigger == "ease" or "condition"
--- @field ref_value any? Only for trigger == "ease" or "condition"
--- @field ease balatro.Event.EaseType? Only for trigger == "ease"
--- @field ease_to number? Only for trigger == "ease"
--- @field stop_val any? Only for trigger == "condition"

--- @class balatro.Event.Ease
--- @field type balatro.Event.EaseType
--- @field ref_table table
--- @field ref_value any
--- @field start_val number
--- @field end_val number
--- @field start_time number?
--- @field end_time number?

--- @class balatro.Event.Condition
--- @field ref_table table
--- @field ref_value any
--- @field stop_val any

--- @class balatro.Event.Result
--- @field pause_skip boolean?
--- @field blocking boolean
--- @field completed boolean
--- @field time_done boolean?

--- @alias balatro.Event.TriggerType 'immediate' | 'ease' | 'condition' | 'after' | 'before'
--- @alias balatro.Event.EaseType 'lerp' | 'elastic' | "quad"
