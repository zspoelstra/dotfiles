local treesitter_ok, treesitter = pcall(require, "nvim-treesitter.configs")
if not treesitter_ok then
  return
end

treesitter.setup {
  ensure_installed = {
    "css",
    "graphql",
    "html",
    "javascript",
    "json",
    "lua",
    "ruby",
    "scss",
    "typescript",
    "yaml",
  },
  highlight = {
    additional_vim_regex_highlighting = false,
    enable = true,
  },
  indent = {
    enable = false,
  },
}
