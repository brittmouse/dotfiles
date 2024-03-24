return {
	{ "preservim/vim-pencil" },
	{ "ellisonleao/glow.nvim", config = true, cmd = "Glow", },
	{ "folke/twilight.nvim" },
	{
		"folke/zen-mode.nvim",
		config = function()
			vim.keymap.set("n", "<leader>z", "<cmd>ZenMode | Pencil<CR>", { desc = "Zen + Twilight + Pencil"} )
		end,
	},
}
