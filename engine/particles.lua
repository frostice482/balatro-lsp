--- @meta

--- @class balatro.Particles: balatro.Moveable
--- @field fill? boolean
--- @field padding number
--- @field parent? balatro.Moveable
--- @field timer number
--- @field timer_type balatro.TimerType
--- @field last_real_time number
--- @field last_drawn number
--- @field lifespan number
--- @field fade_alpha number
--- @field speed number
--- @field max number
--- @field pulse_max number
--- @field pulsed number
--- @field vel_variation number
--- @field particles balatro.Particles.Particle[]
--- @field scale number
--- @field colours ColorHex[]
local IParticles = {}

--- @param X number
---@param Y number
---@param W number
---@param H number
---@param config balatro.Particles.Config
function IParticles:init(X, Y, W, H, config) end

---- @param dt number
function IParticles:update(dt) end

--- @param dt number
function IParticles:move(dt) end

--- @param delay? number
--- @param to number
function IParticles:fade(delay, to) end

--- @param alpha? number
function IParticles:draw(alpha) end

function IParticles:remove() end

--- @type balatro.Particles | fun(X: number, Y: number, W: number, H: number, config: balatro.Particles.Config): balatro.Particles
Particles = function() end

--- @class balatro.Particles.Particle
--- @field draw boolean
--- @field dir number
--- @field facing number
--- @field size number
--- @field age number
--- @field velocity number
--- @field r_vel number
--- @field e_vel number
--- @field e_prev number
--- @field e_curr number
--- @field scale number
--- @field visible_scale number
--- @field time number
--- @field colour ColorHex
--- @field offset Position

--- @class balatro.Particles.Config
--- @field fill? boolean
--- @field padding? number
--- @field attach? balatro.Moveable
--- @field timer? number
--- @field timer_type? balatro.TimerType
--- @field lifespan? number
--- @field speed? number
--- @field max? number
--- @field pulse_max? number
--- @field vel_variation? number
--- @field scale? number
--- @field colours? ColorHex[]
--- @field initialize? boolean