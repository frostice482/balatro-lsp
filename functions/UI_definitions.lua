--- @meta

--- @return balatro.UIElement.Definition
function create_UIBox_debug_tools() end

--- @param _achievement string
--- @param _type 'Joker' | 'Voucher' | 'Back' | 'achievement'
--- @return balatro.UIElement.Definition
function create_UIBox_notify_alert(_achievement, _type) end

--- @return balatro.UIElement.Definition
function create_UIBox_online_high_scores() end

--- @return balatro.UIElement.Definition
function create_UIBox_high_scores_filling(_resp) end

--- @param rect { T: WidthHeight }
--- @return balatro.UIElement.Definition
function create_UIBox_highlight(rect) end

--- @param args { button?: string, func?: string, colour?: ColorHex, update_func?: string }
--- @return balatro.UIElement.Definition
function create_UIBox_character_button(args) end

--- @param area balatro.CardArea
--- @return balatro.Card
function create_card_for_shop(area) end

--- @param card balatro.Card
function create_shop_card_ui(card, type, area) end

--- @class balatro.AttentionTextParam
--- @field text? string
--- @field scale? number
--- @field colour? ColorHex
--- @field hold? number
--- @field pos? Position
--- @field align? balatro.Moveable.AlignmentType
--- @field emboss? number

--- @param args balatro.AttentionTextParam
function attention_text(args) end

--- @return balatro.UIElement.Definition
function create_UIBox_buttons() end

--- @param desc_nodes balatro.UIElement.Definition[][]
--- @param empty? boolean
--- @param maxw? number
--- @return balatro.UIElement.Definition
function desc_from_rows(desc_nodes, empty, maxw) end

--- @param desc_nodes balatro.UIElement.Definition[][]
--- @return balatro.UIElement.Definition
function transparent_multiline_text(desc_nodes) end

--- @param desc_nodes balatro.UIElement.Definition[][]
--- @param name string
--- @return balatro.UIElement.Definition
function info_tip_from_rows(desc_nodes, name) end

--- @param text_rows string[]
function overlay_infotip(text_rows) end

--- @param name_nodes balatro.UIElement.Definition[]
--- @param background_colour? ColorHex
function name_from_rows(name_nodes, background_colour) end

--- @alias balatro.BadgeColorParam
--- | 'eternal'
--- | 'perishable'
--- | 'rental'
--- | 'foil'
--- | 'holographic'
--- | 'polychrome'
--- | 'negative'
--- | 'gold_seal'
--- | 'red_seal'
--- | 'blue_seal'
--- | 'purple_seal'
--- | 'pinned_left'

--- @param key balatro.BadgeColorParam
--- @return ColorHex
function get_badge_colour(key) end

--- @param _string string
--- @param _badge_col? ColorHex
--- @param _text_col? ColorHex
--- @param scaling? number
function create_badge(_string, _badge_col, _text_col, scaling) end

--- @param _center balatro.Center
--- @return balatro.UIElement.Definition
function create_UIBox_detailed_tooltip(_center) end

--- @class balatro.PopupTooltipParam
--- @field title? string
--- @field text? (string | { ref_table: table, ref_value: any })[]
--- @field filler? { func: fun(args: any): balatro.UIElement.Definition, args: any }

--- @param tooltip balatro.PopupTooltipParam
function create_popup_UIBox_tooltip(tooltip) end

--- @return balatro.UIElement.Definition
function create_UIBox_HUD_blind() end

--- @param _tag balatro.Tag
function add_tag(_tag) end

--- @return balatro.UIElement.Definition
function create_UIBox_HUD() end

--- @return balatro.UIElement.Definition
function create_UIBox_blind_select() end

--- @param blind_choice BlindType
--- @param run_info? any
--- @return balatro.UIElement.Definition
function create_UIBox_blind_tag(blind_choice, run_info) end

--- @param type BlindType
--- @param run_info? any
--- @return balatro.UIElement.Definition
function create_UIBox_blind_choice(type, run_info) end

--- @return balatro.UIElement.Definition
function create_UIBox_round_evaluation() end

