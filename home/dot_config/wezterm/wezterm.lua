local wezterm = require 'wezterm'
local config = wezterm.config_builder()

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

config.window_background_image = os.getenv('HOME') .. '/.config/wezterm/background'
config.window_background_opacity = 0.95
config.macos_window_background_blur = 40
config.window_background_image_hsb = {
	-- Darken the background image by reducing it to 1/3rd
	brightness = 0.1,

	-- You can adjust the hue by scaling its value.
	-- a multiplier of 1.0 leaves the value unchanged.
	hue = 1.0,

	-- You can adjust the saturation also.
	saturation = 0.6,
}

return config
