vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Move around buffers
vim.keymap.set('n', '<Tab>', '<CMD>bnext<CR>', { desc = 'Go to next buffer' })
vim.keymap.set('n', '<S-Tab>', '<CMD>bprevious<CR>', { desc = 'Go to previous buffer' })
