--- @meta

--- @class balatro.CardArea: balatro.Moveable
--- Cards
--- @field cards balatro.Card[]
--- Card area configuration, containing card limit, highlighted limit, sort method, etc.
--- @field config balatro.CardArea.Config
--- @field highlighted balatro.Card[]
--- @field shufflt_amt number
local ICardArea = {}

function ICardArea:init(X, Y, W, H, config) end

--- Puts a card in this card area
--- @param card balatro.Card
--- @param location? 'front' If set to `front`, puts the card in the first, otherwise in last. This will be treated as `front` if cardarea type is `deck`
--- @param stay_flipped? boolean Keeps the card flipped
function ICardArea:emplace(card, location, stay_flipped) end

--- Removes a card from this card area
--- @param card? balatro.Card Card to remove. If unspecified, removes last card if `type` is `discard` or `deck`, or removes first otherwise.
--- @param discarded_only? boolean Removes only discarded card from curreny cards
--- @return balatro.Card?
function ICardArea:remove_card(card, discarded_only) end

function ICardArea:change_size(delta) end

---Checks if any card in this card area can be highlighted.
---Returns true if `type` is `hand`, `joker`, `consumeable`, or `shop` with `highlighted_limit` > 0
---@return boolean
function ICardArea:can_highlight() end

--- Highlights a card
--- @param card balatro.Card
--- @param silent? boolean
---
--- Highlighted card limit behavior may depend on type:
--- - If `type` is `shop`, only 1 card can be highlighted
--- - If `type` is `joker` and `consumable`, automatically unhighlights card if highlighted card count is too much
--- - Everything else, prevents highlighted if highlighted card count reaches limit
---
--- If this card area is `G.hand`, `parse_highlighted` will be called
function ICardArea:add_to_highlighted(card, silent) end

--- Updates poker hand text from highlighted cards.
function ICardArea:parse_highlighted() end

--- Unhighlights a card
--- @param card balatro.Card
--- @param force? boolean Forcibly unhighlights this card, ignored forced selection
--- If this card area is `G.hand`, `parse_highlighted` will be called
function ICardArea:remove_from_highlighted(card, force) end

--- Unhighlights alll card
--- If this card area is `G.hand`, `parse_highlighted` will be called
function ICardArea:unhighlight_all() end

function ICardArea:set_ranks() end

function ICardArea:move(dt) end

function ICardArea:update(dt) end

function ICardArea:draw() end

function ICardArea:align_cards() end

function ICardArea:hard_set_T(X, Y, W, H) end

function ICardArea:hard_set_cards() end

--- Shuffles all cards
--- @param _seed? string Shuffle seed to use, defaults to `shuffle`
function ICardArea:shuffle(_seed) end

--- Sorts all cards
--- @param method? balatro.CardArea.Sort
function ICardArea:sort(method) end

--- Draws a card from other area
--- @param area balatro.CardArea
--- @param stay_flipped? boolean Unused
--- @param discarded_only? boolean
--- @return boolean?
function ICardArea:draw_card_from(area, stay_flipped, discarded_only) end

function ICardArea:click() end

--- Saves this card area and its cards to be stored
function ICardArea:save() end

--- Loads card area info and its cards from saved table
function ICardArea:load(cardAreaTable) end

--- Removes this cardarea from `G.I.CARDAREA`, including its cards and childrens
function ICardArea:remove() end

CardArea = ICardArea

--- @class balatro.CardArea.Config
--- Number of cards currently
--- @field card_count number
--- Limits number of cards
--- @field card_limit number
--- Limits highlighted cards
--- @field highlighted_limit number
--- Undocumented
--- @field lr_padding number
--- Sorting method
--- @field sort balatro.CardArea.Sort
--- Undocumented
--- @field temp_limit number
--- Card area type. Determines transformation effect for cards
--- @field type balatro.CardArea.Type

--- @alias balatro.CardArea.Sort "desc" | "asc" | "suit desc" | "suit asc" | "order"
--- @alias balatro.CardArea.Type
--- | "deck" Stacks all cards to one, flipped
--- | "discard" Spreads all cards, flipped
--- | "hand" Playing cards, slightly arced to up
--- | "joker" Joker cards
--- | "consumeable" Consumable cards, wavy
--- | "shop" Shop cards, rotates less aggresively
--- | "play" Same as "shop"
--- | "title_2" Same as "joker"

--- @class balatro.CardArea.Save
--- @field config balatro.CardArea.Config
--- @field cards balatro.Card.Save[]