" Make sure we are not running in compatible mode
if &compatible
  set nocompatible
endif

" Install Vim-plug if it's not already there
let config_dir = has('nvim') ? stdpath('config') : '~/.vim'
if empty(glob(config_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo ' . config_dir . '/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Vim-plug
call plug#begin(config_dir . '/plugged')
Plug 'arcticicestudio/nord-vim'
Plug 'gruvbox-community/gruvbox'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'sainnhe/everforest'
Plug 'sainnhe/gruvbox-material'
Plug 'tpope/vim-endwise'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" Base config
set number                  " Turn on line numbers
set ruler                   " Show cursor position
set showcmd                 " Show the command
set splitbelow              " Split below by default
set splitright              " Split right by default
set termguicolors           " Use 24 bit color

" Setup our tabs and spaces
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2

" Set our colorscheme
colorscheme everforest

" Change cursor on insert and normal modes
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" Keymappings 
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <silent> <C-p> :Files<CR>

" Configs
let g:airline_powerline_fonts = 1
let g:fzf_layout = { 'window': { 'width': 1.0, 'height': 0.4, 'relative': v:true, 'yoffset': 1.0 } }

" Tree-sitter
lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "comment",
    "css",
    "html",
    "javascript",
    "json",
    "lua",
    "markdown",
    "ruby",
    "scss",
    "sql",
    "typescript",
  },

  sync_install = false
}
EOF
