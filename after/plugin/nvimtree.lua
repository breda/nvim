--
-- File tree
--

-- Bellow config is taken from https://github.com/reyhankaplan/dotfiles/blob/master/.config/nvim/plugin/packages/nvim_tree.lua
local nvim_tree = require("nvim-tree")

local function on_attach(bufnr)
	local api = require("nvim-tree.api")
	local function opts(desc)
		return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
	end

	api.config.mappings.default_on_attach(bufnr)

	vim.keymap.set("n", "l", api.node.open.edit, opts("Open"))
	vim.keymap.set("n", "<CR>", api.node.open.edit, opts("Open"))
	vim.keymap.set("n", "<2-LeftMouse>", api.node.open.edit, opts("Open"))
	vim.keymap.set("n", "L", api.tree.change_root_to_node, opts("CD"))
	vim.keymap.set("n", "<C-s>", api.node.open.horizontal, opts("Open: Horizontal Split"))
	vim.keymap.set("n", "<C-v>", api.node.open.vertical, opts("Open: Vertical Split"))
	vim.keymap.set("n", "<C-t>", api.node.open.tab, opts("Open: New Tab"))
	vim.keymap.set("n", "h", api.node.navigate.parent_close, opts("Close Directory"))
	vim.keymap.set("n", "i", api.node.open.preview, opts("Open Preview"))
	vim.keymap.set("n", "R", api.tree.reload, opts("Refresh"))
	vim.keymap.set("n", "c", api.fs.create, opts("Create"))
	vim.keymap.set("n", "D", api.fs.remove, opts("Delete"))
	vim.keymap.set("n", "r", api.fs.rename, opts("Rename"))
	vim.keymap.set("n", "d", api.fs.cut, opts("Cut"))
	vim.keymap.set("n", "y", api.fs.copy.node, opts("Copy"))
	vim.keymap.set("n", "p", api.fs.paste, opts("Paste"))
	vim.keymap.set("n", "gyn", api.fs.copy.filename, opts("Copy Name"))
	vim.keymap.set("n", "gyp", api.fs.copy.relative_path, opts("Copy Relative Path"))
	vim.keymap.set("n", "gya", api.fs.copy.absolute_path, opts("Copy Absolute Path"))
	vim.keymap.set("n", "H", api.tree.change_root_to_parent, opts("Up"))
	vim.keymap.set("n", "s", api.node.run.system, opts("Run System"))
	vim.keymap.set("n", "q", api.tree.close, opts("Close"))
end

-- Setup nvim_tree
nvim_tree.setup({
	update_focused_file = { enable = true },
	auto_reload_on_write = false,
	reload_on_bufenter = true,
	hijack_cursor = true,
	on_attach = on_attach,

	-- View
	view = {
		width = 40,
		hide_root_folder = false,
		side = "left",
		preserve_window_proportions = false,
		number = false,
		signcolumn = "no",
	},

	git = {
		enable = false,
	},

	-- Render
	renderer = {
		indent_width = 2,
		icons = {
			show = {
				file = true,
				folder = true,
				folder_arrow = true,
				git = false,
				modified = false,
			},
		},
	},
})
