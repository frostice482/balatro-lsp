--- @meta

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
local ITag = {}

--- @param _tag string
--- @param for_collection boolean?
--- @param _blind_type boolean?
function ITag:init(_tag, for_collection, _blind_type) end
function ITag:nope() end
function ITag:yep(message, _colour, func) end
function ITag:set_ability() end
function ITag:apply_to_run(_context) end
function ITag:save() end
function ITag:load(tag_savetable) end
function ITag:juice_up(_scale, _rot) end
function ITag:generate_UI(_size) end
function ITag:get_uibox_table(tag_sprite) end
function ITag:remove_from_game() end
function ITag:remove() end

--- @type balatro.Tag | fun(tag: string, forCollection?: boolean, blindType?: boolean): balatro.Tag
Tag = ITag