---@alias color number[4]

local Obj = require("obj")

local bgc = { 0.2, 0.2, 0.2, 0.2 }

local o = Obj.new()
o.x = 100
o.y = 100
o.w = 50
o.h = 50
o.vx = 1
o.vy = 1

function love.update()
	o:update()
end

function love.draw()
	love.graphics.print("Hello World", 400, 300)
	love.graphics.setBackgroundColor(bgc --[[@as table]])
	o:draw(0)
end
