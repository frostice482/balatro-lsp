--- @meta

---Updates all display information for all displays for a given screenmode. Returns the key for the resolution option cycle
---@param screenmode string optional arg for one of 'Windowed', 'Fullscreen', or 'Borderless'
---@param display number optional arg to match fullscreen resolution with only the current display
function GET_DISPLAYINFO(screenmode, display) end

function timer_checkpoint(label, type, reset) end

function boot_timer(_label, _next, progress) end

--- Removes all properties from a table
--- @generic T
--- @param t `T` Table to empty
--- @return T
function EMPTY(t) end

--- Interpolates 2 value
--- @param per number Percentage from min to max
--- @param max number
--- @param min number
function interp(per, max, min) end

--- Recursively all children in a node
--- @param t balatro.Node
function remove_all(t) end

--- Gets distance between 2 vectors (x and y)
--- @param trans1 Position
--- @param trans2 Position
--- @param mid boolean? If true, w and h is also compared
--- @return number
function Vector_Dist(trans1, trans2, mid) end

--- Gets length of a vector
--- @param trans1 Position
--- @return number
function Vector_Len(trans1) end

--- Subtracts both vector
--- @param trans1 Position
--- @param trans2 Position
--- @return number
function Vector_Sub(trans1, trans2) end

--- Gets index from a value in an array
--- @generic T
--- @param t `T`[]
--- @param val T
--- @return number?
function get_index(t, val) end

--- Gets number of elements in a table
--- @param t table
--- @return number
function table_length(t) end

--- Normalize an array to remove nil gaps from the table
--- @generic T
--- @param t table<number, `T`>
--- @return T[]
function remove_nils(t) end

--- Swaps values in table t with key i and key j
--- @param t table
--- @param i any
--- @param j any
function SWAP(t, i, j) end

--- Pseudo-random shuffle list with specified speed.
--- Uses `math.randomseed(seed)` to set randomness
--- @param list table
--- @param seed integer
function pseudoshuffle(list, seed) end

--- Generates random starting seed string with length 8.
--- The random seed generated is \
--- `f() = G.CONTROLLER.cursor_hover.T.x * 0.33411983 + G.CONTROLLER.cursor_hover.T.y * 0.874146 + 0.412311010 * G.CONTROLLER.cursor_hover.time`.
---
--- For the gold stake run, the generated seed may be different: \
--- If there is a legendary joker that is won at any stake lower than gold,
--- and a legendary joker that is won at gold stake or higher, \
--- then the random seed generated is `extra_num + f()`. \
--- Extra num increments by `0.561892350821` until the first legendary joker found is not win at gold stake.
--- @return string
function generate_starting_seed() end

--- Gets first legendary joker from given key seed.
--- Currently used for gold stake to get the first legendary joker that is not win at gold stake.
---
--- Uses `pseudorandom_element` and `pseudoseed` with key as `Joker4`.
--- @param _key string? String seed
--- @return string key Joker key
function get_first_legendary(_key) end

--- Gets pseudo-random element from given seed.
--- Uses `math.randomseed(seed)` to set randomness
--- @generic K, V
--- @param _t table<K, V>
--- @param seed number
--- @return V value
--- @return K key
function pseudorandom_element(_t, seed) end

--- Generates pseudo-random string.
--- Uses `math.randomseed(seed)` to set randomness
--- @param length number
--- @param seed number
--- @return string
function random_string(length, seed) end

--- Generates a pseudo-random number from given string.
--- @param str string
--- @return number 0 - 1
function pseudohash(str) end

--- Generates a pseudo-random next seed value from given key. \
--- This changes the next value from given key, e.g. calling `pseudoseed('a')` will give a different value for the next call `pseudoseed('a')`. \
--- This does not affect for different key, e.g. `pseudoseed('a')` does not affect `pseudoseed('b')`. \
--- This function may be affected by `G.GAME.pseudorandom.seed` and `G.GAME.pseudorandom.hashed_seed`.
--- @param key string Seed key to use. If set to `seed`, this will return `math.random()`.
--- @param predict_seed string? If this is not nil, then it will try to predict the first value for `pseudoseed(key)` with seed set as `predict_seed`. This will not affect the next value for given key.
--- @return number 0 - 1
function pseudoseed(key, predict_seed) end

--- Generates a pseudo-random number between min and max.
--- Uses `math.randomseed(seed)` to set randomness.
--- @param seed string | number Seed to use. If string is passed, it will be converted to number through `pseudoseed`.
--- @param min number? Inclusive
--- @param max number? Inclusive
--- @return number
function pseudorandom(seed, min, max) end

