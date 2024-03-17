return {
  { 'folke/twilight.nvim' },
  {
    'folke/zen-mode.nvim',
    config = function()
      vim.keymap.set('n', '<leader>wz', ':ZenMode<CR>')
    end,
  },
}
