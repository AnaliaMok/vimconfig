" ------------------- General Configuration--------------------------

" Plugin manager
" To add plugins, cd into .vim and follow the format below
" git submodule add git@source/pluginname.git bundle/pluginname
execute pathogen#infect()

" Turn on syntax highlighting based on file names
filetype on
syntax on

" Set a visual line constraint. Doesn't actually stop you from exceeding
" 80 chars
set colorcolumn=81

" Turn on line numbers
set number

" Override backspace default
set backspace=indent,eol,start

" Defining leader key to a space
let mapleader=" "

" Remove need to reload vim config to see changes
" Type <space>s
map <leader>s :source ~/.vimrc<CR>

" Keep more info in memory
set hidden
set history=100

" Indenting Logic
filetype indent on
set nowrap
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent

" Remove whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

" Highlight found words on search
set hlsearch

" Cancel search with esc
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

" Show matching parenthesis
set showmatch



