local M = {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  opts = {
    window = {
      mappings = {
        ["h"] = "close_node",
        ["l"] = "open",
        ["<space>"] = "none",
      },
    },
  },
}

return { M }