--- @return balatro.UIElement.Definition
function create_UIBox_arcana_pack() end

--- @return balatro.UIElement.Definition
function create_UIBox_spectral_pack() end

--- @return balatro.UIElement.Definition
function create_UIBox_standard_pack() end

--- @return balatro.UIElement.Definition
function create_UIBox_buffoon_pack() end

--- @return balatro.UIElement.Definition
function create_UIBox_celestial_pack() end

--- @class balatro.UI.CardAlertParam
--- @field no_bg? boolean
--- @field bg_col? ColorHex
--- @field red_bad? boolean Use darkened red color
--- @field text? string
--- @field y_offset? number
--- @field bump_amount? number
--- @field maxw? number
--- @field text_rot? number
--- @field scale? number

--- @param args? balatro.UI.CardAlertParam
--- @return balatro.UIElement.Definition
function create_UIBox_card_alert(args) end

--- @class balatro.UI.SliderParam
--- @field colour? ColorHex
--- @field w? number
--- @field h? number
--- @field label? string
--- @field label_scale? number
--- @field text? string
--- @field text_scale? number
--- @field min? number
--- @field max? number
--- @field decimal_places? number
--- @field ref_table table
--- @field ref_value any

--- @param args? balatro.UI.SliderParam
--- @return balatro.UIElement.Definition
function create_slider(args) end

--- @class balatro.UI.ToggleParam
--- @field active_colour? ColorHex
--- @field inactive_colour? ColorHex
--- @field col? ColorHex
--- @field w? number
--- @field h? number
--- @field label? string
--- @field label_scale? number
--- @field ref_table? table
--- @field ref_value? any

--- @param args? balatro.UI.ToggleParam
--- @return balatro.UIElement.Definition
function create_toggle(args) end

--- @class balatro.UI.OptionCycleParam
--- @field colour? ColorHex
--- @field options? any[]
--- @field current_option? number
--- @field opt_callback? string
--- @field scale? number
--- @field ref_table? table
--- @field ref_value? any
--- @field w? number
--- @field h? number
--- @field text_scale? number
--- @field l? string
--- @field r? string
--- @field info? string[]
--- @field id? string
--- @field focus_args? balatro.UIElement.FocusParamData
--- @field label? string
--- @field on_demand_tooltip? balatro.UI.TooltipParam
--- @field cycle_shoulders? boolean
--- @field mid? balatro.UIElement.Definition
--- @field no_pips? boolean

--- @param args balatro.UI.OptionCycleParam
--- @return balatro.UIElement.Definition
function create_option_cycle(args) end

--- @class balatro.UI.TabsParam
--- @field color? ColorHex
--- @field tab_alignment? balatro.Moveable.AlignmentType
--- @field opt_callback? string
--- @field scale? number
--- @field tab_w? number
--- @field tab_h? number
--- @field text_scale? number
--- @field tabs? balatro.UI.Tab.Tab[]
--- @field no_loop? boolean
--- @field no_shoulders? boolean
--- @field snap_to_nav? any
--- @field padding? number

--- @class balatro.UI.Tab.Tab
--- @field label? string
--- @field chosen? boolean
--- @field func? string
--- @field tab_definition_function fun(arg: any): balatro.UIElement.Definition
--- @field tab_definition_function_args? any

--- @param args? balatro.UI.TabsParam
--- @return balatro.UIElement.Definition
function create_tabs(args) end

--- @class balatro.UI.TextInputParam
--- @field colour? ColorHex
--- @field hooked_colour? ColorHex
--- @field w? number
--- @field h? number
--- @field text_scale? number
--- @field max_length? number
--- @field all_caps? boolean
--- @field prompt_text? string
--- @field ref_table table
--- @field ref_value any

--- @param args? balatro.UI.TextInputParam
--- @return balatro.UIElement.Definition
function create_text_input(args) end

--- @class balatro.UI.KeyboardInputParam
--- @field space_key? string
--- @field backspace_key? string
--- @field return_key? string

--- @param args balatro.UI.KeyboardInputParam
--- @return balatro.UIElement.Definition
function create_keyboard_input(args) end

