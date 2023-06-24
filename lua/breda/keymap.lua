local telescope = require('telescope.builtin')
local telescopeUndo = require("telescope").extensions.undo
local smartbufs = require('nvim-smartbufs')
local theme = require("kanagawa")
local dap = require('dap')

local reach = require('reach')
local reachOpts = require('breda/reach-opts')

local lsp = vim.lsp
local cmd = vim.cmd

return {
    -----------------------------
    -- Find stuff
    -----------------------------
    { description = "Search Old Files", modes = "n", keys = "<leader>ss", run = telescope.oldfiles, opts = {}},
    { description = "Search All Files", modes = "n", keys = "<leader>sf", run = telescope.find_files, opts = {}},
    { description = "Search By Grep", modes = "n", keys = "<leader>sg", run = telescope.live_grep, opts = {}},
    { description = "Search Help", modes = "n", keys = "<leader>sm", run = telescope.help_tags, opts = {}},
    { description = "Search Commands", modes = "n", keys = "<leader>sc", run = telescope.commands, opts = {}},
    { description = "Search Jumplist", modes = "n", keys = "<leader>sj", run = telescope.jumplist, opts = {}},

    -----------------------------
    -- Debugging
    -----------------------------
    { description = "Debugger: Add breakpoint", modes = "n", keys = "<leader>db", run = dap.toggle_breakpoint, opts = {}},
    { description = "Debugger: Continue", modes = "n", keys = "<leader>dc", run = dap.continue, opts = {}},
    { description = "Debugger: Step through code", modes = "n", keys = "<leader>ds", run = dap.step_into, opts = {}},
    { description = "Debugger: Launch REPL", modes = "n", keys = "<leader>dr", run = dap.repl.open, opts = {}},


    -----------------------------
    -- Git
    -----------------------------
    { description = "Git: Show buffer commits", modes = "n", keys = "<leader>gc", run = telescope.git_bcommits, opts = {}},
    { description = "Git: Status", modes = "n", keys = "<leader>gs", run = cmd.Git, opts = {}},

    -----------------------------
    -- File tree
    -----------------------------
    { description = "Toggle File Tree", modes = "n", keys = "<leader>tt", run = cmd.NvimTreeToggle },
    { description = "Focus File Tree", modes = "n", keys = "<leader>tf", run = cmd.NvimTreeFocus },
    { description = "Locate file in Tree", modes = "n", keys = "<leader>tl", run = cmd.NvimTreeFindFile, opts = {}},

    -----------------------------
    -- Motion and actions
    -----------------------------
    { description = "Yank/copy to clipboard", modes = {"n", "v"}, keys = "<A-y>", run = "\"+y", opts = {}},
    { description = "Paste from clipboard", modes = {"n", "v"}, keys = "<A-p>", run = "\"+p", opts = {}},

    { description = "Move block up", modes = "v", keys = "<A-k>", run = ":m '<-2<CR>gv=gv", opts = { silent = true }},
    { description = "Move block down", modes = "v", keys = "<A-j>", run = ":m '>+1<CR>gv=gv", opts = { silent = true }},
    { description = "Move block to right (indent)", modes = "v", keys = "<A-l>", run = ">gv", opts = { silent = true }},
    { description = "Move block to left (de-indent)", modes = "v", keys = "<A-h>", run = "<gv", opts = { silent = true }},

    { description = "J should not move cursor to end", modes = "n", keys = "J", run = "mzJ`z", opts = { silent = true }},

    { description = "Stay in middle of screen when searching", modes = "n", keys = "n", run = "nzzzv", opts = { silent = true }},
    { description = "Stay in middle of screen when searching", modes = "n", keys = "N", run = "nzzzv", opts = { silent = true }},


    -----------------------------
    -- Split management
    -----------------------------
    { description = "Split left (vertical)", modes = "n", keys = "<leader>sv", run = cmd.FocusSplitRight, opts = {}},
    { description = "Split down (horizontal)", modes = "n", keys = "<leader>sh", run = cmd.FocusSplitDown, opts = {}},

    { description = "Split Zoom", modes = "n", keys = "<leader>sb", run = cmd.TZFocus, opts = {}},
    { description = "Split Equalise", modes = "n", keys = "<leader>se", run = cmd.FocusEqualise, opts = {}},

    -----------------------------
    -- Buffer management
    -----------------------------
    { description = "Close current buffer", modes = "n", keys = "<leader>x", run = function()  smartbufs.close_current_buffer() end, opts = {}},
    { description = "Select buffer 1", modes = "n", keys = "<leader>1", run = function()  smartbufs.goto_buffer(1) end, opts = {}},
    { description = "Select buffer 2", modes = "n", keys = "<leader>2", run = function()  smartbufs.goto_buffer(2) end, opts = {}},
    { description = "Select buffer 3", modes = "n", keys = "<leader>3", run = function()  smartbufs.goto_buffer(3) end, opts = {}},
    { description = "Select buffer 4", modes = "n", keys = "<leader>4", run = function()  smartbufs.goto_buffer(4) end, opts = {}},
    { description = "Select buffer 5", modes = "n", keys = "<leader>5", run = function()  smartbufs.goto_buffer(5) end, opts = {}},
    { description = "Select buffer 6", modes = "n", keys = "<leader>6", run = function()  smartbufs.goto_buffer(6) end, opts = {}},
    { description = "Select buffer 7", modes = "n", keys = "<leader>7", run = function()  smartbufs.goto_buffer(7) end, opts = {}},
    { description = "Select buffer 8", modes = "n", keys = "<leader>8", run = function()  smartbufs.goto_buffer(8) end, opts = {}},
    { description = "Select buffer 9", modes = "n", keys = "<leader>9", run = function()  smartbufs.goto_buffer(9) end, opts = {}},

    { description = "Buffers quick switch", modes = "n", keys = "<leader>b", run = function() reach.buffers(reachOpts) end, opts = {}},
    { description = "Marks quick switch", modes = "n", keys = "<leader>m", run = function() reach.marks(reachOpts) end, opts = {}},

    -----------------------------
    -- LSP & Languages
    -----------------------------
    { description = "Toggle undotree", modes = "n", keys = "<leader>u", run = function () telescopeUndo.undo() end, opts = {}},
    { description = "LSP: code actions", modes = "n", keys = "<leader>la", run = lsp.buf.code_action, opts = {}},
    { description = "LSP: rename symbol", modes = "n", keys = "<leader>lu", run = lsp.buf.rename, opts = {}},
    { description = "LSP: annotate", modes = "n", keys = "<leader>lc", run = cmd.Neogen, opts = {}},

    { description = "LSP: list symbols", modes = "n", keys = "<leader>ls", run = telescope.treesitter, opts = {}},
    { description = "LSP: list definitions", modes = "n", keys = "<leader>ld", run = telescope.lsp_definitions, opts = {}},
    { description = "LSP: list type definitions", modes = "n", keys = "<leader>lt", run = telescope.lsp_type_definitions, opts = {}},
    { description = "LSP: list references", modes = "n", keys = "<leader>lr", run = telescope.lsp_references, opts = {}},
    { description = "LSP: list incoming calls", modes = "n", keys = "<leader>lic", run = telescope.lsp_incoming_calls, opts = {}},
    { description = "LSP: list outgoing calls", modes = "n", keys = "<leader>loc", run = telescope.lsp_outgoing_calls, opts = {}},
    { description = "LSP: list implementations", modes = "n", keys = "<leader>li", run = telescope.lsp_implementations, opts = {}},
    { description = "LSP: list diagnostics", modes = "n", keys = "<leader>lg", run = telescope.diagnostics, opts = {}},
    { description = "LSP: format", modes = "n", keys = "<leader>lf", run = lsp.buf.format, opts = {}},

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

    -- Tests
    { description = "Run test: latest", modes = "n", keys = "<leader>rr", run = cmd.TestLast, opts = {}},
    { description = "Run test: nearest", modes = "n", keys = "<leader>rn", run = cmd.TestNearest, opts = {}},
    { description = "Run test: file", modes = "n", keys = "<leader>rf", run = cmd.TestFile, opts = {}},
    { description = "Run test: suite", modes = "n", keys = "<leader>rs", run = cmd.TestSuite, opts = {}},

    -----------------------------
    -- Utilities
    -----------------------------
    -- Modes
    { description = "Mode: Preview markdown", modes = "n", keys = "<leader>mp", run = cmd.Glow, opts = {}},
    { description = "Mode: Toggle Zen", modes = "n", keys = "<leader>mz", run = cmd.TZAtaraxis, opts = {}},
    { description = "Mode: Toggle Dark Theme", modes = "n", keys = "<leader>md", run = function() theme.load("dragon") end, opts = {}},
    { description = "Mode: Toggle Light Theme", modes = "n", keys = "<leader>ml", run = function() theme.load("lotus") end, opts = {}},

    { description = "Reload config", modes = "n", keys = "<leader>mr", run = ":source ~/.config/nvim/init.lua<CR>", opts = {}},

    -----------------------------
    -- Not allowed
    -----------------------------
    { description = "Arrow keys are not allowed", modes = {"n", "v", "i"}, keys = "<Left>", run = "<nop>", opts = { silent = true, noremap = true }},
    { description = "Arrow keys are not allowed", modes = {"n", "v", "i"}, keys = "<Right>", run = "<nop>", opts = { silent = true, noremap = true }},
    { description = "Arrow keys are not allowed", modes = {"n", "v", "i"}, keys = "<Up>", run = "<nop>", opts = { silent = true, noremap = true }},
    { description = "Arrow keys are not allowed", modes = {"n", "v", "i"}, keys = "<Down>", run = "<nop>", opts = { silent = true, noremap = true }},

    { description = "Q is not allowed", modes = {"n"}, keys = "Q", run = "<nop>", opts = { silent = true, noremap = true }},
}
