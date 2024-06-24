local wezterm = require("wezterm")
local config = {}

config.automatically_reload_config = true
config.font = wezterm.font("JetBrains Mono")
config.font_size = 18.0
config.color_scheme = "Catppuccin Mocha"
config.use_fancy_tab_bar = false
config.window_decorations = "INTEGRATED_BUTTONS | RESIZE"
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

return config
