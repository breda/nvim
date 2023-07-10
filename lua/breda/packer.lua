vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	------------------------------------------------------------------------------------------------------------------------------------------------------
	---- Core --------------------------------------------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------------------------------------------------
	use("wbthomason/packer.nvim")

	-- Plenary
	use("nvim-lua/plenary.nvim")

	-- Treesitter
	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })

	-- Undotree
	use("mbbill/undotree")

	-- Telescope & plugins
	use({ "nvim-telescope/telescope.nvim", tag = "0.1.2", requires = { { "nvim-lua/plenary.nvim" } } })
	use("debugloop/telescope-undo.nvim")

	-- Nvim & Tmux integration
	use("christoomey/vim-tmux-navigator")

	-- Vim sessions
	use("tpope/vim-obsession")

	-- Split management
	use("beauwilliams/focus.nvim")

	-- Test runner
	use("vim-test/vim-test")

	------------------------------------------------------------------------------------------------------------------------------------------------------
	---- UI ----------------------------------------------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------------------------------------------------
	-- Improvements
	use({ "folke/noice.nvim", requires = { "MunifTanjim/nui.nvim" } })
	use("stevearc/dressing.nvim")
	use("rcarriga/nvim-notify")

	-- File tree
	use("nvim-tree/nvim-web-devicons")
	use("nvim-tree/nvim-tree.lua")
	use("jghauser/mkdir.nvim")

	-- Dashboard (at startup)
	use({
		"glepnir/dashboard-nvim",
		event = "VimEnter",
		config = function()
			require("breda/dashboard")
		end,
		requires = { "nvim-tree/nvim-web-devicons" },
	})

	-- Colorscheme
	use("rebelot/kanagawa.nvim")

	-- Status bar
	use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons", opt = true } })
	use({ "catppuccin/nvim", as = "catppuccin" })

	-- Distraction free
	use("Pocco81/true-zen.nvim")

	------------------------------------------------------------------------------------------------------------------------------------------------------
	---- Editor ------------------------------------------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------------------------------------------------

	-- Autoclose & auto-indent
	use("m4xshen/autoclose.nvim")
	use("nmac427/guess-indent.nvim")

	-- surround stuff
	use("kylechui/nvim-surround")

	-- Comments and toggling stuff
	use("numToStr/Comment.nvim")
	use({ "nguyenvukhang/nvim-toggler" })

	-- Git
	use("lewis6991/gitsigns.nvim")

	-- Harpoon
	use("ThePrimeagen/harpoon")

	------------------------------------------------------------------------------------------------------------------------------------------------------
	---- Utils -------------------------------------------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------------------------------------------------
	-- Markdown preview
	use({ "ellisonleao/glow.nvim" })

	-- Keep bad habits away
	use("m4xshen/hardtime.nvim")

	------------------------------------------------------------------------------------------------------------------------------------------------------
	---- LSP Base ----------------------------------------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------------------------------------------------
	-- LSP setup: https://github.com/VonHeikemen/lsp-zero.nvim
	use({
		"VonHeikemen/lsp-zero.nvim",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" },
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },

			-- Autocompletion sources
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-nvim-lua" },
			{ "FelipeLema/cmp-async-path" },
			{ "andersevenrud/cmp-tmux" },

			-- Snippets
			{ "saadparwaiz1/cmp_luasnip" },
			{ "L3MON4D3/LuaSnip" },
			{ "rafamadriz/friendly-snippets" },
			{ "honza/vim-snippets" },
		},
	})

	------------------------------------------------------------------------------------------------------------------------------------------------------
	---- LSP Utils ---------------------------------------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------------------------------------------------
	-- LSP utils
	use("onsails/lspkind.nvim")
	use("folke/trouble.nvim")

	-- A must have
	use("jose-elias-alvarez/null-ls.nvim")

	-- PHP
	use("phpactor/phpactor")
	use("tobyS/vmustache")
	use("tobyS/pdv")

	-- Go
	use("ray-x/go.nvim")
end)
