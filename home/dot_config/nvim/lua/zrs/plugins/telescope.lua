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
      { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Grep" },
      { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help" },
      { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Recent Files" },
      { "<leader>fw", "<cmd>Telescope grep_string<cr>", desc = "Word" },
    },
    opts = {
      defaults = {
        file_ignore_pattern = { ".git/", "coverage", "node_modules" },
        mappings = {
          i = {
            ["<C-j>"] = function(...)
              return require("telescope.actions").move_selection_next(...)
            end,
            ["<C-k>"] = function(...)
              return require("telescope.actions").move_selection_previous(...)
            end,
            ["<C-n>"] = function(...)
              return require("telescope.actions").cycle_history_next(...)
            end,
            ["<C-p>"] = function(...)
              return require("telescope.actions").cycle_history_prev(...)
            end,
          },
        },
        path_display = { "truncate" },
        prompt_prefix = "❯ ",
        selection_caret = "❯ ",
      },
    },
    version = false,
  },
}
