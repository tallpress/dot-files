" vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
	silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
" vs-code theme
	Plug 'tomasiser/vim-code-dark'
	Plug 'preservim/nerdtree'
	Plug 'fatih/vim-go'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'tmsvg/pear-tree'
	Plug 'tpope/vim-fugitive'
	Plug 'airblade/vim-gitgutter'
	Plug 'preservim/nerdcommenter'
call plug#end()

" airline config
"
" better tabs
let g:airline#extensions#tabline#enabled = 1

" set theme to vs-code
set t_Co=256
set t_ut=
let g:codedark_conservative = 1
colorscheme codedark
" colorscheme desert


:set cursorline

" show line numbers
set number

" Switch syntax highlighting on
syntax on

" always show ruler at bottom
set ruler

" don't make foo~ files
set nobackup

" fzf mapping to control p
nmap <C-P> :FZF<CR>
" Nerdtree toggleing
nmap <C-\> :NERDTreeToggle<CR>
"
nnoremap H gT
nnoremap L gt
"Buffer switching


" searching
set ignorecase
set smartcase
set hlsearch
set incsearch

" indentation
set autoindent
set smarttab
if has("autocmd")
  filetype on
  filetype indent on
  filetype plugin on
endif

" disable mouse integration
set mouse=


filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" " when indenting with '>', use 4 spaces width
set shiftwidth=4
" " On pressing tab, insert 4 spaces
set expandtab

set spell


