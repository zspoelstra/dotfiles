return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "eslint-lsp",
        "lua-language-server",
        "stylua",
        "vtsls",
      },
    },
    config = function(_, opts)
      require("mason").setup(opts)

      local registry = require("mason-registry")
      registry.refresh(function()
        for _, tool in ipairs(opts.ensure_installed) do
          local package = registry.get_package(tool)
          if not package:is_installed() then
            package:install()
          end
        end
      end)
    end,
  },
}
