--- @meta

--- @class balatro.EventManager: balatro.Object
--- @field queues balatro.EventManager.Queues
--- @field queue_timer number
--- @field queue_dt number
--- @field queue_last_processed number
local IEventManager = {}

--- @param event balatro.Event
--- @param queue balatro.EventManager.QueueType?
--- @param front boolean?
function IEventManager:add_event(event, queue, front) end

--- @param queue boolean?
--- @param exception boolean?
function IEventManager:clear_queue(queue, exception) end

--- @param dt number
--- @param forced boolean?
function IEventManager:update(dt, forced) end

--- @type balatro.EventManager | fun(): balatro.EventManager
EventManager = function() end

--- @class balatro.EventManager.Queues: { [string]: balatro.Event[] }
--- @field unlock balatro.Event[]
--- @field base balatro.Event[]
--- @field tutorial balatro.Event[]
--- @field achievement balatro.Event[]
--- @field other balatro.Event[]

--- @alias balatro.EventManager.QueueType "unlock" | "base" | "tutorial" | "achievement" | "other" | string
