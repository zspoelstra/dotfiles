return {
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      { "folke/neodev.nvim", config = true },
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    config = function(_, opts)
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

      require("util").on_attach(function(client, bufnr)
        require("plugins.lsp.format").on_attach(client, bufnr)
        require("plugins.lsp.keymaps").on_attach(client, bufnr)
      end)

      local function setup(server)
        local server_opts = vim.tbl_deep_extend("force", {
          capabilities = vim.deepcopy(capabilities),
        }, opts.servers[server] or {})

        if opts.setup and opts.setup[server] then
          opts.setup[server](server, server_opts)
        end

        require("lspconfig")[server].setup(server_opts)
      end

      require("mason-lspconfig").setup({ ensure_installed = vim.tbl_keys(opts.servers) })
      require("mason-lspconfig").setup_handlers({ setup })
    end,
  },
}
