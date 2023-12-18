---@class Object
local Object = {}

---@return Object
function Object:new()
	local object = {}
	setmetatable(object, self)
	self.__index = self
	return object
end

function love.draw()
	love.graphics.print("Hello World", 400, 300)
end
