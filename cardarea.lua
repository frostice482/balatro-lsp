--- @meta

--- @class balatro.CardArea: balatro.Moveable
--- @field cards balatro.Card[]
--- @field config balatro.CardArea.Config
--- @field highlighted unknown
--- @field shufflt_amt number
local ICardArea = {}

function ICardArea:init(X, Y, W, H, config) end
function ICardArea:emplace(card, location, stay_flipped) end
function ICardArea:remove_card(card, discarded_only) end
function ICardArea:change_size(delta) end
function ICardArea:can_highlight(card) end
function ICardArea:add_to_highlighted(card, silent) end
function ICardArea:parse_highlighted() end
function ICardArea:remove_from_highlighted(card, force) end
function ICardArea:unhighlight_all() end
function ICardArea:set_ranks() end
function ICardArea:move(dt) end
function ICardArea:update(dt) end
function ICardArea:draw() end
function ICardArea:align_cards() end
function ICardArea:hard_set_T(X, Y, W, H) end
function ICardArea:hard_set_cards() end
function ICardArea:shuffle(_seed) end
function ICardArea:sort(method) end
function ICardArea:draw_card_from(area, stay_flipped, discarded_only) end
function ICardArea:click() end
function ICardArea:save() end
function ICardArea:load(cardAreaTable) end
function ICardArea:remove() end

CardArea = ICardArea

--- @class balatro.CardArea.Config
--- @field card_count number
--- @field card_limit number
--- @field highlighted_limit number
--- @field lr_padding number
--- @field sort balatro.CardArea.Sort
--- @field temp_limit number
--- @field type balatro.CardArea.Type

--- @alias balatro.CardArea.Sort "desc" | "asc" | "suit desc" | "suit asc" | "order"
--- @alias balatro.CardArea.Type "deck" | "discard" | "hand" | "joker" | "consumeable" | "shop" | "play" | "title_2"
