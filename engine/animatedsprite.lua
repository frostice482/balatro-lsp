--- @class balatro.AnimatedSprite: balatro.Sprite
---
--- @field offset Position
--- @field animation balatro.AnimatedSprite.Animation
--- @field current_animation balatro.AnimatedSprite.CurrentAnimation
--- @field frame_offset number
--- @field offset_seconds number
--- @field atlas balatro.AnimationAtlas
AnimatedSprite = {}

---function AnimatedSprite:init(X, Y, W, H, new_sprite_atlas, sprite_pos) end
function AnimatedSprite:rescale() end
function AnimatedSprite:reset() end
function AnimatedSprite:set_sprite_pos(sprite_pos) end
function AnimatedSprite:get_pos_pixel() end
function AnimatedSprite:draw_self() end
function AnimatedSprite:animate() end
function AnimatedSprite:remove() end

--- @class balatro.AnimatedSprite.CurrentAnimation: WidthHeight
--- @field current number
--- @field frames number

--- @class balatro.AnimatedSprite.Animation: PositionAndSize
--- @field frames number
