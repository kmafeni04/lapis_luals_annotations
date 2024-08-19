---@meta

---@class SchemaTypesOpts
---@field value? any
---@field null? boolean
---@field unique? boolean
---@field primary_key? boolean
---@field array? boolean | number

---@class Schema
local schema = {
	---@class SchemaTypes
	types = {
		---@param opts? SchemaTypesOpts
		boolean = function(opts) end,
		---@param opts? SchemaTypesOpts
		date = function(opts) end,
		---@param opts? SchemaTypesOpts
		double = function(opts) end,
		---@param opts? SchemaTypesOpts
		foreign_key = function(opts) end,
		---@param opts? SchemaTypesOpts
		integer = function(opts) end,
		---@param opts? SchemaTypesOpts
		numeric = function(opts) end,
		---@param opts? SchemaTypesOpts
		real = function(opts) end,
		---@param opts? SchemaTypesOpts
		serial = function(opts) end,
		---@param opts? SchemaTypesOpts
		text = function(opts) end,
		---@param opts? SchemaTypesOpts
		time = function(opts) end,
		---@param opts? SchemaTypesOpts
		varchar = function(opts) end,
		---@param opts? SchemaTypesOpts
		enum = function(opts) end,
	},

	---@param table_name string
	---@param table_declarations table
	create_table = function(table_name, table_declarations) end,
	---@param table_name string
	drop_table = function(table_name) end,
	---@param table_name string
	---@param col string
	---@param ...? any
	create_index = function(table_name, col, ...) end,
	---@param table_name string
	---@param col1 string
	---@param col2 string
	---@param ... any
	drop_index = function(table_name, col1, col2, ...) end,
	---
	---@param table_name string
	---@param column_name string
	---@param column_type SchemaTypes
	add_column = function(table_name, column_name, column_type) end,
	---@param table_name string
	---@param column_name string
	drop_column = function(table_name, column_name) end,
	---@param table_name string
	---@param old_name string
	---@param new_name string
	rename_column = function(table_name, old_name, new_name) end,
	---@param old_name string
	---@param new_name string
	rename_table = function(old_name, new_name) end,
}

return schema
