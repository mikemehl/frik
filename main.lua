---@alias color number[4]

local Obj = require("obj")
local Input = require("input")
local Player = require("player")

local bgc = { 0.2, 0.2, 0.2, 0.2 }

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

function love.load()
	Input.init()
end

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
