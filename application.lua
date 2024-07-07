---@meta

--- Lapis Application
---@class App
---@field layout function
local app = {
  layout = require "views.layout"
}

---@param feature string
function app:enable(feature)
end

---@param fn function
---@param self table
function app:before_filter(fn)
  function self:write() end
end

---@param route_name? string|nil
---@param route_path string
---@param action_fn function
function app:match(route_name, route_path, action_fn)
end

---@param route_name string|nil
---@param route_path string
---@param action_fn function
function app:get(route_name, route_path, action_fn)
end

---@param route_name string|nil
---@param route_path string
---@param action_fn function
function app:post(route_name, route_path, action_fn)
end

---@param route_name string|nil
---@param route_path string
---@param action_fn function
function app:patch(route_name, route_path, action_fn)
end

---@param route_name string|nil
---@param route_path string
---@param action_fn function
function app:put(route_name, route_path, action_fn)
end

---@param route_name string|nil
---@param route_path string
---@param action_fn function
function app:delete(route_name, route_path, action_fn)
end

return app
