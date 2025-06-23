--- @meta

--- @class balatro.Card: balatro.Moveable
--- @field children balatro.Card.Children
--- @field params balatro.Card.Param
--- @field config balatro.Card.Config
--- @field tilt_var table
--- @field ambient_tilt number
--- @field playing_card? boolean
--- @field sort_id number
--- @field back 'viewed_back' | 'selected_back'
--- @field bypass_discovery_center? boolean
--- @field bypass_discovery_ui? boolean
--- @field bypass_lock? boolean
--- @field no_ui? boolean
--- @field base_cost number
--- @field extra_cost number
--- @field cost number
--- @field sell_cost number
--- @field sell_cost_label number | string
--- @field unique_val number
--- @field edition balatro.Card.Edition
--- @field zoom boolean
--- @field facing 'front' | 'back'
--- @field sprite_facing 'front' | 'back'
--- @field discard_pos Position | { r: number }
--- @field flipping nil | 'f2b' | 'b2f'
--- @field area? balatro.CardArea
--- @field highlighted boolean
--- @field click_timeout number
--- @field debuff boolean
--- @field rank number
--- @field added_to_deck? boolean
--- @field ability balatro.Card.Ability
--- @field shattered? boolean
--- @field dissolve number
--- @field dissolve_colours ColorHex[]
--- @field base balatro.Card.Base
--- @field label string
--- @field mouse_damping? number
--- @field pinned? boolean
--- @field seal? boolean
--- @field sticker_run? Sticker | "NONE"
--- @field sticker? Sticker
--- @field hover_tilt? number
--- @field greyed? boolean
--- @field vortex? boolean
--- @field no_shadow? boolean
local ICard = {}

--- @param X number
--- @param Y number
--- @param W number
--- @param H number
--- @param card balatro.Item.Card
--- @param center balatro.Center
--- @param params balatro.Card.Param
function ICard:init(X, Y, W, H, card, center, params) end

function ICard:update_alert() end

--- Sets base value for this card
--- @param card? balatro.Item.Card
--- @param initial? boolean
function ICard:set_base(card, initial) end

--- Sets sprite for this card
--- @param _center? balatro.Item.Card
--- @param _front? balatro.Item.Card
function ICard:set_sprites(_center, _front) end

--- Sets ability for this card
--- @param center? balatro.Center Center. This should be a valid item from `G.P_CENTERS`
--- @param initial? boolean
--- @param delay_sprites? boolean
function ICard:set_ability(center, initial, delay_sprites) end

--- Updates cost for this card
function ICard:set_cost() end

--- Sets edition for this card
--- @param edition? table<SpecialEdition, true|nil>
--- @param immediate? boolean
--- @param silent? boolean
function ICard:set_edition(edition, immediate, silent) end

--- Sets seal for this card
--- @param _seal Seal
--- @param immediate? boolean
--- @param silent? boolean
function ICard:set_seal(_seal, silent, immediate) end

--- Gets seal for this card
--- @param bypass_debuff? boolean Bypasses debuff check
--- @return Seal|nil
function ICard:get_seal(bypass_debuff) end

--- Applies eternal
--- @param _eternal? boolean
function ICard:set_eternal(_eternal) end

--- Applies perishable
--- @param _perishable? boolean
function ICard:set_perishable(_perishable) end

--- Applies rental
--- @param _rental? boolean
function ICard:set_rental(_rental) end

--- Applies debuff
--- @param should_debuff? boolean
function ICard:set_debuff(should_debuff) end

function ICard:remove_UI() end

--- Changes suit for this card
--- @param new_suit Suit
function ICard:change_suit(new_suit) end

--- Adds this card to deck
function ICard:add_to_deck(from_debuff) end

--- Removes this card from deck
function ICard:remove_from_deck(from_debuff) end

function ICard:generate_UIBox_unlock_table(hidden) end

function ICard:generate_UIBox_ability_table() end

--- Gets nominal value from this card
--- @param mod? 'suit'
--- @return number
function ICard:get_nominal(mod) end

--- Gets ID from this card.
--- This may be rank, or anything random if a stone card
function ICard:get_id() end

--- Gets if this card is a face card
--- @param from_boss? boolean Ignore debuffed
--- @return true|nil
function ICard:is_face(from_boss) end

--- Gets actual rank
--- @return number|nil
function ICard:get_original_rank() end

--- Gets chips bonus
--- @return number
function ICard:get_chip_bonus() end

--- Gets mult bonus
--- @return number
function ICard:get_chip_mult() end

--- Gets X mult bonus
--- @return number
function ICard:get_chip_x_mult(context) end

--- Gets mult bonus when this card stays in hand
--- @return number
function ICard:get_chip_h_mult() end

--- Gets X mult bonus when this card stays in hand
--- @return number
function ICard:get_chip_h_x_mult() end

--- Gets edition info
--- @return balatro.Card.CalcEditionRet
function ICard:get_edition() end

