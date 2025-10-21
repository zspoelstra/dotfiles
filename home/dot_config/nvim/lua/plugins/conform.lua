return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      ["*"] = { "trim_newlines", "trim_whitespace" },
      javascript = { "prettier" },
      javascriptreact = { "prettier" },
      lua = { "stylua" },
      typescript = { "prettier" },
      typescriptreact = { "prettier" },
    },
    format_after_save = {
      lsp_format = "fallback",
      timeout_ms = 500,
    },
  },
}
