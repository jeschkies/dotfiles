return {
	'nvim-treesitter/nvim-treesitter',
	build = ':TSUpdate',
	opts = {
		ensure_installed = {
			"bash",
			"go",
			"gomod",
			"java",
			"json",
			"jsonnet",
			--       "lua",
			"mermaid",
			"python",
			"yaml",
		},
	},
}
