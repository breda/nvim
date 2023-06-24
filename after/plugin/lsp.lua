-- 
-- LSP config
-- 
local lsp = require('lsp-zero')

-- For now, just running the recommended
lsp.preset('recommended')
lsp.ensure_installed({
    'phpactor',
    'bashls',
    'dockerls',
    'jsonls',
    'marksman',
    'sqlls',
    'terraformls',
    'yamlls',
    'ansiblels',
})

-- Begin specific configs
local lspconfig = require('lspconfig')

-- phpactor
lspconfig.phpactor.setup{
    on_attach = on_attach,
    init_options = {
        ["language_server_phpstan.enabled"] = false,
        ["language_server_psalm.enabled"] = false,
        ["language_server_php_cs_fixer.enabled"] = false,

        ["indexer.follow_symlinks"] = true,
        ["indexer.poll_time"] = 2000, -- 2seconds
        ["composer.enable"] = true,

        ["symfony.enabled"] = true,
        ["phpunit.enabled"] = true,

        ["php.version"] = "8.2",
    }
}

-- yamlls
lspconfig.yamlls.setup {
  settings = {
    yaml = {
        yaml = {
          keyOrdering = false
        }
    },
  }
}

-- ansiblels
lspconfig.ansiblels.setup({
  ansible = {
    validation = {
      enabled = true,
      lint = {
        enabled = false,
        path = "ansible-lint"
      }
    }
  }
})

lsp.nvim_workspace()
lsp.setup()

-- Configure autocompletion
local cmp = require('cmp')
local cmp_action = lsp.cmp_action()

cmp.setup({
  mapping = {
    ['<CR>'] = cmp.mapping.confirm({select = true}),
    ['<Tab>'] = cmp_action.tab_complete(),
  }
})
