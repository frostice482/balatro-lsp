--- @meta

--- The base level and container of a graph of 1 or more UIElements. These UIEs are
--- essentially a node based UI implementation. As the root node of the graph, this
--- node is the first called for any movement, updates, or changes to ensure that all child
--- nodes are updated and modified in the correct order.
---
--- The UI_definitions file houses the majority of the definition tables needed for UIBox initialization.
--- @class balatro.UIBox: balatro.Moveable
--- @field parent balatro.UIBox | balatro.UIElement?
--- @field UIRoot balatro.UIElement?
--- @field draw_layers balatro.UIElement[]
--- @field definition balatro.UIElement.Config
--- @field Mid balatro.UIElement?
--- @field config balatro.UIBox.Config?
local IUIBox = {}

---@param args balatro.UIBox.Arg
--`T` A standard transform in game units describing the inital position and size of the object with x, y, w, h\
--ex - `{x = 1, y = 5, w = 2, h = 2, r = 0}`
--
--`definition` A table containing a valid UIBox definition. These are mostly generated from UI_definitions
--
--`config` A configuration table for the UIBox
--ex - `{ align = 'cm', offset = {x = 1, y = 1}, parent_rect = A, attach_rect = B, can_collide = true }`
function IUIBox:init(args) end

--- @return balatro.UIElement
function IUIBox:get_UIE_by_ID(id, node) end

--- @param node balatro.Node
--- @param _T Position
--- @param recalculate boolean?
--- @param _scale number?
--- @return number, number
function IUIBox:calculate_xywh(node, _T, recalculate, _scale) end

function IUIBox:remove_group(node, group) end

function IUIBox:get_group(node, group, ingroup) end

--- @param node balatro.UIElement.Config
--- @param parent balatro.UIElement
function IUIBox:set_parent_child(node, parent) end

function IUIBox:remove() end

function IUIBox:draw() end

--- @param dt number
function IUIBox:move(dt) end

--- @param offset Position
function IUIBox:drag(offset) end

--- @param node balatro.UIElement.Config
--- @param parent balatro.UIElement
function IUIBox:add_child(node, parent) end

--- @param container balatro.Node
function IUIBox:set_container(container) end

--- @param indent number
--- @return string
function IUIBox:print_topology(indent) end

function IUIBox:recalculate() end


--- @class balatro.UIBox.Arg
--- @field T balatro.Node.TransformUnit?
--- @field definition balatro.UIElement.Config
--- @field config balatro.UIBox.Config

--- @type balatro.UIBox | fun(args: balatro.UIBox.Arg): balatro.UIBox
UIBox = function() end

--- @class balatro.UIElement: balatro.Moveable
--- @field parent balatro.UIBox | balatro.UIElement?
--- @field UIBox balatro.UIBox
--- @field UIT balatro.UITypeEnum
--- @field config balatro.UIElement.Config
--- @field content_dimensions WidthHeight
--- @field children balatro.Node[] | balatro.UIElement[]
--- @field button_clicked boolean?
--- @field last_clicked number?
--- @field disable_button boolean?
--- @field focus_timer number?
--- @field object_focus_timer number?
local IUIElement = {}

--- @param parent balatro.UIBox?
--- @param new_UIBox balatro.UIBox
--- @param new_UIT balatro.UITypeEnum
--- @param config balatro.UIElement.Config
function IUIElement:init(parent, new_UIBox, new_UIT, config) end

--- @param _T PositionAndSize
--- @param recalculate boolean?
function IUIElement:set_values(_T, recalculate) end

--- @param indent number
--- @return string
function IUIElement:print_topology(indent) end

function IUIElement:initialize_VT() end

--- @param amount number?
--- @param rot_amt number?
function IUIElement:juice_up(amount, rot_amt) end

--- @return balatro.UIElement?
function IUIElement:can_drag() end

function IUIElement:draw() end

function IUIElement:draw_children(layer) end

function IUIElement:set_wh() end

--- @param x number
--- @param y number
function IUIElement:align(x, y) end

