require("noice").setup({
    routes = {
        -- Hide "written" messages
        {
            filter = {
                event = "msg_show",
                kind = "",
                find = "written",
            },
            opts = { skip = true },
        },
        -- Hide useless LSP message
        {
            filter = { find = "No information available" },
            opts = { stop = true },
        },
    },
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
