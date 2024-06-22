local M = {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end,
  opts = {
    ensure_installed = { "bash", "lua", "luadoc", "markdown", "markdown_inline", "regex", "vim", "vimdoc" },
    highlight = {
      additional_vim_regex_highlighting = { "ruby" },
      enable = true,
    },
    indent = {
      disable = { "ruby" },
      enable = true,
    },
  },
}

return { M }
