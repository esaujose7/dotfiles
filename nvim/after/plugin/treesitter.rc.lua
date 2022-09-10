require 'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = {}
  },
  indent = {
    enable = true,
    disable = {}
  },
  ensure_installed = {
    "bash",
    "tsx",
    "css",
    "go",
    "dockerfile",
    "graphql",
    "html",
    "java",
    "jsdoc",
    "markdown",
    "javascript",
    "jsdoc",
    "json",
    "lua",
    "php",
    "python",
    "scala",
    "scss",
    "typescript",
    "yaml"
  }
}
