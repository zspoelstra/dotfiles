vim.pack.add({ { src = "https://github.com/RRethy/nvim-treesitter-endwise" } })
vim.pack.add({ { src = "https://github.com/nvim-treesitter/nvim-treesitter", version = "main" } })

local languages = {
  "bash",
  "comment",
  "html",
  "javascript",
  "json",
  "latex",
  "lua",
  "markdown",
  "markdown_inline",
  "query",
  "regex",
  "ruby",
  "toml",
  "tsx",
  "typescript",
  "typst",
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

vim.api.nvim_create_autocmd("PackChanged", {
  callback = function(ev)
    local name, kind = ev.data.spec.name, ev.data.kind

    if name == "nvim-treesitter" and kind == "update" then
      if not ev.data.active then
        vim.cmd.packadd("nvim-treesitter")
      end

      vim.cmd("TSUpdate")
    end
  end,
})
