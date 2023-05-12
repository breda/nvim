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
