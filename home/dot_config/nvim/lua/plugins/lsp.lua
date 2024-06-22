local M = {
  "neovim/nvim-lspconfig",
  config = function(_, opts)
    -- vim.api.nvim_create_autocmd("LspAttach", {
    --   group = vim.api.nvim_create_augroup("zrs-lsp-attach"),
    --   callback = function()
    --     -- setup the keymaps here
    --   end,
    -- })

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
