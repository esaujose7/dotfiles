return {
  {
    'tpope/vim-fugitive',
    keys = {
      {'<leader>gs', ":Git<CR>", { noremap = false, desc = "Git status (Fugitive)" }},
      {'<leader>gc', ":Git commit<CR>", { noremap = false, desc = "Git commit (Fugitive)" }},
      {'<leader>gb', ":Git blame<CR>", { noremap = false, desc = "Git blame (Fugitive)" }},
      {'<leader>gl', ":Git log<CR>", { noremap = false, desc = "Git log (Fugitive)" }}
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
            if vim.wo.diff then
              vim.cmd.normal({']c', bang = true})
            else
              gitsigns.nav_hunk('next')
            end
          end, { desc = "Go to Next Hunk" })

          map('n', '[c', function()
            if vim.wo.diff then
              vim.cmd.normal({'[c', bang = true})
            else
              gitsigns.nav_hunk('prev')
            end
          end, { desc = "Go to Previous Hunk"})

          map('n', 'ghs', gitsigns.stage_hunk, { desc = "Stage current hunk" })
          map('v', 'ghs', function()
            gitsigns.stage_hunk({ vim.fn.line('.'), vim.fn.line('v') })
          end, { desc = "Stage selected hunk" })

          map('n', 'ghu', gitsigns.undo_stage_hunk, { desc = "Undo stage hunk" })

          map('n', 'ghr', gitsigns.reset_hunk, { desc = "Reset current hunk" })
          map('v', 'ghr', function()
            gitsigns.reset_hunk({ vim.fn.line('.'), vim.fn.line('v') })
          end, { desc = "Reset selected hunk" })

          map('n', 'ghR', gitsigns.reset_buffer, { desc = "Reset entire buffer" })
          map('n', 'ghp', gitsigns.preview_hunk, { desc = "Preview hunk" })

          map('n', 'ghb', function() gitsigns.blame_line{full=true} end, { desc = "Blame current line" })
          map('n', 'ghd', gitsigns.diffthis, { desc = "Diff against index" })
          map('n', 'ghD', function() gitsigns.diffthis('~') end, { desc = "Diff against last commit" })

          map({'o', 'x'}, 'ih', ':<C-U>Gitsigns select_hunk<CR>', { desc = "Select hunk" })
        end
      }
    end
  }
}
