return {
  {
    'hoob3rt/lualine.nvim',
    config = function()
      require 'lualine'.setup {
        options = {
          icons_enabled = true,
          theme = 'catppuccin',
          section_separators = {'', ''},
          component_separators = {'', ''},
          disabled_filetypes = {}
        },
        sections = {
          lualine_a = {'mode'},
          lualine_b = {'branch', 'diff'},
          lualine_c = {
            {'filename', path = 1, file_status = true}
          },
          lualine_x = {
            { 'diagnostics', sources = {"nvim_diagnostic"}, symbols = {error = ' ', warn = ' ', info = ' ', hint = ' '} },
            'encoding',
            'filetype'
          },
          lualine_y = {'progress'},
          lualine_z = {'location'}
        },
        tabline = {},
        extensions = {'fugitive', 'nvim-tree'}
      }
    end
  }
}
