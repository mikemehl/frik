local Obj = require("obj")
local Input = require("input")

---@class Player: Obj
local Player = Obj.new()

function Player.new()
	local o = Obj.new()
	o.x = 100
	o.y = 100
	o.w = 50
	o.h = 50
	o.vx = 1
	o.vy = 1
	setmetatable(o, { __index = Player })
	return o
end

function Player:update()
	print("update")
	if Input.get().up then
		self.vy = -10
	elseif Input.get().down then
		self.vy = 10
	else
		self.vy = 0
	end
	Obj.update(self)
end

return Player
