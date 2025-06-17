--- @meta

--- @class balatro.Blind: balatro.Moveable
--- @field chips number
--- @field tilt_var {mx: number, my: number, amt: number}
--- @field ambient_tilt number
--- @field zoom boolean
--- @field colour ColorHex
--- @field dark_colour ColorHex
--- @field loc_debuff_lines string[]
--- @field config balatro.Blind.Config
--- @field children balatro.Blind.Children
---
--- @field loc_name? string
--- @field loc_debuff_text? string
--- @field chip_text? string
--- @field name? string
--- @field dollars? number
--- @field sound_pings? number
--- @field debuff? table
--- @field pos? Position
--- @field mult? number
--- @field disabled? boolean
--- @field discards_sub number? 0 for The Water
--- @field hands_sub number? hands-1 for The Needle
--- @field boss? boolean
--- @field blind_set? boolean
--- @field triggered? boolean
--- @field prepped boolean? Nil for The Fish
--- @field hands table<PokerHand, boolean>? Only for The Eye
--- @field only_hand boolean? Only for The Mouth
--- @field hovering? boolean
--- @field hover_tilt? number
--- @field block_play? boolean
--- @field dissolve? number
--- @field dissolve_colours ColorHex[]
local IBlind = {}

--- @param color? ColorHex
function IBlind:change_colour(color) end

function IBlind:set_text() end

function IBlind:set_blind(blind, reset, silent) end

function IBlind:alert_debuff(first) end

--- @return string
function IBlind:get_loc_debuff_text() end

--- @param silent? boolean
function IBlind:defeat(silent) end

function IBlind:disable() end

function IBlind:hover() end

function IBlind:stop_hover() end

function IBlind:draw() end

function IBlind:press_play() end

function IBlind:modify_hand(cards, poker_hands, text, mult, hand_chips) end

function IBlind:debuff_hand(cards, hand, handname, check) end

function IBlind:drawn_to_hand() end

function IBlind:stay_flipped(area, card) end

function IBlind:debuff_card(card, from_blind) end

function IBlind:move(dt) end

function IBlind:change_dim(w, h) end

function IBlind:align() end

function IBlind:save() end

--- @return BlindType
function IBlind:get_type() end

function IBlind:load(blindTable) end

--- @type balatro.Blind | fun(X: number, Y: number, W: number, H: number): balatro.Blind
Blind = function() end

--- @class balatro.Blind.Children: { [string]: balatro.Node }
--- @field animatedSprite balatro.AnimatedSprite
--- @field particles? balatro.Particles

--- @class balatro.Blind.Config: table
--- @field blind? balatro.Item.Blind