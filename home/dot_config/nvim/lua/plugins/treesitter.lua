return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  build = ":TSUpdate",
  lazy = false,
  dependencies = {
    "RRethy/nvim-treesitter-endwise",
  },
  config = function()
    local languages = {
      "bash",
      "html",
      "javascript",
      "json",
      "lua",
      "markdown",
      "markdown_inline",
      "query",
      "regex",
      "ruby",
      "toml",
      "tsx",
      "typescript",
      "vim",
      "vimdoc",
      "yaml",
    }

    require("nvim-treesitter").install(languages)

    local filetypes = {}
    for _, lang in ipairs(languages) do
      vim.list_extend(filetypes, vim.treesitter.language.get_filetypes(lang))
    end

    vim.api.nvim_create_autocmd("FileType", {
      pattern = filetypes,
      callback = function()
        vim.treesitter.start()
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end,
    })
  end,
}
