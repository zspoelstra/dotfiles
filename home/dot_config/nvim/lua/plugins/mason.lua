require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "html", "solargraph", "sumneko_lua", "tsserver" }
})
