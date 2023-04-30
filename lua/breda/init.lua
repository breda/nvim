local keymap = require('breda.keymap')
local api = vim.keymap

-- Config
require("breda.config")

-- Plugin specific config
require('breda.plugins')

-- Set mappings
for _, mapping in pairs(keymap) do
    api.set(mapping.modes, mapping.keys, mapping.run, mapping.opts)
end

