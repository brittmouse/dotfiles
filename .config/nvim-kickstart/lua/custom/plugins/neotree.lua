return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  config = function()
    vim.keymap.set('n', '<leader>wf', ':Neotree filesystem toggle right<CR>', {})
    vim.keymap.set('n', '<leader>wb', ':Neotree buffers toggle right<CR>', {})
    require('neo-tree').setup {
      window = {
        position = 'right',
        width = 32,
      },
    }
  end,
}
