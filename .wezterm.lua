-- Pull in wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration
local config = wezterm.config_builder()

config.keys = {{
    key = "r",
    mods = "CMD|SHIFT",
    action = wezterm.action.ReloadConfiguration
}, {
    key = "d",
    mods = "CMD",
    action = wezterm.action.SplitHorizontal({
        domain = "CurrentPaneDomain"
    })
}, {
    key = "d",
    mods = "CMD|SHIFT",
    action = wezterm.action.SplitVertical({
        domain = "CurrentPaneDomain"
    })
}}

config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 16

config.window_decorations = "RESIZE"

config.color_scheme = "Dracula"

config.window_background_opacity = 0.9
config.macos_window_background_blur = 25

config.window_close_confirmation = 'NeverPrompt'

return config
