---@meta

---@class AppRenderOptions
---@field status? number
---@field render? boolean|string
---@field content_type? string
---@field headers? table
---@field json? table
---@field layout? boolean|string
---@field redirect_to? string
---@field skip_render? boolean

---@class ParsedUrl
---@field scheme string
---@field path string
---@field host string
---@field port string
---@field query string

---@class SelfRequesTable
---@field headers table
---@field parsed_url ParsedUrl
---@field params_get table
---@field params_post table

---@class AppSelf
---@field route_name string The name of the route that was matched during routing, if available
---@field params table
---@field GET table
---@field POST table
---@field req SelfRequesTable
---@field cookies table
local self = {}

---@param things any
function self:write(things) end

---@param name_or_obj string|Model
---@param params? table
---@param query_params? table|nil
---@return string
function self:url_for(name_or_obj, params, query_params) end

---@class BuildUrlOptions
---@field scheme string
---@field host string
---@field port number|string
---@field fragment string
---@field query string

---@param path string
---@param options? BuildUrlOptions
function self:build_url(path, options) end

---@param module_name string
function self:flow(module_name) end

---@param fn function
function self:html(fn) end

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
end

---@alias ActionFn fun(self: AppSelf): AppRenderOptions

---@param route_name? string|nil
---@param route_path string
---@param action_fn ActionFn
function app:match(route_name, route_path, action_fn)
end

---@param route_name string|nil
---@param route_path string
---@param action_fn ActionFn
function app:get(route_name, route_path, action_fn)
end

---@param route_name string|nil
---@param route_path string
---@param action_fn ActionFn
function app:post(route_name, route_path, action_fn)
end

---@param route_name string|nil
---@param route_path string
---@param action_fn ActionFn
function app:patch(route_name, route_path, action_fn)
end

---@param route_name string|nil
---@param route_path string
---@param action_fn ActionFn
function app:put(route_name, route_path, action_fn)
end

---@param route_name string|nil
---@param route_path string
---@param action_fn ActionFn
function app:delete(route_name, route_path, action_fn)
end

return app
