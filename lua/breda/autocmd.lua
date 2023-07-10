local api = vim.api

local function acgroup(name)
	return api.nvim_create_augroup("breda__" .. name, { clear = true })
end

------------------------------------------------------------------------------------------------------------------------------------------------------
---- Personal ----------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------
-- Start tracking Vim session as soon as we leave vim
api.nvim_create_autocmd({ "VimLeave" }, {
	group = acgroup("leave"),
	callback = function()
		vim.cmd([[Obsession]])
	end,
})

-- -- Autoclose the file tree after opening a buffer
-- api.nvim_create_autocmd({ "BufEnter" }, {
-- 	group = acgroup("buf_enter"),
-- 	callback = function(event)
-- 		if string.find(event.match, "NvimTree") == nil then
-- 			vim.defer_fn(function()
-- 				vim.cmd([[NvimTreeClose]])
-- 			end, 3000)
-- 		end
-- 	end,
-- })

------------------------------------------------------------------------------------------------------------------------------------------------------
---- Copied ------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------

-- close some filetypes with <q>
api.nvim_create_autocmd("FileType", {
	group = acgroup("close_with_q"),
	pattern = {
		"help",
		"lspinfo",
		"man",
		"notify",
		"mason",
		"dap-repl",
		"copilot.go",
	},
	callback = function(event)
		vim.bo[event.buf].buflisted = false
		vim.keymap.set("n", "q", "<cmd>close<cr>", { buffer = event.buf, silent = true })
	end,
})

-- wrap and check for spell in text filetypes
api.nvim_create_autocmd("FileType", {
	group = acgroup("wrap_spell"),
	pattern = { "gitcommit", "markdown" },
	callback = function()
		vim.opt_local.wrap = true
		vim.opt_local.spell = true
	end,
})

-- From: https://github.com/yeuxacucodon/neovim-config/blob/master/lua/core/autocmds.lua
-- go to last loc when opening a buffer
api.nvim_create_autocmd("BufReadPost", {
	callback = function()
		local mark = vim.api.nvim_buf_get_mark(0, '"')
		local lcount = vim.api.nvim_buf_line_count(0)
		if mark[1] > 0 and mark[1] <= lcount then
			pcall(vim.api.nvim_win_set_cursor, 0, mark)
		end
	end,
})
