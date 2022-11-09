local telescope_ok, telescope = pcall(require, "telescope")
if not telescope_ok then
  return
end

telescope.setup {
  defaults = {
    file_ignore_patterns = { ".git/", "node_modules" },
    path_display = { "truncate" }
  },
}

telescope.load_extension("fzf")
telescope.load_extension("live_grep_args")
