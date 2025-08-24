return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "nvim-lua/plenary.nvim", branch = "master" },
      {
        "folke/snacks.nvim",
        opts = {
          picker = {
            enabled = true,
            ui_select = true,
          },
        },
      }
    },
    build = "make tiktoken",
    opts = {
      window = {
        width = 0.4,
      },
      mappings = {
        complete = {
          insert = '<C-;>',
          callback = function()
            require('CopilotChat.completion').complete()
          end,
        },
      }
    },
    keys = {
      {'<leader>a', ":CopilotChatToggle<CR>", { noremap = false, desc = "Toggle CopilotChat" }},
    }
  },
  {
    "zbirenbaum/copilot.lua",
    event = "VeryLazy",
    opts = {}
  }
}
