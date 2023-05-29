local nvim_notify = require("notify")

nvim_notify.setup {
  stages = "static",
  timeout = 2000,
}

vim.notify = nvim_notify
