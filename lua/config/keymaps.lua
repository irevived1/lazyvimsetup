-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", ";", ":", { noremap = true, desc = "Command mode" })
vim.keymap.set("n", "'", "`", { noremap = true, desc = "Mark character" })
vim.keymap.set("n", "`", "'", { noremap = true, desc = "Mark line" })
-- vim.keymap.set("n", "œ", "<cmd>bdelete<CR>", { silent = true, desc = "Buffer Delete" })
vim.keymap.set("n", "<C-z>", "<cmd>ZoomToggle<CR>", { noremap = true, desc = "Zoom Toggle" })

vim.keymap.set("i", "df", "<ESC>", { noremap = true, desc = "ESC" })
vim.keymap.set("n", "<CR>", "o<ESC>", { noremap = true, desc = "ESC" })

vim.keymap.set("n", ",n", "<cmd>Neotree toggle<CR>", { noremap = true, desc = "Tree Toggle" })
vim.keymap.set("n", ",N", "<cmd>Neotree toggle reveal left<CR>", { noremap = true, desc = "Follow File Toggle" })

-- undo lazyVim default keymaps
vim.keymap.set({ "n", "x" }, "j", "'j'", { expr = true, silent = true })
vim.keymap.set({ "n", "x" }, "k", "'k'", { expr = true, silent = true })
vim.keymap.set("v", "<", "<")
vim.keymap.set("v", ">", ">")

-- using f for flash
vim.keymap.set("n", "t", "f", { noremap = true, desc = "Find" })
vim.keymap.set("n", "T", "F", { noremap = true, desc = "Find Backwards" })

-- flash keymaps
vim.keymap.set("n", "/", '<cmd>lua require("flash").toggle(false)<CR>/', { noremap = true, desc = "regular search" })
vim.keymap.set("n", "f", '<cmd>lua require("flash").toggle(true)<CR>/', { noremap = true, desc = "flash search" })
vim.keymap.set(
  "n",
  "?",
  '<cmd>lua require("flash").toggle(false)<CR>?',
  { noremap = true, desc = "regular search backwards" }
)
vim.keymap.set(
  "n",
  "F",
  '<cmd>lua require("flash").toggle(true)<CR>?',
  { noremap = true, desc = "flash search backwards" }
)
