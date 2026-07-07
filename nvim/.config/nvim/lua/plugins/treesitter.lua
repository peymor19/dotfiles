return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    build = ":TSUpdate",
    lazy = false,
    config = function()
      local ts = require("nvim-treesitter")

      ts.install({
        "lua", "vim", "vimdoc", "query",
        "elixir", "heex", "eex",
        "bash", "sql",
        "markdown", "markdown_inline",
        "yaml", "json",
      })

      local max_filesize = 10000 * 1024 -- 10 MB

      vim.api.nvim_create_autocmd("FileType", {
        group = vim.api.nvim_create_augroup("ts_auto_install", { clear = true }),
        pattern = "*",
        callback = function(args)
          local lang = vim.treesitter.language.get_lang(args.match) or args.match

          local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(args.buf))
          if ok and stats and stats.size > max_filesize then
            vim.notify_once("Treesitter disabled: file too large")
            return
          end

          local installed = pcall(function()
            ts.install({ lang }):wait(10000)
          end)

          if not installed then
            return
          end

          pcall(vim.treesitter.start, args.buf, lang)

          -- Treesitter indent (marked experimental upstream)
          vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end,
      })
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter-context",
    config = function()
      require("treesitter-context").setup({
        enable = false,
        max_lines = 0,
        min_window_height = 0,
        line_numbers = true,
        multiline_threshold = 20,
        trim_scope = "outer",
        mode = "cursor",
        separator = nil,
        zindex = 20,
      })
    end,
  },
}
