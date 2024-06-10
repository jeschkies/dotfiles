return {
	'catppuccin/nvim',
	name = 'catppuccin',
	priority = 1000,

	config = function()
		vim.o.background = "light"
		vim.cmd.colorscheme "catppuccin-latte"
		colorscheme = "catppuccin-latte"

		vim.opt.tw = 120
		vim.opt.colorcolumn = '120'
		vim.opt.number = true
		vim.opt.numberwidth = 2
		vim.wo.showbreak = '⇇'
	end
}
