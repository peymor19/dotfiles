-- Vim Leader key
vim.g.mapleader = ' '

-- Vim Colorscheme
vim.cmd.colorscheme('tokyonight')

-- Vim line numbers
vim.o.number = true

-- Syntax
vim.cmd('syntax on')

-- Cursor and line config
vim.g.mouse = a
vim.g.cursorline = true
vim.cmd('highlight Cursorline cterm=NONE ctermbg=black')

-- Search config
vim.api.nvim_set_option('hlsearch', true)
vim.api.nvim_set_option('ignorecase', true)
vim.api.nvim_set_option('smartcase', true)
vim.api.nvim_set_option('showmatch', true)

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

-- get our plugins
require('plug-config/vim-test')
require('plug-config/treesitter')
require('plug-config/treesitter-context')
require('plug-config/toggleterm')
require('plug-config/wilder')
require('plug-config/lsp-lines')
require('plug-config/blankline')
require('plug-config/bufferline')
require('plug-config/tabnine')
require('plug-config/mason')
