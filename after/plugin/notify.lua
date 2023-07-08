--
-- Better notifications
--
local nvim_notify = require("notify")

nvim_notify.setup({
	background_colour = "NotifyBackground",
	fps = 144,
	icons = {
		DEBUG = " ",
		ERROR = " ",
		INFO = " ",
		TRACE = " ✎",
		WARN = " ",
	},
	level = 2,
	minimum_width = 40,
	render = "compact",
	stages = "slide",
	timeout = 5000,
	top_down = true,
})

vim.notify = nvim_notify
