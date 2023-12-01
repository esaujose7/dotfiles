return {
  {
    'tpope/vim-fugitive',
    keys = {
      {'<leader>gs', ":Git<CR>", { noremap = false }},
      {'<leader>gc', ":Git commit<CR>", { noremap = false }}
    },
    lazy = true
  },
  {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup {
        signs = {
          add          = {hl = 'GitSignsAdd'   , text = '+', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
          change       = {hl = 'GitSignsChange', text = '~', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
          delete       = {hl = 'GitSignsDelete', text = '-', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
          topdelete    = {hl = 'GitSignsDelete', text = '‾', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
          changedelete = {hl = 'GitSignsChange', text = '~', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
        },
        on_attach = function(bufnr)
          local gs = package.loaded.gitsigns

          local function map(mode, l, r, opts)
            opts = opts or {}
            opts.buffer = bufnr
            vim.keymap.set(mode, l, r, opts)
          end

          -- Navigation
          map('n', ']c', function()
            if vim.wo.diff then return ']c' end
            vim.schedule(function() gs.next_hunk() end)
            return '<Ignore>'
          end, {expr=true})

          map('n', '[c', function()
            if vim.wo.diff then return '[c' end
            vim.schedule(function() gs.prev_hunk() end)
            return '<Ignore>'
          end, {expr=true})

          -- Actions
          map('n', 'ghs', gs.stage_hunk)
          map('n', 'ghs', function() gs.stage_hunk {vim.fn.line('.'), vim.fn.line('v')} end)
          map('n', 'ghu', gs.undo_stage_hunk)
          map('n', 'ghr', gs.reset_hunk)
          map('n', 'ghr', function() gs.reset_hunk {vim.fn.line('.'), vim.fn.line('v')} end)
          map('n', 'ghR', gs.reset_buffer)
          map('n', 'ghp', gs.preview_hunk)
          map('n', 'ghb', function() gs.blame_line{full=true} end)
          map('n', 'ghd', gs.diffthis)
          map('n', 'ghD', function() gs.diffthis('~') end)
          -- Text object
          map({'o', 'x'}, 'ih', ':<C-U>Gitsigns select_hunk<CR>')
        end
      }
    end
  }
}
