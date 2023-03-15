return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function(_, opts)
      local nls = require("null-ls")
      table.insert(
        opts.sources,
        nls.builtins.diagnostics.rubocop.with({
          command = "bundle",
          args = vim.list_extend({ "exec", "rubocop" }, nls.builtins.diagnostics.rubocop._opts.args),
        })
      )
    end,
  },

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        solargraph = {},
      },
      setup = {
        solargraph = function(_, opts)
          opts.init_options = { formatting = false }
        end,
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "ruby",
      },
    },
  },
}
