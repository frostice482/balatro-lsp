--- @class balatro.Blind: balatro.Moveable
--- @field chips number
--- @field tilt_var {mx: number, my: number, amt: number}
--- @field ambient_tilt number
--- @field zoom boolean
--- @field colour ColorHex
--- @field dark_colour ColorHex
--- @field loc_debuff_lines string[]
---
--- @field name string?
--- @field dollars number?
--- @field sound_pings number?
--- @field debuff table?
--- @field pos Position?
--- @field mult number?
--- @field disabled boolean?
--- @field discards_sub number? 0 for The Water
--- @field hands_sub number? hands-1 for The Needle
--- @field boss MinMax | {showdown: boolean?}
--- @field blind_set boolean?
--- @field triggered boolean?
--- @field prepped boolean? Nil for The Fish
--- @field hands table<PokerHand, boolean>? Only for The Eye
--- @field only_hand boolean? Only for The Mouth
Blind = {}

--- @param color ColorHex
function Blind:change_colour(color) end

function Blind:set_text() end

function Blind:set_blind(blind, reset, silent) end

function Blind:alert_debuff() end

--- @return string
function Blind:get_loc_debuff_text() end

--- @param silent boolean?
function Blind:defeat(silent) end

function Blind:disable() end

function Blind:hover() end

function Blind:stop_hover() end

function Blind:draw() end

function Blind:press_play() end

function Blind:modify_hand(cards, poker_hands, text, mult, hand_chips) end

function Blind:debuff_hand(cards, hand, handname, check) end

function Blind:drawn_to_hand() end

function Blind:stay_flipped(area, card) end

function Blind:debuff_card(card, from_blind) end

function Blind:move(dt) end

function Blind:change_dim(w, h) end

function Blind:align() end

function Blind:save() end

function Blind:load(blindTable) end
