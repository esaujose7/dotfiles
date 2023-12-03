return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
      require 'nvim-treesitter.configs'.setup {
        highlight = { enable = true },
        indent = { enable = true },
        ensure_installed = {
          "bash",
          "tsx",
          "css",
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
          "lua",
          "php",
          "python",
          "scala",
          "scss",
          "sql",
          "typescript",
          "yaml"
        }
      }
    end
  }
}
