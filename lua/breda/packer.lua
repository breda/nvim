vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer
	use 'wbthomason/packer.nvim'

	-- Telescope
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- Colorscheme
	use { "catppuccin/nvim", as = "catppuccin" }
    use ('DAddYE/soda.vim')

	-- Status bar 
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
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

	-- Distraction free
	use ("Pocco81/true-zen.nvim")

	-- Harpoon to qiuck switch
	use ('ThePrimeagen/harpoon')
    use ('gaborvecsei/memento.nvim')
    use ('johann2357/nvim-smartbufs')

	-- NerdTree
	use ('preservim/nerdtree')
    use ('ryanoasis/vim-devicons')

	-- PHP dev 
	use ('phpactor/phpactor')

	-- Misc
	use ('mhinz/vim-startify')
    use ('karb94/neoscroll.nvim')
    use ("folke/twilight.nvim")
	use({
		"folke/noice.nvim",
		requires = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		}
	})


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
end)
