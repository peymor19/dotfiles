" vim-prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" not used >>> map <Leader>vp :VimuxPromptCommand<CR>
command! -nargs=0 Nexterror :call CocAction('diagnosticNext')<CR>
command! -nargs=0 Preverror :call CocAction('diagnosticPrevious')<CR>
