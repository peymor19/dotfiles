return {

    "lukas-reineke/indent-blankline.nvim",

    config = function()
        vim.opt.list = true
        require("ibl").setup {
            indent = { char = "▏", tab_char = "▏"},
        }
    end
}
