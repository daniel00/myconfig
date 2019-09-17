syntax on
filetype on

"nnoremap W :w<CR>
"nnoremap Q :q<CR>

"if has('gui_running')
"  "set guifont=Lucida_Console:h11
"  set guifont=Source_Code_Pro:h12
"endif

"set encoding=utf-8
";set guifont=Consolas:h12:cANSI
"set guifontwide=Dotumche:h1:cDEFAULT
"lang mes en_US
"source $VIMRUNTIME/delmenu.vim
"source $VIMRUNTIME/menu.vim

"set linespace=3
"set encoding=utf-8
"set fileencoding=utf-8
"set guifont=Source_Code_Pro:h12			
"set guifont=Monaco:h12      			
"set guifontwide=D2Coding:h12 			

set encoding=utf-8		
"set guifont=Source_Code_Pro:h12
set guifont=D2Coding:h12
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

nnoremap  <C-H> <C-W>h
nnoremap  <C-L> <C-W>l

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

" if has("gui")
"   " CTRL-F is the search dialog
"   noremap  <expr> <C-F> has("gui_running") ? ":promptfind\<CR>" : "/"
"   inoremap <expr> <C-F> has("gui_running") ? "\<C-\>\<C-O>:promptfind\<CR>" : "\<C-\>\<C-O>/"
"   cnoremap <expr> <C-F> has("gui_running") ? "\<C-\>\<C-C>:promptfind\<CR>" : "\<C-\>\<C-O>/"

"   " CTRL-H is the replace dialog,
"   " but in console, it might be backspace, so don't map it there
"   nnoremap <expr> <C-H> has("gui_running") ? ":promptrepl\<CR>" : "\<C-H>"
"   inoremap <expr> <C-H> has("gui_running") ? "\<C-\>\<C-O>:promptrepl\<CR>" : "\<C-H>"
"   cnoremap <expr> <C-H> has("gui_running") ? "\<C-\>\<C-C>:promptrepl\<CR>" : "\<C-H>"
 " endif


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



"""" Vundle """
"set rtp+=~/.vim
"set rtp+=~/.vim/bundle/Vundle.vim
"
"call vundle#begin('~/.vim/bundle')
"Plugin 'VundleVim/Vundle.vim'
"
""Bundle 'tpope/vim-fugitive'
"Bundle 'tpope/vim-surround'
"Bundle 'tpope/vim-commentary'
"Bundle 'Lokaltog/vim-easymotion'
""Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
""Bundle 'tpope/vim-rails.git'
""Bundle 'OmniSharp/omnisharp-vim'
"
"call vundle#end()            " required
"
"map <space> <Plug>(easymotion-prefix)
"
"""" vim-commentary """
"setlocal commentstring=//\ %s
"abbr cwl	console.writeline();


"" Use the stdio version of OmniSharp-roslyn:
"let g:OmniSharp_server_stdio = 1
"let g:OmniSharp_server_path = 'C:\Users\yoo\Downloads\omnisharp-win-x86\OmniSharp.exe'
"






"============================================================
"below lines is for vundle plugin;
"============================================================
set nocompatible              " be iMproved, required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" My Bundle here:
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'easymotion/vim-easymotion'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'Valloric/YouUompleteMe'
"Plugin 'file:///home/gmarik/path/to/plugin'
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

call vundle#end()            " required

map <space> <Plug>(easymotion-prefix)

""" vim-commentary """
set commentstring=\"%s
" autocmd FileType python set commentstring=\ #%s
" autocmd FileType html set commentstring=\ <!--\ %s\ -->
" autocmd FileType sh set commentstring=\ #%s
autocmd FileType vim set commentstring=\"%s
autocmd FileType autohotkey set commentstring=;%s





" YouComplete Settings

 let g:ycm_server_python_interpreter = 'C:\\Python27\\python.exe'

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 1
let g:ycm_key_list_select_completion = ['', '']
let g:ycm_key_list_previous_completion = ['', '']
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_warning_symbol = '>*'
