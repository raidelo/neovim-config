local functions = require "custom.functions"

local map = vim.keymap.set

-- Normal Mode
map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "n", "nzzzv", { desc = "center buffer on the next match of the search" })
map("n", "N", "Nzzzv", { desc = "center buffer on the last match of the search" })
map("n", "<leader>to", functions.center_cursor, { desc = "keep buffer centered on line under cursor" })
map("n", "<leader>sw", functions.toggle_wrap, { desc = "toggle text wrapping" })

-- Insert Mode
map("i", "jk", "<ESC>")

-- Visual Mode
map("v", ">", ">gv", { desc = "keep selection after right-indenting (>)" })
map("v", "<", "<gv", { desc = "keep selection after left-indenting (<)" })
map("v", "<A-/>", "<esc>/\\%V", { desc = "search forwards inside the actual selection" })
map("v", "<A-?>", "<esc>?\\%V", { desc = "search backwards inside the actual selection" })

-- Terminal Mode
map("t", "<Esc>", "<C-\\><C-n>", { desc = "switch to normal mode" })

-- Multiple Modes
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- To use `ALT+{h,j,k,l}` to navigate windows from any mode
local m = "<C-\\><C-n><C-w>"
map({ "n", "i", "t" }, "<M-h>", m .. "h")
map({ "n", "i", "t" }, "<M-j>", m .. "j")
map({ "n", "i", "t" }, "<M-k>", m .. "k")
map({ "n", "i", "t" }, "<M-l>", m .. "l")

map({ "n", "i", "t" }, "<M-left>", m .. "h")
map({ "n", "i", "t" }, "<M-down>", m .. "j")
map({ "n", "i", "t" }, "<M-up>", m .. "k")
map({ "n", "i", "t" }, "<M-right>", m .. "l")
