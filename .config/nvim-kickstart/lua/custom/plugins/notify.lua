return {
  'rcarriga/nvim-notify',
  config = function()
    require('notify').setup {
      render = 'compact',
    }
  end,
  keys = {
    {
      '<leader>wn',
      function()
        require('notify').dismiss { silent = true, pending = true }
      end,
      desc = 'Dismiss [W]orkspace [N]otes',
    },
  },
}
