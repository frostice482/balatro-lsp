--- @meta

--- @class balatro.Card: balatro.Moveable
--- @field children balatro.Card.Children
--- @field params balatro.Card.Param
--- @field config balatro.Card.Config
--- @field tilt_var table
--- @field ambient_tilt number
--- @field playing_card boolean?
--- @field sort_id number
--- @field back 'viewed_back' | 'selected_back'
--- @field bypass_discovery_center boolean?
--- @field bypass_discovery_ui boolean?
--- @field bypass_lock boolean?
--- @field no_ui boolean?
--- @field base_cost number
--- @field extra_cost number
--- @field cost number
--- @field sell_cost number
--- @field sell_cost_label number | string?
--- @field unique_val number
--- @field edition balatro.Card.Edition
--- @field zoom boolean
--- @field facing 'front' | 'back'
--- @field sprite_facing 'front' | 'back'
--- @field discard_pos Position | { r: number }
--- @field flipping nil | 'f2b' | 'b2f'
--- @field area balatro.CardArea?
--- @field highlighted boolean
--- @field click_timeout number
--- @field debuff boolean
--- @field rank number?
--- @field added_to_deck boolean?
--- @field ability balatro.Card.Ability
--- @field shattered boolean?
--- @field dissolve number
--- @field dissolve_colours ColorHex[]
--- @field base balatro.Card.Base
--- @field label string?
--- @field mouse_damping number?
--- @field pinned boolean?
--- @field seal boolean?
--- @field sticker_run Sticker?
--- @field sticker Sticker?
--- @field hover_tilt number?
--- @field greyed boolean?
--- @field vortex boolean?
--- @field no_shadow boolean?
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
function ICard:set_base(card, initial) end
function ICard:set_sprites(_center, _front) end
function ICard:set_ability(center, initial, delay_sprites) end
function ICard:set_cost() end
function ICard:set_edition(edition, immediate, silent) end
function ICard:set_seal(_seal, silent, immediate) end
function ICard:get_seal(bypass_debuff) end
function ICard:set_eternal(_eternal) end
function ICard:set_perishable(_perishable) end
function ICard:set_rental(_rental) end
function ICard:set_debuff(should_debuff) end
function ICard:remove_UI() end
function ICard:change_suit(new_suit) end
function ICard:add_to_deck(from_debuff) end
function ICard:remove_from_deck(from_debuff) end
function ICard:generate_UIBox_unlock_table(hidden) end
function ICard:generate_UIBox_ability_table() end
function ICard:get_nominal(mod) end
function ICard:get_id() end
function ICard:is_face(from_boss) end
function ICard:get_original_rank() end
function ICard:get_chip_bonus() end
function ICard:get_chip_mult() end
function ICard:get_chip_x_mult(context) end
function ICard:get_chip_h_mult() end
function ICard:get_chip_h_x_mult() end
function ICard:get_edition() end
function ICard:get_end_of_round_effect(context) end
function ICard:get_p_dollars() end
function ICard:use_consumeable(area, copier) end
function ICard:can_use_consumeable(any_state, skip_check) end
function ICard:check_use() end
function ICard:sell_card() end
function ICard:can_sell_card(context) end
function ICard:calculate_dollar_bonus() end
function ICard:open() end
function ICard:redeem() end
function ICard:apply_to_run(center) end
function ICard:explode(dissolve_colours, explode_time_fac) end
function ICard:shatter() end
function ICard:start_dissolve(dissolve_colours, silent, dissolve_time_fac, no_juice) end
function ICard:start_materialize(dissolve_colours, silent, timefac) end
function ICard:calculate_seal(context) end
function ICard:calculate_rental() end
function ICard:calculate_perishable() end
function ICard:calculate_joker(context) end
function ICard:is_suit(suit, bypass_debuff, flush_calc) end
function ICard:set_card_area(area) end
function ICard:remove_from_area() end
function ICard:align() end
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
function ICard:highlight(is_higlighted) end
function ICard:click() end
function ICard:save() end
function ICard:load(cardTable, other_card) end
function ICard:remove() end

--- @type balatro.Card | fun(X: number, Y: number, W: number, H: number, card: balatro.Item.Card, center: balatro.Center, params: balatro.Card.Param): balatro.Card
Card = ICard

--- @class balatro.Card.Param
--- @field playing_card boolean?
--- @field viewed_back boolean?
--- @field bypass_discovery_center boolean?
--- @field bypass_discovery_ui boolean?
--- @field bypass_lock boolean?
--- @field bypass_back boolean?
--- @field discover boolean?

--- @class balatro.Card.Children: { [string]: balatro.Node }
--- @field shadow balatro.Moveable
--- @field front balatro.Sprite
--- @field back balatro.Sprite
--- @field center balatro.Sprite
--- @field alert balatro.UIBox?
--- @field top_disp balatro.UIBox?
--- @field bot_disp balatro.UIBox?
--- @field particle balatro.Particles?
--- @field focused_ui balatro.UIBox?
--- @field floating_sprite balatro.Sprite?
--- @field use_button balatro.UIBox?
--- @field sell_button balatro.UIBox?

--- @class balatro.Card.Config: balatro.Node.Config
--- @field card balatro.Item.Card
--- @field center balatro.Item.Card | balatro.Item.Joker
--- @field card_key string?
--- @field center_key string?

--- @class balatro.Card.Edition: { [string]: boolean }
--- @field holo boolean?
--- @field polychrome boolean?
--- @field foil boolean?
--- @field negative boolean?
--- @field mult number?
--- @field chips number?
--- @field x_chips number?
--- @field type SpecialEdition?

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
--- @field order number?
--- @field forced_selection boolean?
--- @field perma_bonus number
--- @field money number?
--- @field consumeable boolean?
--- @field blueprint_compat 'compatible' | 'incompatible'?
--- @field rental boolean?
--- @field couponed boolean?
--- @field sell_cost_label string | number?
--- @field eternal boolean?
--- @field driver_tally number?
--- @field steel_tally number?
--- @field nine_tally number?
--- @field stone_tally number?
--- @field perma_debuff boolean?

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