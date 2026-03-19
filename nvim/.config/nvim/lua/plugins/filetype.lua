return {
	"google/vim-jsonnet",
	init = function()
		vim.filetype.add({
			extension = {
				libsonnet = "jsonnet",
			},
		})
	end,
}
