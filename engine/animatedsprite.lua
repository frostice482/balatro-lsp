--- @meta

--- Sptite, but animated.
--- @class balatro.AnimatedSprite: balatro.Sprite
--- The sprite animation data, containing sprite's positionn, size, and frame count.
--- @field animation balatro.AnimatedSprite.Animation
--- The current sprite animation data, containing size, frame count, and current frame
--- @field current_animation balatro.AnimatedSprite.CurrentAnimation
--- The horizontal offset in the sprite for current animation frame, defined as `width * frame`.
--- @field frame_offset number
--- The time when the animation started.
--- @field offset_seconds number
--- Sprite atlas data.
--- @field atlas balatro.AnimationAtlas
--- Scaling factor for the sprite. The larger, the smaller the sprite becomes.\
--- This is set by `:rescale()` function.
--- @field scale_mag number?
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

--- Gets pixel position for the sprite. Returns `[current, y, w, h]`
--- @return [number, number, number, number]
function IAnimatedSprite:get_pos_pixel() end

function IAnimatedSprite:draw_self() end

function IAnimatedSprite:animate() end

function IAnimatedSprite:remove() end

--- @type balatro.AnimatedSprite | fun(X: number, Y: number, W: number, H: number, new_sprite_atlas: balatro.AnimationAtlas, sprite_pos: Position): balatro.AnimatedSprite
AnimatedSprite = function() end

--- @class balatro.AnimatedSprite.CurrentAnimation: WidthHeight
--- @field current number Current frame that is being animated
--- @field frames number Number of frames in the sprite

--- @class balatro.AnimatedSprite.Animation: PositionAndSize
--- @field current number Currently ineffective
--- @field frames number Number of frames in the sprite
