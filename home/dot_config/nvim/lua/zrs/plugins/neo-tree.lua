return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
      { "kyazdani42/nvim-web-devicons" },
      { "MunifTanjim/nui.nvim" },
      { "nvim-lua/plenary.nvim" },
    },
    init = function()
      vim.g.neo_tree_remove_legacy_commands = 1
      if vim.fn.argc() == 1 then
        local stat = vim.loop.fs_stat(tostring(vim.fn.argv(0)))
        if stat and stat.type == "directory" then
          require("neo-tree")
        end
      end
    end,
    keys = {
      { "<leader>ee", "<cmd>Neotree toggle<cr>", desc = "Toggle" },
      { "<leader>ef", "<cmd>Neotree focus<cr>", desc = "Focus" },
      { "<leader>er", "<cmd>Neotree reveal<cr>", desc = "Reveal File" },
    },
    opts = {
      close_if_last_window = true,
      default_component_configs = {
        indent = {
          with_expanders = true,
        },
      },
      window = {
        mappings = {
          ["h"] = function(state)
            local node = state.tree:get_node()
            if node.type == "directory" and node:is_expanded() then
              require("neo-tree.sources.filesystem").toggle_directory(state, node)
            else
              require("neo-tree.ui.renderer").focus_node(state, node:get_parent_id())
            end
          end,
          ["l"] = function(state)
            local node = state.tree:get_node()
            if node.type == "directory" then
              if not node:is_expanded() then
                require("neo-tree.sources.filesystem").toggle_directory(state, node)
              elseif node:has_children() then
                require("neo-tree.ui.renderer").focus_node(state, node:get_child_ids()[1])
              end
            end
          end,
          ["<space>"] = "none",
        },
      },
    },
  },
}
