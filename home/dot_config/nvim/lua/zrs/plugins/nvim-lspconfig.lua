return {
  {
    "neovim/nvim-lspconfig",
    config = function(_, opts)
      require("zrs.lsp").on_attach()
      require("mason-lspconfig").setup({ ensure_installed = vim.tbl_keys(opts.servers) })
      require("mason-lspconfig").setup_handlers({ require("zrs.lsp").setup(opts) })
    end,
    dependencies = {
      { "folke/neodev.nvim", config = true },
      { "jose-elias-alvarez/typescript.nvim" },
      { "williamboman/mason.nvim" },
      { "williamboman/mason-lspconfig.nvim" },
    },
    event = { "BufNewFile", "BufReadPre" },
    opts = {
      capabilities = {
        textDocument = {
          foldingRange = {
            dynamicRegistration = true,
            lineFoldingOnly = true,
          },
        },
      },
      servers = {
        lua_ls = {
          settings = {
            Lua = {
              telemetry = { enable = true },
              workspace = { checkThirdParty = false },
            },
          },
        },
        solargraph = {},
        tsserver = {
          settings = {
            completions = {
              completeFunctionCalls = true,
            },
          },
        },
      },
      setup = {
        solargraph = function(_, opts)
          opts.init_options = { formatting = false }
        end,
        tsserver = function(_, opts)
          require("typescript").setup({ server = opts })
          return true
        end,
      },
    },
  },
}
