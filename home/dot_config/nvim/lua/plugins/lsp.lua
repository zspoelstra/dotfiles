return {
  "neovim/nvim-lspconfig",
  config = function()
    vim.lsp.config("lua_ls", {
      settings = {
        Lua = {
          diagnostics = {
            disable = { "missing-fields" },
          },
        },
      },
    })
    vim.lsp.enable("lua_ls")
  end,
}
