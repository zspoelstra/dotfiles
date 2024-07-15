local M = {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  opts = {
    indent = {
      char = "│",
      tab_char = "│",
    },
    scope = {
      show_start = false,
      show_end = false,
    },
  },
}

return { M }
