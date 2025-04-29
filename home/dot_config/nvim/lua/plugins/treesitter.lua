return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      auto_install = false,
      ensure_installed = { "lua", "markdown", "markdown_inline", "query", "regex", "vim", "vimdoc" },
    })
  end,
}
