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
      { "<leader>ee", "<cmd>Neotree toggle<cr>", desc = "Explorer" },
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
          ["<space>"] = "none",
        },
      },
    },
  },
}
