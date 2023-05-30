return {
  {
    "neovim/nvim-lspconfig",
    config = function(_, opts)
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
