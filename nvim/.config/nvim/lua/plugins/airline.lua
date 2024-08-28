return {
    "vim-airline/vim-airline",

    dependencies = {
        "vim-airline/vim-airline-themes",
    },

    config = function()
        -- Airline plugin configs
        vim.g.airline_theme = 'onedark'
        vim.g.airline_extensions_tabline_enabled = 0
        vim.g.airline_extensions_tabline_formatter = 'unique_tail_improved'
        vim.g.airline_extensions_tabline_left_sep = ''
        vim.g.airline_extensions_tabline_left_alt_sep = ''
        vim.g.airline_extensions_tabline_right_sep = ''
        vim.g.airline_extensions_tabline_right_alt_sep = ''
        vim.g.airline_powerline_fonts = 1
        vim.g.airline_left_sep = ''
        vim.g.airline_right_sep = ''
    end
}
