local M = {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opts = {
    ensure_installed = { "lua" },
    indent = { enable = true }
  }
}

return { M }
