return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require('nvim-treesitter.configs').setup({
                ensure_installed = {},

                sync_install = false,

                auto_install = true,

                highlight = {
                    enable = true,
                    disable = function(_, buf)
                        local max_filesize = 10000 * 1024 -- 10 MB
                        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
                        if ok and stats and stats.size > max_filesize then
                            vim.notify_once("Treesitter disabled")
                            return true
                        end
                    end,
                },

                indent = {
                    enable = true,
                },
                rainbow = {
                    enable = true,
                    extended_mode = true,
                    max_file_lines = nil,
                },
            })

        end
    },

    {
        "nvim-treesitter/nvim-treesitter-context",

        config = function()
            require'treesitter-context'.setup{
              enable = false, -- Enable this plugin (Can be enabled/disabled later via commands)
              max_lines = 0, -- How many lines the window should span. Values <= 0 mean no limit.
              min_window_height = 0, -- Minimum editor window height to enable context. Values <= 0 mean no limit.
              line_numbers = true,
              multiline_threshold = 20, -- Maximum number of lines to collapse for a single context line
              trim_scope = 'outer', -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
              mode = 'cursor',  -- Line used to calculate context. Choices: 'cursor', 'topline'
              -- Separator between context and content. Should be a single character string, like '-'.
              -- When separator is set, the context will only show up when there are at least 2 lines above cursorline.
              separator = nil,
              zindex = 20, -- The Z-index of the context window
            }
        end
    }
}

