-- 
-- null-ls is a special LSP that hanndles formatting and linting for many languages
-- Check out the sources map for all enabled languages
--
-- Some LSPs like gopls, have their own formatting and linting, so we don't need them here
-- 
local null_ls = require("null-ls")
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup({
    on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
            vim.api.nvim_create_autocmd("BufWritePre", {
                group = augroup,
                buffer = bufnr,
                callback = function()
                    vim.lsp.buf.format({ async = false })
                end,
            })
        end
    end,
    sources = {
        -- PHP
        null_ls.builtins.formatting.phpcsfixer.with({
            extra_args = {'--allow-risky=yes'},
            env = {
                PHP_CS_FIXER_IGNORE_ENV = '1',
            }
        }),

        -- Ruff is a python linter
        null_ls.builtins.diagnostics.ruff,
        -- Black is a python formatter
        null_ls.builtins.formatting.black,

        -- Lua formatting
        null_ls.builtins.formatting.stylua,
    },
})
