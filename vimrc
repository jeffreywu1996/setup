"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer:
"       Jeffrey Wu
" Sections:
"       -> Vundle Plugin
"       -> Themes
"       -> General
"       -> Text, tabs
"       -> Visual
"       -> Highlight
"       -> Vim interface
"       -> Files
"       -> Moving around
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vundle Plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
"Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'Valloric/YouCompleteMe'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
" Plug 'mileszs/ack.vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0rp/ale'
"Plug 'airblade/vim-gitgutter'
Plug 'nathanaelkane/vim-indent-guides'
"Plug 'KabbAmine/vCoolor.vim'
"Plug 'marijnh/tern_for_vim'
"Plug 'mxw/vim-jsx'
"Plug 'jelera/vim-javascript-syntax'
"Plug 'pangloss/vim-javascript'
Plug 'majutsushi/tagbar'
Plug 'ntpeters/vim-better-whitespace'
"Plug 'easymotion/vim-easymotion'
Plug 'terryma/vim-multiple-cursors'
"Plug 'kristijanhusak/vim-hybrid-material'
Plug 'neovimhaskell/haskell-vim'

call plug#end()

filetype plugin indent on    " required

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Themes
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set t_Co=256
"set termguicolors
set background=dark     " dark background
"set background=light    " light background

" SOLARIZED
"let g:solarized_termcolors=256
"colorscheme solarized

colorscheme Tomorrow-Night
"colorscheme base16-material-dark
"colorscheme Tomorrow


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Buffer Reads
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Python file types
"au BufNewFile,BufRead *.py
    "\ set tabstop=4
    "\ set softtabstop=4
    "\ set shiftwidth=4
    "\ set textwidth=79
    "\ set expandtab
    "\ set autoindent
    "\ set fileformat=unix

" Javascript file types
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" open .vimrc
nnoremap <silent> <leader>v :tabnew $MYVIMRC<CR>
nnoremap <silent> <leader>vs :w<CR>:source $MYVIMRC<CR>:filetype detect<CR>:exe ":echo ' reloaded'"<CR>>

" Set cursor line
set cursorline

" Set encoding for fonts
set encoding=utf-8

" fix copy paste to clipboard
set clipboard=unnamed

" Sets how many lines of history VIM has to remember
set history=500

" Set to auto read when a file is changed from the outside
set autoread

" Mapping leader to ,
" let mapleader = ","
" let g:mapleader = ","

" Fast undo/redo
nnoremap <leader>z :u<cr>
nnoremap <leader>Z <C-R>

" Fast saving/close
nmap <leader>w :w!<cr>
nmap <leader>q :q<cr>
nmap <leader>wq :wq<cr>

nnoremap Y y$

syntax enable    " syntax on
set mouse=a      " enable use of mouse

set shortmess+=I " no splash
set nocompatible " vim only, no vi
set title        " terminal title = buffer title
set modeline     " always show modeline

set number       " linum
set ruler		 " shows char and line number
set showcmd      " show command info in minibuffer
set showmatch    " highlight matching parens
" set lisp         " lisp mode (conflicts with cindent)

" highlight 80 chars overflow, red bar down the 80th col
set colorcolumn=80


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Javascript use 2 space tabs
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2
autocmd FileType haskell setlocal shiftwidth=2 tabstop=2

autocmd filetype crontab setlocal nobackup nowritebackup

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

"set hidden
"set linebreak


""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f', '')<CR>
vnoremap <silent> # :call VisualSelection('b', '')<CR>


""""""""""""""""""""""""""""""
" => Highlight
""""""""""""""""""""""""""""""
" Ignore case when searching
set ignorecase
" When searching try to be smart about cases
set smartcase
" Highlight search results
set hlsearch
" Makes search act like search in modern browsers
set incsearch
" Don't redraw while executing macros (good performance config)
set lazyredraw
" For regular expressions turn magic on
set magic
" Show matching brackets when text indicator is over them
set showmatch
nnoremap <CR> :nohlsearch<cr>


