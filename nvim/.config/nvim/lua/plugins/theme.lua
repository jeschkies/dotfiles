return {
      'RRethy/nvim-base16',

      lazy = false,
      priority = 1000,
      config = function()
        local base16 = require("base16-colorscheme")
        vim.cmd.colorscheme('base16-catppuccin-latte')

	-- override some colors
	local colors = require('base16-colorscheme').colors
        local hi = base16.highlight
        hi.VertSplit = { guifg = colors.base01, guibg = colors.base00, gui = "none", guisp = nil }
        hi.LineNr = { guifg = colors.base02, guibg = colors.base00, gui = nil, guisp = nil }
        hi.CursorLineNr = { guifg = colors.base02, guibg = colors.base01, gui = nil, guisp = nil }

	vim.opt.tw = 120
	vim.opt.colorcolumn = '120'
	vim.opt.number = true
	vim.opt.numberwidth = 2
	vim.wo.showbreak = '⇇'
      end
    }
