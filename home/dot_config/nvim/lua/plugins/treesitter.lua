local M = {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end,
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
  },
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
    textobjects = {
      select = {
        enable = true,
        lookahead = true,
        keymaps = {
          ["af"] = "@function.outer",
          ["if"] = "@function.inner",
        },
      },
    },
  },
}

return { M }
