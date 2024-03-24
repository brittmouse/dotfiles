return {
	{ "tpope/vim-sleuth" },
	{ "nvim-lua/plenary.nvim" },
	{ "nvim-tree/nvim-web-devicons", lazy = true },
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
	},
}
