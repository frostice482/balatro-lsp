--- @meta

--- @class balatro.Back: balatro.Object
---
--- @field effect balatro.Back.Effect
--- @field loc_name string
--- @field name string
--- @field pos Position
local IBack = {}

--- @param selected_back balatro.Item.Back
function IBack:init(selected_back) end

--- @return string
function IBack:get_name() end

--- @param other balatro.Item.Back?
--- @param ui_scale number?
--- @param min_dims number?
--- @param challenge string?
--- @return balatro.UIElement.Config
function IBack:generate_UI(other, ui_scale, min_dims, challenge) end

--- @param back balatro.Item.Back
function IBack:change_to(back) end

--- @return balatro.Back.Save
function IBack:save(back) end

--- @param args balatro.Back.TriggerEffectParam
--- @return number chips, number mult
function IBack:trigger_effect(args) end

function IBack:apply_to_run() end

--- @param table balatro.Back.Save
function IBack:load(table) end

--- @type balatro.Back | fun(selected_back: balatro.Item.Back): balatro.Back
Back = function() end

--- @class balatro.Back.Effect
--- @field center balatro.Item.Back
--- @field text_UI string
--- @field config table

--- @class balatro.Back.Save
--- @field name string
--- @field pos Position
--- @field effect balatro.Back.Effect
--- @field key string

--- @class balatro.Back.TriggerEffectParam
--- @field context 'eval' | 'blind_amount' | 'final_scoring_step'
--- @field chips number
--- @field mult number
