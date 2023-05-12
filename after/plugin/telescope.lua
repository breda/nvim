require('telescope').setup({
    defaults = {
        vimgrep_arguments = {
              "rg",
              "-L",
              "--color=never",
              "--no-heading",
              "--with-filename",
              "--line-number",
              "--column",
              "--smart-case",
        },
        prompt_prefix = "   ",

        mappings = {
          n = { ["q"] = require("telescope.actions").close },
        },
    },
    pickers = {
        find_files = {
            theme = "dropdown",
            previewer = false,
            layout_config = {
                width = 0.4,
                height = 0.5,
            },
        },
        git_files = {
            theme = "dropdown",
            previewer = false,
            layout_config = {
                width = 0.4,
                height = 0.5,
            },
        },
        oldfiles = {
            theme = "dropdown",
            previewer = false,
            layout_config = {
                width = 0.4,
                height = 0.5,
            },
        },
    },
    extensions_list = { "themes", "terms" },
})
