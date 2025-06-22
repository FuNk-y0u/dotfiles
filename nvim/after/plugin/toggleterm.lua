local toggleterm = require('toggleterm')

vim.keymap.set("n", "<C-t>",":ToggleTerm<CR>")
vim.keymap.set('t', '<esc>','<C-\\><C-N>', t_opts)
