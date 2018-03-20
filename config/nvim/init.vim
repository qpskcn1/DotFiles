set nocompatible          " get rid of Vi compatibility mode. SET FIRST!
filetype plugin indent on " filetype detection[ON] plugin[ON] indent[ON]
set t_Co=256              " enable 256-color mode.
syntax enable             " enable syntax highlighting (previously syntax on).
set cursorline            " highlight cursorline
set number                " show line numbers   
set relativenumber        " show relative line numbers
" set laststatus=2          " last window always has a statusline
filetype indent on        " activates indenting for files
set nohlsearch            " Don't continue to highlight searched phrases.
set incsearch             " But do highlight as you type your search.
set ignorecase            " Make searches case-insensitive.
set ruler                 " Always show info along bottom.
set autoindent            " auto-indent
set tabstop=4             " tab spacing
set softtabstop=4         " unify
set shiftwidth=4          " indent/outdent by 4 columns
set shiftround            " always indent/outdent to the nearest tabstop
set expandtab             " use spaces instead of tabs
set smarttab              " use tabs at the start of a line, spaces elsewhere
" set nowrap                " don't wrap text

let g:python_host_prog = '/usr/bin/python2.7'
let g:python3_host_prog = '/usr/local/bin/python3'

if &compatible
  set nocompatible
endif
let s:path = expand('~/.vim/dein')
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim
set runtimepath+=/usr/local/opt/fzf

if dein#load_state(expand('~/.vim/dein'))
  call dein#begin(expand('~/.vim/dein'))

  call dein#add('joshdick/onedark.vim')
  call dein#add('Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('scrooloose/nerdtree')
  call dein#add('vim-airline/vim-airline')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

" let g:deoplete#enable_at_startup = 1
colorscheme onedark       " use joshdick/onedark as colorscheme
" Airline Settings
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#tab_nr_type = 1 " show tab number
" NerdTree Settings
let NERDTreeIgnore = ['\.pyc$']
let NERDTreeShowHidden = 1
