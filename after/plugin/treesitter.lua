--
-- treesitter, of course
--
require("nvim-treesitter.configs").setup({
	-- A list of parser names, or "all"
	ensure_installed = { "lua", "bash", "go", "jsonc", "php", "proto", "yaml", "python" },

	incremental_selection = {
		enable = true,
		keymaps = {
			init_selection = "<C-S-o>", -- set to `false` to disable one of the mappings
			node_incremental = "<C-S-o>",
			scope_incremental = false,
			node_decremental = "<C-S-l>",
		},
	},

	indent = {
		enable = true,
	},

	-- Install parsers synchronously (only applied to `ensure_installed`)
	sync_install = false,

	-- Automatically install missing parsers when entering buffer
	-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
	auto_install = true,

	highlight = {
		-- `false` will disable the whole extension
		enable = false,

		-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
		-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
		-- Using this option may slow down your editor, and you may see some duplicate highlights.
		-- Instead of true it can also be a list of languages
		additional_vim_regex_highlighting = false,
	},
})
