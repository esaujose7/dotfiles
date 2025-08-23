return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "nvim-lua/plenary.nvim", branch = "master" },
    },
    build = "make tiktoken",
    opts = {
      -- See Configuration section for options
    },
    keys = {
      {'<leader>cp', ":CopilotChatToggle<CR>", { noremap = false }},
      {'<leader>cm', ":CopilotChatModels<CR>", { noremap = false }},
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
