local M = {
  "nvim-lualine/lualine.nvim",
  config = function(_, opts)
    require("lualine").setup(opts)
  end,
  dependencies = {
    { "nvim-tree/nvim-web-devicons" }
  },
  opts = {
    options = {
      component_separators = "",
      section_separators = ""
    },
    sections = {
      lualine_a = {
        {
          "mode",
          fmt = function(str)
            return str:sub(1,1)
          end
        }
      },
      lualine_b = { "filename" },
      lualine_c = {},
      lualine_x = {},
      lualine_y = {},
      lualine_z = {},
    }
  }
}

return { M }
