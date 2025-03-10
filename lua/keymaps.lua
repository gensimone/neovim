-- buffers
vim.keymap.set('n', '<leader>n', ':bn<cr>')
vim.keymap.set('n', '<leader>p', ':bp<cr>')
vim.keymap.set('n', '<leader>c', ':bd<cr>')

-- yank to clipboard
vim.keymap.set({'n', 'v'}, '<leader>y', [["+y]])

-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

-- Exit Neovim
vim.keymap.set('n', '<leader>q', ':q<cr>')

-- Open a new file
vim.keymap.set('n', '<leader>fn', ':ene | startinsert<cr>')

-- Resize window
vim.keymap.set("n", "<C-Up>",    "<cmd>resize +2<cr>",          { desc = "Increase Window Height" })
vim.keymap.set("n", "<C-Down>",  "<cmd>resize -2<cr>",          { desc = "Decrease Window Height" })
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })
vim.keymap.set("n", "<C-Left>",  "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
