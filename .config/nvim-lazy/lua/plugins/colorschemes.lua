return {
  {
    "catppuccin/nvim",
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme catppuccin-macchiato]])
    end,
  },
  { "rmehri01/onenord.nvim" },
  { "ellisonleao/gruvbox.nvim" },
  { "xiantang/darcula-dark.nvim" },
  { "AlexvZyl/nordic.nvim" },
  { "ray-x/starry.nvim" },
  { "rose-pine/neovim", name = "rose-pine" },
}
