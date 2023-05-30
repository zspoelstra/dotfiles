local function create_augroup(name)
  vim.api.nvim_create_augroup("zrs_" .. name, { clear = true })
end

-- highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  group = create_augroup("highlight_yank"),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- strip trailing whitesapce
vim.api.nvim_create_autocmd("BufWritePre", {
  group = create_augroup("strip_whitespace"),
  pattern = { "*" },
  command = [[%s/\s\+$//e]],
})
