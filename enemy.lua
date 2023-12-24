local Obj = require("obj")
local msg = require("msg")

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
	msg.sub("player:pos", function(data)
		o.x = data.x
		o.y = data.y
	end)
	return o
end

return Enemy
