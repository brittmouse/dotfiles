-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Set Vim leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Vim options
local vo = vim.opt

vo.number = true
vo.relativenumber = true

vo.scrolloff = 8

vo.hlsearch = true

vo.tabstop = 4
vo.expandtab = true

vo.cursorline = true

vo.updatetime = 250
vo.timeoutlen = 300

vo.splitright = true

vo.splitbelow = true
vo.list = true

-- Simple Vim remaps
-- local vks = vim.keymap.set

-- Same functionality it mini.bracketed
-- vks("n", "[d", vim.diagnostic.goto_prev, { desc = "Prev Diagnotic" })
-- vks("n", "]d", vim.diagnostic.goto_next, { desc = "Next Diagnotic" })

-- Import cusotm plugins
require("lazy").setup("plugins")
