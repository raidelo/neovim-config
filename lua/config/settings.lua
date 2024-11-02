vim.o.number = true
vim.o.relativenumber = true

vim.o.shiftwidth = 4
vim.o.tabstop = 4

vim.g.mapleader = ' '

vim.cmd([[colorscheme slate]])

vim.keymap.set('n', '<leader>ex', vim.cmd.Ex, { desc = "Cerrar archivo actual y abrir explorador" })

vim.keymap.set('v', '>', '>gv', { desc = "Después de un indentado con > en modo visual, seleccionar el mismo contenido"})
vim.keymap.set('v', '<', '<gv', { desc = "Después de un indentado con < en modo visual, seleccionar el mismo contenido"})

vim.keymap.set('n', 'n', 'nzzzv', { desc = "Después de una busqueda, centrar la pantalla en el resultado"})
vim.keymap.set('n', 'N', 'Nzzzv', { desc = "Después de una busqueda, centrar la pantalla en el resultado"})
