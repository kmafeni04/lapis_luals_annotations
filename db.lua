---@meta

---@class Db
local db = {
  ---@param query string
  ---@param ... any
  query = function(query, ...)
  end,
  ---@param query string
  ---@param ... any
  select = function(query, ...)
  end,
  ---@param table string
  ---@param values table
  ---@param opts_or_returning? any
  ---@param ...? any
  insert = function(table, values, opts_or_returning, ...)
  end,
  ---@param table string
  ---@param values table
  ---@param conditions table
  ---@param params? any
  ---@param ...? any
  update = function(table, values, conditions, params, ...)
  end,
  ---@param table string
  ---@param conditions table
  ---@param params? any
  ---@param ...? any
  delete = function(table, conditions, params, ...)
  end,
  ---@param value SchemaTypes
  escape_literal = function(value)
  end,
  ---@param str string
  escape_identifier = function(str)
  end,
  ---@param query string
  ---@param ... any
  interpolate_query = function(query, ...)
  end,
  ---@param clause_obj table
  encode_clause = function(clause_obj)
  end,
  ---@param str string
  raw = function(str)
  end,
  ---@param obj table
  is_raw = function(obj)
  end,
  ---@param values table
  list = function(values)
  end,
  ---@param obj table
  is_list = function(obj)
  end,

  ---@class ClauseOpts
  ---@field operator? string
  ---| "AND"
  ---| "OR"
  ---@field table_name? string
  ---@field allow_empty? boolean
  ---@field prefix? string

  ---@param clause table
  ---@param opts? ClauseOpts
  clause = function(clause, opts)
  end,
  ---@param obj table
  is_clause = function(obj)
  end,
  ---@param values table
  array = function(values)
  end,
  ---@param obj table
  is_array = function(obj)
  end,
  NULL = nil,
  TRUE = true,
  FALSE = false,
  format_date = function() end
}

return db
