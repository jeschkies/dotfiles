require "plugins"
require "git"
require "completion"
require "lsp"
require "key-bindings"
require "fzf"

vim.o.updatetime = 500

vim.o.background = "light"
vim.g.PaperColor_Theme_Options = {
  theme = {
    ['default.light'] = {
      override = {
             cursor_fg = {'#1c1c1c', '234'},
             cursor_bg = {'#c6c6c6', '251'},
      }
    }
  }
}
vim.cmd('colorscheme PaperColor')

vim.opt.tw = 80
vim.opt.colorcolumn = '80'
vim.opt.number = true
vim.opt.numberwidth = 2
vim.wo.showbreak= '⇇'

-- Show diagnostics on hover.
vim.api.nvim_create_autocmd("CursorHold", {
  buffer = bufnr,
  callback = function()
    local opts = {
      focusable = false,
      close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
      border = 'rounded',
      source = 'always',
      prefix = ' ',
      scope = 'cursor',
    }
    vim.diagnostic.open_float(nil, opts)
  end
})

-- Test
vim.g["test#neovim#start_normal"] = 1
vim.g["test#basic#start_normal"] = 1
--[[
" Plugins
call plug#begin()
  Plug 'neomake/neomake'
  Plug 'neovim/nvim-lspconfig' 
  Plug 'ku-s-h/summerfruit256.vim'
  Plug 'rust-lang/rust.vim'
call plug#end()

" Install missing plugins 
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

" Redefine leader
let mapleader=","
set showcmd

" Navigation
set hidden
nmap <leader>l :bnext<CR>
nmap <leader>h :bprevious<CR>
nmap <leader>p :CtrlP<CR>

" Theme
colors summerfruit256
set t_Co=256
colorscheme summerfruit256

" 120 characters margin and line numbers
set tw=120

syntax on
filetype plugin indent on
--]]

-- " LSP
-- :lua require'lspconfig'.gopls.setup{}
