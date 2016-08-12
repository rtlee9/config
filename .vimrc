" Vundle setup

set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'davidhalter/jedi-vim'

" Color schemes
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required<Paste>o

set encoding=utf-8
set nu

let python_highlight_all=1
syntax on

let g:syntastic_python_checkers=["flake8"]
let g:syntastic_python_flake8_args ="--ignore=E402"

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Color Scheme
set t_Co=256 " says terminal has 256 colors
let g:molokai_original = 1
let g:rehash256 = 1
colorscheme molokai

" Set split directions
set splitbelow
set splitright

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Set paste mode
set pastetoggle=<F2>

" Enable use of the mouse for all modes
set mouse=a

" Syntastic settings (default)
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" let g:pep8_ignore="E402"


" Usability settings
set confirm
set cmdheight=2
set hlsearch
set showcmd
set hidden
set wildmenu

vnoremap r :w !python<CR>

" "------------------------------------------------------------
" Mappings {{{1
"
" Useful mappings

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$
"
" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>