"""""""""""""""""""""""""""""
" VIM user interface
"""""""""""""""""""""""""""""
set wildmenu
set cmdheight=1
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Add a bit extra margin to the left
set foldcolumn=1

" Make vertical splits thinner
hi VertSplit ctermbg=NONE guibg=NONE
set fillchars+=vert:│


""""""""""""""""""""""""""""
" Files, backup
"""""""""""""""""""""""""""
" Turn off backup
set noswapfile

" default is unix, never crlf
set fileformats=unix,dos

" don't beep
set noeb vb t_vb=

" Intuitive backspacing in insert mode
set backspace=indent,eol,start


""""""""""""""""""""""""""""
" Moving around
""""""""""""""""""""""""""""
" Treat long lines as break lines
map j gj
map k gk

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Close the current buffer
map <leader>bd :Bclose<cr>
" Close all the buffers
map <leader>ba :1,1000 bd!<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" jj is escape
inoremap jj <esc>

" move around screen
nnoremap <leader>j <C-W>j
nnoremap <leader>k <C-W>k
nnoremap <leader>l <C-W>l
nnoremap <leader>h <C-W>h
nnoremap <leader>r <C-W>r


""""""""""""""""""""""""""""
" Python
""""""""""""""""""""""""""""
" Python Folding
set foldmethod=indent
set nofoldenable
" python with virtualenv support
"py << EOF
"import os
"import sys
"if 'VIRTUAL_ENV' in os.environ:
  "project_base_dir = os.environ['VIRTUAL_ENV']
  "activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  "execfile(activate_this, dict(__file__=activate_this))
"EOF


""""""""""""""""""""""""""""
" Unorganized
""""""""""""""""""""""""""""
nnoremap <leader>b          :CtrlPBuffer<CR>
nnoremap <leader>d          :NERDTreeToggle<CR>
nnoremap <leader>f          :Ag<CR>
nnoremap <leader>t          :FZF<CR>
" nnoremap <Leader>a          :Ack!<Space>
nnoremap <leader>cc         :Commentary<CR>
nnoremap <leader>]          :TagbarToggle<CR>
nnoremap <leader>g          :GitGutterToggle<CR>

" NERDTree toggle
map <leader>nt :NERDTreeToggle<CR>

" Airline fix
"let g:airline_theme = "hybrid"
set linespace=0
set laststatus=2
set ttimeoutlen=50
let g:airline_powerline_fonts=1

"let g:airline_left_sep = ''      " Cannot fix airline arrow, so remove
"let g:airline_left_sep = ''
"let g:airline_left_sep = '»'
"let g:airline_left_sep = '▶'
"let g:airline_right_sep = '«'
"let g:airline_right_sep = '◀'


" YouCompleteMe
let g:ycm_global_ycm_extra_conf='~/setup/ycm/ycm_extra_conf.py'
autocmd CompleteDone * pclose
let g:ycm_python_binary_path = '/usr/local/bin/python' " python completion

" Indent guides color
map <leader>i :IndentGuidesToggle<CR>
"let g:indent_guides_auto_colors = 0
hi IndentGuidesEven  ctermbg=grey

" JSX in js files
let g:jsx_ext_required = 0 " Allow JSX in normal JS files

" Gitgutter
let g:gitgutter_enabled = 0

" showfunction
map <leader>m :TagbarToggle<CR>

" White space
map <leader>l :ToggleWhitespace<CR>
map <leader>ll :StripWhitespace<CR>
let g:strip_whitespace_on_save = 1

" Yapf
map <leader>kk :call yapf#YAPF()<cr>

" Multiple cursor
let g:multi_cursor_prev_key='<C-m>'
let g:multi_cursor_skip_key='<C-b>'

" Haskell Highlight stuff
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1

" ALE linter
" Disable linter on save
let g:ale_lint_on_save = 0
" Disable linter on vim startup
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
" Airline linter
let g:airline#extensions#ale#enabled = 1

" print options
set printoptions=number:y
