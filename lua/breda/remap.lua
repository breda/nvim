-- Leader
vim.g.mapleader = " "

-- Search & find
-- See: telescope.lua
-- See: harpoon.lua

-- Buffer mappings
vim.keymap.set('n', '<leader>bm', function() 
    require("harpoon.mark").add_file()
end)

vim.keymap.set('n', '<leader>bn', function() 
    require("harpoon.ui").nav_next()
end)

vim.keymap.set('n', '<leader>bp', function() 
    require("harpoon.ui").nav_prev()
end)

-- NerdTree
vim.keymap.set("n", "<leader>fl", vim.cmd.NERDTreeFocus)
vim.keymap.set("n", "<leader>ft", vim.cmd.NERDTreeToggle)
vim.keymap.set("n", "<leader>ff", vim.cmd.NERDTreeFind)

-- Navigation (NerdTree)
--vim.keymap.set("n", "<leader>nf", vim.cmd.NERDTreeFocus)
vim.keymap.set("n", "<leader>nn", vim.cmd.NERDTreeToggle)
vim.keymap.set("n", "<leader>nf", vim.cmd.NERDTreeFind)
vim.keymap.set("n", "<A-S-o>", function() 
    require("memento").toggle()
end)

-- Siwtch between buffers with the numbers line
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

-- PHP
vim.keymap.set("n", "<leader>pd", vim.cmd.PhpactorCopyFile)
vim.keymap.set("n", "<leader>pm", vim.cmd.PhpactorMoveFile)
vim.keymap.set("n", "<leader>pn", vim.cmd.PhpactorClassNew)
vim.keymap.set("n", "<leader>pi", vim.cmd.PhpactorTransform)
vim.keymap.set("n", "<leader>pu", vim.cmd.PhpactorImportClass)
vim.keymap.set("n", "<leader>pe", vim.cmd.PhpactorClassExpand)
--vim.keymap.set("n", "<leader>pc", vim.cmd.PhpactorTransform)
vim.keymap.set("n", "<leader>pp", vim.cmd.PhpactorContextMenu)
vim.keymap.set("n", "<leader>pc", vim.cmd.PhpDocPasteComment)

-- Misc
vim.keymap.set("n", "<leader>z", vim.cmd.TZFocus)
vim.keymap.set("n", "<leader>md", vim.cmd.TZAtaraxis)

-- Update colorscheme to something bright. 
-- In order to revert it back to the original in colors.lua you need to restart
vim.keymap.set("n", "<leader>mcl", function() 
    vim.cmd[[colorscheme soda]]
end)

