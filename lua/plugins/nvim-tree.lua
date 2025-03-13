return {
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function ()
      require('nvim-tree').setup({
        vim.keymap.set('n', '<leader>e', ':NvimTreeFindFileToggle<cr>', { desc = "Toggle Tree" }),
        update_focused_file = {
          enable = true
        },
        filters = {
          dotfiles = true,
        },
        git = {
          enable = false,
        },
        view = {
          width = 30,
          side = "left",
        },
        renderer = {
            icons = {
                show = {
                    file = true,
                    folder = true,
                    folder_arrow = true,
                    git = true,
                },
                glyphs = {
                    default = "",
                    symlink = "",
                    git = {
                        unstaged = "U",
                        staged = "S",
                        unmerged = "UM",
                        renamed = "R",
                        deleted = "D",
                        untracked = "",
                        ignored = "I",
                    },
                    folder = {
                        default = "",
                        open = "",
                        empty = "",
                        empty_open = "",
                        symlink = "",
                    },
                },
            },
        },
      })
    end
  }
}
