local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- Appearance
config.color_scheme = 'Tokyo Night' -- Very clean, high contrast
config.font = wezterm.font('JetBrainsMono Nerd Font')
config.font_size = 11.0
config.window_background_opacity = 0.92

-- Borders and UI
-- Pop!_OS handles tiling, so we want WezTerm to show its own borders 
-- or stay clean depending on  preference.
config.window_padding = { left = 8, right = 8, top = 8, bottom = 8 }
config.window_decorations = "RESIZE" -- Keeps the resizing border

-- Shortcuts (Linux Style)
config.keys = {
  -- Split horizontal (Ctrl+Shift+D)
  { key = 'D', mods = 'CTRL|SHIFT', action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' } },
  -- Split vertical (Ctrl+Shift+E)
  { key = 'E', mods = 'CTRL|SHIFT', action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' } },
  -- New Tab (Ctrl+Shift+T)
  { key = 'T', mods = 'CTRL|SHIFT', action = wezterm.action.SpawnTab 'CurrentPaneDomain' },
  -- Close Pane (Ctrl+Shift+W)
  { key = 'W', mods = 'CTRL|SHIFT', action = wezterm.action.CloseCurrentPane { confirm = true } },
}

return config
