--
-- Lualine is the line you see at the top, that shows the mode, filename... etc
--

-- Bubbles config for lualine
-- Author: lokesh-krishna
-- MIT license, see LICENSE for more details.

-- stylua: ignore
local colors = {
    default = '#21252e',
    blue    = '#2980b9',
    cyan    = '#79dac8',
    black   = '#21252e',
    white   = '#c6c6c6',
    red     = '#ff5189',
    violet  = '#d183e8',
    grey    = '#303030',
}

local theme = {
	normal = {
		a = { fg = colors.white, bg = colors.default },
		b = { fg = colors.white, bg = colors.black, gui = "italic,bold" },
		c = { fg = colors.white, bg = colors.black },
		x = { fg = colors.white, bg = colors.black },
		y = { fg = colors.white, bg = colors.black },
		z = { fg = colors.white, bg = colors.black },
	},
	insert = {
		a = { fg = colors.grey, bg = colors.violet },
		b = { fg = colors.white, bg = colors.black },
		c = { fg = colors.white, bg = colors.black },
		x = { fg = colors.white, bg = colors.black },
		y = { fg = colors.white, bg = colors.black },
		z = { fg = colors.white, bg = colors.black },
	},
	visual = {
		a = { fg = colors.grey, bg = colors.cyan },
		b = { fg = colors.white, bg = colors.black },
		c = { fg = colors.white, bg = colors.black },
		x = { fg = colors.white, bg = colors.black },
		y = { fg = colors.white, bg = colors.black },
		z = { fg = colors.white, bg = colors.black },
	},

	command = {
		a = { fg = colors.grey, bg = colors.red },
		b = { fg = colors.white, bg = colors.black },
		c = { fg = colors.white, bg = colors.black },
		x = { fg = colors.white, bg = colors.black },
		y = { fg = colors.white, bg = colors.black },
		z = { fg = colors.white, bg = colors.black },
	},

	inactive = {
		a = { fg = colors.white, bg = colors.black },
		b = { fg = colors.white, bg = colors.black },
		c = { fg = colors.white, bg = colors.black },
		x = { fg = colors.white, bg = colors.black },
		y = { fg = colors.white, bg = colors.black },
		z = { fg = colors.white, bg = colors.black },
	},
}

function GetCurrentLsp()
	local clients = vim.lsp.get_active_clients()

	if next(clients) == nil then
		return "No LSP"
	end

	for _, client in pairs(clients) do
		if client.name ~= "null-ls" then
			return client.name
		end
	end
end

require("lualine").setup({
	options = {
		theme = theme,
		icons_enabled = false,
		component_separators = "",
		section_separators = { left = "", right = "" },
	},
	sections = {},
	inactive_sections = {},
	tabline = {
		lualine_a = {
			{ "mode", separator = { left = "" }, right_padding = 2 },
		},
		lualine_b = { "filename", "diagnostics" },
		lualine_c = {},
		lualine_x = {},
		lualine_y = { "branch", "diff" },
		lualine_z = { "GetCurrentLsp()", "encoding" },
	},
	extensions = {},
})
