return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "nvim-lua/plenary.nvim", branch = "master" },
    },
    build = "make tiktoken",
    opts = {
      window = {
        width = 0.4,
      },
    },
    keys = {
      {'<leader>a', ":CopilotChatToggle<CR>", { noremap = false }},
    }
  },
  {
    "zbirenbaum/copilot-cmp",
    dependencies = {
      {
        "zbirenbaum/copilot.lua",
        event = "VeryLazy",
        opts = {
          suggestion = {
            enabled = false,
          },
          panel = {
            enabled = false
          },
          filetypes = {
            ["*"] = true
          },
        },
      }
    },
    opts = {}
  }
}
