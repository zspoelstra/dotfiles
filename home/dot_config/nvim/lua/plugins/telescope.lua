return {
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    config = function(opts)
      require("telescope").setup(opts)
      require("telescope").load_extension("fzf")

      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<leader>ff", builtin.find_files)
      vim.keymap.set("n", "<leader>fh", builtin.help_tags)
    end,
    dependencies = {
      { "nvim-lua/plenary.nvim" },
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    opts = {},
  },
}
