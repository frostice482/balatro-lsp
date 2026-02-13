--- @meta

--- Sprite, but animated.
--- Animation rate is affected by `G.ANIMATION_FPS`.
---
--- @class balatro.AnimatedSprite: balatro.Sprite
--- @field animation balatro.AnimatedSprite.Animation The sprite animation data, containing sprite's position, size, and frame count.
--- @field current_animation balatro.AnimatedSprite.CurrentAnimation The current sprite animation data, containing size, frame count, and current frame
--- @field frame_offset number The horizontal offset in the sprite for current animation frame, defined as `width * frame`.
--- @field offset_seconds number The time when the animation started.
--- @field atlas balatro.AnimationAtlas Sprite atlas data.
--- @field float? boolean Creates a floating effect, slightly rotating and offsetting the sprite. This is used in Blinds collection.
---
--- @overload fun(X: number, Y: number, W: number, H: number, new_sprite_atlas: balatro.AnimationAtlas, sprite_pos: Position): balatro.AnimatedSprite
AnimatedSprite = {}

--- @param X number
--- @param Y number
--- @param W number
--- @param H number
--- @param new_sprite_atlas balatro.AssetAtlas
--- @param sprite_pos Position
function AnimatedSprite:init(X, Y, W, H, new_sprite_atlas, sprite_pos) end

--- Resets the `scale_mag`.
function AnimatedSprite:rescale() end

function AnimatedSprite:reset() end

--- Sets sprite position in atlas dimension unit.
---
--- _X is currently obsolete, and first animation frame will always start at X=0_
--- @param sprite_pos? Position
function AnimatedSprite:set_sprite_pos(sprite_pos) end

--- Gets pixel position for the sprite. Returns `[current, y, w, h]`
--- @return [number, number, number, number]
function AnimatedSprite:get_pos_pixel() end

function AnimatedSprite:draw_self() end

--- Animates to next sprite.
--- Also handles floating effect is `float` is true.
function AnimatedSprite:animate() end

function AnimatedSprite:remove() end

--- @class balatro.AnimatedSprite.CurrentAnimation: WidthHeight
--- @field current number Current frame that is being animated
--- @field frames number Number of frames in the sprite

--- @class balatro.AnimatedSprite.Animation: PositionAndSize
--- @field current number Currently ineffective
--- @field frames number Number of frames in the sprite
