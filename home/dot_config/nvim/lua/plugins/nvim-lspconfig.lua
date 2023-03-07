return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      { "folke/neodev.nvim", config = true },
      { "j-hui/fidget.nvim", config = true },
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    opts = {
      servers = {
        lua_ls = {
          Lua = {
            workspace = { checkThirdParty = false },
            telemetry = { enable = false },
          },
        },
        solargraph = {},
      },
    },
    config = function(_, opts)
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

      require("util").on_attach(function(client, bufnr)
        require("plugins.lsp.format").on_attach(client, bufnr)
        require("plugins.lsp.keymaps").on_attach(client, bufnr)
      end)

      local function setup(server)
        require("lspconfig")[server].setup({
          capabilities = capabilities,
          settings = opts.servers[server],
        })
      end

      require("mason-lspconfig").setup({ ensure_installed = vim.tbl_keys(opts.servers) })
      require("mason-lspconfig").setup_handlers({ setup })
    end,
  },
}
