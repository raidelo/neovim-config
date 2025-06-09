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

-- AI Generated Function
local function get_os()
    -- Versión corta del nombre del OS
    if vim.fn.has('win32') == 1 then
        return 'Windows'
    elseif vim.fn.has('unix') == 1 then
        local sysname = vim.loop.os_uname().sysname

        if sysname == 'Linux' then
            return 'Linux'
        elseif sysname == 'Darwin' then
            return 'Mac'
        else
            return sysname -- Para otros UNIX (BSD, etc.)
        end
    else
        return 'Unknown'
    end
end

local function get_shell()
    local os_name = get_os()

    if os_name == "Unknown" then
        return nil
    elseif os_name == "Windows" then
        return "powershell"
    else
        return "bash"
    end
end

M.center_cursor = center_cursor
M.toggle_wrap = toggle_wrap
M.get_shell = get_shell

return M
