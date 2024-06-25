local wezterm = require("wezterm")
local act = wezterm.action
local config = {}

local active_scheme = "Catppuccin Mocha"
local scheme = wezterm.color.get_builtin_schemes()[active_scheme]

config.audible_bell = "Disabled"
config.automatically_reload_config = true
config.color_scheme = active_scheme
config.colors = {
  tab_bar = {
    background = scheme.background,
  },
}
config.font = wezterm.font("JetBrains Mono")
config.font_size = 18.0
config.keys = {
  {
    key = "k",
    mods = "SUPER",
    action = act.Multiple({
      act.ClearScrollback("ScrollbackAndViewport"),
      act.SendKey({ key = "L", mods = "CTRL" }),
    }),
  },
}
config.show_new_tab_button_in_tab_bar = false
config.show_tab_index_in_tab_bar = false
config.use_fancy_tab_bar = false
config.window_close_confirmation = "NeverPrompt"
config.window_decorations = "RESIZE"
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
  local title = tab.tab_title
  if not title or #title == 0 then
    title = tab.active_pane.title
  end

  return " " .. title .. " "
end)

return config
