return {
  {
    "neovim/nvim-lspconfig",
    config = function(_, opts)
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local buffer = args.buf
          local client = vim.lsp.get_client_by_id(args.data.client_id)

          if client.supports_method("textDocument/formatting") then
            vim.api.nvim_create_autocmd("BufWritePre", {
              group = vim.api.nvim_create_augroup("LspFormat." .. buffer, {}),
              buffer = buffer,
              callback = function()
                vim.lsp.buf.format({
                  bufnr = buffer,
                  filter = function(cl)
                    return cl.name == "null-ls"
                  end,
                })
              end,
            })
          end
        end,
      })

      local function setup(server_name)
        local server_opts = opts.servers[server_name] or {}
        require("lspconfig")[server_name].setup(server_opts)
      end

      require("mason-lspconfig").setup({ ensure_installed = vim.tbl_keys(opts.servers) })
      require("mason-lspconfig").setup_handlers({ setup })
    end,
    dependencies = {
      { "folke/neodev.nvim", config = true },
      { "williamboman/mason.nvim" },
      { "williamboman/mason-lspconfig.nvim" },
    },
    event = { "BufNewFile", "BufReadPre" },
    opts = {
      servers = {
        lua_ls = {
          settings = {
            Lua = {
              telemetry = { enable = true },
              workspace = { checkThirdParty = false },
            },
          },
        },
      },
    },
  },
}
