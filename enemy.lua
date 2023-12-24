local Obj = require("obj")
local pubsub = require("batteries.pubsub")
local vec = require("batteries.vec2")

---@class Enemy: Obj
local Enemy = {}

function Enemy.new()
	local o = Obj.new()
	o.x = 50
	o.y = 50
	o.w = 10
	o.h = 10
	o.vx = 2
	o.vy = 2
	o.c = { 1.0, 0.0, 0.0, 1.0 }
	pubsub:subscribe("player:moved", function(px, py)
		vec:new(px - o.x, py - o.y)
		vec:scalar_add_inplace(o.vx, o.vy)
		local norm = vec:normalize_inplace()
		o.vx = norm.x
		o.vy = norm.y
	end)
	return o
end

return Enemy
