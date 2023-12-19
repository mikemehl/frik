---@alias color number[4]

---@class Obj
---@field public x integer
---@field public y integer
---@field public vx integer
---@field public vy integer
---@field public w integer
---@field public h integer
---@field public c color
local Obj = {}

---@return Obj
function Obj.new()
	local obj = {
		x = 0,
		y = 0,
		vx = 0,
		vy = 0,
		w = 0,
		h = 0,
		c = { 1, 1, 1, 1 },
	}
	setmetatable(obj, Obj)
	return obj
end

---@type color
local bgc = { 0.2, 0.2, 0.2, 0.2 }

function Obj:update()
	self.x = self.x + self.vx
	self.y = self.y + self.vy
end

function Obj:draw()
	love.graphics.setColor(self.c --[[@as table]])
	love.graphics.rectangle("fill", self.x, self.y, self.w, self.h)
end

function love.draw()
	love.graphics.print("Hello World", 400, 300)
	love.graphics.setBackgroundColor(bgc --[[@as table]])
end
