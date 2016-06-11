execute pathogen#infect()
syntax on
filetype plugin indent on

set nocompatible
set modelines=0
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set wildignore+=*tmp
set wildignore+=*node_modules
set wildignore+=*bower_components
set wildignore+=*dist
set wildignore+=*_build
set wildignore+=*deps
set ttyfast
set ruler
set number
set backspace=indent,eol,start
set laststatus=2
set undofile
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
set wrap
set textwidth=58
set formatoptions=qrn1
set pastetoggle=<F2>
set mouse=a
set shell=bash
set omnifunc=syntaxcomplete#Complete
set backupdir=/private/tmp
set directory=/private/tmp
set undodir=/private/tmp
set tags+=gem-tags

let mapleader=","

nnoremap j gj
nnoremap k gk
nnoremap <leader>dt :!bundle show --paths \| xargs ctags -R -f gem-tags<cr>
nnoremap <leader>pt :!ctags -R -f tags<cr>
nnoremap <leader>c ^i#<ESC>:w<CR>
nnoremap <leader>uc ^x<ESC>:w<CR>

nnoremap <leader><space> :noh<cr>
nnoremap / /\v
vnoremap / /\v
inoremap jk <C-[>
inoremap jj <C-[>
nnoremap ; :
vnoremap ; :
nnoremap <silent> <leader><CR> i<CR><C-[>
nnoremap <silent> <leader>o o<C-[>
nnoremap <silent> <leader>O O<C-[>
nnoremap <leader>j :m .+1<CR>==
nnoremap <leader>k :m .-2<CR>==
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-\> <C-w>>
nnoremap <leader>rs :!bundle exec rspec --color %<CR>
nnoremap <leader>rl :exe '!bundle exec rspec --color %:'.line('.')<cr>
nnoremap <leader>s :!rspec --color %<CR>
nnoremap <leader>l :exe '!rspec --color %:'.line('.')<cr>
nnoremap <leader>rt :!ruby -Ilib:test %<CR>
nnoremap <leader>f :CommandTFlush<CR>
nnoremap <leader>g :!open <cWORD><CR><CR>

function! Save()
  :%s/\s\+$//e
  :retab<CR>
endfunction

nnoremap <silent> <Leader>rts :%s/\s\+$//e<CR>
autocmd BufWritePre * call Save()
let $XIKI_DIR = "/Users/hippie/dropbox/code/ruby/xiki/"
source $XIKI_DIR/etc/vim/xiki.vim
