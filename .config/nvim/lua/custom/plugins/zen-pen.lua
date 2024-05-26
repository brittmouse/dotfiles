return {
  { 'preservim/vim-pencil' },
  { 'folke/twilight.nvim' },
  {
    'folke/zen-mode.nvim',
    config = function()
      vim.keymap.set('n', '<leader>wz', ':ZenMode | Pencil<CR>')
    end,
  },
}
