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
          null_ls.builtins.formatting.stylua,
        },
      }
    end,
  },
}
