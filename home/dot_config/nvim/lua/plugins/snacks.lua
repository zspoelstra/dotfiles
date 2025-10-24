return {
  "folke/snacks.nvim",
  keys = {
    {
      "<leader>fb",
      function()
        Snacks.picker.buffers()
      end,
      desc = "Buffers",
    },
    {
      "<leader>fc",
      function()
        Snacks.picker.files({ cwd = vim.fn.stdpath("config") })
      end,
      desc = "Config Files",
    },
    {
      "<leader>ff",
      function()
        Snacks.picker.files()
      end,
      desc = "Files",
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
      desc = "Projects",
    },
    {
      "<leader>fr",
      function()
        Snacks.picker.recent()
      end,
      desc = "Recent Files",
    },
    {
      "<leader>fR",
      function()
        Snacks.picker.resume()
      end,
      desc = "Resume",
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
