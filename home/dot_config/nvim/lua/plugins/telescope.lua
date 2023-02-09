return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim"
  },
  keys = {
    -- Find
    { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Files" },
    { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Recent" },
  },
  opts = {
    defaults = {
      file_ignore_patterns = { ".git/", "node_modules" },
      path_display = { "truncate" }
    },
  }
}