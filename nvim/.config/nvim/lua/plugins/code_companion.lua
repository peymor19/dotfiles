return {
  "olimorris/codecompanion.nvim",
  cmd = { "CodeCompanion", "CodeCompanionChat", "CodeCompanionActions" },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    { "MeanderingProgrammer/render-markdown.nvim", ft = { "markdown", "codecompanion" } }, -- optional
  },
  opts = {
    adapters = {
      http = {
        qwen_local = function()
          return require("codecompanion.adapters").extend("ollama", {
            env = {
              url = "http://127.0.0.1:11434",
            },
            schema = {
              model = {
                default = "qwen3.5:35b",
              },
              num_ctx = {
                default = 32768,
              },
            },
          })
        end,
      },
    },
    interactions = {
      chat = { adapter = "qwen_local" },
      inline = { adapter = "qwen_local" },
      cmd = { adapter = "qwen_local" },
    },
    display = {
      chat = {
        window = {
          position = "right",
          width = 0.35,
        },
      },
    },
  },
  keys = {
    { "<leader>cc", "<cmd>CodeCompanionChat Toggle<cr>", mode = { "n", "v" }, desc = "CodeCompanion Chat" },
    { "<leader>ca", "<cmd>CodeCompanionActions<cr>", mode = { "n", "v" }, desc = "CodeCompanion Actions" },
    { "<leader>ci", "<cmd>CodeCompanion<cr>", mode = "n", desc = "CodeCompanion Inline" },
    { "<leader>ci", ":CodeCompanion<cr>", mode = "v", desc = "CodeCompanion Inline (Selection)" },
    { "ga", "<cmd>CodeCompanionChat Add<cr>", mode = "v", desc = "Add selection to chat" },
  },
}
