return {
  "folke/snacks.nvim",
  keys = {
    {
      "<leader>fb",
      function()
        Snacks.picker.buffers()
      end,
      desc = "Find Buffer",
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
      "<leader>fg",
      function()
        Snacks.picker.grep()
      end,
      desc = "Grep",
    },
    {
      "<leader>fp",
      function()
        Snacks.picker.projects()
      end,
      desc = "Find Projects",
    },
    {
      "<leader>fr",
      function()
        Snacks.picker.recent()
      end,
      desc = "Find Recent",
    },
  },
  lazy = false,
  opts = {
    bufdelete = { enabled = true },
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
