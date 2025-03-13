return {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      vim.keymap.set('n', '<leader>gc', ':Telescope git_commits<cr>', { desc = "Git Commits" })
      vim.keymap.set('n', '<leader>gs', ':Telescope git_status<cr>',  { desc = "Git Status" })
      vim.keymap.set('n', '<leader>lt', ':Telescope<cr>',             { desc = "Launch Telescope" })
      vim.keymap.set('n', '<leader>fm', ':Telescope man_pages<cr>',   { desc = "Man Pages" })
      vim.keymap.set('n', '<leader>ff', ':Telescope find_files<cr>',  { desc = "Find Files" })
      vim.keymap.set('n', '<leader>fg', ':Telescope live_grep<cr>',   { desc = "Live Grep" })
      vim.keymap.set('n', '<leader>fw', ':Telescope grep_string<cr>', { desc = "Grep String" })
      vim.keymap.set('n', '<leader>fr', ':Telescope oldfiles<cr>',    { desc = "Recent Files" })
      vim.keymap.set('n', '<leader>fb', ':Telescope buffers<cr>',     { desc = "Buffers" })
      vim.keymap.set('n', '<leader>rff', ':Telescope find_files  search_dirs={"/"}<cr>', { desc = "Root - Find Files" })
      vim.keymap.set('n', '<leader>rfg', ':Telescope live_grep   search_dirs={"/"}<cr>', { desc = "Root - Live Grep" })
      vim.keymap.set('n', '<leader>rfw', ':Telescope grep_string search_dirs={"/"}<cr>', { desc = "Root - Grep String" })
      vim.keymap.set('n', '<leader>fc', ':Telescope find_files search_dirs={"~/.config/nvim"}<cr>', { desc = "Config Files" })

      require('telescope').setup({
        pickers = {
          colorscheme = {
            enable_preview = true,
          },
          find_files = {
            find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
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
