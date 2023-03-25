return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = { "williamboman/mason.nvim" },
    opts = function()
      local nls = require("null-ls")
      return {
        sources = {
          nls.builtins.formatting.prettier,
          nls.builtins.diagnostics.rubocop.with({
            command = "bundle",
            args = vim.list_extend({ "exec", "rubocop" }, nls.builtins.diagnostics.rubocop._opts.args),
          }),
          nls.builtins.formatting.stylua,
        },
      }
    end,
  },
}
