-- Leader
vim.g.mapleader = "!"


-- Remaps
--
--
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