function IUIElement:set_alignments() end

function IUIElement:update_text() end

function IUIElement:update_object() end

function IUIElement:draw_self() end

--- @param _type balatro.UIElement.PixellatedRect
--- @param _parallax number
--- @param _emboss number?
--- @param _progress number?
function IUIElement:draw_pixellated_rect(_type, _parallax, _emboss, _progress) end

--- @param dt number
function IUIElement:update(dt) end

--- @param cursor_trans Position
--- @return boolean
function IUIElement:collides_with_point(cursor_trans) end

function IUIElement:click() end

--- @return number, number
function IUIElement:put_focused_cursor() end

function IUIElement:remove() end

function IUIElement:hover() end

function IUIElement:stop_hover() end

function IUIElement:release(other) end

--- @type balatro.UIElement | fun(parent, new_UIBox, new_UIT, config): balatro.UIElement
UIElement = IUIElement

--- @class balatro.UIBox.Config: balatro.Moveable.AlignmentArg
--- @field parent balatro.Node?
--- @field align balatro.Moveable.AlignmentType? Alias for type
--- @field instance_type balatro.Global.Instances.InstanceType?
--- @field id unknown?
--- @field w number?
--- @field h number?
--- @field maxw number?
--- @field maxh number?
--- @field minw number?
--- @field minh number?
--- @field mid boolean?

--- @class balatro.UIElement.Config: balatro.Node.Config
--- @field emboss number?
--- @field vert boolean?
--- @field text_drawable love.Text?
--- @field padding number?
--- @field align balatro.Moveable.AlignmentType? Alias for type
--- @field text string?
--- @field scale number?
--- @field lang balatro.Language?
--- @field func string?
--- @field ref_table table?
--- @field ref_value any?
--- @field group unknown?
--- @field object balatro.Moveable?
--- @field can_collide boolean?
--- @field button string?
--- @field button_UIE balatro.UIElement?
---
--- @field n balatro.UITypeEnum
--- @field config balatro.UIBox.Config?
--- @field nodes balatro.UIElement.Config[]?
--- @field on_demand_tooltip boolean?
--- @field tooltip string?
--- @field detailed_tooltip string?
--- @field draw_layer number?
--- @field collideable boolean?
--- @field no_role boolean?
--- @field role balatro.Moveable.RoleArg?
--- @field prev_value any?
--- @field juice boolean?
--- @field colour ColorHex?
--- @field outline_colour ColorHex?
--- @field focus_args unknown?
--- @field force_focus boolean?
--- @field button_delay number?
--- @field button_delay_start number?
--- @field button_delay_end unknown?
--- @field button_delay_progress number?
--- @field insta_func boolean?
--- @field draw_after boolean?
--- @field no_fill boolean?
--- @field no_recalc boolean?
--- @field refresh_movement boolean?
--- @field force_collision boolean?
--- @field shadow boolean?
--- @field button_dist number?
--- @field shadow_colour ColorHex?
--- @field r boolean?
--- @field hover boolean?
--- @field progress_bar table?
--- @field focus_with_object boolean?
--- @field outline number?
--- @field line_emboss number?
--- @field chosen boolean | 'vert'?
--- @field ext_up number?
--- @field res boolean?
--- @field one_press boolean?
--- @field choice boolean?

--- @class balatro.UIElement.PixellatedRect: WidthHeight
--- @field sw number
--- @field sh number
--- @field progress number
--- @field fill balatro.UIElement.PixellatedRectData
--- @field shadow balatro.UIElement.PixellatedRectData
--- @field line balatro.UIElement.PixellatedRectData
--- @field emboss balatro.UIElement.PixellatedRectData
--- @field line_emboss balatro.UIElement.PixellatedRectData

--- @alias balatro.UIElement.PixellatedRectType 'fill' | 'shadow' | 'line' | 'emboss' | 'line_emboss'

--- @class balatro.UIElement.PixellatedRectData
--- @field vertices number[]

--- @param node any
--- @return boolean
function is_UI_containter(node) end