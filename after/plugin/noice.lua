require("noice").setup({
    cmdline = {
        enabled = true, -- enables the Noice cmdline UI
        view = "cmdline_popup", -- Change to `cmdline` to get a classic cmdline at the bottom
        opts = {
            position = {
                row = "98%",
                col = "50%",
            },
            size = {
                width = "70%",
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
