vim.opt.fileformat = 'unix'
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.keymap.set('n', '<C-s>', ':w<CR>')
vim.g.mapleader = " "

vim. wo. relativenumber = true

vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
