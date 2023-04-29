local telescope = require('telescope.builtin')


----------------------------------------------------------
------- FIND ---------------------------------------------
----------------------------------------------------------

-- Find all files
-- vim.keymap.set('n', '<leader>fa', telescope.find_files, {})

-- Find in git files
-- vim.keymap.set('n', '<leader>ff', telescope.git_files, {})

-- Find by grepping
-- vim.keymap.set('n', '<leader>fg', function()
-- 	telescope.grep_string({ search = vim.fn.input("Grep: ") })
-- end)

-- Find symbol definition
-- vim.keymap.set('n', '<leader>fd', vim.lsp.buf.definition)

-- Find signature
vim.keymap.set('n', '<leader>fs', vim.lsp.buf.signature_help)


----------------------------------------------------------
------- SHOW/HIDE ----------------------------------------
----------------------------------------------------------

-- Tree toggle
-- vim.keymap.set('n', '<leader>tt', vim.cmd.NvimTreeFocus)

-- Tree find
-- vim.keymap.set('n', '<leader>tf', vim.cmd.NvimTreeFindFile)


----------------------------------------------------------
------- NAVIGATION ---------------------------------------
----------------------------------------------------------
-- Paste
vim.keymap.set('x', "<leader>p", "\"_dP")

-- Yank & past to clipboard
-- vim.keymap.set({"n", "v"}, "<A-y>", "\"+y")
-- vim.keymap.set({"n", "v"}, "<A-p>", "\"+p")

-- Moing blocks
-- vim.keymap.set("v", "<A-h>", "<gv")
-- vim.keymap.set("v", "<A-l>", ">gv")
-- vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
-- vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })

-- Arrow keys don't do shit'
-- vim.keymap.set({"n", "v"}, "<Left>", "")
-- vim.keymap.set({"n", "v"}, "<Right>", "")
-- vim.keymap.set({"n", "v"}, "<Down>", "");
-- vim.keymap.set({"n", "v"}, "<Up>", "");

-- Moving between blocks
-- vim.keymap.set("n", "<A-z>", "}")
-- vim.keymap.set("n", "<A-a>", "{")

----------------------------------------------------------
------- SPLITS -------------------------------------------
----------------------------------------------------------

-- Create splits
-- vim.keymap.set('n', '<leader>s\"',vim.cmd.FocusSplitDown)
-- vim.keymap.set('n', '<leader>s%', vim.cmd.FocusSplitLeft)

-- Equalize & Maximize
vim.keymap.set('n', '<leader>se', vim.cmd.FocusEqualise)
vim.keymap.set('n', '<leader>sz', vim.cmd.FocusMaximise)

-- Navigation acroos splits
vim.keymap.set('n', '<leader>l', "<C-w>l")
vim.keymap.set('n', '<leader>h', "<C-w>h")
vim.keymap.set('n', '<leader>j', "<C-w>j")
vim.keymap.set('n', '<leader>k', "<C-w>k")


----------------------------------------------------------
------- BUFFERS ------------------------------------------
----------------------------------------------------------
--
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
vim.keymap.set("n", "<leader>x", function()  require("nvim-smartbufs").close_current_buffer() end)

-- Mark buffer for fast switch
vim.keymap.set('n', '<leader>bm', function()
    require("harpoon.mark").add_file()
end)

-- Next buffer
vim.keymap.set('n', '<leader>bn', function()
    require("harpoon.ui").nav_next()
end)

-- Prev buffer
vim.keymap.set('n', '<leader>bp', function()
    require("harpoon.ui").nav_prev()
end)

-- List buffers
vim.keymap.set('n', '<leader>bl', function()
    require("harpoon.ui").toggle_quick_menu()
end)

----------------------------------------------------------
------- LSP ----------------------------------------------
----------------------------------------------------------

-- Annotations
vim.keymap.set("n", "<leader>ca", function() require('neogen').generate() end);

-- Rename symbol
vim.keymap.set('n', '<leader>rs', vim.lsp.buf.rename)


-- PHP 
vim.keymap.set("n", "<leader>pd", vim.cmd.PhpactorCopyFile)
vim.keymap.set("n", "<leader>pm", vim.cmd.PhpactorMoveFile)
vim.keymap.set("n", "<leader>pn", vim.cmd.PhpactorClassNew)
vim.keymap.set("n", "<leader>pi", vim.cmd.PhpactorTransform)
vim.keymap.set("n", "<leader>pu", vim.cmd.PhpactorImportClass)
vim.keymap.set("n", "<leader>pe", vim.cmd.PhpactorClassExpand)
vim.keymap.set("n", "<leader>pp", vim.cmd.PhpactorContextMenu)
vim.keymap.set("n", "<leader>pc", vim.fn['pdv#DocumentCurrentLine'])

-- Go
vim.keymap.set("n", "<leader>gt", vim.cmd.GoAddTag)

--------------------------------------
-------------- Misc ------------------
--------------------------------------

-- Toggle zen mode
vim.keymap.set("n", "<leader>mz", vim.cmd.ZenMode)

-- Light mode is "lotus" by kanagawa
vim.keymap.set("n", "<leader>ml", function()
    require("kanagawa").load("lotus")
end)

-- Dark mode is "dragon" by kanagawa
vim.keymap.set("n", "<leader>md", function()
    require("kanagawa").load("dragon")
end)


