return {
    "vim-test/vim-test",

    config = function()
        vim.g["test#elixir#exunit#options"] = '--cover'

        vim.g["test#preserve_screen"] = false

        vim.g['test#strategy'] = {
          nearest = 'toggleterm',
          file = 'toggleterm',
          suite = 'toggleterm'
        }
    end
}
