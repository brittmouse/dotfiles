return {
  'stevearc/oil.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    vim.keymap.set('n', '<leader>fe', '<cmd>Oil<CR>')
  end,
}
