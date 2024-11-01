return {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = {
        'nvim-tree/nvim-web-devicons'
    },
    config = function()
        require("bufferline").setup({
            options = {
                mode = "buffers",
                separator_style = { "", "" },
                offsets = { { text_align = "left", separator = false } },
                indicator = { style = "none" },
                show_buffer_close_icons = false,
                show_close_icon = false,
                show_tab_indicators = false,
            }
        })
    end
}
