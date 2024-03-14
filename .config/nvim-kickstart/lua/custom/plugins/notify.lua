return {
  'rcarriga/nvim-notify',
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
