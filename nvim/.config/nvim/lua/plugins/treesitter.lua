return {
	'nvim-treesitter/nvim-treesitter',
	build = ':TSUpdate',
	opts = {
      ensure_installed = {
        "bash",
	"go",
	"gomod",
        "json",
	"jsonnet",
 --       "lua",
	"mermaid",
        "python",
        "yaml",
      },
    },
}
