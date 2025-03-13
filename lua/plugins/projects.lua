return {
  {
    "coffebar/neovim-project",
    opts = {
      vim.keymap.set('n', '<leader>fp', ':NeovimProjectDiscover<cr>',   { desc = "Search Project" }),
      vim.keymap.set('n', '<leader>rp', ':NeovimProjectLoadRecent<cr>', { desc = "Recent Project" }),
      projects = {},
      picker = {
        type = "telescope",
      },
      -- Load the most recent session on startup if not in the project directory
      last_session_on_startup = false,
      -- Dashboard mode prevent session autoload on startup
      dashboard_mode = true,
    },
    init = function()
      -- enable saving the state of plugins in the session
      -- save global variables that start with an uppercase letter and contain at least one lowercase letter.
      vim.opt.sessionoptions:append("globals")
    end,
    dependencies = {
      { "nvim-lua/plenary.nvim" },
      { "nvim-telescope/telescope.nvim" },
      { "Shatur/neovim-session-manager" },
    },
    lazy = false,
    priority = 100,
  }
}
