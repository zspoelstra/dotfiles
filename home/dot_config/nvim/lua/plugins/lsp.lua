return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua"
      }
    },
    config = function (_, opts)
      require("mason").setup(opts)
      local mr = require("mason-registry")
      for _, tool in ipairs(opts.ensure_installed) do
        local p = mr.get_package(tool)
        if not p:is_installed() then
          p:install()
        end
      end
    end
  },

  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "sumneko_lua" }
    }
  },

  {
    "jose-elias-alvarez/null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = { "mason.nvim" },
    opts = function()
      local nls = require("null-ls")
      return {
        sources = {
          nls.builtins.formatting.prettier,
          nls.builtins.formatting.stylua,
        },
      }
    end,
  },
}