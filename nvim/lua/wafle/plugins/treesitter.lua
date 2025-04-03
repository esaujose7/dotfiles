return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
        highlight = { enable = true },
        indent = { enable = true },
        ensure_installed = {
          "bash",
          "tsx",
          "xml",
          "css",
          "csv",
          "diff",
          "git_config",
          "git_rebase",
          "gitcommit",
          "gitattributes",
          "haskell",
          "gitignore",
          "go",
          "c",
          "make",
          "clojure",
          "dockerfile",
          "graphql",
          "html",
          "java",
          "markdown",
          "javascript",
          "jsdoc",
          "json",
          "kotlin",
          "lua",
          "vimdoc",
          "luadoc",
          "vim",
          "php",
          "prolog",
          "python",
          "scala",
          "scss",
          "sql",
          "svelte",
          "tmux",
          "typescript",
          "ruby",
          "rust",
          "yaml"
        }
      })
    end
  }
}