--- gets end of round effects (Blue seal, gold card)
--- @return balatro.EvalCardContext.Return
function ICard:get_end_of_round_effect() end

--- Gets dollars when played
--- @return number
function ICard:get_p_dollars() end

--- Uses this card as a consumable
--- @param area? balatro.CardArea This is unused
--- @param copier? balatro.Card Which card to cause the juice up effect at
function ICard:use_consumeable(area, copier) end

--- Checks if this card can be used as a consumable
--- @param any_state? boolean Allows states other than `HAND_PLAYED`, `DRAW_TO_HAND`, `PLAY_TAROT`
--- @param skip_check? boolean Skips checking for currently scoring / locked
function ICard:can_use_consumeable(any_state, skip_check) end

--- Checks if the card can be used
--- @return boolean|nil check True if can't be used
function ICard:check_use() end

--- Sells this card
function ICard:sell_card() end

--- Checks if this card can be sold
function ICard:can_sell_card() end

--- Gets dollar bonus at the end of round
--- @return number|nil
function ICard:calculate_dollar_bonus() end

--- Opens this booster
function ICard:open() end

--- Redeems this voucher
function ICard:redeem() end

--- APplies voucher to current run
--- @param center? balatro.Item.Voucher
function ICard:apply_to_run(center) end

--- Creates explode effect
--- @param dissolve_colours? ColorHex
--- @param explode_time_fac? number
function ICard:explode(dissolve_colours, explode_time_fac) end

--- Creates shatter effect
function ICard:shatter() end

--- Creates dissolve effect (transition in) for this card
--- @param dissolve_colours? ColorHex
--- @param silent? boolean Do not play sound
--- @param dissolve_time_fac? number
--- @param no_juice? boolean
function ICard:start_dissolve(dissolve_colours, silent, dissolve_time_fac, no_juice) end

--- Creates materialize effect (transition in) for this card
--- @param dissolve_colours? ColorHex
--- @param silent? boolean Do not play sound
--- @param timefac? number
function ICard:start_materialize(dissolve_colours, silent, timefac) end

--- Triggers seal effect
--- @param context balatro.Card.CalculateJokerContext
--- @return balatro.Card.CalcSealRet?
function ICard:calculate_seal(context) end

--- Triggers rental effect
function ICard:calculate_rental() end

--- Triggers perishable effect
function ICard:calculate_perishable() end

--- Calculates / triggers card effect
--- @param context balatro.Card.CalculateJokerContext | balatro.EvalCardContext
function ICard:calculate_joker(context) end

--- Checks if suit is same.
--- @param suit Suit
--- @param bypass_debuff? boolean Bypasses debugg
--- @param flush_calc? boolean Calculates for flush
function ICard:is_suit(suit, bypass_debuff, flush_calc) end

--- Sets cardarea for this card
--- @param area balatro.CardArea
function ICard:set_card_area(area) end

--- Removes card from area
function ICard:remove_from_area() end

function ICard:align() end

--- Flips this card
function ICard:flip() end

function ICard:update(dt) end

function ICard:hard_set_T(X, Y, W, H) end

function ICard:move(dt) end

function ICard:align_h_popup() end

function ICard:hover() end

function ICard:stop_hover() end

function ICard:juice_up(scale, rot_amount) end

function ICard:draw(layer) end

function ICard:release(dragged) end

--- Highlights this card
--- @param is_higlighted boolean
function ICard:highlight(is_higlighted) end

function ICard:click() end

--- Saves this card to be stored
--- @return balatro.Card.Save
function ICard:save() end

--- Loads card from saved table
--- @param cardTable balatro.Card.Save
function ICard:load(cardTable) end

function ICard:remove() end

--- @type balatro.Card | fun(X: number, Y: number, W: number, H: number, card: balatro.Item.Card, center: balatro.Center, params: balatro.Card.Param): balatro.Card
Card = ICard

--- @class balatro.Card.CalculateJokerContext
--- @field selling_card? boolean If true, includes `card`
--- @field buying_card? boolean If true, includes `card`
--- @field using_consumeable? boolean If true, includes `consumeable`
--- @field discard? boolean If true, includes `full_hand` and `other_card`
--- @field setting_blind? boolean If true, includes `blind`
--- @field playing_card_added? boolean If true, includes `cards`. Note that `cards` may be `{true}` if e.g. created by DNA
--- @field open_booster? boolean If true, includes `card`
--- @field destroying_card? boolean If true, includes `full_hand`
--- @field remove_playing_cards? boolean If true, includes `removed`
--- @field debuffed_hand? boolean If true, contains scoring information
--- @field pre_discard? boolean If true, includes `full_hand`
--- @field individual? boolean If true, includes `other_card`
--- @field game_over? boolean
--- @field selling_self? boolean
--- @field ending_shop? boolean
--- @field skipping_booster? boolean
--- @field skip_blind? boolean
--- @field reroll_shop? boolean
--- @field first_hand_drawn? boolean
--- @field end_of_round? boolean
---
--- @field cards? balatro.Card[] | [true]
--- @field card? balatro.Card
--- @field consumeable? balatro.Card
--- @field removed? balatro.Card[]
---
--- @field blind? balatro.Item.Blind
--- @field blueprint? number
--- @field blueprint_card? balatro.Card
--- @field other_joker? balatro.Card
local x = {
    --- If true, includes `glass_shattered`
    --- @deprecated Use `remove_playing_cards` instead
    cards_destroyed = nil
}

