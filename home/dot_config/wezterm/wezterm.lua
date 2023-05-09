local wezterm = require("wezterm")

local act = wezterm.action
local config = wezterm.config_builder()

config.audible_bell = "Disabled"
config.color_scheme = "Nord (base16)"
config.command_palette_bg_color = "#3b4252"
config.command_palette_fg_color = "#d8dee9"
config.command_palette_font_size = 18.0
config.font = wezterm.font_with_fallback({
  { family = "Fira Code Retina" },
  "Menlo",
})
config.font_size = 18.0
config.hide_tab_bar_if_only_one_tab = true
config.line_height = 1.2
config.tab_bar_at_bottom = true
config.window_decorations = "RESIZE"

config.keys = {
  {
    key = "k",
    mods = "CMD",
    action = act.Multiple({
      act.ClearScrollback("ScrollbackAndViewport"),
      act.SendKey({ key = "L", mods = "CTRL" }),
    }),
  },
}

return config
