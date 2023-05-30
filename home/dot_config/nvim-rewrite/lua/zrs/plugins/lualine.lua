return {
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      extensions = { "neo-tree" },
      options = {
        component_separators = "",
        theme = "onenord",
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diagnostics" },
        lualine_c = { "filename" },
        lualine_x = {},
        lualine_y = {},
        lualine_z = {
          { "location", padding = { left = 0, right = 1 } },
        },
      },
    },
  },
}
