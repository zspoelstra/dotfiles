return {
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = {
      options = {
        component_separators = "",
        globalstatus = true,
        theme = "rose-pine",
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diagnostics" },
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = { { "location", padding = 0 } },
      },
      extensions = { "neo-tree" },
    },
  },
}
