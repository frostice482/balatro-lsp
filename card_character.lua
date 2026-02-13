--- @meta

--- @class balatro.CardCharacter: balatro.Moveable
--- @field children balatro.CardCharacter.Children
--- @field talking boolean
--- @field highlight? balatro.Node
--- @field last_said? number
--- @field config balatro.CardCharacter.Config
---
--- @overload fun(args: balatro.CardCharacter.Init): balatro.CardCharacter
Card_Character = {}

--- @param args balatro.CardCharacter.Init
function Card_Character:init(args) end

function Card_Character:move(dt) end

function Card_Character:hard_set_VT() end

function Card_Character:align() end

---@param button string
---@param func fun()?
---@param colour ColorHex?
---@param update_func any
---@param snap_to boolean?
---@param yoff number?
function Card_Character:add_button(button, func, colour, update_func, snap_to, yoff) end

---@param text_key string
---@param align balatro.Moveable.AlignmentType
---@param loc_vars? table
function Card_Character:add_speech_bubble(text_key, align, loc_vars) end

function Card_Character:remove_button() end

function Card_Character:remove_speech_bubble() end

--- @param n number
--- @param not_first? boolean
function Card_Character:say_stuff(n, not_first) end

function Card_Character:draw(dt) end

function Card_Character:remove() end

--- @class balatro.CardCharacter.Config: table
--- @field args? balatro.CardCharacter.Init
--- @field button_align? balatro.UIBox.Config
--- @field bubble_align? balatro.UIBox.Config
--- @field speech_bubble_align? balatro.UIBox.Config

--- @class balatro.CardCharacter.Init
--- @field x? number
--- @field y? number
--- @field w? number
--- @field h? number
--- @field center? balatro.Item.Joker

--- @class balatro.CardCharacter.Children: { [string]: balatro.Node }
--- @field card balatro.Card
--- @field particles balatro.Particles
--- @field button? balatro.UIBox
--- @field speech_bubble? balatro.UIBox
--- @field highlight? balatro.Node