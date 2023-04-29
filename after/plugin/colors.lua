--vim.cmd[[colorscheme catppuccin]]

--vim.opt.background = "dark" -- set this to dark or light
--vim.cmd[[colorscheme oxocarbon]]


-- vim.g.material_style = "deep ocean"
-- vim.cmd[[colorscheme material]]
--

-- Default options:
require('kanagawa').setup({
    compile = false,             -- enable compiling the colorscheme
    undercurl = true,            -- enable undercurls
    commentStyle = { italic = true },
    functionStyle = {},
    keywordStyle = { italic = true},
    statementStyle = { bold = true },
    typeStyle = {},
    transparent = false,         -- do not set background color
    dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
    terminalColors = true,       -- define vim.g.terminal_color_{0,17}
    colors = {                   -- add/modify theme and palette colors
        palette = {
            dragonBlack0 = "#0d0c0c",
            dragonBlack1 = "#12120f",
            dragonBlack2 = "#1D1C19",
            dragonBlack3 = "#0f111a", -- Updated
            dragonBlack4 = "#0f111a", -- Updated
            dragonBlack5 = "#393836",
            dragonBlack6 = "#625e5a",
        },
        theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
    },
    overrides = function(colors) -- add/modify highlights
        return {}
    end,
    theme = "dragon",
    background = {
        dark = "dragon",
        light = "lotus"
    },
})

-- setup must be called before loading
vim.cmd("colorscheme kanagawa")
