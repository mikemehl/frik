---@alias color number[4]

local Obj = require("obj")

local bgc = { 0.2, 0.2, 0.2, 0.2 }

---@class Player: Obj
local Player = {}

function Player.new()
	local o = Obj.new()
	o.x = 100
	o.y = 100
	o.w = 50
	o.h = 50
	o.vx = 1
	o.vy = 1
	return o
end

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

local p = Player.new()
local e = Enemy.new()

function love.update()
	p:update()
	e:update()
end

function love.draw()
	love.graphics.setColor({ 1.0, 1.0, 1.0, 1.0 })
	love.graphics.print("Hello World", 400, 300)
	love.graphics.setBackgroundColor(bgc --[[@as table]])
	p:draw()
	e:draw()
end
