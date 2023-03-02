return {
  {
    'nvim-treesitter/nvim-treesitter',
    opts = {
      auto_install = false,
      ensure_installed = { 'lua' },
      highlight = { enable = true },
      indent = { enable = true, disable = { 'python' } }
    },
    config = function(opts)
      require("nvim-treesitter.configs").setup(opts)
    end,
  }
}
