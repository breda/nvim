local telescope = require('telescope.builtin')

-- leader
vim.g.mapleader = " "

----------------------------------------------------------
------- FIND ---------------------------------------------
----------------------------------------------------------

-- Find all files
vim.keymap.set('n', '<leader>fa', telescope.find_files, {})

-- Find in git files
vim.keymap.set('n', '<leader>ff', telescope.git_files, {})

-- Find by grepping
vim.keymap.set('n', '<leader>fg', function()
	telescope.grep_string({ search = vim.fn.input("Grep: ") })
end)

-- Find symbol definition
vim.keymap.set('n', '<leader>fd', vim.lsp.buf.definition)

-- Find signature
vim.keymap.set('n', '<leader>fs', vim.lsp.buf.signature_help)


----------------------------------------------------------
------- SHOW/HIDE ----------------------------------------
----------------------------------------------------------

-- Tree toggle
vim.keymap.set('n', '<leader>tt', vim.cmd.NERDTreeToggle)

-- Tree find
vim.keymap.set('n', '<leader>tf', vim.cmd.NERDTreeFind)



----------------------------------------------------------
------- SPLITS -------------------------------------------
----------------------------------------------------------

-- Create splits
vim.keymap.set('n', '<leader>s\"',vim.cmd.FocusSplitDown)
vim.keymap.set('n', '<leader>s%', vim.cmd.FocusSplitLeft)

-- Equalize & Maximize
vim.keymap.set('n', '<leader>se', vim.cmd.FocusEqualise)
vim.keymap.set('n', '<leader>sz', vim.cmd.FocusMaximise)



----------------------------------------------------------
------- BUFFERS ------------------------------------------
----------------------------------------------------------

-- Next buffer
vim.keymap.set('n', '<C-Tab>', function()
    require("harpoon.ui").nav_next()
end)

-- Prev buffer
vim.keymap.set('n', '<C-S-Tab>', function()
    require("harpoon.ui").nav_prev()
end)




----------------------------------------------------------
------- RENAME -------------------------------------------
----------------------------------------------------------

-- Rename symbol
vim.keymap.set('n', '<leader>rs', vim.lsp.buf.rename)



--------------------------------------
------- Search & Find ----------------
--------------------------------------

vim.keymap.set('n', '<A-p>', telescope.find_files, {})
vim.keymap.set('n', '<leader>sf', telescope.git_files, {})
vim.keymap.set('n', '<leader>ss', function()
	telescope.grep_string({ search = vim.fn.input("Grep: ") })
end)

--------------------------------------
------ Navigation
--------------------------------------
vim.keymap.set('n', 'm', 'l')
vim.keymap.set('n', 'l', 'j')
vim.keymap.set('n', 'k', 'h')
vim.keymap.set('n', 'o', 'k')
vim.keymap.set('n', '\'', '%')

--------------------------------------
------ Splits & Windows
--------------------------------------

vim.keymap.set('n', '<leader>s\"',vim.cmd.FocusSplitDown)
vim.keymap.set('n', '<leader>s%', vim.cmd.FocusSplitLeft)
vim.keymap.set('n', '<leader>l', "<C-w>l")
vim.keymap.set('n', '<leader>h', "<C-w>h")
vim.keymap.set('n', '<leader>j', "<C-w>j")
vim.keymap.set('n', '<leader>k', "<C-w>k")
vim.keymap.set('n', '<leader>se', vim.cmd.FocusEqualise)
vim.keymap.set('n', '<leader>sz', vim.cmd.FocusMaximise)

--------------------------------------
------- Buffers ----------------------
--------------------------------------

-- Switch to alternate file (previous one)
vim.keymap.set("n", "!!", "<C-6>")

