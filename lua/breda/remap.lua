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

-- PHP
vim.keymap.set("n", "<leader>pd", vim.cmd.PhpactorCopyFile)
vim.keymap.set("n", "<leader>pm", vim.cmd.PhpactorMoveFile)
vim.keymap.set("n", "<leader>pn", vim.cmd.PhpactorClassNew)
vim.keymap.set("n", "<leader>pi", vim.cmd.PhpactorTransform)
vim.keymap.set("n", "<leader>pu", vim.cmd.PhpactorImportClass)
vim.keymap.set("n", "<leader>pe", vim.cmd.PhpactorClassExpand)
--vim.keymap.set("n", "<leader>pc", vim.cmd.PhpactorTransform)
vim.keymap.set("n", "<leader>pp", vim.cmd.PhpactorContextMenu)

-- Misc
vim.keymap.set("n", "<leader>md", vim.cmd.Goyo)
