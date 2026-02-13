--- @meta

--- @class balatro.Tag: balatro.Object
--- @field key string The tag key, based in `G.P_TAGS`
--- @field config table The config table from `G.P_TAGS[tag].config`. This is copied.
--- @field proto balatro.Item.Tag The prototype tag `G.P_TAGS[tag]`
--- @field pos Position Undocumented
--- @field name string Tag name
--- @field tally number Undocumented
--- @field triggered boolean True if the tag is already applied to current run (`apply_to_run`)
--- @field ID number Unique ID from `G.tagid`, incremented
--- @field ability table Contains additional information about the tag. For Orbital tag, this contains the `orbital_hand` for poker hand to level up
--- @field HUD_tag? balatro.UIBox
---
--- @overload fun(tag: string, forCollection?: boolean, blindType?: boolean): balatro.Tag
Tag = {}

--- @param _tag string
--- @param for_collection? boolean
--- @param _blind_type? boolean
function Tag:init(_tag, for_collection, _blind_type) end

--- Creates remove tag effect and removes this
function Tag:nope() end

--- Creates applied tag effect and removes this
--- @param message string
--- @param _colour? ColorHex
--- @param func fun(): boolean?
function Tag:yep(message, _colour, func) end

--- Sets `self.ability` data
function Tag:set_ability() end

--- Applies this tag to current run
--- @param _context balatro.Tag.ApplyContext
function Tag:apply_to_run(_context) end

--- Saves this tag to be stored
--- @return balatro.Tag.Save
function Tag:save() end

--- Loads tag info from saved table
function Tag:load(tag_savetable) end

--- @param _scale? number
--- @param _rot? number
function Tag:juice_up(_scale, _rot) end

--- @return balatro.UIElement.Definition
--- @return balatro.Sprite
function Tag:generate_UI(_size) end

--- @param tag_sprite? balatro.Sprite
--- @return balatro.Sprite
function Tag:get_uibox_table(tag_sprite) end

--- Removes the tag from `G.GAME.tags`
function Tag:remove_from_game() end

--- Removes this tag from current game and tags UI
function Tag:remove() end

--- @alias balatro.Tag.ApplyType
--- |`eval` useed when cashing out
--- |`immediate` immediately uses the tag
--- |`new_blind_choice` used when selecting a new blind choice
--- |`tag_add` useed when a tag is added, includes `tag`
--- |`round_start_bonus` used when a new round starts
--- |`shop_start` used when entering a shop
--- |`voucher_add` used to add a new voucher when entering a shop
--- |`store_joker_create` used to add a card when entering a shop
--- |`store_joker_modify` used to modify a card in the shop, includes `card`
--- |`shop_final_pass` finalization for the shop

--- @class balatro.Tag.ApplyContext
--- @field type balatro.Tag.ApplyType
--- @field tag? balatro.Tag
--- @field card? balatro.Card
local x = {}

--- @class balatro.Tag.Save
--- @field key string
--- @field tally number
--- @field ability table