--- @param key ' ' | 'back' | 'backspace' | 'return'
--- @param binding any
--- @return balatro.UIElement.Definition
function create_keyboard_button(key, binding) end

--- @class balatro.UI.DynatextPipsParam
--- @field active_colour? ColorHex
--- @field inactive_colour? ColorHex
--- @field w? number
--- @field h? number
--- @field dynatext balatro.DynaText

--- @param args balatro.UI.DynatextPipsParam
--- @return balatro.UIElement.Definition
function create_dynatext_pips(args) end

--- @return balatro.UIElement.Definition
function create_UIBox_options() end

--- @return balatro.UIElement.Definition
function create_UIBox_settings() end

function create_UIBox_test_framework(variables) end

--- @alias balatro.UI.Usage.Type
--- | 'voucher_usage'
--- | 'consumeable_usage'
--- | 'deck_usage'
--- | 'joker_usage'
--- | 'hand_usage'

--- @class balatro.UI.UsageParam
--- @field [1] string | balatro.UI.Usage.Type Consumable Type
--- @field [2]? string Set

--- @param args balatro.UI.UsageParam
--- @return balatro.UIElement.Definition
function create_UIBox_usage(args) end

--- @return balatro.UIElement.Definition
function create_UIBox_customize_deck() end

--- @return balatro.UIElement.Definition
function create_UIBox_high_scores() end

--- @param _profile_progress? balatro.Profile.Progress
--- @param smaller? boolean
--- @return balatro.UIElement.Definition
function create_progress_box(_profile_progress, smaller) end

--- @alias balatro.UI.HighScoreRowType
--- | 'furthest_round'
--- | 'furthest_ante'
--- | 'most_money'
--- | 'boss_streak'
--- | 'poker_hand'
--- | 'win_streak'
--- | 'collection'
--- | 'current_streak'
--- | 'hand'

--- @param score string | balatro.UI.HighScoreRowType
--- @return balatro.UIElement.Definition
function create_UIBox_high_scores_row(score) end

--- @return balatro.UIElement.Definition
function create_UIBox_win() end

--- @return balatro.UIElement.Definition
function create_UIBox_exit_CTA() end

--- @return balatro.UIElement.Definition
function create_UIBox_small_cta() end

--- @return balatro.UIElement.Definition
function create_UIBox_demo_video_CTA() end

--- @return balatro.UIElement.Definition
function create_UIBox_game_over() end

--- @alias balatro.UI.RoundScoreRowType
--- | 'cards_discarded'
--- | 'cards_played'
--- | 'cards_purchased'
--- | 'furthest_ante'
--- | 'furthest_round'
--- | 'hand'
--- | 'new_collection'
--- | 'poker_hand'
--- | 'times_rerolled'
--- | 'defeated_by'

--- @param score string | balatro.UI.RoundScoreRowType
--- @param text_colour? ColorHex
--- @return balatro.UIElement.Definition
function create_UIBox_round_scores_row(score, text_colour) end

--- @param handname PokerHand
--- @return balatro.UIElement.Definition
function create_UIBox_hand_tip(handname) end

--- @param handname PokerHand
--- @param simple? boolean
--- @return balatro.UIElement.Definition
function create_UIBox_current_hand_row(handname, simple) end

--- @param simple? boolean
--- @return balatro.UIElement.Definition
function create_UIBox_current_hands(simple) end

--- @param pos Position
--- @param value string | { string: string, colour?: ColorHex }[]
--- @param tooltip string[]
--- @return balatro.UIElement.Definition
function tally_sprite(pos, value, tooltip) end

--- @return balatro.UIElement.Definition
function create_UIBox_your_collection() end

--- @return balatro.UIElement.Definition
function create_UIBox_your_collection_jokers() end

--- @return balatro.UIElement.Definition
function create_UIBox_your_collection_tarots() end

--- @return balatro.UIElement.Definition
function create_UIBox_your_collection_boosters() end

--- @return balatro.UIElement.Definition
function create_UIBox_your_collection_planets() end

