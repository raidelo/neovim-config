local functions = require "custom.functions"

local o = vim.o

o.number = true
o.relativenumber = true
o.mouse = "a"
o.undofile = true
o.breakindent = true
o.shiftwidth = 4
o.tabstop = 4
o.expandtab = true
o.wrap = false
o.clipboard = "unnamedplus"
o.ignorecase = true
o.smartcase = true
o.list = true
o.listchars = "tab:» ,lead:·,trail:·,nbsp:␣,precedes:←,extends:→"
o.cursorline = true
o.cursorlineopt = "both"
o.inccommand = "split"
o.scrolloff = 0
o.sidescrolloff = 20
o.shell = functions.get_shell()
