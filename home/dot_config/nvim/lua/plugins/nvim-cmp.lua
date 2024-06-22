local M = {
  "hrsh7th/nvim-cmp",
  config = function(_, opts)
    require("cmp").setup(opts)
  end,
  dependencies = {
    { "hrsh7th/cmp-nvim-lsp" },
    { "hrsh7th/cmp-buffer" },
    { "hrsh7th/cmp-path" },
    { "L3MON4D3/LuaSnip" },
  },
  opts = function()
    local cmp = require("cmp")
    local luasnip = require("luasnip")

    return {
      mapping = cmp.mapping.preset.insert({
        -- Select [n]ext / [p]revious items
        ["<C-n>"] = cmp.mapping.select_next_item(),
        ["<C-p>"] = cmp.mapping.select_prev_item(),

        -- Accepts the completion
        ["<C-y>"] = cmp.mapping.confirm({ select = true }),

        -- Scroll [b]ackward / [f]orwards the documentation window
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
      }),
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      sources = {
        { name = "nvim_lsp" },
        { name = "luasnip" },
        { name = "buffer" },
        { name = "path" },
      },
    }
  end,
}

return { M }
