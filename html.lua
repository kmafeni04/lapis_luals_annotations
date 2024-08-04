---@meta

---@class Widget
---@overload fun(params: table): Widget
local Widget = {}

--[[
  The default constructor of the widget class will copy every field from the opts argument to self, if the opts argument is provided. You can use this to set render-time parameters or override methods.


```lua
local Widget = require("lapis.html").Widget

local SomeWidget = Widget:extend({
  content = function(self)
    div("Hello ", self.name)
  end
})

local w = SomeWidget({ name = "Garf" })
print(w:render_to_string()) --> <div>Hello Garf</div>
```

It is safe to override the constructor and not call `super` if you want to change the initialization conditions of your widget.
]]
---@param params table
function Widget(params) end

---@alias WidgetFunc fun(self: AppSelf)

--[[
  Creates a new subclass of the `Widget` base class. The `fields` argument is a table of properties that will be copied into the instance metatable of the newly created class, or it can be a function and it willl be set as the `content` field.

`name` is not directly used by Lapis but it can be helpful to provide it for debugging and for implementing systems that derive details about the rendred output based on the name of the widget (eg. automatically generated a class based on the widget’s name)

`setup_fn` is an optional function that will be called with the class object as the only argument. This function is called after properties have been set but before any `__inherited` callbacks are called. The default `Widget` class does not have any `__inherited` callbacks so it is not necessary to use this function unless you specifically need that behavior for a subclass you have created.

This method returns the newly created class object, followed by the instance metatable.

```lua
local SomeWidget = Widget:extend(function(self)
  return div("Hello world!")
end)
print(SomeWidget():render_to_string())
```
]]
---@param name string
---@param fields table
---@param setup_fn WidgetFunc
---@return self
function Widget:extend(name, fields, setup_fn) end

---@param setup_fn WidgetFunc
---@return self
function Widget:extend(setup_fn) end

---@return string
function Widget:render_to_string() end

---@class BasicAttrs
---@field class? string | table
---@field id? string
---@field lang? string
---@field role? string
---@field style? string
---@field title? string
---@field [string] any

---@class MetaAttrs : BasicAttrs
---@field charset?
---| "UTF-8"
---@field content? string
---@field http-equiv? string
---@field name? string

---@class InputAttrs : BasicAttrs
---@field autocomplete? string
---| "off"
---| "on"
---@field max? string | number
---@field maxlength? string | number
---@field min? string | number
---@field minlength? string | number
---@field name? string
---@field placeholder? string
---@field required?  boolean
---@field type?
---| "button"
---| "checkbox"
---| "color"
---| "date"
---| "datetime-local"
---| "email"
---| "file"
---| "hidden"
---| "image"
---| "month"
---| "number"
---| "password"
---| "radio"
---| "range"
---| "reset"
---| "search"
---| "submit"
---| "tel"
---| "text"
---| "time"
---| "url"
---| "week"
---@field value? string

---@class AnchorAttrs : BasicAttrs
---@field href? string
---@field rel? string
---| "stylesheet"
---| "noreferrer"
---| "noopener"
---| "nofollow"
---| "next"
---| "preload"
---| "prev"
---| "search"
---@field target? string
---| "_self"
---| "_blank"
---| "_parent"
---| "_top"
---| "_unfencedTop"

---@class FormAttrs : BasicAttrs
---@field method? string
---| "GET"
---| "POST"
---| "DIALOG"
---@field action? string

---@class ButtonAttrs : BasicAttrs
---@field type? string
---@field value? string
---@field disabled? boolean | string

---@class ImageAttrs : BasicAttrs
---@field src? string
---@field alt? string

---@class ScriptAttrs
---@field src? string
---@field defer? boolean

---@class OptGroupAttrs : BasicAttrs
---@field disabled? boolean | string
---@field label? string

---@class OptionAttrs : BasicAttrs
---@field disabled? boolean | string
---@field label? string
---@field selected? boolean | string
---@field value? string

--- HTML UTILITY FUNCTIONS ---

---@param el string
---@param attr? BasicAttrs
---@param content? string | function
---@overload fun(el: string ,content: string | function)
function element(el, attr, content) end

--[[
   outputs the argument, a string, directly to the buffer without escaping.
]]
---@param string string
function raw(string) end

--[[
  executes the function argument in the context of the HTML builder environment, returns the compiled result as a string instead of writing to buffer.
]]
---@param func function
function capture(func) end

--[[
  outputs the argument to the buffer, escaping it if it’s a string. If it’s a function, it executes the function in HTML builder environment. If it’s a table, it writes each item in the table
]]
---@param args string | function | table
function text(args) end

--[[
  renders another widget in the current output buffer. Automatically passes the enclosing context. The widget can either be an instance of a widget, or a widget class. If a class is provided, then an instance with no arguments is created.
]]
---@param widget Widget
function widget(widget) end

--[[
  renders another widget or view by the module name. Lets you render etlua templates from inside builder
]]
---@param template_name string
---@param fields? table
function render(template_name, fields) end

--- HTML ELEMENTS ---

---@param attr? AnchorAttrs
---@param content?  string | function
---@overload fun(content: string | function)
function a(attr, content) end

---@param attr? BasicAttrs
---@param content?  string | function
---@overload fun(content: string | function)
function b(attr, content) end

---@param attr? BasicAttrs
---@param content?  string | function
---@overload fun(content: string | function)
function body(attr, content) end

---@param attr? BasicAttrs
---@overload fun(content: string | function)
function br(attr) end

