local status_ok, catppuccin = pcall(require, "catppuccin")
if not status_ok then
  return
end

vim.g.catppuccin_flavour = "mocha"

catppuccin.setup {
  compile = {
    enabled = true
  }
}

vim.cmd [[colorscheme catppuccin]]
