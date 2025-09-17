local wezterm = require 'wezterm'

local config = {
    color_scheme = 'GitHub Dark',
    font = wezterm.font('FiraCode Nerd Font'),
    font_size = 16,

    window_padding = {
        left = 20,
        right = 20,
        top = 40,
        bottom = 15,
    },

    window_background_opacity = 0.95,
    macos_window_background_blur = 10,

    enable_tab_bar = false,
    adjust_window_size_when_changing_font_size = false,
    window_close_confirmation = "NeverPrompt",
    native_macos_fullscreen_mode = false,
    window_decorations = "RESIZE",
    debug_key_events = false,
    max_fps = 120,

    colors = {
        cursor_bg = "#47FF9C",
        cursor_border = "#47FF9C",
        cursor_fg = "#011423"
    }
}

return config
