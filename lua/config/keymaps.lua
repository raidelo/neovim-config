-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- To navigate between windows with `ALT+{h, j, k, l}`
local t_n = "<C-\\><C-n>" -- switch to normal mode (including in terminal mode)
local w = t_n .. "<C-w>"
map({ "n", "i", "t" }, "<M-h>", w .. "h", { desc = "Go to the left window" })
map({ "n", "i", "t" }, "<M-j>", w .. "j", { desc = "Go to the down window" })
map({ "n", "i", "t" }, "<M-k>", w .. "k", { desc = "Go to the up window" })
map({ "n", "i", "t" }, "<M-l>", w .. "l", { desc = "Go to the right window" })

map({ "n", "i", "t" }, "<M-Left>", w .. "h", { desc = "Go to the left window" })
map({ "n", "i", "t" }, "<M-Down>", w .. "j", { desc = "Go to the down window" })
map({ "n", "i", "t" }, "<M-Up>", w .. "k", { desc = "Go to the up window" })
map({ "n", "i", "t" }, "<M-Right>", w .. "l", { desc = "Go to the right window" })

-- To navigate between buffers with `SHIFT+{Left, Right}`
map({ "n", "i", "t" }, "<S-Left>", function()
  vim.cmd("bprevious")
end, { desc = "Go to the previous buffer" })
map({ "n", "i", "t" }, "<S-Right>", function()
  vim.cmd("bnext")
end, { desc = "Go to the next buffer" })

-- Other ways to write the buffer to disk
map({ "n" }, "<leader>bw", function()
  vim.cmd("w")
end, { desc = "Write buffer to file" })
map({ "n" }, "<leader>bW", function()
  vim.cmd("noautocmd w")
end, { desc = "Write buffer to file (no autocmd)" })
