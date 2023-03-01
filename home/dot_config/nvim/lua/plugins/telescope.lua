return {
  {
    'nvim-telescope/telescope.nvim',
    version = false,
    dependencies = {
      { 'nvim-lua/plenary.nvim' },
      { "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
        config = function()
          require("telescope").load_extension("fzf")
        end
      }
    },
    opts = {
      defaults = {
        mappings = {
          i = {
            ['<C-u>'] = false,
            ['<C-d>'] = false,
          },
        },
      },
    }
  },
}
