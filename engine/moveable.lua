--- @meta

--- Moveable represents any game object that has the ability to move about the gamespace.\
--- All Moveables have a T (transform) that describes their desired transform in game units,\
--- as well as a VT (Visible Transform) that eases to T over time. This allows for simplified movement\
--- where we only need to set T.x, T.y, etc. to their final position and the engine will ensure the Moveable\
--- VT eases to that final location, regargless of any events or timing.
--- @class balatro.Moveable: balatro.Node
---
--- The Visible transform is initally set to the same values as the transform T.
--- Note that the VT has an extra 'scale' factor, this is used to manipulate the center-adjusted
--- scale of any objects that need to be drawn larger or smaller
--- @field VT balatro.Node.TransformUnit
--- To determine location of VT, we need to keep track of the velocity of VT as it approaches T for the next frame
--- @field velocity balatro.Moveable.Velocity
--- For more robust drawing, attaching, movement and fewer redundant movement calculations, Moveables each have a 'role'
--- that describes a heirarchy of move() calls. Any Moveables with 'Major' role type behave normally, essentially recalculating their
--- VT every frame to ensure smooth movement. Moveables can be set to 'Minor' role and attached to some 'Major' moveable
--- to weld the Minor moveable to the Major moveable. This makes the dependent moveable set their T and VT to be equal to
--- the corresponding 'Major' T and VT, plus some defined offset.
--- For finer control over what parts of T and VT are inherited, xy_bond, wh_bond, and r_bond can be set to one of
--- 'Strong' or 'Weak'. Strong simply copies the values, Weak allows the 'Minor' moveable to calculate their own.
--- @field role balatro.Moveable.Role
--- ((Undocumented))
--- @field alignment balatro.Moveable.Alignment
--- The pinch table is used to modify the VT.w and VT.h compared to T.w and T.h. If either x or y pinch is
--- Set to true, the VT width and or height will ease to 0. If pinch is false, they ease to T.w or T.h
--- @field pinch { x: boolean, y: boolean }
--- Keep track of the last time this Moveable was moved via :move(dt). When it is successfully moved, set to equal
--- the current G.TIMERS.REAL, and if it is called again this frame, doesn't recalculate move(dt)
--- @field last_moved number
--- Keep track of the last time this Moveable was moved via :move(dt). When it is successfully moved, set to equal
--- the current G.TIMERS.REAL, and if it is called again this frame, doesn't recalculate move(dt)
--- @field last_aligned number
---
--- @field static_rotation boolean
--- @field offset Position
--- @field Mid balatro.Moveable
--- @field shadow_parrallax Position
--- @field layered_parallax Position
--- @field shadow_height number
--- @field juice? balatro.Moveable.Juice
--- @field float? boolean
---
--- @field STATIONARY? boolean
--- @field NEW_ALIGNMENT? boolean
local IMoveable = {}

--- @param X number
--- @param Y number
--- @param W number
--- @param H number
function IMoveable:init(X,Y,W,H) end

function IMoveable:draw() end

---Sets the alignment of moveable using roles
---@param args balatro.Moveable.AlignmentArg?
--- - `major` The moveable this moveable will attach to
--- - `bond` The bond type, either 'Strong' or 'Weak'. Strong instantly adjusts VT, Weak manually calculates VT changes
--- - `offset` {x , y} offset from the alignment
--- - `type` the alignment type.
--- - Vertical options:
---   - `c`- center,
---   - `t`- top,
---   - `b`- bottom.
--- - Horizontal options:
---   - `l` - left,
---   - `m` - middle,
---   - `r` - right.
---   - `i` for inner
function IMoveable:set_alignment(args) end

function IMoveable:align_to_major() end

--- @param X number
--- @param Y number
--- @param W number
--- @param H number
function IMoveable:hard_set_T(X, Y, W, H) end

function IMoveable:hard_set_VT() end

--- @param offset Position
function IMoveable:drag(offset) end

--- @param amount? number
--- @param rot_amt? number
function IMoveable:juice_up(amount, rot_amt) end

---- @param dt number
function IMoveable:move_juice(dt) end

--- @param dt number
function IMoveable:move(dt) end

function IMoveable:lr_clamp() end

--- @param major_tab balatro.Moveable
function IMoveable:glue_to_major(major_tab) end

--- @param dt number
function IMoveable:move_with_major(dt) end

--- @param dt number
function IMoveable:move_xy(dt) end

---- @param dt number
function IMoveable:move_scale(dt) end

--- @param dt number
function IMoveable:move_wh(dt) end

--- @param dt number
--- @param vel Position
function IMoveable:move_r(dt, vel) end

function IMoveable:calculate_parrallax() end

function IMoveable:set_role(args) end

--- @return balatro.Node.Frame.Major
function IMoveable:get_major() end

function IMoveable:remove() end

--- @type balatro.Moveable | fun(X: number, Y: number, W: number, H: number): balatro.Moveable
Moveable = function() end

--- @class balatro.Moveable.Velocity: Position
--- @field r number
--- @field scale number
--- @field mag number

--- @class balatro.Moveable.Role
--- @field role_type 'Major' | 'Minor' Major dictates movement, Minor is welded to some major
--- @field offset Position Offset from Minor to Major
--- @field major? balatro.Moveable
--- @field draw_major? balatro.Moveable
--- @field xy_bond 'Strong' | 'Weak'
--- @field wh_bond 'Strong' | 'Weak'
--- @field r_bond 'Strong' | 'Weak'
--- @field scale_bond 'Strong' | 'Weak'

--- @class balatro.Moveable.Alignment
--- @field type balatro.Moveable.AlignmentType
--- @field offset Position
--- @field prev_type balatro.Moveable.AlignmentType
--- @field prev_offset Position
--- @field lr_clamp? boolean
--- @field type_list? table<'a' | 'm' | 'c' | 'b' | 't' | 'l' | 'r' | 'i'>

--- @class balatro.Moveable.AlignmentArg
--- @field major? balatro.Moveable
--- @field offset?? Position
--- @field bond? 'Weak' | 'Strong'
--- @field type? balatro.Moveable.AlignmentType
--- @field xy_bond? balatro.Moveable.AlignmentType
--- @field wh_bond? balatro.Moveable.AlignmentType
--- @field r_bond? balatro.Moveable.AlignmentType
--- @field scale_bond? balatro.Moveable.AlignmentType
--- @field lr_clamp? boolean

--- @class balatro.Moveable.RoleArg
--- @field role_type 'Major' | 'Minor'? Major dictates movement, Minor is welded to some major
--- @field offset Position? Offset from Minor to Major
--- @field major? balatro.Moveable
--- @field draw_major? balatro.Moveable
--- @field xy_bond? 'Strong' | 'Weak'
--- @field wh_bond? 'Strong' | 'Weak'
--- @field r_bond? 'Strong' | 'Weak'
--- @field scale_bond? 'Strong' | 'Weak'

--- @class balatro.Moveable.Juice
--- @field handled_elsewhere? boolean
--- @field scale number
--- @field scale_amt number
--- @field r number
--- @field r_amt number
--- @field start_time number
--- @field end_time number

--- - Vertical options:
---   - `c`- center,
---   - `t`- top,
---   - `b`- bottom.
--- - Horizontal options:
---   - `l` - left,
---   - `m` - middle,
---   - `r` - right.
---   - `i` for inner
--- - Exactly "a": Do not align
--- @alias balatro.Moveable.AlignmentType "a" | "m" | "c" | "b" | "t" | "l" | "r" | "i" | string
