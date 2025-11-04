return {
	'williamboman/mason-lspconfig.nvim',
	event = "BufRead *.rs,*.py,*.lua,*.js,*.go,*.jsonnet,*.libsonnet",
	dependencies = {
		'williamboman/mason.nvim', -- Mason package manager
		'neovim/nvim-lspconfig', -- Configurations for Nvim LSP
		'RRethy/vim-illuminate', -- highlight symbol under the cursor

		'google/vim-jsonnet'
	},

	config = function()
		require("mason").setup()
		require("mason-lspconfig").setup({
			ensure_installed = { "golangci_lint_ls", "gopls", "rust_analyzer", "lua_ls" }
		})

		-- on attach function (for all servers)
		local function on_attach(client)
			local status_ok, illuminate = pcall(require, "illuminate")
			if status_ok then
				illuminate.on_attach(client)
			end
		end

		-- Lua
		require 'lspconfig'.lua_ls.setup {
			on_attach = on_attach,
			settings = {
				Lua = {
					runtime = {
						-- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
						version = 'LuaJIT',
					},
					diagnostics = {
						-- Get the language server to recognize the `vim` global
						globals = { 'vim' },
					},
					workspace = {
						-- Make the server aware of Neovim runtime files
						library = vim.api.nvim_get_runtime_file("", true),
					},
					-- Do not send telemetry data containing a randomized but unique identifier
					telemetry = {
						enable = false,
					},
				},
			},
		}

		-- Rust
		require 'lspconfig'.rust_analyzer.setup {
			on_attach = on_attach
		}

		-- Go
		require 'lspconfig'.gopls.setup {
			on_attach = on_attach,
			settings = {
				gopls = {
					gofumpt = true,
				},
			},
		}
		require 'lspconfig'.golangci_lint_ls.setup {
			on_attach = on_attach
		}

		-- Terraform
		require 'lspconfig'.terraformls.setup {
			on_attach = on_attach
		}

		-- JavaScript / Typescript
		require 'lspconfig'.ts_ls.setup {
			on_attach = on_attach
		}

		-- Java
		require 'lspconfig'.jdtls.setup {
			on_attach = on_attach
		}

		-- Jsonnet
		require 'lspconfig'.jsonnet_ls.setup {
			on_attach = on_attach
		}

		-- Python
		require 'lspconfig'.pyright.setup {
			on_attach = on_attach
		}

		-- Key bindings
		vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
		vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
		-- vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
		-- vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
		vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, bufopts)
		vim.keymap.set('n', '<leader>dd', '<cmd>Telescope diagnostics<CR>', { noremap = true, silent = true })
		vim.keymap.set('n', '<leader>d[', '<cmd>lua vim.diagnostic.goto_prev()<CR>',
			{ noremap = true, silent = true })
		vim.keymap.set('n', '<leader>d]', '<cmd>lua vim.diagnostic.goto_next()<CR>',
			{ noremap = true, silent = true })
		vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, bufopts)
	end
}
