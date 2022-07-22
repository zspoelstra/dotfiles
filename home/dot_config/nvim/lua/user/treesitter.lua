local treesitter_ok, treesitter = pcall(require, "nvim-treesitter.configs")
if not treesitter_ok then
  return
end

treesitter.setup {
  ensure_installed = {
    "lua",
    "ruby"
  },
  highlight = {
    enabled = true
  },
  indent = {
    enabled = false
  },
}
