return {
    "folke/tokyonight.nvim",

    branch = "main",
    lazy = false,
    priority = 1000,

    config = function()
        require("tokyonight").setup({
          style = "night",
          -- disable italic for functions
          styles = {
            functions = {}
          },
          sidebars = { "qf", "vista_kind", "terminal", "packer" },
          -- Change the "hint" color to the "orange" color, and make the "error" color bright red
          on_colors = function(colors)
            colors.hint = colors.orange
            colors.error = "#ff0000"
          end
        })

        vim.cmd.colorscheme('tokyonight')
    end
}
