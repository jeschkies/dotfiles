return {
	'nvim-treesitter/nvim-treesitter',
	build = ':TSUpdate',
	config = function()
		require 'nvim-treesitter.configs'.setup {
			ensure_installed = { "go", "gomod", "gosum", "json", "jsonnet", "lua", "mermaid", "python" },
			auto_install = true,
		}
	end
}
