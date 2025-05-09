return {
  "nvim-treesitter/nvim-treesitter-textobjects",
  config = function()
    require("nvim-treesitter.configs").setup({
      textobjects = {
        select = {
          enable = true,
          lookahead = true,
          keymaps = {
            ["af"] = { query = "@function.outer", desc = "Select outer part of method/function" },
            ["if"] = { query = "@function.inner", desc = "Select inner part of method/function" },
          },
        },
      },
    })
  end,
}
