local api = vim.api

local function acgroup(name)
    return api.nvim_create_augroup('breda__' .. name, { clear = true })
end

-- Start tracking Vim session as soon as we leave
api.nvim_create_autocmd({ "VimLeave" }, {
  group = acgroup('leave'),
  callback = function()
    vim.cmd([[Obsession]])
  end
})

--
-- The 3 next autocmds are copied from:
-- https://github.com/2KAbhishek/nvim2k
--
-- resize splits if window got resized
api.nvim_create_autocmd({ 'VimResized' }, {
    group = acgroup('resize_splits'),
    callback = function()
        vim.cmd('tabdo wincmd =')
    end,
})

-- close some filetypes with <q>
api.nvim_create_autocmd('FileType', {
    group = acgroup('close_with_q'),
    pattern = {
        'help',
        'lspinfo',
        'man',
        'notify',
        'mason',
        'dap-repl',
    },
    callback = function(event)
        vim.bo[event.buf].buflisted = false
        vim.keymap.set('n', 'q', '<cmd>close<cr>', { buffer = event.buf, silent = true })
    end,
})

-- wrap and check for spell in text filetypes
api.nvim_create_autocmd('FileType', {
    group = acgroup('wrap_spell'),
    pattern = { 'gitcommit', 'markdown' },
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

