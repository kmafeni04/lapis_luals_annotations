---@meta

---@class SchemaTypesOpts
---@field default? any
---@field null? boolean
---@field unique? boolean
---@field primary_key? boolean
---@field array? boolean | number

---@alias SchemaType function | fun(opts?: SchemaTypesOpts): SchemaType

---@class SchemaTypes
---@field boolean SchemaType
---@field date SchemaType
---@field double SchemaType
---@field foreign_key SchemaType
---@field integer SchemaType
---@field numeric SchemaType
---@field real SchemaType
---@field serial SchemaType
---@field text SchemaType
---@field time SchemaType
---@field varchar SchemaType
---@field enum SchemaType

---@class Schema
---@field types SchemaTypes
---@field create_table fun(table_name: string, table_declarations:table)
---@field drop_table fun(table_name: string)
---@field create_index fun(table_name: string, col: string, ...?: any)
---@field drop_index fun(table_name: string, col1: string, col2?: string, ...?)
---@field add_column fun(table_name: string, column_name: string, column_type: SchemaType)
---@field drop_column fun(table_name: string, column_name: string)
---@field rename_column fun(table_name: string, old_name: string, new_name: string)
---@field rename_table fun(old_name: string, new_name: string)
local schema = {}

return schema
