---@type ChadrcConfig
local M = {}

M.ui = {
  tabufline = {
    show_numbers = false,
    enabled = true,
    lazyload = true,
    overriden_modules = nil,
  },
}
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
