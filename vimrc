
"""""""""""""""""""
" VIM General
"""""""""""""""""""
set nocompatible

filetype plugin indent on
syntax on

set history=100
set autoread

set expandtab
set smarttab
set tabstop=4
set ai sw=4 

set showmatch
set vb t_vb=
set ruler
set incsearch
"set cursorline
"set mouse=a
"set number
set cmdheight=1
set so=3
set laststatus=2
set ignorecase
set hlsearch
set lazyredraw
set lbr
set pastetoggle=<C-p>

setlocal foldlevel=1

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

"""""""""""""""""""""""""""""""""""""""""""
"Configure for NERDTree
"""""""""""""""""""""""""""""""""""""""""""

"auto load NERDTree when opening vi and auto quit vi when there is 
"only the NERDTree window
"autocmd vimenter * NERDTree
nmap <leader>n :NERDTreeToggle<cr>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeHighlightCursorline=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Theme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme ito 
set t_Co=256

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set noswapfile
set nowritebackup

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map <C-j> <C-W>=

inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

" 括号与引号自动补全
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
"inoremap < <><ESC>i
inoremap ' ''<ESC>i
inoremap " ""<ESC>i

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \   exe "normal! g`\"" |
            \ endif

" Remember info about open buffers on close
set viminfo^=%

""""""""""""""""""""""""""""""
" Tag list (ctags)
""""""""""""""""""""""""""""""
nmap <leader>t :TlistToggle<cr>
let Tlist_Ctags_Cmd = '/usr/bin/ctags' "设定linux系统中ctags程序的位置
let Tlist_Show_One_File = 1            "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1          "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist窗口 

"set path=/Users/ito/*/**
"set tags=tags;

"""""""""""""""""""
" Tab
"""""""""""""""""""
map <S-Left> :tabp<CR>
map <S-Right> :tabn<CR>

"""""""""""""""""""
" Configure for PHP
"""""""""""""""""""
"autocmd FileType php setlocal keywordprg=pman

au FileType php setlocal dict+=~/.vim/php_funclist.txt

"autocmd FileType go setlocal noexpandtab shiftwidth=4 tabstop=4 softtabstop=4 nolist
"autocmd FileType go autocmd BufWritePre <buffer> Fmt>

au BufRead,BufNewFile *.hbs setlocal filetype=javascript
let javascript_enable_domhtmlcss=1

" php 语法检查
map <C-c> :!/usr/bin/php -l %<CR>

" python formatter
"au FileType python set formatprg=~/.vim/py_format.py
"nmap <C-p> gggqG
