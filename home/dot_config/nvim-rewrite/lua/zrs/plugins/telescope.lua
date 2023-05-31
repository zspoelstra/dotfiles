return {
  {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    config = function(_, opts)
      local telescope = require("telescope")
      telescope.setup(opts)
      telescope.load_extension("fzf")
    end,
    dependencies = {
      { "nvim-lua/plenary.nvim" },
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    keys = {
      -- buffers
      { "<leader>bb", "<cmd>Telescope buffers<cr>", desc = "List" },

      -- find
      { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Files" },
      { "<leader>fg", "<cmd>Telescope live_grep_args<cr>", desc = "Grep" },
      { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help" },
      { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Recent Files" },
      { "<leader>fw", "<cmd>Telescope grep_string<cr>", desc = "Word" },
    },
    opts = {
      defaults = {
        file_ignore_pattern = { ".git/", "coverage", "node_modules" },
        path_display = { "truncate" },
        selection_caret = "❯ ",
      },
    },
    version = false,
  },
}
