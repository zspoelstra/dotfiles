local loaded, wk = pcall(require, "which-key")
if not loaded then
  return
end

wk.setup {}
wk.register({
  ["<leader>"] = {
    b = {
      name = "+buffers",
      b = { ":Telescope buffers<cr>", "Search Buffers" },
      d = { ":bd", "Delete Buffer" },
    },
    e = {
      name = "+explorer",
      e = { ":Neotree toggle<cr>", "Toggle Explorer" },
      f = { ":Neotree focus<cr>", "Focus Explorer" },
      r = { ":Neotree reveal<cr>", "Reveal File" },
    },
    f = {
      name = "+file",
      f = { ":Telescope find_files<cr>", "Find File" },
      g = { ":Telescope live_grep_args<cr>", "Live Grep" },
      h = { ":Telescope help_tags<cr>", "Help Tags" },
      o = { ":Telescope oldfiles<cr>", "Open Recent Files" },
      r = { ":Telescope resume<cr>", "Resume" },
    }
  }
})
