return {
  vim.keymap.set('n', '<C-u>', '<C-u>zz'),
  vim.keymap.set('n', '<C-d>', '<C-d>zz'),
  vim.keymap.set('i', '<esc>', '<esc><cmd>update<CR>'),
}
