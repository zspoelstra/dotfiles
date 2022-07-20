require('nvim-treesitter.configs').setup {
  ensure_installed = {
    'lua',
    'ruby'
  },
  highlight = {
    enabled = true
  },
  indent = {
    enabled = false
  },
}
