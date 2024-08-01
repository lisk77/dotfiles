local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.color_scheme = 'OneDark (base16)'

config.colors = {
  background = 'rgba(40,44,52,0.5)',
}

config.font_size = 18.0

config.enable_tab_bar = false

config.window_padding = {
  left = 0,
  right = 0,
  top = 0.1,
  bottom = 0,
}

return config
