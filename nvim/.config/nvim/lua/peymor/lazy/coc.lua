return {
    "neoclide/coc.nvim",
    branch = 'release',
    config = function()
        vim.g.coc_global_extensions = {
            'coc-snippets',
            'coc-pairs',
            'coc-tsserver',
            'coc-eslint',
            'coc-prettier',
            'coc-json'
        }
    end
}
