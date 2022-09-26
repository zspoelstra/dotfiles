local loaded, wk = pcall(require, "which-key")
if not loaded then
  return
end

wk.setup {}
wk.register({
  ["<leader>"] = {
    e = {
      name = "+explorer",
      e = { "<cmd>Neotree toggle<cr>", "Toggle" },
      f = { "<cmd>Neotree focus<cr>", "Focus" },
      r = { "<cmd>Neotree reveal<cr>", "Reveal File" },
    },
    f = {
      name = "+file",
      b = { "<cmd>Telescope buffers<cr>", "Find Buffers" },
      f = { "<cmd>Telescope find_files<cr>", "Find File" },
      g = { "<cmd>Telescope live_grep_args<cr>", "Live Grep" },
      h = { "<cmd>Telescope help_tags<cr>", "Help Tags" },
      o = { "<cmd>Telescope oldfiles<cr>", "Open Recent Files" },
      r = { "<cmd>Telescope resume<cr>", "Resume" },
    }
  }
})
