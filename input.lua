---@module 'input'
local M = {}

---@alias Input {up: boolean, down: boolean, left: boolean, right: boolean}
local Input = { up = false, down = false, left = false, right = false }

---@param key love.KeyConstant
function M.keydown(key)
	if key == "up" then
		Input.up = true
	elseif key == "down" then
		Input.down = true
	elseif key == "left" then
		Input.left = true
	elseif key == "right" then
		Input.right = true
	end
end

---@param key love.KeyConstant
function M.keyup(key)
	if key == "up" then
		Input.up = false
	elseif key == "down" then
		Input.down = false
	elseif key == "left" then
		Input.left = false
	elseif key == "right" then
		Input.right = false
	end
end

function M.get()
	return Input
end

function M.init()
	love.keypressed = M.keydown
	love.keyreleased = M.keyup
end

return M
