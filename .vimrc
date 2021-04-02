set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'vim-syntastic/syntastic'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'godlygeek/tabular'
Plugin 'johngrib/vim-game-code-break'
Plugin 'martinda/Jenkinsfile-vim-syntax'
Plugin 'ryanoasis/vim-devicons'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'pedrohdz/vim-yaml-folds'
Plugin 'tmhedberg/SimpylFold'
Plugin 'leafgarland/typescript-vim'
Plugin 'romainl/Apprentice'
Plugin 'fatih/vim-go'
Plugin 'hashivim/vim-terraform'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
set expandtab
set shiftwidth=4
set tabstop=4
set smartindent
set undofile                " Save undo's after file closes
set undodir=$HOME/.vim/undo " where to save undo histories
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo
set mouse=""

autocmd vimenter * NERDTree
autocmd VimEnter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
set hlsearch

augroup filetype
    au! BufRead,BufNewFile *.ll     set filetype=llvm
augroup END
"let g:EclimCompletionMethod = 'omnifunc'

au BufRead * normal zR    " Unfold everything on file open
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

syntax on
colorscheme apprentice
highlight NonText cterm=NONE ctermbg=16 gui=NONE guibg=#000000
highlight Normal cterm=NONE ctermbg=16 gui=NONE guibg=#000000
let g:syntastic_java_checkers = []
let g:terraform_fmt_on_save=1



set encoding=utf8
set conceallevel=3
autocmd FileType nerdtree setlocal nolist
