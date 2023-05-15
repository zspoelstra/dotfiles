local wezterm = require("wezterm")

local act = wezterm.action
local config = wezterm.config_builder()

config.audible_bell = "Disabled"
config.check_for_updates = false
config.color_scheme = "Nord (base16)"
config.command_palette_bg_color = "#3b4252"
config.command_palette_fg_color = "#d8dee9"
config.command_palette_font_size = 18.0
config.default_gui_startup_args = { "connect", "unix" }
config.font = wezterm.font_with_fallback({
  { family = "Fira Code Retina" },
  "Menlo",
})
config.font_size = 18.0
config.hide_tab_bar_if_only_one_tab = true
config.initial_cols = 120
config.initial_rows = 28
config.line_height = 1.2
config.tab_bar_at_bottom = true
config.unix_domains = {
  { name = "unix" },
}
config.window_close_confirmation = "NeverPrompt"
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

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
