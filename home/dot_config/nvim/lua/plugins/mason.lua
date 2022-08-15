require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "solargraph", "sumneko_lua", "tsserver" }
})
