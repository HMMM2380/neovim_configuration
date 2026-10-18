vim.g.mapleader = " "
local km = vim.keymap

km.set("i", "jk", "<ESC>")
km.set("v", "t", "<ESC>")

km.set("v", "J", ":m '>+1<CR>gv=gv")
km.set("v", "K", ":m '<-2<CR>gv=gv")

km.set("n", "<leader>wv", "<C-w>v")
km.set("n", "<leader>wh", "<C-w>s")
km.set("n", "<leader>wc", "<C-w>c")
km.set("n", "<leader>wo", "<C-w>o")
km.set("n", "<leader>wh", "<C-w>h")
km.set("n", "<leader>wj", "<C-w>j")
km.set("n", "<leader>wk", "<C-w>k")
km.set("n", "<leader>wl", "<C-w>l")

km.set("n", "<leader>nh", ":nohl<CR>")
km.set("n", "<leader>e", ":NvimTreeToggle<CR>")
