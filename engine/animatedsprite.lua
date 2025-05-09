--- @meta

--- @class balatro.AnimatedSprite: balatro.Sprite
--- @field offset Position
--- @field animation balatro.AnimatedSprite.Animation
--- @field current_animation balatro.AnimatedSprite.CurrentAnimation
--- @field frame_offset number
--- @field offset_seconds number
--- @field atlas balatro.AnimationAtlas
local IAnimatedSprite = {}

--- @param X number
--- @param Y number
--- @param W number
--- @param H number
--- @param new_sprite_atlas balatro.AssetAtlas
--- @param sprite_pos Position
function IAnimatedSprite:init(X, Y, W, H, new_sprite_atlas, sprite_pos) end

function IAnimatedSprite:rescale() end

function IAnimatedSprite:reset() end

--- @param sprite_pos Position
function IAnimatedSprite:set_sprite_pos(sprite_pos) end

function IAnimatedSprite:get_pos_pixel() end

function IAnimatedSprite:draw_self() end

function IAnimatedSprite:animate() end

function IAnimatedSprite:remove() end

--- @type balatro.AnimatedSprite | fun(X: number, Y: number, W: number, H: number, new_sprite_atlas: balatro.AnimationAtlas, sprite_pos: Position): balatro.AnimatedSprite
AnimatedSprite = function() end

--- @class balatro.AnimatedSprite.CurrentAnimation: WidthHeight
--- @field current number
--- @field frames number

--- @class balatro.AnimatedSprite.Animation: PositionAndSize
--- @field frames number
