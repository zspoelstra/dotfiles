return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    dependencies = {
      "RRethy/nvim-treesitter-endwise"
    },
    opts = {
      auto_install = true,
      endwise = {
        enable = true
      },
      ensure_installed = {
        "lua"
      },
      hightlight = {
        enable = true
      },
      indent = {
        enable = true
      }
    },
    config = function (_, opts)
      require("nvim-treesitter.configs").setup(opts)
    end
  }
}
