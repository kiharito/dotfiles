local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.font_size = 16.0
config.window_frame = {
    font_size = 16.0,
}
config.font = wezterm.font("HackGen35 Console NF", {weight="Regular", stretch="Normal", style="Normal"})

return config
