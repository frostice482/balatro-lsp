--- @meta

--- @class balatro.Sprite: balatro.Moveable
--- @field CT balatro.Node.TransformUnit
--- @field atlas balatro.AssetAtlas
--- @field scale Position
--- @field scale_mag number
--- @field zoom boolean
--- @field sprite_pos balatro.Sprite.SpritePos
--- @field sprite_pos_copy Position
--- @field sprite love.Quad
--- @field image_dims [number, number]
--- @field draw_steps balatro.Sprite.DrawStepDefined[]
--- @field video? love.Video
--- @field video_dims? WidthHeight
local ISprite = {}

--- @param X number
--- @param Y number
--- @param W number
--- @param H number
--- @param new_sprite_atlas balatro.AssetAtlas
--- @param sprite_pos balatro.Sprite.SpritePos
function ISprite:init(X, Y, W, H, new_sprite_atlas, sprite_pos) end

function ISprite:reset() end

--- @param sprite_pos balatro.Sprite.SpritePos
function ISprite:set_sprite_pos(sprite_pos) end

--- @return [number, number, number, number]
function ISprite:get_pos_pixel() end

--- @return [number, number]
function ISprite:get_image_dims() end

--- @param draw_step_definitions balatro.Sprite.DrawStep[]
function ISprite:define_draw_steps(draw_step_definitions) end

--- @param _shader string
--- @param _shadow_height? number
--- @param _send? boolean
--- @param _no_tilt? boolean
--- @param other_obj? balatro.Sprite
--- @param ms? number
--- @param mr? number
--- @param mx? number
--- @param my? number
--- @param custom_shader? boolean
--- @param tilt_shadow? boolean
function ISprite:draw_shader(_shader, _shadow_height, _send, _no_tilt, other_obj, ms, mr, mx, my, custom_shader, tilt_shadow) end

--- @param overlay?  ColorHex
function ISprite:draw_self(overlay) end

--- @param overlay?  ColorHex
function ISprite:draw(overlay) end

--- @param other_obj balatro.Sprite
--- @param ms number
--- @param mr number
--- @param mx number
--- @param my number
function ISprite:draw_from(other_obj, ms, mr, mx, my) end

function ISprite:remove() end

--- @type balatro.Sprite | fun(X: number, Y: number, W: number, H: number, new_sprite_atlas: balatro.Atlas, sprite_pos: Position): balatro.Sprite
Sprite = function() end

--- @class balatro.Sprite.SpritePos: Position
--- @field v? boolean

--- @class balatro.Sprite.DrawStep
--- @field shader string? Defaults to dissolve
--- @field shadow_height? number
--- @field send? boolean
--- @field no_tilt? boolean
--- @field other_obj? balatro.Sprite
--- @field ms? number
--- @field mr? number
--- @field mx? number
--- @field my? number

--- @class balatro.Sprite.DrawStepDefined: balatro.Sprite.DrawStep
--- @field shader string