--- @class balatro.Card.CalcJokerRet
--- @field chips? number
--- @field mult? number
--- @field x_mult? number
--- @field dollars? number
--- @field colour? ColorHex
--- @field message? string
--- @field repetitions? number
--- @field level_up? boolean
--- @field chip_mod? number
--- @field mult_mod? number
--- @field Xmult_mod? number
--- @field delay? number
--- @field saved? boolean
--- @field extra? balatro.Card.CalcJokerRet.Extra
--- @field card balatro.Card

--- @class balatro.Card.CalcJokerRet.Extra
--- @field mult_mod? number
--- @field chip_mod? number
--- @field boolean? number
--- @field func? fun()

--- @class balatro.Card.CalcSealRet
--- @field message string
--- @field repetitions number
--- @field card balatro.Card

--- @class balatro.Card.CalcEditionRet
--- @field chip_mod? number
--- @field mult_mod? number
--- @field x_mult_mod? number

--- @class balatro.Card.Param
--- @field playing_card? boolean
--- @field bypass_discovery_center? boolean
--- @field bypass_discovery_ui? boolean
--- @field bypass_lock? boolean
--- @field bypass_back? boolean
--- @field discover? boolean

--- @class balatro.Card.Children: { [string]: balatro.Node }
--- @field shadow balatro.Moveable
--- @field front balatro.Sprite
--- @field back balatro.Sprite
--- @field center balatro.Sprite
--- @field alert? balatro.UIBox
--- @field top_disp? balatro.UIBox
--- @field bot_disp? balatro.UIBox
--- @field particle? balatro.Particles
--- @field focused_ui? balatro.UIBox
--- @field floating_sprite? balatro.Sprite
--- @field use_button? balatro.UIBox
--- @field sell_button? balatro.UIBox

--- @class balatro.Card.Config: balatro.Node.Config
--- @field card balatro.Item.Card
--- @field center balatro.Item.Card | balatro.Item.Joker
--- @field card_key? string
--- @field center_key? string

--- @class balatro.Card.Edition: { [string]: boolean }
--- @field holo? boolean
--- @field polychrome? boolean
--- @field foil? boolean
--- @field negative? boolean
--- @field mult? number
--- @field chips? number
--- @field x_chips? number
--- @field type? SpecialEdition

--- @class balatro.Card.Ability: { [string]: any }
--- @field name string
--- @field effect string
--- @field set string
--- @field mult number
--- @field h_mult number
--- @field h_x_mult number
--- @field h_dollars number
--- @field p_dollars number
--- @field t_mult number
--- @field t_chips number
--- @field x_mult number
--- @field h_size number
--- @field d_size number
--- @field extra number
--- @field extra_value number
--- @field type string
--- @field order? number
--- @field forced_selection? boolean
--- @field perma_bonus number
--- @field money? number
--- @field consumeable? boolean
--- @field blueprint_compat? 'compatible' | 'incompatible'
--- @field rental? boolean
--- @field couponed? boolean
--- @field sell_cost_label? string | number
--- @field eternal? boolean
--- @field driver_tally? number
--- @field steel_tally? number
--- @field nine_tally? number
--- @field stone_tally? number
--- @field perma_debuff? boolean

--- @class balatro.Card.Base
--- @field name string
--- @field suit Suit
--- @field value string
--- @field nominal number
--- @field suit_nominal number
--- @field face_nominal number
--- @field colour ColorHex
--- @field times_played number
--- @field original_value number
--- @field suit_nominal_original number

--- @class balatro.Card.Save
--- @field save_fields { center: string, card: string }
--- @field params balatro.Card.Param
--- @field no_ui? boolean
--- @field base_cost number
--- @field extra_cost number
--- @field cost number
--- @field sell_cost number
--- @field facing 'front' | 'back'
--- @field sprite_facing 'front' | 'back'
--- @field flipping nil | 'f2b' | 'b2f'
--- @field highlighted boolean
--- @field debuff boolean
--- @field rank number
--- @field added_to_deck? boolean
--- @field label string
--- @field playing_card? number
--- @field base balatro.Card.Base
--- @field ability balatro.Card.Ability
--- @field pinned? boolean
--- @field edition? balatro.Card.Edition
--- @field seal? Seal
--- @field bypass_discovery_center? boolean
--- @field bypass_discovery_ui? boolean
--- @field bypass_lock? boolean