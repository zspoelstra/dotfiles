return {
  {
    "nvim-telescope/telescope-live-grep-args.nvim"
  },

  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-live-grep-args.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" }
    },
    keys = {
      -- Find
      { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
      { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Files" },
      { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Recent" },
      -- Search
      { "<leader>sg", "<cmd>Telescope live_grep_args<cr>", desc = "Grep" }
    },
    opts = function ()
      local live_grep_args = require("telescope-live-grep-args.actions")
      return {
        defaults = {
          file_ignore_patterns = { ".git/", "node_modules" },
          path_display = { "truncate" }
        },
        extensions = {
          live_grep_args = {
            auto_quoting = true,
            mappings = {
              i = {
                ["<C-k>"] = live_grep_args.quote_prompt(),
              }
            }
          }
        }
      }
    end,
    config = function (_, opts)
      local telescope = require("telescope")
      telescope.setup(opts)
      telescope.load_extension("fzf")
      telescope.load_extension("live_grep_args")
    end
  }
}
