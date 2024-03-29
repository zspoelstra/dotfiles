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
      ensure_installed = {
        "bash",
        "c",
        "css",
        "dockerfile",
        "html",
        "javascript",
        "json",
        "jsonnet",
        "lua",
        "markdown",
        "markdown_inline",
        "query",
        "regex",
        "ruby",
        "scss",
        "tsx",
        "typescript",
        "vim",
        "vimdoc",
        "yaml",
      },
      highlight = {
        additional_vim_regex_highlighting = false,
        enable = true,
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<cr>",
          node_incremental = "<cr>",
          node_decremental = "<bs>",
        },
      },
      indent = { enable = true },
    },
    version = false,
  },
}
