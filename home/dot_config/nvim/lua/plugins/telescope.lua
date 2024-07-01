local M = {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  config = function(_, opts)
    require("telescope").setup(opts)
    require("telescope").load_extension("fzf")
  end,
  dependencies = {
    { "nvim-lua/plenary.nvim" },
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    { "nvim-tree/nvim-web-devicons" },
  },
  keys = {
    { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "buffers" },
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "files" },
    { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "grep in files" },
    { "<leader>fr", "<cmd>Telescope resume<cr>", desc = "resume" },
    { "<leader>fo", "<cmd>Telescope oldfiles<cr>", desc = "old files" },
    { "<leader>fw", "<cmd>Telescope grep_string<cr>", desc = "grep word" },
  },
  opts = {
    defaults = {
      file_ignore_pattern = { ".git/", "node_modules" },
      path_display = { "truncate" },
    },
  },
}

return { M }
