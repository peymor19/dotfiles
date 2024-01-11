local configs = require'nvim-treesitter.configs'
configs.setup {
  highlight = {
    enable = true,
  }
}
require'nvim-treesitter.configs'.setup {

    ensure_installed = { "php", "cpp", "go", "bash", "html", "rust", "css", "perl", "lua", "javascript", "yaml"},

    sync_install = false,

    auto_install = true,

    highlight = {
      enable = true,
    },

    indent = {
        enable = true,
    },
    rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil,
    }
  }
