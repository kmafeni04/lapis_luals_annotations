---@meta

---@class Widget
local Widget = {}

---@alias WidgetFunc function

---@param name? string
---@param setup_fn? WidgetFunc
---@param fields? table
---@return self
function Widget:extend(name, setup_fn, fields) end

---@class BasicAttrs
---@field class? string | table
---@field id? string
---@field lang? string
---@field role? string
---@field style? string
---@field title? string
---@field [string] string

---@class InputAttrs : BasicAttrs
---@field max? string
---@field maxlength? string
---@field min? string
---@field minlength? string
---@field name? string
---@field placeholder? string
---@field required? string | boolean
---@field type? string
---@field value? string

---@class AnchorAttrs : BasicAttrs
---@field href? string
---@field rel? string

---@class FormAttrs : BasicAttrs
---@field method? string
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
---@field defer? boolean | string

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
function element(el, attr, content) end

---@param string string
function raw(string) end

---@param func function
function capture(func) end

---@param args string | function | table
function text(args) end

---@param another_widget table
function widget(another_widget) end

---@param template_name string
---@param fields? table
function render(template_name, fields) end

--- HTML ELEMENTS ---

---@param attr? AnchorAttrs
---@param content?  string | function
function a(attr, content) end

---@param attr? BasicAttrs
---@param content?  string | function
function b(attr, content) end

---@param attr? BasicAttrs
---@param content?  string | function
function body(attr, content) end

---@param attr? BasicAttrs
function br(attr) end

---@param attr? ButtonAttrs
---@param content?  string | function
function button(attr, content) end

---@param attr? BasicAttrs
---@param content?  string | function
function caption(attr, content) end

---@param attr? BasicAttrs
---@param content?  string | function
function code(attr, content) end

---@param attr? BasicAttrs
---@param content?  string | function
function details(attr, content) end

---@param attr? BasicAttrs
---@param content?  string | function
function div(attr, content) end

---@param attr? BasicAttrs
---@param content?  string | function
function footer(attr, content) end

---@param attr? FormAttrs
---@param content?  string | function
function form(attr, content) end

---@param attr? BasicAttrs
---@param content? string | function
function h1(attr, content) end

---@param attr? BasicAttrs
---@param content? string | function
function h2(attr, content) end

---@param attr? BasicAttrs
---@param content? string | function
function h3(attr, content) end

---@param attr? BasicAttrs
---@param content? string | function
function h4(attr, content) end

---@param attr? BasicAttrs
---@param content? string | function
function h5(attr, content) end

---@param attr? BasicAttrs
---@param content? string | function
function h6(attr, content) end

---@param attr? BasicAttrs
---@param content? string | function
function head(attr, content) end

---@param attr? BasicAttrs
---@param content? string | function
function header(attr, content) end

---@param attr? BasicAttrs
function hr(attr) end

---@param attr? ImageAttrs
function image(attr) end

---@param attr? InputAttrs
function input(attr) end

---@param attr? BasicAttrs
---@param content? string | function
function label(attr, content) end

---@param attr? BasicAttrs
---@param content? string | function
function li(attr, content) end

---@param attr? AnchorAttrs
function link(attr, content) end

---@param attr? BasicAttrs
---@param content?  string | function
function main(attr, content) end

---@param attr? BasicAttrs
---@param content?  string | function
function meta(attr, content) end

---@param attr? BasicAttrs
---@param content?  string | function
function nav(attr, content) end

---@param attr? BasicAttrs
---@param content? string | function
function ol(attr, content) end

---@param attr? OptionAttrs
---@param content? string | function
function option(attr, content) end

---@param attr? OptGroupAttrs
---@param content? string | function
function optgroup(attr, content) end

---@param attr? BasicAttrs
---@param content? string | function
function p(attr, content) end

---@param attr? BasicAttrs
---@param content? string | function
function pre(attr, content) end

---@param attr? BasicAttrs
---@param content? string | function
function progress(attr, content) end

---@param attr? BasicAttrs
---@param content? string | function
function section(attr, content) end

---@param attr? BasicAttrs
---@param content? string | function
function span(attr, content) end

---@param attr? BasicAttrs
function sub(attr) end

---@param attr? BasicAttrs
function sup(attr) end

---@param attr? BasicAttrs
---@param content? string | function
function summary(attr, content) end

---@param attr? ScriptAttrs
---@param content?  string | function
function script(attr, content) end

---@param attr? InputAttrs
function textarea(attr) end

---@param attr? BasicAttrs
---@param content? string | function
function tbody(attr, content) end

---@param attr? BasicAttrs
---@param content? string | function
function td(attr, content) end

---@param attr? BasicAttrs
---@param content? string | function
function tfoot(attr, content) end

---@param attr? BasicAttrs
---@param content? string | function
function th(attr, content) end

---@param attr? BasicAttrs
---@param content? string | function
function thead(attr, content) end

---@param attr? BasicAttrs
---@param content? string | function
function tr(attr, content) end

---@param attr? BasicAttrs
---@param content? string | function
function ul(attr, content) end

---@param attr? BasicAttrs
function wbr(attr) end
