local keymap = require('breda.keymap')
local api = vim.keymap

-- Autocmd commands
require('breda.autocmd')

-- Config
require("breda.config")

-- Plugin specific config
require('breda.plugins')

-- Set mappings
for _, mapping in pairs(keymap) do
    local options = mapping.opts or {}
    options.desc = mapping.description

    api.set(mapping.modes, mapping.keys, mapping.run, options)
end