--- @return balatro.UIElement.Definition
function create_UIBox_your_collection_spectrals() end

--- @param exit? string
--- @return balatro.UIElement.Definition
function create_UIBox_your_collection_vouchers(exit) end

--- @param exit? string
--- @return balatro.UIElement.Definition
function create_UIBox_your_collection_seals(exit) end

--- @param exit? string
--- @return balatro.UIElement.Definition
function create_UIBox_your_collection_enhancements(exit) end

--- @return balatro.UIElement.Definition
function create_UIBox_your_collection_editions() end

--- @return balatro.UIElement.Definition
function create_UIBox_your_collection_decks() end

--- @return balatro.UIElement.Definition
function create_UIBox_your_collection_tags() end

--- @param exit? string
--- @return balatro.UIElement.Definition
function create_UIBox_your_collection_blinds(exit) end

--- @param blind balatro.Item.Blind
--- @param discovered? boolean
--- @param vars? any[]
--- @return balatro.UIElement.Definition
function create_UIBox_blind_popup(blind, discovered, vars) end

--- @param card_center balatro.Center
--- @return balatro.UIElement.Definition
function create_UIBox_card_unlock(card_center) end

--- @param deck_center balatro.Item.Back
--- @return balatro.UIElement.Definition
function create_UIBox_deck_unlock(deck_center) end

--- @alias balatro.UI.ButtionBindingPipType
--- | 'a'
--- | 'b'
--- | 'x'
--- | 'y'
--- | 'leftshoulder'
--- | 'rightshoulder'
--- | 'triggerleft'
--- | 'triggerright'
--- | 'start'
--- | 'back'
--- | 'dpadup'
--- | 'dpadright'
--- | 'dpaddown'
--- | 'dpadleft'
--- | 'left'
--- | 'right'
--- | 'leftstick'
--- | 'rightstick'
--- | 'guide'

--- @class balatro.UI.ButtionBindingPipParam
--- @field button string balatro.UI.ButtionBindingPipType
--- @field scale? number

--- @param args balatro.UI.ButtionBindingPipParam
--- @return balatro.UIElement.Definition
function create_button_binding_pip(args) end

--- @return balatro.UIElement.Definition
function create_UIBox_profile_button() end

--- @return balatro.UIElement.Definition
function create_UIBox_main_menu_buttons() end

--- @return balatro.UIElement.Definition
function create_UIBox_main_menu_competittion_name() end

--- @class balatro.UI.GenericOptionsParam
--- @field no_back? boolean
--- @field back_colour? ColorHex
--- @field back_id? string
--- @field back_label? string
--- @field back_delay? number
--- @field back_func? string
--- @field snap_back? any
--- @field back_button? any
---
--- @field contents? balatro.UIElement.Definition[]
--- @field infotip? string[]
--- @field colour? ColorHex
--- @field bg_colour? ColorHex
--- @field outline_colour? ColorHex
--- @field minw? number
--- @field padding? number
---
--- @field no_pip? boolean

--- @param args? balatro.UI.GenericOptionsParam
--- @return balatro.UIElement.Definition
function create_UIBox_generic_options(args) end

--- @param inner_table balatro.UIElement.Definition[]
--- @param horizontal? boolean
--- @param colour_override? ColorHex
--- @param background_override? ColorHex
--- @param flipped? boolean
--- @param padding? number
--- @return balatro.UIElement.Definition
function UIBox_dyn_container(inner_table, horizontal, colour_override, background_override, flipped, padding) end

--- @class balatro.UI.TextContainerParam
--- @field scale? number
--- @field colour? ColorHex
--- @field col? ColorHex
--- @field padding? number
--- @field shadow? boolean

--- @param _loc string
--- @param args? balatro.UI.TextContainerParam
--- @return balatro.UIElement.Definition
function simple_text_container(_loc, args) end

