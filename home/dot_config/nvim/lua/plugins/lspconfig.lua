-- Add additional capabilities supported by nvim-cmp
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

-- nvim-lspconfig
local lspconfig = require('lspconfig')

-- Ruby
lspconfig.solargraph.setup {
  capabilities = capabilities,
}

-- Lua
lspconfig.sumneko_lua.setup {
  capabilities = capabilities,
  settings = {
    Lua = {
      runtime = { version = 'LuaJIT', },
      diagnostics = { globals = { 'vim' }, },
      workspace = { library = vim.api.nvim_get_runtime_file('', true), },
      telemetry = { enabled = false, },
    },
  },
}
