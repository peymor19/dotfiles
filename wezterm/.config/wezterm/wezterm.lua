local wezterm = require 'wezterm'

local config = {
    enable_tab_bar = false,

    color_scheme = 'GitHub Dark',
    font = wezterm.font('FiraCode Nerd Font'),

    window_padding = {
        left = 40,
        right = 20,
        top = 15,
        bottom = 20,
    },

    adjust_window_size_when_changing_font_size = false,
    window_close_confirmation = "NeverPrompt",
    native_macos_fullscreen_mode = false,
    window_decorations = "RESIZE",
    debug_key_events = false,
    max_fps = 120
}

return config
