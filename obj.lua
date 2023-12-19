---@class Obj
---@field public x integer
---@field public y integer
---@field public vx integer
---@field public vy integer
---@field public w integer
---@field public h integer
---@field public c color
---@field public hp integer
---@field public new function(): Obj
local Obj = {}

function Obj.new()
	local o = {
		x = 0,
		y = 0,
		vx = 0,
		vy = 0,
		w = 0,
		h = 0,
		c = { 1, 1, 1, 1 },
		hp = 100,
	}
	setmetatable(o, { __index = Obj })
	return o
end

function Obj:update()
	self.x = self.x + self.vx
	self.y = self.y + self.vy
end

function Obj:draw()
	love.graphics.setColor(self.c --[[@as table]])
	love.graphics.rectangle("fill", self.x, self.y, self.w, self.h)
end

return Obj
