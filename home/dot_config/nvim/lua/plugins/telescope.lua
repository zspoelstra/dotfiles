local telescope_ok, telescope = pcall(require, "telescope")
if not telescope_ok then
  return
end

local live_grep_args_ok, live_grep_args = pcall(require, "telescope-live-grep-args.actions")
if not live_grep_args_ok then
  return
end

telescope.setup {
  defaults = {
    file_ignore_patterns = { ".git/", "node_modules" },
    path_display = { "truncate" }
  },
  extensions = {
    live_grep_args = {
      auto_quoting = true,
      mappings = {
        i = {
          ["<C-k>"] = live_grep_args.quote_prompt(),
        }
      }
    }
  }
}

telescope.load_extension("fzf")
telescope.load_extension("live_grep_args")
