return {
	'hrsh7th/nvim-cmp',
	dependencies = {
		'hrsh7th/cmp-nvim-lsp',
		'hrsh7th/cmp-buffer',
		'hrsh7th/cmp-path',

		'L3MON4D3/LuaSnip',
		'saadparwaiz1/cmp_luasnip',

		'onsails/lspkind-nvim',
	},

	config = function()
		local lspkind = require("lspkind")
		lspkind.init()

		local cmp = require "cmp"
		cmp.setup {
			mapping = {
				["<CR>"] = cmp.mapping.confirm {
					behavior = cmp.ConfirmBehavior.Insert,
					select = true,
				},
				["<C-space>"] = cmp.mapping.complete(),
				["<C-k>"] = cmp.mapping.select_prev_item { behavior = cmp.SelectBehavior.Insert },
				["<C-j>"] = cmp.mapping.select_next_item { behavior = cmp.SelectBehavior.Insert },
			},

			sources = {
				{ name = "nvim_lsp" },
				{ name = "path" },
				{ name = "buffer",  keyword_length = 5 },
			},

			snippet = {
				expand = function(args)
					require("luasnip").lsp_expand(args.body)
				end,
			},

			formatting = {
				format = lspkind.cmp_format {
					mode = 'symbol',
					with_text = true,
					menu = {
						buffer = "[buf]",
						nvim_lsp = "[LSP]",
						path = "[path]",
						luasnip = "[snip]",
					},
				},
			},
		}
	end
}
