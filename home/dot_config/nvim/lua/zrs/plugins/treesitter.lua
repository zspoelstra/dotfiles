return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
    end,
    dependencies = {
      { "JoosepAlviste/nvim-ts-context-commentstring" },
      { "RRethy/nvim-treesitter-endwise" },
    },
    event = { "BufReadPost", "BufNewFile" },
    opts = {
      context_commentstring = {
        enable = true,
      },
      endwise = {
        enable = true,
      },
      highlight = {
        additional_vim_regex_highlighting = false,
        enable = true,
      },
      indent = { enable = true },
      ensure_installed = {
        "bash",
        "c",
        "css",
        "dockerfile",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "regex",
        "ruby",
        "scss",
        "tsx",
        "typescript",
        "vim",
        "vimdoc",
        "yaml",
      },
    },
    version = false,
  },
}
