--- @class balatro.Back: balatro.Object
---
--- @field effect balatro.Back.Effect
--- @field loc_name string
--- @field name string
--- @field pos Position
Back = {}

--- @param selected_back balatro.Item.Back
function Back:init(selected_back) end

--- @return string
function Back:get_name() end

--- @param other balatro.Back?
--- @param ui_scale number?
--- @param min_dims number?
--- @param challenge string?
--- @return balatro.UIElement.Config
function Back:generate_UI(other, ui_scale, min_dims, challenge) end

--- @param back balatro.Item.Back
function Back:change_to(back) end

--- @return balatro.Back.Save
function Back:save(back) end

--- @param args balatro.Back.TriggerEffectParam
--- @return number chips, number mult
function Back:trigger_effect(args) end

function Back:apply_to_run() end

--- @param table balatro.Back.Save
function Back:load(table) end

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
