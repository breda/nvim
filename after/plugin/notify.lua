local nvim_notify = require("notify")
local reda ="reda"

nvim_notify.setup {
  stages = "static",
  timeout = 2000,
}

vim.notify = nvim_notify
