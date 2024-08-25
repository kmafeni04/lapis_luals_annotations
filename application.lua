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

---@class SelfRequestTable
---@field headers table
---@field parsed_url ParsedUrl
---@field params_get table
---@field params_post table

---@class AppSelf
---@field route_name string
---@field params table
---@field session table
---@field GET table
---@field POST table
---@field req SelfRequestTable
---@field cookies table
---@field [string] any
local self = {}

---@alias Response AppRenderOptions | string | Widget | function | nil

---@param ... Response
function self:write(...) end

---@param name_or_obj string|Model
---@param params? table
---@param query_params? table
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

---@param fn WidgetFunc
function self:html(fn) end

---@param name string
function self:content_for(name) end

--- Lapis Application
---@class App
---@field layout any
local app = {}

---@alias ActionFn fun(self: AppSelf): Response, ...

---@param feature string
function app:enable(feature) end

---@param fn ActionFn
function app:before_filter(fn) end

---@param route_name string
---@param route_path string
---@param action_fn ActionFn
function app:match(route_name, route_path, action_fn) end

---@param route_path string
---@param action_fn ActionFn
function app:match(route_path, action_fn) end

---@param route_name string
---@param route_path string
---@param action_fn ActionFn
function app:get(route_name, route_path, action_fn) end

---@param route_path string
---@param action_fn ActionFn
function app:get(route_path, action_fn) end

---@param route_name string
---@param route_path string
---@param action_fn ActionFn
function app:post(route_name, route_path, action_fn) end

---@param route_path string
---@param action_fn ActionFn
function app:post(route_path, action_fn) end

---@param route_name string
---@param route_path string
---@param action_fn ActionFn
function app:patch(route_name, route_path, action_fn) end

---@param route_path string
---@param action_fn ActionFn
function app:patch(route_path, action_fn) end

---@param route_name string
---@param route_path string
---@param action_fn ActionFn
function app:put(route_name, route_path, action_fn) end

---@param route_path string
---@param action_fn ActionFn
function app:put(route_path, action_fn) end

---@param route_name string
---@param route_path string
---@param action_fn ActionFn
function app:delete(route_name, route_path, action_fn) end

---@param route_path string
---@param action_fn ActionFn
function app:delete(route_path, action_fn) end

---@class ControllerTable : AppSelf
---@field [string] ActionFn

return app
