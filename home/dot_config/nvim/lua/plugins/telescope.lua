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
    { "<leader>sb", "<cmd>Telescope buffers<cr>", desc = "[S]earch [B]uffers" },
    { "<leader>sf", "<cmd>Telescope find_files<cr>", desc = "[S]earch [F]iles" },
    { "<leader>sh", "<cmd>Telescope help_tags<cr>", desc = "[S]earch [H]elp" },
    { "<leader>sw", "<cmd>Telescope grep_string<cr>", desc = "[S]earch [W]ord" },
  },
}

return { M }
