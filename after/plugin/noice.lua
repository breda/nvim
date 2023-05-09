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
