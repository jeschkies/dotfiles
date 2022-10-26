require "plugins"
require "lsp"
require "key-bindings"
vim.o.background = "light"
vim.cmd('colorscheme PaperColor')

vim.opt.tw = 80
vim.opt.colorcolumn = '80'
vim.opt.number = true
vim.opt.numberwidth = 2
vim.wo.showbreak= '⇇'

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
