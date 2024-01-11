" Vim Config
set nocompatible
filetype plugin on

" This allows to write buffer as sudo if you are not sudo
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

" tabs "
set tabstop      =4
set softtabstop  =4
set shiftwidth   =4
set textwidth    =79
set expandtab
set autoindent
filetype indent off

set noswapfile

" colors "
set termguicolors
" for tmux colors
let &t_8f = "\<Esc>[38:2:%lu:%lu:%lum"
let &t_8b = "\<Esc>[48:2:%lu:%lu:%lum"

" always show tabs
set showtabline=2

" show show mode cause airline does it now
set noshowmode

" coc config
let g:coc_global_extensions = [
    \ 'coc-snippets',
    \ 'coc-pairs',
    \ 'coc-tsserver',
    \ 'coc-eslint',
    \ 'coc-prettier',
    \ 'coc-json',
    \ ]

" auto remove trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

" List code actions available for the current buffer
nmap <leader>ca  <Plug>(coc-codeaction)

inoremap <silent><expr> <c-space> coc#refresh()
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" vim-prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" vertical split
nnore map <silent> vv <C-w>v

" not used >>> map <Leader>vp :VimuxPromptCommand<CR>

command! -nargs=0 Nexterror                               :call CocAction('diagnosticNext')<CR>
command! -nargs=0 Preverror                               :call CocAction('diagnosticPrevious')<CR>

let g:vimwiki_list = [{'path': '~/vimwiki/',
\ 'syntax': 'markdown', 'ext': '.md'}]


" neovim packages configs
" require('plug-config/null-ls')
" require('plug-config/nvim-lspconfig')
lua <<EOF
require('packer/plugins')
require('plug-config/tokyonight')
require('options')
require('key-binds')
EOF

