return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "nvim-lua/plenary.nvim", branch = "master" },
    },
    build = "make tiktoken",
    opts = {
      -- See Configuration section for options
      window = {
        width = 0.4,              -- 50% of screen width
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
