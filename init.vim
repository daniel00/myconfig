let mapleader = ","


set path+=$INCLDE
set nobackup
set noswapfile
set clipboard=unnamedplus
set autochdir
set ignorecase

nnoremap <leader>c :set formatoptions-=cro<cr>
set formatoptions-=cro

nnoremap <c-t> <c-z>
nnoremap <leader>o :edit ~/.config/nvim/init.vim<cr>
nnoremap <leader>v :source ~/.config/nvim/init.vim<cr>

"""Esc + Format + Save"""
inoremap jk <Esc>:w<CR>
" nnoremap jk <Esc>mzgg=G'z:w<CR>
" inoremap jj <Esc>
cnoremap jk <Esc>
vnoremap ; <Esc>

nnoremap <C-;> <Esc>
inoremap <C-;> <Esc>
cnoremap <C-;> <Esc>
vnoremap <C-;> <Esc>

nnoremap ; :
vnoremap ; :
nnoremap <space> ;

nnoremap <c-j> <s-}>
nnoremap <c-k> <s-{>
onoremap <c-j> <s-}>
onoremap <c-k> <s-{>
vnoremap <c-j> <s-}>
vnoremap <c-k> <s-{>

nnoremap <expr> ' "'" . nr2char(getchar()) . "zz"
nnoremap <expr> ` "`" . nr2char(getchar()) . "zz"

" nnoremap <Left> :vertical resize +2<CR>
" nnoremap <Right> :vertical resize -2<CR>
" nnoremap <Up> :resize -2<CR>
" nnoremap <Down> :resize +2<CR>

nnoremap go ^
nnoremap gk g_

nnoremap gh <c-w>h
nnoremap gl <c-w>l

nnoremap <Enter> :nohl<cr>

inoremap <C-L> <right>
inoremap <C-O> =

nnoremap <C-P> :Files<CR>

let &t_SI = "\<esc>[5 q"  " blinking I-beam in insert mode
let &t_SR = "\<esc>[3 q"  " blinking underline in replace mode
let &t_EI = "\<esc>[ q"  " default cursor (usually blinking block) otherwise

set cursorline





" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
"Plug 'tsony-tsonev/nerdtree-git-plugin'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
" Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
Plug 'scrooloose/nerdcommenter'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" Plug 'christoomey/vim-tmux-navigator'
Plug 'OmniSharp/omnisharp-vim'

Plug 'morhetz/gruvbox'

Plug 'HerringtonDarkholme/yats.vim' " TS Syntax

"vim-commentary
Plug 'tpope/vim-commentary'

"""vim-surround"""
Plug 'tpope/vim-surround'

Plug 'easymotion/vim-easymotion'

Plug 'jiangmiao/auto-pairs'

"""vim-repeat"""
Plug 'tpope/vim-repeat'


Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

Plug 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

""ALE lint"
Plug 'dense-analysis/ale'


"""exchange"""
Plug 'tommcdo/vim-exchange'

"""Obssesion"""
Plug 'tpope/vim-obsession'

"""for codequery"""
Plug 'Shougo/unite.vim'
Plug 'devjoe/vim-codequery'

Plug 'wellle/targets.vim'

Plug 'octol/vim-cpp-enhanced-highlight'
" Initialize plugin system
call plug#end()







nmap s <Plug>(easymotion-s)


nmap <C-n> :NERDTreeToggle<CR>
" vmap ++ <plug>NERDCommenterToggle
" nmap ++ <plug>NERDCommenterToggle

" open NERDTree automatically
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * NERDTree

let g:NERDTreeGitStatusWithFlags = 1
"let g:WebDevIconsUnicodeDecorateFolderNodes = 1
"let g:NERDTreeGitStatusNodeColorization = 1
"let g:NERDTreeColorMapCustom = {
      "\ "Staged"    : "#0ee375",  
      "\ "Modified"  : "#d9bf91",  
      "\ "Renamed"   : "#51C9FC",  
      "\ "Untracked" : "#FCE77C",  
      "\ "Unmerged"  : "#FC51E6",  
      "\ "Dirty"     : "#FFBD61",  
      "\ "Clean"     : "#87939A",   
      "\ "Ignored"   : "#808080"   
      "\ }                         


let g:NERDTreeIgnore = ['^node_modules$']

" vim-prettier
"let g:prettier#quickfix_enabled = 0
"let g:prettier#quickfix_auto_focus = 0
" prettier command for coc
command! -nargs=0 Prettier :CocCommand prettier.formatFile
" run prettier on save
"let g:prettier#autoformat = 0
"autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync


" ctrlp
" let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" j/k will move virtual lines (lines that wrap)
" noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
" noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

set relativenumber
set number

set smarttab
set cindent
set tabstop=4
set shiftwidth=2
" always uses spaces instead of tab characters
set expandtab

colorscheme gruvbox

" sync open file with NERDTree
" " Check if NERDTree is open or active
function! IsNERDTreeOpen()        
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction

" Call NERDTreeFind iff NERDTree is active, current window contains a modifiable
" file, and we're not in vimdiff
function! SyncTree()
  if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
    NERDTreeFind
    wincmd p
  endif
endfunction

" Highlight currently open buffer in NERDTree
autocmd BufEnter * call SyncTree()

" coc config

" let g:coc_global_extensions = [
"   \ 'coc-ultisnips',
"   \ 'coc-pairs',
"   \ 'coc-tsserver',
"   \ 'coc-eslint', 
"   \ 'coc-prettier', 
"   \ 'coc-json', 
"   \ ]









let g:coc_global_extensions = [
      \ 'coc-pairs',
      \ 'coc-tsserver',
      \ 'coc-eslint', 
      \ 'coc-prettier', 
      \ 'coc-json', 
      \ ]



" let g:coc_global_extensions = [
"   \ 'coc-snippets',
"   \ 'coc-pairs',
"   \ 'coc-tsserver',
"   \ 'coc-eslint', 
"   \ 'coc-prettier', 
"   \ 'coc-json', 
"   \ ]


" imap <C-J> <Plug>(coc-snippets-expand)






" from readme
" if hidden is not set, TextEdit might fail.
set hidden " Some servers have issues with backup files, see #649 set nobackup set nowritebackup " Better display for messages set cmdheight=2 " You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" added by yoo
" inoremap <silent><expr> <c-j> pumvisible() ? coc#_select_confirm() : 
"                                            \"\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
" inoremap <silent><expr> <tab>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" function! s:check_back_space() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()









" inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : 
"                                            \"\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" inoremap <silent><expr> <tab> pumvisible() ? coc#_select_confirm() : 
"                                            \"\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : 
"                                            \"\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" " Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" " Coc only does snippet and additional edit on confirm.
" inoremap <expr> <C-j> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" " Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" " Use `[g` and `]g` to navigate diagnostics
" nmap <silent> [g <Plug>(coc-diagnostic-prev)
" nmap <silent> ]g <Plug>(coc-diagnostic-next)





" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>r <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)









" Fix autofix problem of current line
"nmap <leader>qf  <Plug>(coc-fix-current)

"" Create mappings for function text object, requires document symbols feature of languageserver.
"xmap if <Plug>(coc-funcobj-i)
"xmap af <Plug>(coc-funcobj-a)
"omap if <Plug>(coc-funcobj-i)
"omap af <Plug>(coc-funcobj-a)

"" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
"nmap <silent> <C-d> <Plug>(coc-range-select)
"xmap <silent> <C-d> <Plug>(coc-range-select)

"" Use `:Format` to format current buffer
"command! -nargs=0 Format :call CocAction('format')

"" Use `:Fold` to fold current buffer
"command! -nargs=? Fold :call     CocAction('fold', <f-args>)

"" use `:OR` for organize import of current buffer
"command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

"" Add status line support, for integration with other plugin, checkout `:h coc-status`
"set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

"" Using CocList
"" Show all diagnostics
"nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
"" Manage extensions
"nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
"" Show commands
"nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
"" Find symbol of current document
"nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
"" Search workspace symbols
"nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
"" Do default action for next item.
"nnoremap <silent> <space>j  :<C-u>CocNext<CR>
"" Do default action for previous item.
"nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
"" Resume latest coc list
"nnoremap <silent> <space>p  :<C-u>CocListResume<CR>


""""vim-commentary"""
autocmd FileType c,cpp,java setlocal commentstring=//\ %s




"" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
" let g:UltiSnipsExpandTrigger="<c-j>"
" let g:UltiSnipsJumpForwardTrigger="<c-j>"
" let g:UltiSnipsJumpBackwardTrigger="<c-k>"

"" If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"







"" Use <C-l> for trigger snippet expand.
"" imap <C-l> <Plug>(coc-snippets-expand)

"" Use <C-j> for select text for visual placeholder of snippet.
"" vmap <C-j> <Plug>(coc-snippets-select)


" let g:coc_snippet_select = '<c-j>'

"" Use <C-j> for jump to next placeholder, it's default of coc.nvim
" let g:coc_snippet_next = '<c-j>'

"" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
" let g:coc_snippet_prev = '<c-k>'

"" Use <C-j> for both expand and jump (make expand higher priority.)
" imap <C-j> <Plug>(coc-snippets-expand-jump)

"" Use <C-j> for both expand and jump (make expand higher priority.)
" let g:coc_snippet_next ="<c-j>"
" let g:coc_snippet_prev ="<c-k>"




" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
" let g:UltiSnipsExpandTrigger="<C-J>"
" let g:UltiSnipsJumpForwardTrigger="<C-J>"
" let g:UltiSnipsJumpBackwardTrigger="<C-K>"

" If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"



inoremap <silent><expr> <c-j>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<c-j>'
let g:coc_snippet_prev = '<c-k>'




""ALE linter options"
let g:ale_sign_column_always = 1

let g:ale_sign_error = 'E>'
let g:ale_sign_warning = 'W>'

highlight ALEWarning ctermbg=NONE ctermfg=DarkRed cterm=underline
highlight ALEWarningSign ctermbg=Yellow ctermfg=Black

" highlight ALEError ctermbg=Yellow
highlight ALEErrorSign ctermbg=DarkRed ctermfg=White




"""for cscope"""
set cscopeprg=/usr/bin/cscope
set csto=0
set cst
set nocsverb
cs add ./cscope.out
set csverb


nnoremap <leader>f :Files<CR>
nnoremap <leader>s :Tags<CR>

