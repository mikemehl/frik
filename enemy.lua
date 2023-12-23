local Obj = require("obj")

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
	return o
end

return Enemy
