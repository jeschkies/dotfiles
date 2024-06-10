return {
	"folke/trouble.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},

	opts = {}, -- for default options, refer to the configuration section for custom setup.
	cmd = "Trouble",
	keys = {
		{
			"<leader>xx",
			"<cmd>Trouble toggle<cr>",
			desc = "Diagnostics (Trouble)",
		},
		{
			"gr",
			"<cmd>Trouble toggle lsp_references<cr>"
		},
		{
			"gi",
			"<cmd>Trouble toggle lsp_implementations<cr>",
		},
	},

}
