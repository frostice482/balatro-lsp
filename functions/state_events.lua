function win_game() end
function end_round() end
function new_round() end

--- @class balatro.Global.Functions: balatro.Functions.StateEvents

--- @class balatro.Functions.StateEvents
--- @field draw_from_deck_to_hand fun(e)
--- @field discard_cards_from_highlighted fun(e, hook)
--- @field play_cards_from_highlighted fun(e)
--- @field get_poker_hand_info fun(_cards)
--- @field evaluate_play fun(e)
--- @field draw_from_play_to_discard fun(e)
--- @field draw_from_play_to_hand fun(cards)
--- @field draw_from_discard_to_deck fun(e)
--- @field draw_from_hand_to_deck fun(e)
--- @field draw_from_hand_to_discard fun(e)
--- @field evaluate_round fun()
--- @field tutorial_controller fun()
--- @field tutorial_part fun(_part)
