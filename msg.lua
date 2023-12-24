---@module 'msg'
local M = {}

---@alias event {name: string[], subscribers: function[], queue: table[]}
---@type table<string, event>
local events = {}

function M.sub(name, fn)
	if not events[name] then
		events[name] = { name = name, subscribers = {}, queue = {} }
	end
	table.insert(events[name].subscribers, fn)
end

function M.pub(name, data)
	if not events[name] then
		events[name] = { name = name, subscribers = {}, queue = {} }
	end
	table.insert(events[name].queue, data)
end

function M.dispatch()
	for _, event in pairs(events) do
		for _, data in pairs(event.queue) do
			for _, fn in pairs(event.subscribers) do
				fn(data)
			end
		end
		event.queue = {}
	end
end

return M
