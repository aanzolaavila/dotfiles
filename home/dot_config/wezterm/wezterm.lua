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

-- Maximize window on startup
config.native_macos_fullscreen_mode = true
local mux = wezterm.mux
wezterm.on("gui-startup", function()
	local _, _, window = mux.spawn_window {}
	window:gui_window():maximize()
end)

config.max_fps = 120
config.animation_fps = 1 -- disable animations

config.window_background_image = os.getenv('HOME') .. '/.config/wezterm/background.jpg'
config.window_background_opacity = 0.3

return config
