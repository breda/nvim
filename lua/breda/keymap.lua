local telescope = require('telescope.builtin')
local smartbufs = require('nvim-smartbufs')
local theme = require("kanagawa")

local lsp = vim.lsp
local cmd = vim.cmd

return {
    -----------------------------
    -- Find stuff
    -----------------------------
    { description = "Open file fuzzy finder (All files)", modes = "n", keys = "<leader>fa", run = telescope.find_files, opts = {}},
    { description = "Open file fuzzy finder (Git files)", modes = "n", keys = "<leader>ff", run = telescope.git_files, opts = {}},
    -- { description = "Search for word (Grep)", modes = "n", keys = "<leader>fg", run = function() telescope.grep_string({ search = vim.fn.input("Grep: ") }) end, opts = {}},

    -----------------------------
    -- File tree
    -----------------------------
    { description = "Toggle File Tree", modes = "n", keys = "<leader>tt", run = cmd.NvimTreeFocus },
    { description = "Locate file in File Tree", modes = "n", keys = "<leader>tf", run = cmd.NvimTreeFindFile, opts = {}},

    -----------------------------
    -- Motion and actions
    -----------------------------
    { description = "Yank/copy to clipboard", modes = {"n", "v"}, keys = "<A-y>", run = "\"+y", opts = {}},
    { description = "Paste from clipboard", modes = {"n", "v"}, keys = "<A-p>", run = "\"+p", opts = {}},

    { description = "Move block up", modes = "v", keys = "<A-k>", run = ":m '<-2<CR>gv=gv", opts = { silent = true }},
    { description = "Move block down", modes = "v", keys = "<A-j>", run = ":m '>+1<CR>gv=gv", opts = { silent = true }},
    { description = "Move block to right (indent)", modes = "v", keys = "<A-l>", run = ">gv", opts = { silent = true }},
    { description = "Move block to left (de-indent)", modes = "v", keys = "<A-h>", run = "<gv", opts = { silent = true }},

    -----------------------------
    -- Split management
    -----------------------------
    { description = "Split left (vertical)", modes = "n", keys = "<leader>s\"", run = cmd.FocusSplitLeft, opts = {}},
    { description = "Split down (horizontal)", modes = "n", keys = "<leader>s%", run = cmd.FocusSplitDown, opts = {}},

    { description = "Split Maximize", modes = "n", keys = "<leader>sz", run = cmd.FocusMaximise, opts = {}},
    { description = "Split Equalise", modes = "n", keys = "<leader>se", run = cmd.FocusEqualise, opts = {}},

    -----------------------------
    -- Buffer management
    -----------------------------
    { description = "Close current buffer", modes = "n", keys = "<leader>x", run = function()  smartbufs.close_current_buffer() end, opts = {}},
    { description = "Buffers selection", modes = "n", keys = "<leader>&", run = function()  smartbufs.goto_buffer(1) end, opts = {}},
    { description = "Buffers selection", modes = "n", keys = "<leader>é", run = function()  smartbufs.goto_buffer(2) end, opts = {}},
    { description = "Buffers selection", modes = "n", keys = "<leader>\"", run = function()  smartbufs.goto_buffer(3) end, opts = {}},
    { description = "Buffers selection", modes = "n", keys = "<leader>'", run = function()  smartbufs.goto_buffer(4) end, opts = {}},
    { description = "Buffers selection", modes = "n", keys = "<leader>(", run = function()  smartbufs.goto_buffer(5) end, opts = {}},
    { description = "Buffers selection", modes = "n", keys = "<leader>-", run = function()  smartbufs.goto_buffer(6) end, opts = {}},
    { description = "Buffers selection", modes = "n", keys = "<leader>è", run = function()  smartbufs.goto_buffer(7) end, opts = {}},
    { description = "Buffers selection", modes = "n", keys = "<leader>_", run = function()  smartbufs.goto_buffer(8) end, opts = {}},
    { description = "Buffers selection", modes = "n", keys = "<leader>ç", run = function()  smartbufs.goto_buffer(9) end, opts = {}},

    -----------------------------
    -- LSP & Languages
    -----------------------------
    { description = "Rename symbol", modes = "n", keys = "<leader>lr", run = lsp.buf.rename, opts = {}},
    { description = "Find definition (LSP)", modes = "n", keys = "<leader>fd", run = lsp.buf.definition, opts = {}},

    -- PHP
    { description = "PHP: Duplicate class", modes = "n", keys = "<leader>pd", run = cmd.PhpactorCopyFile, opts = {}},
    { description = "PHP: Rename class", modes = "n", keys = "<leader>pm", run = cmd.PhpactorMoveFile, opts = {}},
    { description = "PHP: New class", modes = "n", keys = "<leader>pn", run = cmd.PhpactorClassNew, opts = {}},
    { description = "PHP: Transform", modes = "n", keys = "<leader>pi", run = cmd.PhpactorTransform, opts = {}},
    { description = "PHP: Import", modes = "n", keys = "<leader>pu", run = cmd.PhpactorImportClass, opts = {}},
    { description = "PHP: Expand FQCN", modes = "n", keys = "<leader>pe", run = cmd.PhpactorClassExpand, opts = {}},
    { description = "PHP: Open context menu", modes = "n", keys = "<leader>pp", run = cmd.PhpactorContextMenu, opts = {}},
    { description = "PHP: Add DocBlock", modes = "n", keys = "<leader>pc", run = vim.fn['pdv#DocumentCurrentLine'], opts = {}},

    -- Go
    { description = "Go: Add struct tags", modes = "n", keys = "<leader>gt", run = cmd.GoAddTag, opts = {}},


    -----------------------------
    -- Utilities
    -----------------------------
    -- Modes
    { description = "Mode: Toggle Zen", modes = "n", keys = "<leader>mz", run = cmd.ZenMode, opts = {}},
    { description = "Mode: Toggle Dark Theme", modes = "n", keys = "<leader>md", run = function() theme.load("dragon") end, opts = {}},
    { description = "Mode: Toggle Light Theme", modes = "n", keys = "<leader>ml", run = function() theme.load("lotus") end, opts = {}},


    -----------------------------
    -- Remaps and "not allowed"
    -----------------------------
    { description = "Remap next block", modes = "n", keys = "<A-z>", run = "{", opts = { silent = true, noremap = true }},
    { description = "Remap previous block", modes = "n", keys = "<A-a>", run = "}", opts = { silent = true, noremap = true }},

    { description = "Arrow keys are not allowed", modes = {"n", "v"}, keys = "<Left>", run = "", opts = { silent = true, noremap = true }},
    { description = "Arrow keys are not allowed", modes = {"n", "v"}, keys = "<Right>", run = "", opts = { silent = true, noremap = true }},
    { description = "Arrow keys are not allowed", modes = {"n", "v"}, keys = "<Up>", run = "", opts = { silent = true, noremap = true }},
    { description = "Arrow keys are not allowed", modes = {"n", "v"}, keys = "<Down>", run = "", opts = { silent = true, noremap = true }},

}
