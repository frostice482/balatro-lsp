--- @class balatro.CardArea
CardArea = {}

function CardArea:init(X, Y, W, H, config) end
function CardArea:emplace(card, location, stay_flipped) end
function CardArea:remove_card(card, discarded_only) end
function CardArea:change_size(delta) end
function CardArea:can_highlight(card) end
function CardArea:add_to_highlighted(card, silent) end
function CardArea:parse_highlighted() end
function CardArea:remove_from_highlighted(card, force) end
function CardArea:unhighlight_all() end
function CardArea:set_ranks() end
function CardArea:move(dt) end
function CardArea:update(dt) end
function CardArea:draw() end
function CardArea:align_cards() end
function CardArea:hard_set_T(X, Y, W, H) end
function CardArea:hard_set_cards() end
function CardArea:shuffle(_seed) end
function CardArea:sort(method) end
function CardArea:draw_card_from(area, stay_flipped, discarded_only) end
function CardArea:click() end
function CardArea:save() end
function CardArea:load(cardAreaTable) end
function CardArea:remove() end
