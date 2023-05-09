local wezterm = require 'wezterm'

local mux = wezterm.mux
local act = wezterm.action

local config = wezterm.config_builder()

config.audible_bell = 'Disabled'
config.color_scheme = 'Nord (base16)'
config.font = wezterm.font_with_fallback {
  { family = 'Fira Code Retina' },
  'Menlo'
}
config.font_size = 18.0
config.hide_tab_bar_if_only_one_tab = true
config.line_height = 1.2
config.tab_bar_at_bottom = true
config.window_decorations = 'RESIZE'

-- config.disable_default_key_bindings = true
config.keys = {
  {
    key = 'k',
    mods = 'CMD',
    action = act.Multiple {
      act.ClearScrollback 'ScrollbackAndViewport',
      act.SendKey { key = 'L', mods = 'CTRL' },
    },
  },
}

-- wezterm.on('gui-startup', function(window)
--   window:maximize()
-- end)

return config
