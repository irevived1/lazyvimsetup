-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", ";", ":", { noremap = true, desc = "Command mode" })
vim.keymap.set("n", "'", "`", { noremap = true, desc = "Mark character" })
vim.keymap.set("n", "`", "'", { noremap = true, desc = "Mark line" })
vim.keymap.set("n", "œ", "<cmd>bdelete<CR>", { silent = true, noremap = true, desc = "Buffer Delete" })
vim.keymap.set("n", "<C-z>", "<cmd>ZoomToggle<CR>", { noremap = true, desc = "Zoom Toggle" })

vim.keymap.set("i", "df", "<ESC>", { noremap = true, desc = "ESC" })
vim.keymap.set("n", "<CR>", "o<ESC>", { noremap = true, desc = "ESC" })
