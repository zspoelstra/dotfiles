return {
  {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    version = "*",
    dependencies = {
      "nvim-lua/plenary.nvim",
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
        config = function()
          require("telescope").load_extension("fzf")
        end,
      },
      {
        "nvim-telescope/telescope-live-grep-args.nvim",
        config = function()
          require("telescope").load_extension("live_grep_args")
        end,
      },
    },
    keys = {
      -- buffers
      { "<leader>bb", "<cmd>Telescope buffers<cr>", desc = "List" },

      -- search
      {
        "<leader>/",
        function()
          require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
            previewer = false,
          }))
        end,
        desc = "Fuzzy Search Buffer",
      },

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
        mappings = {
          i = {
            ["<C-j>"] = function(...)
              return require("telescope.actions").move_selection_next(...)
            end,
            ["<C-k>"] = function(...)
              return require("telescope.actions").move_selection_previous(...)
            end,
          },
          n = {
            ["q"] = function(...)
              return require("telescope.actions").close(...)
            end,
          },
        },
      },
      extensions = {
        live_grep_args = {
          auto_quoting = true,
          mappings = {
            i = {
              ["<C-k>"] = function()
                require("telescope-live-grep-args.actions").quote_prompt()
              end,
            },
          },
        },
      },
    },
  },
}
