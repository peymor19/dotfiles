-- Vim Leader key
vim.g.mapleader = ' '

-- Vim Colors
vim.opt.termguicolors = true

-- Vim line numbers
vim.opt.number = true

-- Syntax
vim.cmd "syntax on"

-- Cursor and line config
vim.g.mouse = a
vim.g.cursorline = true
vim.cmd('highlight Cursorline cterm=NONE ctermbg=black')

-- Vim tab settings
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.textwidth = 160
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

-- Vim file save
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Search config
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.showmatch = true

-- Vim Wiki
vim.g.vimwiki_list = { { path = '~/vimwiki/', syntax = 'markdown', ext = 'md' } }

-- random vim config
vim.opt.showmode = false
vim.opt.showcmd = false
vim.opt.updatetime = 50
vim.opt.scrolloff = 8
vim.opt.signcolumn = "no"
vim.opt.compatible = false

-- Auto change directory to newly created file directory
vim.opt.autochdir = false

-- Sets a color column on the right for reference
-- vim.opt.colorcolumn = "80"

