return {
	"nvim-telescope/telescope.nvim",
	event = "VimEnter",
	dependencies = {
		"nvim-lua/plenary.nvim",
		'nvim-tree/nvim-web-devicons',
	},

	config = function()
		local builtin = require("telescope.builtin")
		local keymap = function(key, fn, desc)
			vim.keymap.set("n", key, fn, { desc = desc })
		end
		keymap('<leader>ff', builtin.find_files, "[F]ind [F]iles")
		keymap('<leader>fg', builtin.live_grep, "[F]ind [G]rep")
		keymap('<leader>fb', builtin.buffers, "[F]ind in [B]uffers")
		keymap('<leader>fh', builtin.help_tags, "[F]ind in [H]elp")

		require('telescope').setup {
			defaults = {
				-- ...
			},
			pickers = {
				find_files = {
					theme = "dropdown",
				}
			},
		}
	end,
}
