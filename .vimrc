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

set encoding=utf-8  " encoding displayed
set fileencoding=utf-8  " encoding written to file

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
noremap <leader>p obinding.pry <Esc>

" Highlight search matches
set hlsearch

" Disable arrow keys
" nnoremap <Left> :echoe "Use h"<CR>
" nnoremap <Right> :echoe "Use l"<CR>
" nnoremap <Up> :echoe "Use k"<CR>
" nnoremap <Down> :echoe "Use j"<CR>"
" inoremap <up> <nop>
" inoremap <down> <nop>
" inoremap <left> <nop>
" inoremap <right> <nop>

" Easier split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Ignore certain files and folders when auto-completing
set wildignore=.svn,CVS,.git,*.swp,*.jpg,*.png,*.gif,*.pdf,*.bak
set wildignore+=**/node_modules/**,**/bower_components/**

" Do not create .swp (swap-) files
set noswapfile

" Set history (default is 20)
set history=1000

" Maintain undo history between sessions
set undofile
set undodir=~/.vim/undodir

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

" -----------------
" Better Whitespace
" https://github.com/ntpeters/vim-better-whitespace
" -----------------

" Strip trailing whitespace on save
autocmd BufWritePre * StripWhitespace

" -----
" CtrlP
" http://kien.github.io/ctrlp.vim
" -----

nnoremap <leader>f :CtrlP<CR>
" https://stackoverflow.com/questions/21346068/slow-performance-on-ctrlp-it-doesnt-work-to-ignore-some-folders
" Persist the cache
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
" Use ag (the_silver_searcher) instead of vim's native globpath() apis to
" search for files
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" ---------
" Solarized
" https://github.com/altercation/vim-colors-solarized
" ---------

syntax enable

" if has('gui_running')
"   set background=light
" else
"   set background=dark
" endif
set background=light

" Use degraded 256 colorscheme
let g:solarized_termcolors=256
colorscheme solarized

" --------
" SuperTab
" --------

" Select completions top to bottom
let g:SuperTabDefaultCompletionType = "<c-n>"

" ---------
" Syntastic
" https://github.com/vim-syntastic/syntastic
" ---------

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0 " Disable quickview
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_go_checkers = ['go', 'govet', 'errcheck']
let g:syntastic_typescript_checkers = ['tsuquyomi'] " Integrate with Tsuquyomi

" --------
" tComment
" https://github.com/tomtom/tcomment_vim
" --------

nnoremap // :TComment<CR>
vnoremap // :TComment<CR>

" ---------
" Tsuquyomi
" https://github.com/Quramy/tsuquyomi
" ---------

let g:tsuquyomi_disable_quickfix = 1 " Integrate with Syntastic

" -----
" vim-go
" https://github.com/fatih/vim-go
" -----

let g:go_fmt_command = "goimports"

" -----
" vim-prettier
" https://github.com/prettier/vim-prettier
" -----

" Max line length that prettier will wrap on
let g:prettier#config#print_width = 80

" Running before saving async
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
