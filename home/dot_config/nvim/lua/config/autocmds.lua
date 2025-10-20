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
    local client = vim.lsp.get_client_by_id(args.data.client_id)

    if client and client:supports_method("textDocument/inlayHint") then
      vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
    end

    vim.keymap.set("n", "gd", function()
      Snacks.picker.lsp_definitions()
    end, { buffer = bufnr, desc = "Show LSP Definitions", silent = true })
  end,
})
