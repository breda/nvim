local lsp = require('lsp-zero')

-- For now, just running the recommended
lsp.preset('recommended')

lsp.ensure_installed({
    'phpactor',
    'sumneko_lua',
    'gopls',
    'bashls',
    'dockerls',
    'jsonls',
    'marksman',
    'sqlls',
    'terraformls',
    'yamlls',
})

lsp.nvim_workspace()
lsp.setup()
