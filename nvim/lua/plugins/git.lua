return {
  {
    'tpope/vim-fugitive',
    keys = {
      {'<leader>gs', ":Git<CR>", { noremap = false }},
      {'<leader>gc', ":Git commit<CR>", { noremap = false }},
      {'<leader>gb', ":Git blame<CR>", { noremap = false }},
      {'<leader>gl', ":Git log<CR>", { noremap = false }}
    }
  },
  {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup {
        on_attach = function(bufnr)
          local gitsigns = require('gitsigns')

          local function map(mode, l, r, opts)
            opts = opts or {}
            opts.buffer = bufnr
            vim.keymap.set(mode, l, r, opts)
          end

          -- Navigation
          map('n', ']c', function()
            if vim.wo.diff then return ']c' end
            vim.schedule(function() gitsigns.next_hunk() end)
            return '<Ignore>'
          end, {expr=true})

          map('n', '[c', function()
            if vim.wo.diff then return '[c' end
            vim.schedule(function() gitsigns.prev_hunk() end)
            return '<Ignore>'
          end, {expr=true})

          -- Actions
          map('n', 'ghs', gitsigns.stage_hunk)
          map('n', 'ghs', function() gitsigns.stage_hunk {vim.fn.line('.'), vim.fn.line('v')} end)
          map('n', 'ghu', gitsigns.undo_stage_hunk)
          map('n', 'ghr', gitsigns.reset_hunk)
          map('n', 'ghr', function() gitsigns.reset_hunk {vim.fn.line('.'), vim.fn.line('v')} end)
          map('n', 'ghR', gitsigns.reset_buffer)
          map('n', 'ghp', gitsigns.preview_hunk)
          map('n', 'ghb', function() gitsigns.blame_line{full=true} end)
          map('n', 'ghd', gitsigns.diffthis)
          map('n', 'ghD', function() gitsigns.diffthis('~') end)

          -- Text object
          map({'o', 'x'}, 'ih', ':<C-U>Gitsigns select_hunk<CR>')
        end
      }
    end
  }
}
