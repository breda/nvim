-- 
-- noice is a UI library, the one that enables us to have the command line at bottom floating, and nice looking messages
-- The routes map is where I can disable certain messages, like for example  "14B written" message
-- 
require("noice").setup({
    routes = {
        -- Disable some usesless messages such as "5 lines yanked" & "5B written"
        { filter = { find = "No information available" }, opts = { stop = true }, },
        { filter = { find = "fewer lines" }, opts = { stop = true }, },
        { filter = { find = "more lines" }, opts = { stop = true }, },
        { filter = { find = "written" }, opts = { stop = true }, },
        { filter = { find = "change" }, opts = { stop = true }, },
        { filter = { find = "lines yanked" }, opts = { stop = true }, },
        { filter = { find = "more line" }, opts = { stop = true }, },
        { filter = { find = "under cursor" }, opts = { stop = true }, },
        { filter = { find = "no manual entry" }, opts = { stop = true }, },
    },
    popupmenu = { enabled = false, },
    messages = { enabled = false, },
    cmdline = {
        enabled = true,
        view = "cmdline_popup",
        opts = {
            position = {
                row = "96%",
                col = "50%",
            },
            size = {
                width = "55%",
            },
            border = {
                style = "single",
                text = {
                    top = "  Vim Command Line  ",
                    top_align = "left",
                },
            },
        },
    },
})


