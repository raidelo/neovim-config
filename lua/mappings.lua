require "nvchad.mappings"

-- add yours here

local funcs = require "custom.functions"

local map = vim.keymap.set

-- Normal Mode
map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "n", "nzzzv", { desc = "Center buffer on the next match of \"/\" or \"?\"" })
map("n", "N", "Nzzzv", { desc = "Center buffer on the last match of \"/\" or \"?\"" })
map("n", "<leader>tc", funcs.center_cursor, { desc = "Keep buffer centered on cursor" })
map("n", "<leader>tw", funcs.toggle_wrap, { desc = "Toggle text wrapping" })

-- Insert Mode
map("i", "jk", "<ESC>")

-- Visual Mode
map("v", ">", ">gv", { desc = "Indent right (and keep selection)" })
map("v", "<", "<gv", { desc = "Indent left (and keep selection)" })
map("v", "<A-/>", "<esc>/\\%V", { desc = "search forwards inside the actual selection" })
map("v", "<A-?>", "<esc>?\\%V", { desc = "search backwards inside the actual selection" })

-- To use `ALT+{h,j,k,l}` to navigate windows from any mode
local t_n = "<C-\\><C-n>" -- switch to normal mode (including in terminal insert mode)
local w =  t_n .. "<C-w>"
map({ "n", "i", "t" }, "<M-h>", w .. "h", { desc = "Go to the left window" })
map({ "n", "i", "t" }, "<M-j>", w .. "j", { desc = "Go to the down window" })
map({ "n", "i", "t" }, "<M-k>", w .. "k", { desc = "Go to the up window" })
map({ "n", "i", "t" }, "<M-l>", w .. "l", { desc = "Go to the right window" })

map({ "n", "i", "t" }, "<M-left>", w .. "h", { desc = "Go to the left window" })
map({ "n", "i", "t" }, "<M-down>", w .. "j", { desc = "Go to the down window" })
map({ "n", "i", "t" }, "<M-up>", w .. "k", { desc = "Go to the up window" })
map({ "n", "i", "t" }, "<M-right>", w .. "l", { desc = "Go to the right window" })
