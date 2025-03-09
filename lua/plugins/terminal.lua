return {
  {
    'akinsho/toggleterm.nvim',
    config = function()
      vim.keymap.set('n', '<leader>tt', ':ToggleTerm<cr>')
      require('toggleterm').setup({
        size = function(term)
          if term.direction == "horizontal" then
            return 15
          elseif term.direction == "vertical" then
            return vim.o.columns * 0.4
          end
        end,
        autochdir = true,
        terminal_mappings = true,
        direction = 'float', -- possible values: vertical, hizontal, tab, float.
        close_on_exit = true, -- close the terminal window when the process exits.
        float_opts = {
          -- The border key is *almost* the same as 'nvim_open_win'
          -- see :h nvim_open_win for details on borders however
          -- the 'curved' border is a custom border type
          -- not natively supported but implemented in this plugin.
          -- border = 'single' | 'double' | 'shadow' | 'curved' | ... other options supported by win open
          -- like `size`, width, height, row, and col can be a number or function which is passed the current terminal
          -- width = <value>,
          -- height = <value>,
          -- row = <value>,
          -- col = <value>,
          -- winblend = 3,
          -- zindex = <value>,
          -- title_pos = 'left' | 'center' | 'right', position of the title of the floating window
          border = 'curved'
        },
      })
    end
  },
}
