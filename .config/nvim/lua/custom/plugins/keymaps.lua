return {
  vim.keymap.set('n', '<C-u>', '<C-u>zz'),
  vim.keymap.set('n', '<C-d>', '<C-d>zz'),
  vim.keymap.set('n', '<leader>z', 'vipzf<cmd>mkview<cr>', { desc = 'Fold Paragraph' }),
  vim.keymap.set({ 'n', 'i' }, '<C-s>', '<esc><cmd>update<cr>'),
  -- vim.keymap.set('i', '<esc>', '<esc><cmd>update<CR>'),
  -- vim.keymap.set('i', '<C-c>', '<C-c><cmd>update<CR>'),
  vim.keymap.set('n', '<leader>l', '<cmd>Lazy<CR>', { desc = '[L]azy' }),
}
