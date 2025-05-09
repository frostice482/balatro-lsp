--- @meta

--- @class balatro.DynaText: balatro.Moveable
--- @field config balatro.DynaText.Config
--- @field shadow boolean?
--- @field scale number
--- @field bump_rate number
--- @field bump_amount number
--- @field font balatro.Font
--- @field string string[]
--- @field text_offset Position
--- @field colours ColorHex[]
--- @field created_time number
--- @field silent boolean
--- @field strings balatro.DynaText.String[]
--- @field focused_string number
--- @field pop_delay number
--- @field pop_in_rate number
--- @field start_pop_in number?
--- @field reset_pop_in boolean?
--- @field pop_out_time number?
local IDynaText = {}

--- @param config balatro.DynaText.ConfigAsOptions
function IDynaText:init(config) end

---- @param dt number
function IDynaText:update(dt) end

--- @param first_pass boolean?
function IDynaText:update_text(first_pass) end

--- @param pop_out_timer number
function IDynaText:pop_out(pop_out_timer) end

--- @param pop_in_timer number
function IDynaText:pop_in(pop_in_timer) end

function IDynaText:align_letters() end

--- @param amt number?
function IDynaText:set_quiver(amt) end

--- @param amt number?
function IDynaText:pulse(amt) end

function IDynaText:draw() end


--- @type balatro.DynaText | fun(config: any?): balatro.DynaText
DynaText = function() end

--- @class balatro.DynaText.String
--- @field string string
--- @field letters balatro.DynaText.String.Letter
--- @field W number
--- @field W_offset number
--- @field H number
--- @field H_offset number

--- @class balatro.DynaText.String.Letter
--- @field letter love.Text
--- @field char string
--- @field scale number
--- @field offset Position
--- @field dims Position
--- @field pop_in number
--- @field prefix unknown
--- @field suffix unknown

--- @class balatro.DynaText.Config
--- @field W number?
--- @field H number?
--- @field X number?
--- @field Y number?
--- @field shadow boolean?
--- @field scale number?
--- @field pop_in_rate number?
--- @field bump_rate number?
--- @field bump_amount number?
--- @field font balatro.Font?
--- @field string string[]
--- @field colours ColorHex[]
--- @field silent boolean?
--- @field x_offset number?
--- @field y_offset number?
--- @field pop_in number?
--- @field pop_out number?
--- @field pop_delay number?
--- @field reset_pop_in boolean?
--- @field maxw number?
--- @field text_rot number?
--- @field spacing number?
--- @field shadow_colour ColorHex?
--- @field min_cycle_time number?
--- @field rotate number?
--- @field quiver { speed: number, amount: number }?
--- @field float boolean?
--- @field bump boolean?
--- @field pitch_shift number?
--- @field pulse balatro.Dynatext.Config.Pulse?

--- @class balatro.Dynatext.Config.Pulse
--- @field speed number
--- @field width number
--- @field start number
--- @field amount number
--- @field silent boolean?

--- @class balatro.DynaText.ConfigAsOptions: balatro.DynaText.Config
--- @field string string[] | string?