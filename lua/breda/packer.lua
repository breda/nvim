vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer
	use 'wbthomason/packer.nvim'

	-- Telescope
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- Colorschemes
	--use { "catppuccin/nvim", as = "catppuccin" }
	--use {'nyoom-engineering/oxocarbon.nvim'}
	-- use ('marko-cerovac/material.nvim')
	-- use ('DAddYE/soda.vim')
	use ("rebelot/kanagawa.nvim")

	-- Status bar 
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	-- Dashboard
	use {
  		'glepnir/dashboard-nvim',
		event = 'VimEnter',
		config = function() require('breda/dashboard') end,
  		requires = {'nvim-tree/nvim-web-devicons'}
	}

	-- Motion
	use {
		'ggandor/leap.nvim',
		requires = {"tpope/vim-repeat"},
	}

	-- Treesitter
	use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

    -- Autoclose & auto-indent
    use 'm4xshen/autoclose.nvim'
    use 'nmac427/guess-indent.nvim'

    -- Annotations
    use ("danymat/neogen")

	-- Undotree
	use ('mbbill/undotree')

	-- Fugitive
	use ('tpope/vim-fugitive')
	use ('lewis6991/gitsigns.nvim')

	-- Distraction free
	use ('folke/zen-mode.nvim')

	-- Quick switch
	use ('ThePrimeagen/harpoon')
    use ('gaborvecsei/memento.nvim')

	-- Buffer management
    use ('johann2357/nvim-smartbufs')

	-- Tmux + Nvim 
	use ('christoomey/vim-tmux-navigator')
	use ('tpope/vim-obsession')

	-- File tree
	use ('echasnovski/mini.base16')
	use ('nvim-tree/nvim-web-devicons')
	use ('nvim-tree/nvim-tree.lua')

	-- Splits 
	use ('beauwilliams/focus.nvim')

	-- Dev
	use ('tpope/vim-commentary')

	-- PHP dev 
	use ('phpactor/phpactor')
	use ('tobyS/vmustache')
	use ('tobyS/pdv')

	-- Go dev
	use ('ray-x/go.nvim')

	-- Misc
    use ('karb94/neoscroll.nvim')
    use ("folke/twilight.nvim")
	use({
		"folke/noice.nvim",
		requires = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		}
	})

	-- Learning & utils
	use ('ThePrimeagen/vim-be-good')


	-- LSP setup: https://github.com/VonHeikemen/lsp-zero.nvim
	use {
		'VonHeikemen/lsp-zero.nvim',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},


			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-nvim-lua'},

			-- Snippets
			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'},
		}
	}

	-- LSP utils
	use ('onsails/lspkind.nvim')
	use ('folke/trouble.nvim')
end)
