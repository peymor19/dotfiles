return {
    "vim-test/vim-test",

    config = function()
        vim.cmd [[
            let test#strategy = "neovim"
        ]]
        vim.cmd [[
            let test#go#gotest#options = '-v'
        ]]
    end
}
