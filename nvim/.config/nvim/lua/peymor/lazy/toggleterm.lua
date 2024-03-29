return {
    "akinsho/toggleterm.nvim",

    config = function()
            require('toggleterm').setup({
                size =20,
                open_mapping = [[<c-t>]],
                hide_numbers =true,
                shade_filetypes = {},
                shade_terminals = true,
                shading_factor = 2,
                start_in_insert = true,
                insert_mappings = true,
                persist_size = true,
                direction = "float",
                close_on_exit = true,
                shell = vim.o.shell,
                float_opts = {
                    border = "curved",
                    winblend = 0,
                    highlights = {
                        border = "Normal",
                        background = "Normal",
                    },
                },
            })

            function _G.set_terminal_keymaps()
              local opts = {buffer = 0}
              vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
              vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
              vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
              vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
              vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
              vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
            end

            -- if you only want these mappings for toggle term use term://*toggleterm#* instead
            vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

            -- local filename = vim.fn.expand('%')
            local filename = vim.api.nvim_buf_get_name(0)
            local file = string.format('phplinter %s', filename)

            local Terminal = require("toggleterm.terminal").Terminal
            local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })

            function _LAZYGIT_TOGGLE()
                lazygit:toggle()
            end

            vim.api.nvim_set_keymap("n", "<c-g>", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", {noremap = true, silent = true})
        end
}
