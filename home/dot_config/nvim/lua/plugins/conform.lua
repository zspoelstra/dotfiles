return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        -- json = { "prettierd", "prettier", stop_after_first = true },
        -- lua = { "stylua" },
        ["*"] = { "trim_newlines", "trim_whitespace" },
      },
      format_on_save = {
        lsp_format = "fallback",
        timeout_ms = 500,
      },
    },
  },
}
