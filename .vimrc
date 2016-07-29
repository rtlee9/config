" Vundle setup

set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.nvim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'vim-scripts/indentpython.nvim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/syntastic'
Plugin 'ntpeters/vim-better-whitespace'

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

" Enable use of the mouse for all modes
set mouse=a

" Syntastic settings (default)
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Usability settings
set confirm
set cmdheight=2
set hlsearch
set showcmd
set hidden
set wildmenu

" terminal emulator
"""""""""""""""
tnoremap <Esc> <C-\><C-n>

" Move between windows - this doesn't work on Ubuntu virtual machine
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

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

"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

