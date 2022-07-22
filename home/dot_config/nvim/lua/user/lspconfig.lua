-- Load cmp_nvim_lsp
local cmp_lsp_ok, cmp_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_lsp_ok then
  return
end

-- Load lspconfig
local lspconfig_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_ok then
  return
end

-- Add additional capabilities supported by nvim-cmp
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = cmp_lsp.update_capabilities(capabilities)

-- Ruby
lspconfig.solargraph.setup {
  capabilities = capabilities,
}

-- Lua
lspconfig.sumneko_lua.setup {
  capabilities = capabilities,
  settings = {
    Lua = {
      runtime = { version = "LuaJIT", },
      diagnostics = { globals = { "vim" }, },
      workspace = { library = vim.api.nvim_get_runtime_file("", true), },
      telemetry = { enabled = false, },
      format = {
        enable = true,
        defaultConfig = {
          call_arg_parentheses = "keep",
          indent_style = "space",
          quote_style = "double",
        }
      }
    },
  },
  on_attach = function(client, bufnr)
    if client.resolved_capabilities.document_formatting then
      local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
      vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.formatting_sync()
        end,
      })
    end
  end
}
