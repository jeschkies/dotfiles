" Plugins
call plug#begin('~/.config/nvim/plugged')
Plug 'neomake/neomake'
Plug 'singhkushagra/summerfruit256.vim'
Plug 'rust-lang/rust.vim'
call plug#end()

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
set colorcolumn=120
set number
set showbreak=⇇


syntax on
filetype plugin indent on
