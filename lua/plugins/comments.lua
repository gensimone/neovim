return {
  {
    'terrortylor/nvim-comment',
    config = function()
      vim.keymap.set({'n', 'v'}, '<leader>/', ':CommentToggle<cr>')
      vim.keymap.set({'n', 'v'}, '<leader>gcc', '<nop>')
      vim.keymap.set({'n', 'v'}, '<leader>gc', '<nop>')
      vim.keymap.set({'n', 'v'}, 'gcc', '<nop>')
      require('nvim_comment').setup({
        create_mappings = false
      })
    end
  }
}
