return {
  {
    -- MarkdownPreview
    'iamcco/markdown-preview.nvim',
    cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
    build = function()
      vim.fn['mkdp#util#install']()
    end,
    keys = {
      {
        '<leader>dp',
        ft = 'markdown',
        '<cmd>MarkdownPreviewToggle<CR>',
        desc = '[D]ocument [P]review (Markdown)',
      },
    },
    config = function()
      vim.cmd [[do FileType]]
    end,
  },
}
