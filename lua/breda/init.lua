-- Config
require("breda.config")

-- Mappings
require("breda.mappings")

-- Experimental: change keys to a keymap
local mappings = require('breda.keymap')
local keymap = vim.keymap

for _, mapping in pairs(mappings) do
    keymap.set(mapping.modes, mapping.keys, mapping.run)
end

-- Plugin specific config
require('breda.plugins')

