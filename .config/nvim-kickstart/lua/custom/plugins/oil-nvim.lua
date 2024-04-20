return {
  'stevearc/oil.nvim',
  config = function()
    vim.keymap.set('n', '<leader>fe', '<cmd>Oil<CR>')
  end,
}
