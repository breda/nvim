--
-- This plugin just helps getting rid of bad vim habbits like spamming hjkl keys
--
require("hardtime").setup({
	disabled_filetypes = {
		"qf",
		"netrw",
		"NvimTree",
		"mason",
		"oil",
		"dapui_watches",
		"dapui_stacks",
		"dapui_breakpoints",
		"dapui_scopes",
		"dapui_console",
		"dap-repl",
	},
})
