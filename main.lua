---@alias color number[4]
---@alias err nil | string

local Input = require("input")
local Player = require("player")
local Enemy = require("enemy")

local bgc = { 0.2, 0.2, 0.2, 0.2 }

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
