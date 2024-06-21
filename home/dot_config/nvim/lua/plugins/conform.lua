local M = {
  "stevearc/conform.nvim",
  config = function(_, opts)
    require("conform").setup(opts)
  end,
  opts = {
    formatters_by_ft = {
      lua = { "stylua" }
    }
  }
}

return { M }
