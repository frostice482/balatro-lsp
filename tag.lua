--- @class balatro.Tag: balatro.Object
--- @field key string
--- @field config table
--- @field proto balatro.Item.Tag
--- @field pos Position
--- @field name string
--- @field tally number
--- @field triggered boolean
--- @field ID number
--- @field ability table
Tag = {}

--- @param _tag string
---@param for_collection boolean?
---@param _blind_type boolean?
function Tag:init(_tag, for_collection, _blind_type) end
function Tag:nope() end
function Tag:yep(message, _colour, func) end
function Tag:set_ability() end
function Tag:apply_to_run(_context) end
function Tag:save() end
function Tag:load(tag_savetable) end
function Tag:juice_up(_scale, _rot) end
function Tag:generate_UI(_size) end
function Tag:get_uibox_table(tag_sprite) end
function Tag:remove_from_game() end
function Tag:remove() end
