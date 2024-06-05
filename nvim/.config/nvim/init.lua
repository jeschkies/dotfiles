require "autocmd"
require "plugins"
require "git"
require "completion"
require "lsp"
require "key-bindings"
require "fzf"

vim.o.updatetime = 500

vim.o.background = "light"
vim.cmd.colorscheme "catppuccin-latte"
colorscheme = "catppuccin-latte"

vim.opt.tw = 120
vim.opt.colorcolumn = '120'
vim.opt.number = true
vim.opt.numberwidth = 2
vim.wo.showbreak = '⇇'

-- Test
vim.g["test#neovim#start_normal"] = 1
vim.g["test#basic#start_normal"] = 1

require 'nvim-treesitter.configs'.setup {
	ensure_installed = { "go", "gomod", "gosum", "json", "jsonnet", "lua", "python" },
	auto_install = true,
}
