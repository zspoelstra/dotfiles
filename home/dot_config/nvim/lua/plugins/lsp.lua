local M = {
  "neovim/nvim-lspconfig",
  config = function(_, opts)
    require("mason").setup()
    require("mason-lspconfig").setup({
      ensure_installed = { "lua_ls" },
    })

    require("lspconfig")["lua_ls"].setup({
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
        },
      },
    })
  end,
  dependencies = {
    { "williamboman/mason.nvim" },
    { "williamboman/mason-lspconfig.nvim" },
  },
}

return { M }
