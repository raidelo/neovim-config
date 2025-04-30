local M = {}

local function center_cursor()
  vim.api.nvim_feedkeys("zz", "n", true)
  vim.opt.scrolloff = 999 - vim.o.scrolloff
end

local function toggle_wrap()
  if vim.o.wrap == false then
    vim.o.wrap = true
  else
    vim.o.wrap = false
  end
end

M.center_cursor = center_cursor
M.toggle_wrap = toggle_wrap

return M
