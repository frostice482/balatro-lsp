--- The base level and container of a graph of 1 or more UIElements. These UIEs are
--- essentially a node based UI implementation. As the root node of the graph, this
--- node is the first called for any movement, updates, or changes to ensure that all child
--- nodes are updated and modified in the correct order.
---
--- The UI_definitions file houses the majority of the definition tables needed for UIBox initialization.
--- @class balatro.UIBox: balatro.Moveable
UIBox = {}

---@param args {T: balatro.Node.TransformInit, definition: balatro.UIElement.Config, config: balatro.UIBox.Config}
--`T` A standard transform in game units describing the inital position and size of the object with x, y, w, h\
--ex - `{x = 1, y = 5, w = 2, h = 2, r = 0}`
--
--`definition` A table containing a valid UIBox definition. These are mostly generated from UI_definitions
--
--`config` A configuration table for the UIBox
--ex - `{ align = 'cm', offset = {x = 1, y = 1}, parent_rect = A, attach_rect = B, can_collide = true }`
function UIBox:init(args) end

function UIBox:get_UIE_by_ID(id, node) end
function UIBox:calculate_xywh(node, _T, recalculate, _scale) end
function UIBox:remove_group(node, group) end
function UIBox:get_group(node, group, ingroup) end
function UIBox:set_parent_child(node, parent) end
function UIBox:remove() end
function UIBox:draw() end
function UIBox:move(dt) end
function UIBox:drag(offset) end
function UIBox:add_child(node, parent) end
function UIBox:set_container(container) end
function UIBox:print_topology(indent) end
function UIBox:can_drag() end
function UIBox:recalculate() end


--- @class balatro.UIElement: balatro.Moveable
UIElement = {}

function UIElement:init(parent, new_UIBox, new_UIT, config) end
function UIElement:set_values(_T, recalculate) end
function UIElement:print_topology(indent) end
function UIElement:initialize_VT() end
function UIElement:juice_up(amount, rot_amt) end
function UIElement:can_drag() end
function UIElement:draw() end
function UIElement:draw_children(layer) end
function UIElement:set_wh() end
function UIElement:align(x, y) end
function UIElement:set_alignments() end
function UIElement:update_text() end
function UIElement:update_object() end
function UIElement:draw_self() end
function UIElement:draw_pixellated_rect(_type, _parallax, _emboss, _progress) end
function UIElement:update(dt) end
function UIElement:collides_with_point(cursor_trans) end
function UIElement:click() end
function UIElement:put_focused_cursor() end
function UIElement:remove() end
function UIElement:hover() end
function UIElement:stop_hover() end
function UIElement:release(other) end

--- @class balatro.UIBox.Config: balatro.Moveable.AlignmentArg
--- @field parent balatro.UIBox?
--- @field align balatro.Moveable.AlignmentType? Alias for type
--- @field can_collide boolean?
--- @field padding number?
--- @field instance_type balatro.Global.Instances.InstanceType?
--- @field id unknown?
--- @field object balatro.Node?
--- @field w number?
--- @field h number?
--- @field text_drawable love.Text?
--- @field scale number?
--- @field ref_table table?
--- @field ref_value any?
--- @field text string?
--- @field func fun()?
--- @field lang balatro.Language?
--- @field vert boolean?
--- @field maxw number?
--- @field maxh number?
--- @field minw number?
--- @field minh number?
--- @field emboss number?
--- @field group unknown?
--- @field button string?
--- @field button_UIE balatro.UIElement?
--- @field mid boolean?

--- @class balatro.UIElement.Config
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
