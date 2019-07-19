"### Turn filetype detection off and, even if it's not strictly"
"### necessary, disable loading of indent scripts and filetype plugins."
set nocompatible
filetype off

"### Set the runtime path to include Vundle and initialize."
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim/bundle/Plugins')

"### Let Vundle manage Vundle (required)."
Plugin 'VundleVim/Vundle.vim'

"### Plugin list"
Plugin 'itchyny/lightline.vim'
Plugin 'tpope/vim-surround'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'morhetz/gruvbox'

"### All of your Plugins must be added before the following line."
call vundle#end()
filetype plugin indent on
"### Put your non-Plugin stuff after this line "

"### Disable the swapfile and backups."
set noswapfile
set nobackup

"### Show command in bottom bar."
set showcmd

"### Highlight current line."
set cursorline

"### Redraw only when we need to."
set lazyredraw

"### highlight matching [{()}]."
set showmatch

"### search as characters are entered ans hightlight maches."
set incsearch
set hlsearch

"### Convert tabs to spaces. "
set expandtab

"### Disable indentation rules that are file-type specific. "
filetype indent off

"### When shifting lines, round the indentation to the nearest multiple of 'shiftwidth' and ident with four spaces."
set shiftround
set shiftwidth=4

"### Ident with four spaces and insert 'tabstop' number of spaces when the 'tab' key is pressed."
set tabstop=4
set smarttab

"### Always display the status bar."
set laststatus=2

"### Always show cursor position."
set ruler

"### Display command line’s tab complete options as a menu."
set wildmenu

"### Highlight the line currently under cursor."
set cursorline

"### Show line numbers on the sidebar."
set number

"### Disable errors."
set noerrorbells
set visualbell

"### Totally disable mouse."
set mouse=
set ttymouse=

"### Set the window’s title, reflecting the file currently being edited."
set title

"### Enable syntax highlight."
syntax on

"### Configure the collor schema."
set background=dark
let g:gruvbox_italic=1
colorscheme gruvbox

