vim.pack.add({ { src = "https://github.com/mason-org/mason.nvim" } })

require("mason").setup({})

local registry = require("mason-registry")
local ensure_installed = {
  "eslint-lsp",
  "lua-language-server",
  "stylua",
  "vtsls",
}

registry.refresh(function()
  for _, tool in ipairs(ensure_installed) do
    local package = registry.get_package(tool)
    if not package:is_installed() then
      package:install()
    end
  end
end)
