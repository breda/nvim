-- Leader
vim.g.mapleader = " "

-- Search & find
-- See: telescope.lua
-- See: harpoon.lua

-- Splits
vim.keymap.set('n', '<leader>s\"',vim.cmd.FocusSplitDown)
vim.keymap.set('n', '<leader>s%', vim.cmd.FocusSplitLeft)
vim.keymap.set('n', '<leader>l', "<C-w>l")
vim.keymap.set('n', '<leader>h', "<C-w>h")
vim.keymap.set('n', '<leader>j', "<C-w>j")
vim.keymap.set('n', '<leader>k', "<C-w>k")
vim.keymap.set('n', '<leader>se', vim.cmd.FocusEqualise)
vim.keymap.set('n', '<leader>sz', vim.cmd.FocusMaximise)


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

-- Annotations (docblocks... etc.)
vim.keymap.set("n", "<leader>ca", function() require('neogen').generate() end);

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
vim.keymap.set("n", "<leader>qq", function()  require("nvim-smartbufs").close_current_buffer() end)


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

-- Go
vim.keymap.set("n", "<leader>gt", vim.cmd.GoAddTag)


-- Misc
vim.keymap.set("n", "<leader>md", vim.cmd.ZenMode)

-- Update colorscheme to something bright. 
-- In order to revert it back to the original in colors.lua you need to restart
vim.keymap.set("n", "<leader>mcl", function()
    vim.cmd[[colorscheme soda]]
end)

