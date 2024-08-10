return {
  vim.keymap.set('n', '<C-u>', '<C-u>zz'),
  vim.keymap.set('n', '<C-d>', '<C-d>zz'),
  vim.keymap.set('i', '<esc>', '<esc><cmd>update<CR>'),
  vim.keymap.set('i', '<C-c>', '<C-c><cmd>update<CR>'),
  vim.keymap.set('n', '<C-s>', '<cmd>update<CR>'),
}
