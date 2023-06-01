return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    dependencies = {
      { "nvim-lua/plenary.nvim" },
      { "williamboman/mason.nvim" },
    },
    event = { "BufNewFile", "BufReadPre" },
    opts = function()
      local null_ls = require("null-ls")
      return {
        sources = {
          null_ls.builtins.diagnostics.eslint_d,
          null_ls.builtins.diagnostics.rubocop.with({
            command = "bundle",
            args = vim.list_extend({ "exec", "rubocop" }, null_ls.builtins.diagnostics.rubocop._opts.args),
          }),
          null_ls.builtins.formatting.prettierd,
          null_ls.builtins.formatting.stylua,
          require("typescript.extensions.null-ls.code-actions"),
        },
      }
    end,
  },
}
