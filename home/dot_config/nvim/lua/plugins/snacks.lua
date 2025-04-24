return {
  "folke/snacks.nvim",
  keys = {
    {
      "<leader>ff",
      function()
        Snacks.picker.files()
      end,
      desc = "Find files",
    },
  },
  lazy = false,
  opts = {
    indent = { enabled = true },
    picker = { enabled = true },
    statuscolumn = { enabled = true },
  },
  priority = 1000,
}
