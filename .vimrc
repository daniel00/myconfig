syntax on
"nnoremap W :w<CR>
"nnoremap Q :q<CR>

"if has('gui_running')
"  "set guifont=Lucida_Console:h11
"  set guifont=Source_Code_Pro:h12
"endif

set guifont=Source_Code_Pro:h12
colorscheme desert
set cursorline

set backspace=2
set langmenu=en_US
set nu
set shiftwidth=4
set tabstop=4
set autoindent
set hlsearch
set ignorecase
set incsearch
set scrolloff=5

let $LANG = 'en_US'
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

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


""" copy to clipboard """""
vnoremap  <C-C> "+y
vnoremap  <C-V> "+p
nnoremap  <C-V> "+p

""" copy 1 line to clipboard """""
nnoremap  <C-C> "+yy




nnoremap <CR> :nohl<CR>

"let mapleader="<space>"
let mapleader=","

nnoremap <leader>b :vsc Debug.ToggleBreakpoint<cr>
nnoremap <leader>r :vsc Debug.StartWithoutDebugging<cr>
nnoremap <leader>d :vsc Debug.Start<cr>
"nnoremap <leader>r :vsc TestExplorer.RunAllTestsInContext<cr>
"nnoremap <leader>R :vsc TestExplorer.DebugAllTestsInContext<cr>

nnoremap <leader>ev :e ~/.vimrc<CR>
nnoremap <leader>sv :so ~/.vimrc<CR>

abbr inc #include <stdio.h>
""" abbr main int main()<CR> {<CR> return 0;<CR>}



""" cursor shape """
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"


""" include path """
set path+=/C/MinGW/include/**2
set path+=.



""" Vundle """
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-commentary'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'OmniSharp/omnisharp-vim'

map <space> <Plug>(easymotion-prefix)

""" vim-commentary """
setlocal commentstring=//\ %s
abbr cwl	console.writeline();


" Use the stdio version of OmniSharp-roslyn:
let g:OmniSharp_server_stdio = 1
let g:OmniSharp_server_path = 'C:\Users\yoo\Downloads\omnisharp-win-x86\OmniSharp.exe'
