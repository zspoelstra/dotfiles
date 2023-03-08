return {
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    config = function(_, opts)
      require("noice").setup(opts)
      require("telescope").load_extension("noice")
    end,
    dependencies = {
      { "MunifTanjim/nui.nvim" },
    },
  },
}
