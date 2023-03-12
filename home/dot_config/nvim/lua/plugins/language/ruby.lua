return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        solargraph = {},
      },
      setup = {
        solargraph = function(_, opts)
          opts.init_options = { formatting = false }
        end,
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "ruby",
      },
    },
  },
}
