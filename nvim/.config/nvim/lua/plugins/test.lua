return {
	'vim-test/vim-test',

	config = function()
		vim.keymap.set('n', '<leader>tn', '<cmd>TestNearest<CR>', { noremap = true, silent = true })

		vim.g["test#neovim#start_normal"] = 1
		vim.g["test#basic#start_normal"] = 1
	end
}
