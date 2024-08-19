---@meta

---@class ConfigPostgres
---@field host? string
---@field port? string | integer
---@field user? string
---@field password? string
---@field database? string

---@class ConfigMysql
---@field host? string
---@field port? string | integer
---@field user? string
---@field password? string
---@field database? string

---@class ConfigSqlite
---@field database? string
---@field open_flags? integer

---@class ConfigOpts
---@field server? string
---@field port? string | integer
---@field bind_host? string
---@field secret? string
---@field hmac_digest? string
---@field session_name? string
---@field code_cache? string
---@field num_workers? string | integer
---@field logging? table
---@field max_reques_args? table | nil
---@field measure_performance? boolean
---@field postgres? ConfigPostgres
---@field mysql? ConfigMysql
---@field sqlite? ConfigSqlite
local config_opts = {
	server = "nginx",
	port = 8080,
	bind_host = "0.0.0.0",
	secret = "please-change-me",
	hmac_digest = "sha1",
	session_name = "lapis_session",
	code_cache = "off",
	num_workers = 1,
	logging = {},
	max_request_args = nil,
	measure_performance = false,
	postgres = {
		host = "127.0.0.1",
		port = "5432",
		user = "pg_user",
		password = "the_password",
		database = "my_database",
	},
	mysql = {
		host = "127.0.0.1",
		user = "mysql_user",
		password = "the_password",
		database = "my_database",
	},
	sqlite = {
		database = "my_database.sqlite",
	},
}

---@alias Config table|fun(env: string|string[], opts: ConfigOpts)

--- @type Config
--- Module `lapis.config`
---
--- [Configuration](https://leafo.net/lapis/reference/configuration.html)
local config = {}

--- Returns the configuration for the selected `environment`.
---@param environment? string
---@return table
function config.get(environment) end

return config
