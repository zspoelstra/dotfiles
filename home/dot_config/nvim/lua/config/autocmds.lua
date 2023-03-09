local function augroup(name)
  return vim.api.nvim_create_augroup("zs_" .. name, { clear = true })
end

-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  group = augroup("highlight_yank"),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Strip trailing whitesapce
vim.api.nvim_create_autocmd("BufWritePre", {
  group = augroup("strip_whitespace"),
  pattern = { "*" },
  command = [[%s/\s\+$//e]],
})
