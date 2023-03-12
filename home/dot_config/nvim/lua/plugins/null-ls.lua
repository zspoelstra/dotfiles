return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = { "williamboman/mason.nvim" },
    opts = {
      sources = {}
    }
  },
}
