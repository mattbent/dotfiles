set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdTree'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'YankRing.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Valloric/YouCompleteMe'
Plugin 'FuzzyFinder'
Plugin 'L9'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-surround'
Plugin 'bufexplorer.zip'
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead
syntax on
set number

set tabstop=4
set softtabstop=4 
set shiftwidth=4
set expandtab " Use spaces instead of tabs
set smarttab

set spell

set autoindent 		"automatically intend next line
set smartindent
set shiftround

set hlsearch  			"highlight search results
set incsearch 			"incremental search
set ignorecase 			"do case insensitive matching
set smartcase           "do smart case matching
set wrapscan   		"continue searching at top when hitting bottom

set showcmd 			" Show (partial) command in status line.
set showmatch           " Show matching brackets.
set mat=2
set showmode

map ; :

set complete+=k
set completeopt+=longest
set backspace=indent,eol,start
set history=50

" Show special characters
"if v:version >= 700
"  set list listchars=tab:>-,trail:.,extends:>,nbsp:_
"else
"  set list listchars=tab:>-,trail:.,extends:>
"endif

" Don't break up long lines, but visually wrap them.
set textwidth=0
set wrap

set cursorline                  " Highlight current line
set cursorcolumn                " Highlight current column
set wildmenu
set autoread                    " Automatically read new changes to a file

" A buffer becomes hidden when it is abandoned
set hid

" Tab completion
" will insert tab at beginning of line,
" will use completion if not at beginning
set wildmode=list:longest,list:full
set complete=.,w,t
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <Tab> <c-r>=InsertTabWrapper()<cr>

" Sets <Leader> - It's the default, but I used to forget; poor memory ;)
let mapleader = "\\"

" EasyMotion
let g:EasyMotion_leader_key = ','

 

set pastetoggle=<F11>
 
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
cmap w!! w !sudo tee % >/dev/null
map <C-n> :NERDTreeToggle<CR>
