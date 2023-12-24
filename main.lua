---@alias color number[4]
---@alias err nil | string

local Obj = require("obj")
local Input = require("input")
local Player = require("player")
local Enemy = require("enemy")
local pubsub = require("batteries.pubsub")

local bgc = { 0.2, 0.2, 0.2, 0.2 }

function love.load()
	pubsub:new()
	Input.init()
	Player.new()
	Enemy.new()
end

function love.update()
	Obj.updateAll()
end

function love.draw()
	love.graphics.setColor({ 1.0, 1.0, 1.0, 1.0 })
	love.graphics.print("Hello World", 400, 300)
	love.graphics.setBackgroundColor(bgc --[[@as table]])
	Obj.drawAll()
end
