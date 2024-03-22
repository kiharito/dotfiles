local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.font_size = 16.0
config.window_frame = {
    font_size = 16.0,
}

return config
