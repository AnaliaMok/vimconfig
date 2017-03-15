"--------------- General Configuration -------------------------

" Execute Installation of vim plugins
"call pathogen#infect()
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Allow syntax highlighting based on filetype
filetype plugin indent on
syntax on
call pathogen#infect()

" Adding a color column to set char limit
set colorcolumn=81

" Show line numbers
set number

" Changing vim's defaults with the backspace button
set backspace=indent,eol,start

" Keep more info in memory to speed things up
set hidden
set history=100

" Setting indenting logic
filetype indent on
set nowrap
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent

" Removing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

" Better Search
set hlsearch		" highlight found words
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>	" Cancel search with Esc

" Show Matching Parenthesis
set showmatch


"--------------- Plugin Configurations -------------------------

" NerdTree Plugin

" Use right arror to open a node
let NERDTreeMapActivateNode='<right>'

" Display Hidden Files
let NERDTreeShowHidden=1

" Display Toggle of tree <Leader> + n
nmap <leader>n :NERDTreeToggle<CR>

" Locate focused file
nmap <leader>j :NERDTreeFind<CR>

" Always open tree on boot, but don't focus
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p

" Don't display useles files in tree
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp']
