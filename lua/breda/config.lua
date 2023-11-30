-- leader
vim.g.mapleader = " "

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- Numbers line and relative numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- Live me a cursor line
vim.opt.cursorline = true

-- Healthy tabs: 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Smart indenting
vim.opt.smartindent = true

-- Turn off cmd & status
vim.opt.cmdheight = 1
vim.opt.laststatus = 0
vim.opt.showmode = false
vim.opt.ruler = false

-- No line wrap please
vim.opt.wrap = false

-- Use undotree for undos
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Just awesome
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Scrolling goodness
vim.opt.scrolloff = 12
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- Fast update time
vim.opt.updatetime = 50

-- No color column
vim.opt.colorcolumn = "0"
