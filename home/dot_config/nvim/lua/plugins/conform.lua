local M = {
  "stevearc/conform.nvim",
  config = function(_, opts)
    require("conform").setup(opts)
  end,
  opts = {
    format_on_save = {
      lsp_format = "fallback",
      timeout_ms = 500,
    },
    formatters_by_ft = {
      lua = { "stylua" },
    },
  },
}

return { M }
