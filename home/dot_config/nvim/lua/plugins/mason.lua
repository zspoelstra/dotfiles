require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "cssls", "html", "solargraph", "sumneko_lua", "tsserver" }
})
