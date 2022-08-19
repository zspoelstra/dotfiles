local catppuccin_loaded, catppuccin = pcall(require, "catppuccin")
if not catppuccin_loaded then
  return
end

vim.g.catppuccin_flavour = "mocha"

catppuccin.setup {
  compile = {
    enabled = true
  }
}

local rose_pine_loaded, rose_pine = pcall(require, "rose-pine")
if not rose_pine_loaded then
  return
end

rose_pine.setup {
  dark_variant = "moon"
}

vim.cmd [[colorscheme rose-pine]]