--- @class balatro.UI.ButtonParam
--- @field button? string
--- @field func? string
--- @field colour? ColorHex
--- @field choice? boolean
--- @field chosen? boolean
--- @field label? string[]
--- @field minw? number
--- @field maxw? number
--- @field minh? number
--- @field scale? number
--- @field focus_args? balatro.UIElement.FocusParamData
--- @field text_colour? ColorHex
--- @field col? ColorHex
--- @field count? balatro.Tally
--- @field shadow? boolean
--- @field ref_table? table
--- @field padding? number
--- @field one_press? boolean
--- @field id? any
--- @field mid? boolean
--- @field back_func? string

--- @param args balatro.UI.ButtonParam
--- @return balatro.UIElement.Definition
function UIBox_button(args) end

--- @class balatro.UI.TooltipParam
--- @field title? string
--- @field text? ( string | { ref_table: any, ref_value: any } )[]
--- @field filler? { func: fun(), args?: any }

--- @class balatro.Game
--- @field UIDEF balatro.Functions.Uidef

--- @alias balatro.UI.CardFocusButtonType
--- | 'sell'
--- | 'buy'
--- | 'select'
--- | 'redeem'
--- | 'use'
--- | 'buy_and_use'
--- | string

--- @class balatro.UI.CardFocusButtonParam
--- @field type balatro.UI.CardFocusButtonType
--- @field card? balatro.Card
--- @field parent? balatro.Moveable
--- @field button? string
--- @field card_width? number

--- @alias balatro.UI.SettingsTabType
--- | 'Game'
--- | 'Video'
--- | 'Audio'
--- | 'Graphics'
--- | string

--- @class balatro.Functions.Uidef
--- @field use_and_sell_buttons fun(card: balatro.Card): balatro.UIElement.Definition
--- @field card_focus_ui fun(card: balatro.Card): balatro.UIBox
--- @field card_focus_button fun(args: balatro.UI.CardFocusButtonParam): balatro.UIBox
--- @field speech_bubble fun(text_key: string, loc_vars): balatro.UIElement.Definition
--- @field deck_preview fun(): balatro.UIElement.Definition
--- @field shop fun(): balatro.UIElement.Definition
--- @field card_h_popup fun(card: balatro.Card): balatro.UIElement.Definition
--- @field settings_tab fun(tab: balatro.UI.SettingsTabType): balatro.UIElement.Definition
--- @field usage_tabs fun(): balatro.UIElement.Definition
--- @field custom_deck_tab fun(_suit: Suit): balatro.UIElement.Definition
--- @field deck_info fun(_show_remaining?: boolean): balatro.UIElement.Definition
--- @field run_info fun(): balatro.UIElement.Definition
--- @field current_blinds fun(): balatro.UIElement.Definition
--- @field deck_stake_column fun(_deck_key): balatro.UIElement.Definition
--- @field current_stake fun(): balatro.UIElement.Definition
--- @field view_deck fun(unplayed_only?: boolean): balatro.UIElement.Definition
--- @field used_vouchers fun(): balatro.UIElement.Definition
--- @field multiline_credit_text fun(_lines): balatro.UIElement.Definition[]
--- @field viewed_collab_option fun(_new_option): balatro.UIElement.Definition
--- @field credits fun(): balatro.UIElement.Definition
--- @field challenges fun(from_game_over?: boolean): balatro.UIElement.Definition
--- @field daily_overview fun(): balatro.UIElement.Definition
--- @field run_setup fun(from_game_over?: boolean): balatro.UIElement.Definition
--- @field profile_select fun(): balatro.UIElement.Definition
--- @field profile_option fun(_profile: number): balatro.UIElement.Definition
--- @field stake_description fun(_stake): balatro.UIElement.Definition
--- @field stake_option fun(_type): balatro.UIElement.Definition
--- @field viewed_stake_option fun(): balatro.UIElement.Definition
--- @field challenge_list fun(from_game_over): balatro.UIElement.Definition
--- @field challenge_list_page fun(_page): balatro.UIElement.Definition
--- @field challenge_description fun(_id, daily, is_row): balatro.UIElement.Definition
--- @field challenge_description_tab fun(args): balatro.UIElement.Definition
--- @field run_setup_option fun(type: 'Continue' | 'New Run'): balatro.UIElement.Definition
--- @field language_selector fun(): balatro.UIElement.Definition