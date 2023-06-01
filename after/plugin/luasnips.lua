-- Add all snippets from friendly-snippets plugin
require("luasnip.loaders.from_vscode").lazy_load()

-- Add mine
require("luasnip.loaders.from_snipmate").lazy_load()
