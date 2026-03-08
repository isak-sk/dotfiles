local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- Appearance
config.color_scheme = 'darkmoss (base16)'
config.font = wezterm.font('JetBrainsMono Nerd Font')
config.font_size = 12.0
config.window_background_opacity = 1

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
