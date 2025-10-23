return {
  "neovim/nvim-lspconfig",
  config = function()
    -- Ruby
    vim.lsp.enable("ruby_lsp")
    vim.lsp.config("ruby_lsp", {
      init_options = {
        linters = { "standard" },
      },
    })

    -- Lua
    vim.lsp.enable("lua_ls")
    vim.lsp.config("lua_ls", {
      settings = {
        Lua = {
          diagnostics = {
            disable = { "missing-fields" },
          },
        },
      },
    })

    -- Javascript / Typescript
    vim.lsp.enable("vtsls")
  end,
}