--- Stringifies table to human-readable.
--- @param tbl table
--- @param indent number? Number of space indentation
--- @return string
function tprint(tbl, indent) end

--- Compares both `order`
--- @param e1 {order: number}
--- @param e2 {order: number}
--- @return boolean
function sortingFunction(e1, e2) end

--- Converts hexadecimal string to number
--- @param hex string Hexadecimal string, in form of (rrggbbaa). Can contain only (rrggbb).
--- @return ColorHex
function HEX(hex) end

--- Gets main blind color for given blind
--- @param blind BlindType | string Blind type. Can also be blind key for `G.P_BLINDS`
--- @return ColorHex
function get_blind_main_colour(blind) end

--- UNDOCUMENTED
function evaluate_poker_hand(hand) end

--- UNDOCUMENTED
function get_flush(hand) end

--- UNDOCUMENTED
function get_straight(hand) end

--- UNDOCUMENTED
function get_X_same(num, hand) end

--- UNDOCUMENTED
function get_highest(hand) end

--- Empties `G.DRAW_HASH`.
function reset_drawhash() end

--- https://github.com/1bardesign/batteries/blob/master/manual_gc.lua
function nuGC(time_budget, memory_ceiling, disable_otherwise) end

--- Inserts object to drawhash.
--- The drawhash is a hash table of all drawn nodes and all nodes that may be invisible but still collide with the cursor
--- @param obj any
function add_to_drawhash(obj) end

--- Mix color between 1 and 2 with specified proportion.
--- @param C1 ColorHex Color 1
--- @param C2 ColorHex Coloe 2
--- @param proportionC1 number Number of proportion in C1 (0 for C2, 1 for C1)
--- @return ColorHex
function mix_colours(C1, C2, proportionC1) end

--- Modifies number of chips.
--- Currently effective when running a `Rich got Richer` challenge (`G.GAME.modifiers.chips_dollar_cap`)
--- @param _chips number
--- @return number
function mod_chips(_chips) end

--- Modifies number of mult.
--- Currently does nothing.
--- @param _mult number
--- @@return number
function mod_mult(_mult) end

function play_sound(sound_code, per, vol) end

function modulate_sound(dt) end

function count_of_suit(area, suit) end

function prep_draw(moveable, scale, rotate, offset) end

function get_chosen_triangle_from_rect(x, y, w, h, vert) end

function point_translate(_T, delta) end

function point_rotate(_T, angle) end

function lighten(colour, percent, no_tab) end

function darken(colour, percent, no_tab) end

function adjust_alpha(colour, new_alpha, no_tab) end

function alert_no_space(card, area) end

function find_joker(name, non_debuff) end

function get_blind_amount(ante) end

function number_format(num) end

function score_number_scale(scale, amt) end

function copy_table(O) end

function send_score(_score) end

function send_name() end

function check_and_set_high_score(score, amt) end

function set_joker_usage() end

function set_joker_win() end

--- Gets highest sticker for which joker wins at.
--- @param _center balatro.Item.Joker
--- @param index boolean? If true, returns the stake index (1 = White, 2 = Red, etc.), otherwise returns the stake name
--- @return string|nil
--- @overload fun(center: balatro.Item.Joker, index: true): number
function get_joker_win_sticker(_center, index) end

function set_joker_loss() end

function set_deck_usage() end

function set_deck_win() end

function set_challenge_unlock() end

function get_deck_win_stake(_deck_key) end

function get_deck_win_sticker(_center) end

function set_deck_loss() end

function set_consumeable_usage(card) end

function set_voucher_usage(card) end

function set_hand_usage(hand) end

function set_profile_progress() end

function set_discover_tallies() end

function stop_use() end

function dec_stop_use(_depth) end

function inc_career_stat(stat, mod) end

function recursive_table_cull(t) end

function save_with_action(action) end

function save_run() end

function remove_save() end

function loc_colour(_c, _default) end

function init_localization() end

function playing_card_joker_effects(cards) end

function convert_save_to_meta() end

function card_from_control(control) end

function loc_parse_string(line) end

function localize(args, misc_cat) end

function get_stake_sprite(_stake, _scale) end

function get_front_spriteinfo(_front) end

function get_stake_col(_stake) end

function get_challenge_int_from_id(_id) end

function get_starting_params() end

function get_challenge_rule(_challenge, _type, _id) end

function PLAY_SOUND(args) end

function STOP_AUDIO() end

function SET_SFX(s, args) end

function MODULATE(args) end

function RESTART_MUSIC(args) end

function AMBIENT(args) end

function RESET_STATES(state) end
