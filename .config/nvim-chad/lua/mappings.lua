require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- map("n", ";", ":", { desc = "CMD enter command mode" })
-- map("i", "jk", "<ESC>")
map("n", "[b", "<CMD>bprevious<CR>", { desc = "Prev buffer"} )
map("n", "]b", "<CMD>bnext<CR>", { desc = "Next buffer"} )

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