---@param attr? ButtonAttrs
---@param content?  string | function
---@overload fun(content: string | function)
function button(attr, content) end

---@param attr? BasicAttrs
---@param content?  string | function
---@overload fun(content: string | function)
function caption(attr, content) end

---@param attr? BasicAttrs
---@param content?  string | function
---@overload fun(content: string | function)
function code(attr, content) end

---@param attr? BasicAttrs
---@param content?  string | function
---@overload fun(content: string | function)
function details(attr, content) end

---@param attr? BasicAttrs
---@param content?  string | function
---@overload fun(content: string | function)
function div(attr, content) end

---@param attr? BasicAttrs
---@param content?  string | function
---@overload fun(content: string | function)
function footer(attr, content) end

---@param attr? FormAttrs
---@param content?  string | function
---@overload fun(content: string | function)
function form(attr, content) end

---@param attr? BasicAttrs
---@param content? string | function
---@overload fun(content: string | function)
function h1(attr, content) end

---@param attr? BasicAttrs
---@param content? string | function
---@overload fun(content: string | function)
function h2(attr, content) end

---@param attr? BasicAttrs
---@param content? string | function
---@overload fun(content: string | function)
function h3(attr, content) end

---@param attr? BasicAttrs
---@param content? string | function
---@overload fun(content: string | function)
function h4(attr, content) end

---@param attr? BasicAttrs
---@param content? string | function
---@overload fun(content: string | function)
function h5(attr, content) end

---@param attr? BasicAttrs
---@param content? string | function
---@overload fun(content: string | function)
function h6(attr, content) end

---@param attr? BasicAttrs
---@param content? string | function
---@overload fun(content: string | function)
function head(attr, content) end

---@param attr? BasicAttrs
---@param content? string | function
---@overload fun(content: string | function)
function header(attr, content) end

---@param attr? BasicAttrs
---@overload fun(content: string | function)
function hr(attr) end

---@param attr? BasicAttrs
---@param content? string | function
---@overload fun(content: string | function)
function html(attr, content) end

---@param attr? BasicAttrs
---@param content? string | function
---@overload fun(content: string | function)
function i(attr, content) end

---@param attr? ImageAttrs
---@overload fun(content: string | function)
function image(attr) end

---@param attr? InputAttrs
---@overload fun(content: string | function)
function input(attr) end

---@param attr? BasicAttrs
---@param content? string | function
---@overload fun(content: string | function)
function label(attr, content) end

---@param attr? BasicAttrs
---@param content? string | function
---@overload fun(content: string | function)
function li(attr, content) end

---@param attr? AnchorAttrs
---@overload fun(content: string | function)
function link(attr, content) end

---@param attr? BasicAttrs
---@param content?  string | function
---@overload fun(content: string | function)
function main(attr, content) end

---@param attr? MetaAttrs
---@param content?  string | function
---@overload fun(content: string | function)
function meta(attr, content) end

---@param attr? BasicAttrs
---@param content?  string | function
---@overload fun(content: string | function)
function nav(attr, content) end

---@param attr? BasicAttrs
---@param content? string | function
---@overload fun(content: string | function)
function ol(attr, content) end

---@param attr? OptionAttrs
---@param content? string | function
---@overload fun(content: string | function)
function option(attr, content) end

---@param attr? OptGroupAttrs
---@param content? string | function
---@overload fun(content: string | function)
function optgroup(attr, content) end

---@param attr? BasicAttrs
---@param content? string | function
---@overload fun(content: string | function)
function p(attr, content) end

---@param attr? BasicAttrs
---@param content? string | function
---@overload fun(content: string | function)
function pre(attr, content) end

---@param attr? BasicAttrs
---@param content? string | function
---@overload fun(content: string | function)
function progress(attr, content) end

---@param attr? BasicAttrs
---@param content? string | function
---@overload fun(content: string | function)
function section(attr, content) end

---@param attr? BasicAttrs
---@param content? string | function
---@overload fun(content: string | function)
function span(attr, content) end

---@param attr? BasicAttrs
function sub(attr) end

---@param attr? BasicAttrs
function sup(attr) end

---@param attr? BasicAttrs
---@param content? string | function
---@overload fun(content: string | function)
function summary(attr, content) end

---@param attr? ScriptAttrs
---@param content?  string | function
---@overload fun(content: string | function)
function script(attr, content) end

---@param attr? InputAttrs
function textarea(attr) end

---@param attr? BasicAttrs
---@param content? string | function
---@overload fun(content: string | function)
function tbody(attr, content) end

---@param attr? BasicAttrs
---@param content? string | function
---@overload fun(content: string | function)
function td(attr, content) end

---@param attr? BasicAttrs
---@param content? string | function
---@overload fun(content: string | function)
function tfoot(attr, content) end

---@param attr? BasicAttrs
---@param content? string | function
---@overload fun(content: string | function)
function th(attr, content) end

---@param attr? BasicAttrs
---@param content? string | function
---@overload fun(content: string | function)
function thead(attr, content) end

---@param attr? BasicAttrs
---@param content? string | function
---@overload fun(content: string | function)
function title(attr, content) end

---@param attr? BasicAttrs
---@param content? string | function
---@overload fun(content: string | function)
function tr(attr, content) end

---@param attr? BasicAttrs
---@param content? string | function
---@overload fun(content: string | function)
function ul(attr, content) end

---@param attr? BasicAttrs
function wbr(attr) end
