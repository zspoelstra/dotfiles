local loaded, wk = pcall(require, "which-key")
if not loaded then
  return
end

wk.setup {}
wk.register({
  ["<Esc>"] = { ":nohl<cr>", "Clear Search Highlight" },
  ["<C-h>"] = { "<C-w>h", "Window Left" },
  ["<C-j>"] = { "<C-w>j", "Window Down" },
  ["<C-k>"] = { "<C-w>k", "Window Up" },
  ["<C-l>"] = { "<C-w>l", "Window Right" },
  ["<C-d>"] = { "<C-d>zz", "Page Down" },
  ["<C-u>"] = { "<C-u>zz", "Page Up" },
  ["<leader>"] = {
    b = {
      name = "+buffers",
      b = { ":Telescope buffers<cr>", "Search Buffers" },
      d = { ":Bdelete<cr>", "Delete Buffer" },
    },
    c = {
      name = "+copy",
      f = { ":let @+ = expand(\"%:t\")<cr>", "File Name" },
      p = { ":let @+ = expand(\"%\")<cr>", "File Path"},
    },
    e = {
      name = "+explorer",
      e = { ":Neotree toggle<cr>", "Toggle Explorer" },
      f = { ":Neotree focus<cr>", "Focus Explorer" },
      r = { ":Neotree reveal<cr>", "Reveal File" },
    },
    f = {
      name = "+find",
      f = { ":Telescope find_files<cr>", "Find File" },
      g = { ":Telescope live_grep_args<cr>", "Live Grep" },
      h = { ":Telescope help_tags<cr>", "Help Tags" },
      o = { ":Telescope oldfiles<cr>", "Open Recent Files" },
      r = { ":Telescope resume<cr>", "Resume Search" },
      w = { ":Telescope grep_string<cr>", "Search Current Word"}
    }
  }
})
