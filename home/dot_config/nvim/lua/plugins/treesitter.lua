local M = {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end,
  opts = {
    ensure_installed = { "lua", "luadoc", "vim", "vimdoc" },
    highlight = {
      additional_vim_regex_highlighting = { "ruby" },
      enable = true
    },
    indent = {
      disable = { "ruby" },
      enable = true
    }
  }
}

return { M }
