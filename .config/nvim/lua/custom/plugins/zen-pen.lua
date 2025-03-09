return {
  { 'preservim/vim-pencil', lazy = true },
  { 'folke/twilight.nvim', lazy = true },
  {
    'folke/zen-mode.nvim',
    lazy = true,
    config = function()
      vim.keymap.set('n', '<leader>wz', ':ZenMode | Pencil<CR>')
    end,
  },
}
