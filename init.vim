if empty(glob('~/.config/nvim/autoload/plug.vim'))                                                                                                                                                  [17/352]
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd!
    autocmd VimEnter * PlugInstall
endif

" PLUGINS
call plug#begin('~/.config/nvim/plugged')
    Plug 'SirVer/ultisnips' | Plug 'phux/vim-snippets'
    Plug 'ncm2/ncm2'
    Plug 'vim-airline/vim-airline'
    Plug 'roxma/nvim-yarp'
    Plug 'scrooloose/nerdtree'
    Plug 'roxma/vim-hug-neovim-rpc'
    Plug 'ludovicchabant/vim-gutentags'
    Plug 'ncm2/ncm2-ultisnips'
    Plug 'https://github.com/ctrlpvim/ctrlp.vim'
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()

set number
set title
set cursorline

" Set the language server
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

au filetype go inoremap <buffer> . .<C-x><C-o>

" Go Indentation
au FileType go set noexpandtab
au FileType go set shiftwidth=4
au FileType go set softtabstop=4
au FileType go set tabstop=4
" Go Highlighting
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
" Prefer gopls except for goimports
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
let g:go_fmt_command = 'goimports'

augroup ncm2
  au!
  autocmd BufEnter * call ncm2#enable_for_buffer()
  au User Ncm2PopupOpen set completeopt=noinsert,menuone,noselect
  au User Ncm2PopupClose set completeopt=menuone
augroup END

" parameter expansion for selected entry via Enter
inoremap <silent> <expr> <CR> (pumvisible() ? ncm2_ultisnips#expand_or("\<CR>", 'n') : "\<CR>")

" cycle through completion entries with tab/shift+tab
inoremap <expr> <TAB> pumvisible() ? "\<c-n>" : "\<TAB>"
inoremap <expr> <s-tab> pumvisible() ? "\<c-p>" : "\<TAB>"

" Toggle nerdtree
nnoremap <C-g> :NERDTreeToggle<CR>
