--
-- theme config (colorscheme)
--
require("kanagawa").setup({
	compile = false, -- enable compiling the colorscheme
	undercurl = true, -- enable undercurls
	commentStyle = { italic = true },
	functionStyle = {},
	keywordStyle = { italic = true },
	statementStyle = { bold = true },
	typeStyle = {},
	transparent = false, -- do not set background color
	dimInactive = false, -- dim inactive window `:h hl-NormalNC`
	terminalColors = true, -- define vim.g.terminal_color_{0,17}
	colors = { -- add/modify theme and palette colors
		palette = {
			dragonBlack0 = "#0f111a",
			dragonBlack1 = "#12120f",
			dragonBlack2 = "#1D1C19",
			-- dragonBlack3 = "#0f111a", -- Updated to match terminal theme
			-- dragonBlack4 = "#0f111a", -- Updated to match terminal theme
			dragonBlack3 = "#13151F", -- Updated to match terminal theme
			dragonBlack4 = "#13151F", -- Updated to match terminal theme
			dragonBlack5 = "#393836",
			dragonBlack6 = "#625e5a",
		},
		theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
	},
	overrides = function()
		return {}
	end,
	theme = "dragon",
	background = {
		dark = "dragon",
		light = "lotus",
	},
})

-- setup must be called before loading
vim.cmd("colorscheme catppuccin")
