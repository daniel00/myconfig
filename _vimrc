""" this _vimrc file path is d:/yoo/myconfig/myvim/_vimrc

let mapleader=","

" nnoremap <leader>o :e ~\_vimrc<CR>
" nnoremap <leader>v :source ~\_vimrc<CR>
nnoremap <leader>o :e d:/yoo/myconfig/myvim/.vim/_vimrc<CR>
nnoremap <leader>v :source d:/yoo/myconfig/myvim/.vim/_vimrc<CR>

syntax on
filetype on

set nobackup
set rnu

nnoremap ; :
nnoremap <space> ;


set langmenu=en_US.UTF-8
langua messages en_US.UTF-8set langmenu=en_US.UTF-8

"set guifont=Source_Code_Pro:h12
set guifont=D2Coding:h12
colorscheme desert
"colorscheme Default
set cursorline

set backspace=2
" set langmenu=en_US
set nu
set shiftwidth=4
set tabstop=4
set autoindent
set hlsearch
set ignorecase
set smartcase
set incsearch
set scrolloff=2
set nobackup
set noswapfile
set autochdir

"let $LANG = 'en_US'
"source $VIMRUNTIME/delmenu.vim
"source $VIMRUNTIME/menu.vim

"nnoremap ; :
inoremap  jk <Esc>
cnoremap  jk <Esc>
vnoremap  ;  <Esc>

inoremap <C-H> <Left>
inoremap <C-L> <Right>
inoremap <C-J> <BS>
inoremap <C-K> <Del>
 
nnoremap  n  nzz
nnoremap  N  Nzz
nnoremap  *  *zz
nnoremap  #  #zz
nnoremap  g* g*zz
nnoremap  G  Gzz

nnoremap  tn :tabnew<CR>

nnoremap  <C-J> 5j
nnoremap  <C-K> 5k

nnoremap  <C-H> gT
nnoremap  <C-L> gt
nnoremap  gh <C-W>h
nnoremap  gj <C-W>j
nnoremap  gk <C-W>k
nnoremap  gl <C-W>l

nnoremap  go ^
nnoremap  gk $

inoremap  <C-B> <C-W>

""" copy to clipboard """""
vnoremap  <C-C> "+y
vnoremap  <C-V> "+p
nnoremap  <C-C> "+yy
nnoremap  <C-V> "+p

" CTRL-A is Select all
noremap <C-A> gggH<C-O>G
inoremap <C-A> <C-O>gg<C-O>gH<C-O>G
cnoremap <C-A> <C-C>gggH<C-O>G
onoremap <C-A> <C-C>gggH<C-O>G
snoremap <C-A> <C-C>gggH<C-O>G
xnoremap <C-A> <C-C>ggVG



nnoremap <CR> :nohl<CR>
nnoremap <Esc> :nohl<CR>




abbr inc #include <stdio.h>
""" abbr main int main()<CR> {<CR> return 0;<CR>}


""" cursor shape """
" let &t_ti.="\e[1 q"
" let &t_SI.="\e[5 q"
" let &t_EI.="\e[1 q"
" let &t_te.="\e[0 q"


""" include path """
set path+=/C/MinGW/include/**2
set path+=.



""" plugin path """
set runtimepath^=D:/yoo/myconfig/myvim/.vim/bundle/vim-easymotion
set runtimepath^=D:/yoo/myconfig/myvim/.vim/bundle/vim-commentary
set runtimepath^=D:/yoo/myconfig/myvim/.vim/bundle/vim-surround
set runtimepath^=D:/yoo/myconfig/myvim/.vim/bundle/vim-repeat
set runtimepath^=D:/yoo/myconfig/myvim/.vim/bundle/coc.nvim
set runtimepath^=D:/yoo/myconfig/myvim/.vim/bundle/vim-clang-format
set runtimepath^=D:/yoo/myconfig/myvim/.vim/bundle/vim-clang

set runtimepath^=D:/yoo/myconfig/myvim/.vim


""" vim-commentary """
autocmd FileType vim set commentstring=\"%s
autocmd FileType autohotkey set commentstring=;%s
set commentstring=\"%s
" autocmd FileType python set commentstring=\ #%s
" autocmd FileType html set commentstring=\ <!--\ %s\ -->
" autocmd FileType sh set commentstring=\ #%s

""" vim-easymotion """
map <leader> <Plug>(easymotion-prefix)
nmap s <Plug>(easymotion-s)
