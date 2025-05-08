--- @class balatro.Card
Card = Moveable:extend()

function Card:init(X, Y, W, H, card, center, params) end
function Card:update_alert() end
function Card:set_base(card, initial) end
function Card:set_sprites(_center, _front) end
function Card:set_ability(center, initial, delay_sprites) end
function Card:set_cost() end
function Card:set_edition(edition, immediate, silent) end
function Card:set_seal(_seal, silent, immediate) end
function Card:get_seal(bypass_debuff) end
function Card:set_eternal(_eternal) end
function Card:set_perishable(_perishable) end
function Card:set_rental(_rental) end
function Card:set_debuff(should_debuff) end
function Card:remove_UI() end
function Card:change_suit(new_suit) end
function Card:add_to_deck(from_debuff) end
function Card:remove_from_deck(from_debuff) end
function Card:generate_UIBox_unlock_table(hidden) end
function Card:generate_UIBox_ability_table() end
function Card:get_nominal(mod) end
function Card:get_id() end
function Card:is_face(from_boss) end
function Card:get_original_rank() end
function Card:get_chip_bonus() end
function Card:get_chip_mult() end
function Card:get_chip_x_mult(context) end
function Card:get_chip_h_mult() end
function Card:get_chip_h_x_mult() end
function Card:get_edition() end
function Card:get_end_of_round_effect(context) end
function Card:get_p_dollars() end
function Card:use_consumeable(area, copier) end
function Card:can_use_consumeable(any_state, skip_check) end
function Card:check_use() end
function Card:sell_card() end
function Card:can_sell_card(context) end
function Card:calculate_dollar_bonus() end
function Card:open() end
function Card:redeem() end
function Card:apply_to_run(center) end
function Card:explode(dissolve_colours, explode_time_fac) end
function Card:shatter() end
function Card:start_dissolve(dissolve_colours, silent, dissolve_time_fac, no_juice) end
function Card:start_materialize(dissolve_colours, silent, timefac) end
function Card:calculate_seal(context) end
function Card:calculate_rental() end
function Card:calculate_perishable() end
function Card:calculate_joker(context) end
function Card:is_suit(suit, bypass_debuff, flush_calc) end
function Card:set_card_area(area) end
function Card:remove_from_area() end
function Card:align() end
function Card:flip() end
function Card:update(dt) end
function Card:hard_set_T(X, Y, W, H) end
function Card:move(dt) end
function Card:align_h_popup() end
function Card:hover() end
function Card:stop_hover() end
function Card:juice_up(scale, rot_amount) end
function Card:draw(layer) end
function Card:release(dragged) end
function Card:highlight(is_higlighted) end
function Card:click() end
function Card:save() end
function Card:load(cardTable, other_card) end
function Card:remove() end
