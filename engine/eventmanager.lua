--- @class balatro.EventManager
---
--- @field queues balatro.EventManager.Queues
--- @field queue_timer number
--- @field queue_dt number
--- @field queue_last_processed number
EventManager = {}

--- @param event balatro.Event
--- @param queue balatro.EventManager.QueueType?
--- @param front boolean?
function EventManager:add_event(event, queue, front) end

--- @param queue boolean?
--- @param exception boolean?
function EventManager:clear_queue(queue, exception) end

--- @param dt number
--- @param forced boolean?
function EventManager:update(dt, forced) end

--- @class balatro.EventManager.Queues: { [string]: balatro.Event[] }
--- @field unlock balatro.Event[]
--- @field base balatro.Event[]
--- @field tutorial balatro.Event[]
--- @field achievement balatro.Event[]
--- @field other balatro.Event[]

--- @alias balatro.EventManager.QueueType "unlock" | "base" | "tutorial" | "achievement" | "other" | string
