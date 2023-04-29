local telescope = require('telescope.builtin')

local lsp = vim.lsp
local cmd = vim.cmd

return {
    -----------------------------
    -- Find stuff
    -----------------------------
    { description = "Open file fuzzy finder (All files)", modes = "n", keys = "<leader>fa", run = telescope.find_files, opts = {}},
    { description = "Open file fuzzy finder (Git files)", modes = "n", keys = "<leader>ff", run = telescope.git_files, opts = {}},
    { description = "Search for word (Grep)", modes = "n", keys = "<leader>fg", run = function() telescope.grep_string({ search = vim.fn.input("Grep: ") }) end, opts = {}},
    { description = "Find definition (LSP)", modes = "n", keys = "<leader>fd", run = lsp.buf.definition, opts = {}},

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

    { description = "Locate file in File Tree", modes = "n", keys = "<leader>tf", run = cmd.NvimTreeFindFile, opts = {}},
    { description = "Locate file in File Tree", modes = "n", keys = "<leader>tf", run = cmd.NvimTreeFindFile, opts = {}},
    { description = "Locate file in File Tree", modes = "n", keys = "<leader>tf", run = cmd.NvimTreeFindFile, opts = {}},



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


    -----------------------------
    -- Languages
    -----------------------------


    -----------------------------
    -- Utilities
    -----------------------------


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
