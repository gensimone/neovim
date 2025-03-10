return {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      vim.keymap.set('n', '<leader>lt', ':Telescope<cr>')
      vim.keymap.set('n', '<leader>gc', ':Telescope git_commits<cr>')
      vim.keymap.set('n', '<leader>gs', ':Telescope git_status<cr>')
      vim.keymap.set('n', '<leader>fm', ':Telescope man_pages<cr>')
      vim.keymap.set('n', '<leader>fh', ':Telescope find_files<cr>')
      vim.keymap.set('n', '<leader>ff', ':Telescope find_files search_dirs={"/"}<cr>')
      vim.keymap.set('n', '<leader>fg', ':Telescope live_grep<cr>')
      vim.keymap.set('n', '<leader>fr', ':Telescope oldfiles<cr>')
      vim.keymap.set('n', '<leader>fb', ':Telescope buffers<cr>')
      vim.keymap.set('n', '<leader>fc', ':Telescope find_files search_dirs={"~/.config/nvim"}<cr>')
      require('telescope').setup({
        pickers = {
          colorscheme = {
            enable_preview = true,
          },
        },
        defaults = require('telescope.themes').get_ivy {
          mappings = {
            i = {
              -- map actions.which_key to <C-h> (default: <C-/>)
              -- actions.which_key shows the mappings for your picker,
              -- e.g. git_{create, delete, ...}_branch for the git_branches picker
              ["<C-h>"] = "preview_scrolling_left",
              ["<C-l>"] = "preview_scrolling_right",
            }
          }
        },
      })
    end,
}
