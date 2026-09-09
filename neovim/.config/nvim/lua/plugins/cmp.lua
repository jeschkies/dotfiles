return {
	'saghen/blink.cmp',

	dependencies = {
		'rafamadriz/friendly-snippets',


		-- Gen AI
		--"supermaven-inc/supermaven-nvim",
	},

	version = '1.*',

	opts = {
		keymap = {
			preset = 'default',

			['<C-k>'] = { 'select_prev', 'fallback_to_mappings' },
			['<C-j>'] = { 'select_next', 'fallback_to_mappings' },
			['<CR>'] = { 'accept', 'fallback' },
		},

		appearance = {
			nerd_font_variant = 'mono'
		},

		sources = {
			default = { 'lsp', 'path', 'snippets', 'buffer' },
		},

		fuzzy = { implementation = "prefer_rust_with_warning" },

		completion = {
			menu = {
				draw = {
					columns = { { "label", "label_description", gap = 1 }, { "kind_icon", "kind" } }
				}
			}
		},
	},
	--[[
	config = function()
		local lspkind = require("lspkind")
		lspkind.init()

		require("supermaven-nvim").setup({
			keymaps = {
				accept_suggestion = "<Tab>",
				clear_suggestion = "<C-]>",
				accept_word = "<C-o>",
			},
			disable_keymaps = false,
			disable_inline_completion = false,
		})

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
				--{ name = "supermaven" },
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
					-- max_width = 50,
					menu = {
						buffer = "[buf]",
						nvim_lsp = "[LSP]",
						path = "[path]",
						luasnip = "[snip]",
						-- Supermaven = "",
					},
					-- symbol_map = { Supermaven = "" },
				},
			},
			vim.api.nvim_set_hl(0, "CmpItemKindSupermaven", { fg = "#a6e3a1" })
		}
	end
	--]]
}
