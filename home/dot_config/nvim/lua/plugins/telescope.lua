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
    { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "[F]ind [B]uffers" },
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "[F]ind [F]iles" },
    { "<leader>fw", "<cmd>Telescope grep_string<cr>", desc = "[F]ind [W]ord" },
  },
}

return { M }
