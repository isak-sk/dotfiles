local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- Appearance
config.color_scheme = "Gruvbox dark, hard (base16)"
config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 12.0
config.window_background_opacity = 1

-- THE "FEDORA FIX":
-- 1. Disable the custom tab bar which often breaks GNOME borders
config.use_fancy_tab_bar = false

-- 2. Force the window to be a standard X11-style window (works better for borders)
-- Even on Wayland, this often forces the compositor to provide decorations
config.enable_wayland = false

-- 3. Use the most basic decoration setting
config.window_decorations = "RESIZE | TITLE"

-- Keybinds
config.keys = {
	{ key = "v", mods = "ALT|SHIFT", action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
	{ key = "s", mods = "ALT|SHIFT", action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }) },
	{ key = "w", mods = "ALT|SHIFT", action = wezterm.action.CloseCurrentPane({ confirm = true }) },
}

return config
