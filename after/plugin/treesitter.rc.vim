if !exists('g:loaded_nvim_treesitter')
  finish
endif

lua <<EOF
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
    "dockerfile",
    "graphql",
    "html",
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
EOF
