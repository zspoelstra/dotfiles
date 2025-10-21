local function augroup(name)
  vim.api.nvim_create_augroup("spoelstra." .. name, { clear = true })
end

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = augroup("highlight.yank"),
  callback = function()
    vim.hl.on_yank()
  end,
})

-- LSP
vim.api.nvim_create_autocmd("LspAttach", {
  desc = "",
  group = augroup("lsp"),
  callback = function(args)
    local bufnr = args.buf

    vim.keymap.set(
      "n",
      "gre",
      vim.diagnostic.open_float,
      { buffer = bufnr, desc = "Show Line Diagnostic", silent = true }
    )

    vim.keymap.set("n", "gd", function()
      Snacks.picker.lsp_definitions()
    end, { buffer = bufnr, desc = "Show LSP Definitions", silent = true })

    vim.keymap.set("n", "grr", function()
      Snacks.picker.lsp_references()
    end, { buffer = bufnr, desc = "Show LSP References", silent = true })
  end,
})
