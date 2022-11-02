local bufopts = { noremap=true, silent=true }

vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, bufopts)
vim.keymap.set('n', '<leader>fg', builtin.live_grep, bufopts)
vim.keymap.set('n', '<leader>fb', builtin.buffers, bufopts)
vim.keymap.set('n', '<leader>fh', builtin.help_tags, bufopts)

-- LSP
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, bufopts)
