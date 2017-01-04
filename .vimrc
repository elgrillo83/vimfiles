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

set colorcolumn=80 " display 80 characters column

set laststatus=2 " Display status line always

" Switch to next buffer
noremap <tab> :bn<CR>
" Switch to previous buffer
noremap <S-tab> :bp<CR>

" Set byebug breakpoint
noremap <leader>b obyebug <Esc>

" Set pry breakpoint
noremap <leader>p orequire 'pry'; binding.pry <Esc>

" Highlight search matches
set hlsearch

" ---
" Ack
" https://github.com/mileszs/ack.vim
" ---

" Use ag (The Silver Searcher) if available
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

nnoremap <leader>a :Ack!<Space>

" -----------------
" Bbye (Buffer Bye)
" https://github.com/moll/vim-bbye
" -----------------

" Close current buffer 
nnoremap <leader>d :Bdelete<CR>
" Close all buffers
nnoremap <leader>D ::bufdo :Bdelete<CR>

" -----
" CtrlP
" http://kien.github.io/ctrlp.vim
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
