" Don't make efforts to make Vim VI-compatible
set nocompatible

" Turn on filetype detection
:filetype on

" Turn on syntax highlighting if more than 1 color is available
if &t_Co > 1
    syntax enable
endif

" Turn on auto-indentation for C-syntax languages
:au FileType c,cpp,java,h set cindent

" Show matching brackets
set showmatch

" Set one depending on terminal type
set background=dark
" set background=light

" Makes backspace behave as expected
set backspace=2

"Set the tab key to 4 spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab

" Turn on visual wrapping
set wrap

"Wrap at 120 characters
set textwidth=120

" Turn on highlighting for searching
set hlsearch

" Show cursor line and column position
set ruler

" ###############################
" Begin Plugin Section - Plug-Vim
" ###############################
call plug#begin(stdpath('data') . '/plugged')

" A fuzzy file finder
Plug 'kien/ctrlp.vim'

" Comment/Uncomment tool
Plug 'scrooloose/nerdcommenter'

" Switch to the begining and the end of a block by pressing %
Plug 'tmhedberg/matchit'

" A Tree-like side bar for better navigation
Plug 'scrooloose/nerdtree'

" A cool status bar
Plug 'vim-airline/vim-airline'

" Better syntax-highlighting for filetypes in vim
Plug 'sheerun/vim-polyglot'

" Intellisense engine
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Git integration
Plug 'tpope/vim-fugitive'

" Auto-close braces and scopes
Plug 'jiangmiao/auto-pairs'

" Syntastic, for syntax checking
Plug 'scrooloose/syntastic'

" Nord theme
Plug 'arcticicestudio/nord-vim'

" #############################
" End Plugin Section - Plug-Vim
" #############################
call plug#end()

" #####################
" Plugin Configurations
" #####################

" Powerline Symbols support and different theme for Airline
let g:airline_powerline_fonts = 1
let g:airline_theme='nord'

" Nord theme
colorscheme nord

" Syntastic stuff
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" #########################
" End Plugin Configurations
" #########################

