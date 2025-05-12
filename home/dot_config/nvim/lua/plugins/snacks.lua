return {
  "folke/snacks.nvim",
  keys = {
    {
      "<leader>fb",
      function ()
        Snacks.picker.buffers()
      end,
      desc = "Find Buffer"
    },
    {
      "<leader>fc",
      function()
        Snacks.picker.files({ cwd = vim.fn.stdpath("config") })
      end,
      desc = "Find Config File",
    },
    {
      "<leader>ff",
      function()
        Snacks.picker.files()
      end,
      desc = "Find files",
    },
    {
      "<leader>fp",
      function()
        Snacks.picker.projects()
      end,
      desc = "Find Projects",
    },
  },
  lazy = false,
  opts = {
    indent = { enabled = true },
    picker = { enabled = true },
    sources = {
      picker = {
        projects = {
          dev = { "~/Code" },
        },
      },
    },
    statuscolumn = { enabled = true },
  },
  priority = 1000,
}
