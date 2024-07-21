return {
  {
    -- MarkdownPreview
    'iamcco/markdown-preview.nvim',
    lazy = true,
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
  {
    -- Headlines for in-editor rendering
    'lukas-reineke/headlines.nvim',
    lazy = true,
    opts = function()
      local opts = {}
      for _, ft in ipairs { 'markdown', 'norg', 'org', 'rmd' } do
        opts[ft] = {
          headline_highlights = {},
        }
        for i = 1, 6 do
          local hl = 'Headline' .. i
          vim.api.nvim_set_hl(0, hl, { link = 'Headline', default = true })
          table.insert(opts[ft].headline_highlights, hl)
        end
      end
      return opts
    end,
    ft = { 'markdown', 'norg', 'org', 'rmd' },
    config = function(_, opts)
      vim.schedule(function()
        require('headlines').setup(opts)
        require('headlines').refresh()
      end)
    end,
  },
  {
    -- Vim Markdown
    'preservim/vim-markdown',
    lazy = true,
  },
  {
    -- Vim Pencil
    'preservim/vim-pencil',
    lazy = true,
  },
  {
    -- Glow
    'ellisonleao/glow.nvim',
    lazy = true,
    config = true,
    cmd = 'Glow',
  },
}
