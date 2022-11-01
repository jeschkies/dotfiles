local lspkind = require "lspkind"
lspkind.init()

local cmp = require "cmp"

cmp.setup {
    sources = {
        { name = "nvim_lsp" },
        { name = "path" },
        { name = "buffer", keyword_length = 5 },
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
