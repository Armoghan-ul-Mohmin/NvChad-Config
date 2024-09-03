require "nvchad.mappings"

local map = vim.keymap.set

-- ====================
-- General Keybindings
-- ====================

-- Enter command mode quickly using ';' instead of ':'
map("n", ";", ":", {desc = "CMD enter command mode"})

-- Exit insert mode quickly with 'jk'
map("i", "jk", "<ESC>")

-- Quit Neovim with 'ZZ' (similar to VS Code's 'Ctrl + Q')
map("n", "ZZ", "<cmd> qa <CR>", {desc = "GENERAL Quit nvim"})

-- Save the file with 'Ctrl + S'
map({"n", "i", "v"}, "<C-s>", "<cmd> w <CR>", {desc = "Save File"})

-- ====================
-- Search and Navigation
-- ====================

-- Quick file search with 'Ctrl + P' (similar to VS Code's file search)
map("n", "<C-p>", "<cmd> Telescope find_files <CR>", {desc = "Find Files"})

-- Toggle file explorer with 'Ctrl + B' (similar to VS Code's sidebar toggle)
map("n", "<C-b>", "<cmd> NvimTreeToggle <CR>", {desc = "Toggle File Explorer"})
