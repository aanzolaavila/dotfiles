local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- config.color_scheme = 'Batman'
config.font = wezterm.font('Inconsolata Nerd Font Mono',
	{
		stretch = 'Expanded',
		weight = 'Regular',
	}
)

config.enable_tab_bar = false
config.cursor_blink_rate = 0 -- disable

config.max_fps = 120

return config
