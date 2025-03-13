return {
  {
    'lewis6991/gitsigns.nvim',
    config = function ()
      vim.keymap.set('n', '<leader>gb', ':Gitsigns blame<cr>',        { desc = "Git blame" })
      vim.keymap.set('n', '<leader>gd', ':Gitsigns diffthis<cr>',     { desc = "Git diff" })
      vim.keymap.set('n', '<leader>hl', ':Gitsigns setloclist<cr>',   { desc = "List Hunks" })

      vim.keymap.set('n',        '<leader>hp', ':Gitsigns preview_hunk_inline<cr>', { desc = "Preview hunk" })
      vim.keymap.set({'n', 'v'}, '<leader>hr', ':Gitsigns reset_hunk<cr>',          { desc = "Reset hunk" })
      vim.keymap.set({'n', 'v'}, '<leader>hs', ':Gitsigns stage_hunk<cr>',          { desc = "Stage hunk" })
      -- vim.keymap.set({'n', 'v'}, '<leader>np', ':Gitsigns prev_hunk<cr>',    { desc = "Previous hunk" })
      -- vim.keymap.set({'n', 'v'}, '<leader>hn', ':Gitsigns next_hunk<cr>',   { desc = "Next hunk" })
      require('gitsigns').setup {
        signs = {
          add          = { text = '┃' },
          change       = { text = '┃' },
          delete       = { text = '_' },
          topdelete    = { text = '‾' },
          changedelete = { text = '~' },
          untracked    = { text = '┆' },
        },
        signs_staged = {
          add          = { text = '┃' },
          change       = { text = '┃' },
          delete       = { text = '_' },
          topdelete    = { text = '‾' },
          changedelete = { text = '~' },
          untracked    = { text = '┆' },
        },
        signs_staged_enable = true,
        signcolumn = true,  -- Toggle with `:Gitsigns toggle_signs`
        numhl      = false, -- Toggle with `:Gitsigns toggle_numhl`
        linehl     = false, -- Toggle with `:Gitsigns toggle_linehl`
        word_diff  = false, -- Toggle with `:Gitsigns toggle_word_diff`
        watch_gitdir = {
          follow_files = true
        },
        auto_attach = true,
        attach_to_untracked = false,
        current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
        current_line_blame_opts = {
          virt_text = true,
          virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
          delay = 1000,
          ignore_whitespace = false,
          virt_text_priority = 100,
          use_focus = true,
        },
        current_line_blame_formatter = '<author>, <author_time:%R> - <summary>',
        sign_priority = 6,
        update_debounce = 100,
        status_formatter = nil, -- Use default
        max_file_length = 40000, -- Disable if file is longer than this (in lines)
        preview_config = {
          -- Options passed to nvim_open_win
          border = 'single',
          style = 'minimal',
          relative = 'cursor',
          row = 0,
          col = 1
        },
      }
    end
  }
}
