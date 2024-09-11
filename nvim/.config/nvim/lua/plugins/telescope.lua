return {
    'nvim-telescope/telescope.nvim',

    dependencies = {
        "nvim-lua/plenary.nvim"
    },

    config = function()
        require('telescope').setup({
            defaults = {
                file_ignore_patterns = {".git/", ".cache", "%.o", "%.a", "%.out", "%.class",
                    "%.pdf", "%.mkv", "%.mp4", "%.zip"}
            }
        })
    end
}
