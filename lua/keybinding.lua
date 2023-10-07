vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.api.nvim_set_keymap
local key_opt = { noremap = true, silent = true }

keymap("n", "<A-h>", "<C-w>h", key_opt)
keymap("n", "<A-j>", "<C-w>j", key_opt)
keymap("n", "<A-k>", "<C-w>k", key_opt)
keymap("n", "<A-l>", "<C-w>l", key_opt)
