--
-- The name says is all really, autocloses some characters
--
require("autoclose").setup({
	keys = {
		["("] = { escape = false, close = true, pair = "()" },
		["["] = { escape = false, close = true, pair = "[]" },
		["{"] = { escape = false, close = false, pair = "{}" },

		[">"] = { escape = true, close = false, pair = "<>" },
		[")"] = { escape = true, close = false, pair = "()" },
		["]"] = { escape = true, close = false, pair = "[]" },
		["}"] = { escape = true, close = false, pair = "{}" },

		['"'] = { escape = true, close = false, pair = '""' },
		["'"] = { escape = true, close = false, pair = "''" },
		["`"] = { escape = true, close = true, pair = "``" },
	},
	options = {
		disabled_filetypes = {},
		disable_when_touch = true,
	},
})
