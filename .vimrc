" ----------------
" Pathogen plugins
" https://github.com/tpope/vim-pathogen
" ----------------

execute pathogen#infect()

" -------
" General
" -------

syntax on " turn on color syntax highlighting
filetype plugin indent on " turn on filetype detection, plugins and indent scripts

" Set leader key
let mapleader = ','
let g:mapleader = ','

" Convert tabs to spaces
" http://vim.wikia.com/wiki/Converting_tabs_to_spaces
set tabstop=2    " number of spaces when tab key is pressed
set shiftwidth=2 " number of spaces inserted for indentation
set expandtab    " insert space characters whenever tab key is pressed

set nowrap " no line breaking

set number " display line numbers

" -----
" CtrlP
" http://kien.github.io/ctrlp.vim/#installation
" -----

nnoremap <leader>f :CtrlP<CR>

" --------- 
" Solarized 
" https://github.com/altercation/vim-colors-solarized
" --------- 

syntax enable

if has('gui_running')
  set background=light
else
  set background=dark
endif

" Use degraded 256 colorscheme
let g:solarized_termcolors=256
colorscheme solarized

" ---------
" Syntastic
" https://github.com/vim-syntastic/syntastic
" ---------

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" --------
" tComment
" https://github.com/tomtom/tcomment_vim
" --------
"
nnoremap // :TComment<CR>
vnoremap // :TComment<CR>
