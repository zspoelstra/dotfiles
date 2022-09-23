local rose_pine_loaded, rose_pine = pcall(require, "rose-pine")
if not rose_pine_loaded then
  return
end

rose_pine.setup {
  dark_variant = "moon"
}

vim.cmd [[colorscheme rose-pine]]
