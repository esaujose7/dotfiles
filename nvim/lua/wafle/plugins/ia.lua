return {
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
