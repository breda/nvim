require("glow").setup({
    glow_path = "/usr/bin/glow", -- will be filled automatically with your glow bin in $PATH, if any
    border = "", -- floating window border config
    style = "dark", -- filled automatically with your current editor background, you can override using glow json style
    pager = false,
    width = 500, -- maximum width of the Glow window compared to the nvim window size (overrides `width`)
    height_ratio = 0.95,
})