-- Use leader+number to switch between buffers
vim.keymap.set("n", "<leader>&", function()  require("nvim-smartbufs").goto_buffer(1) end)
vim.keymap.set("n", "<leader>é", function()  require("nvim-smartbufs").goto_buffer(2) end)
vim.keymap.set("n", "<leader>\"", function()  require("nvim-smartbufs").goto_buffer(3) end)
vim.keymap.set("n", "<leader>'", function()  require("nvim-smartbufs").goto_buffer(4) end)
vim.keymap.set("n", "<leader>(", function()  require("nvim-smartbufs").goto_buffer(5) end)
vim.keymap.set("n", "<leader>-", function()  require("nvim-smartbufs").goto_buffer(6) end)
vim.keymap.set("n", "<leader>è", function()  require("nvim-smartbufs").goto_buffer(7) end)
vim.keymap.set("n", "<leader>_", function()  require("nvim-smartbufs").goto_buffer(8) end)
vim.keymap.set("n", "<leader>ç", function()  require("nvim-smartbufs").goto_buffer(9) end)

-- Close buffers with numbers line
vim.keymap.set("n", "<leader>bc&", function()  require("nvim-smartbufs").close_buffer(1) end)
vim.keymap.set("n", "<leader>bcé", function()  require("nvim-smartbufs").close_buffer(2) end)
vim.keymap.set("n", "<leader>bc\"", function()  require("nvim-smartbufs").close_buffer(3) end)
vim.keymap.set("n", "<leader>bc'", function()  require("nvim-smartbufs").close_buffer(4) end)
vim.keymap.set("n", "<leader>bc(", function()  require("nvim-smartbufs").close_buffer(5) end)
vim.keymap.set("n", "<leader>bc-", function()  require("nvim-smartbufs").close_buffer(6) end)
vim.keymap.set("n", "<leader>bcè", function()  require("nvim-smartbufs").close_buffer(7) end)
vim.keymap.set("n", "<leader>bc_", function()  require("nvim-smartbufs").close_buffer(8) end)
vim.keymap.set("n", "<leader>bcç", function()  require("nvim-smartbufs").close_buffer(9) end)
vim.keymap.set("n", "<leader>qq", function()  require("nvim-smartbufs").close_current_buffer() end)

vim.keymap.set('n', '<leader>bm', function()
    require("harpoon.mark").add_file()
end)

vim.keymap.set('n', '<leader>bn', function()
    require("harpoon.ui").nav_next()
end)

vim.keymap.set('n', '<leader>bp', function()
    require("harpoon.ui").nav_prev()
end)

--------------------------------------
--------------- PHP ------------------
--------------------------------------
vim.keymap.set("n", "<leader>pd", vim.cmd.PhpactorCopyFile)
vim.keymap.set("n", "<leader>pm", vim.cmd.PhpactorMoveFile)
vim.keymap.set("n", "<leader>pn", vim.cmd.PhpactorClassNew)
vim.keymap.set("n", "<leader>pi", vim.cmd.PhpactorTransform)
vim.keymap.set("n", "<leader>pu", vim.cmd.PhpactorImportClass)
vim.keymap.set("n", "<leader>pe", vim.cmd.PhpactorClassExpand)
--vim.keymap.set("n", "<leader>pc", vim.cmd.PhpactorTransform)
vim.keymap.set("n", "<leader>pp", vim.cmd.PhpactorContextMenu)
vim.keymap.set("n", "<leader>pc", vim.cmd.PhpDocPasteComment)

--------------------------------------
-------------- Go --------------------
--------------------------------------
vim.keymap.set("n", "<leader>gt", vim.cmd.GoAddTag)

--------------------------------------
------- File Tree  -------------------
--------------------------------------
vim.keymap.set("n", "<leader>nf", vim.cmd.NERDTreeFocus)
vim.keymap.set("n", "<leader>nn", vim.cmd.NERDTreeToggle)
vim.keymap.set("n", "<leader>nf", vim.cmd.NERDTreeFind)
vim.keymap.set("n", "<A-S-o>", function()
    require("memento").toggle()
end)

--------------------------------------
-------------- Misc ------------------
--------------------------------------

-- Annotations
vim.keymap.set("n", "<leader>ca", function() require('neogen').generate() end);

-- Toggle zen mode
vim.keymap.set("n", "<leader>md", vim.cmd.ZenMode)

-- Update colorscheme to something bright. 
-- In order to revert it back to the original in colors.lua you need to restart
vim.keymap.set("n", "<leader>mcl", function()
    vim.cmd[[colorscheme soda]]
end)

