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
      -- {
      --   "<leader>/",
      --   function()
      --     require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
      --       winblend = 10,
      --       previewer = false,
      --     }))
      --   end,
      -- },

      -- Find
      { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
      { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
      { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Recent" },

      -- Search
      { "<leader>sg", "<cmd>Telescope live_grep_args<cr>", desc = "Grep" },
      { "<leader>sw", "<cmd>Telescope grep_string<cr>", desc = "Grep Word" },
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
