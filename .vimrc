
if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim/
  set runtimepath+=~/.vim/bundle/ctrlp.vim/
  set runtimepath+=~/.vim/bundle/nerdtree/
  set runtimepath+=~/.vim/bundle/minibufexpl.vim/
  set runtimepath+=~/.vim/bundle/vim-sensible/
  set runtimepath+=~/.vim/bundle/vim-surround/
  set runtimepath+=~/.vim/bundle/python-syntax/
end

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundleFetch 'kien/ctrlp.vim'
NeoBundleFetch 'scrooloose/nerdtree'
NeoBundleFetch 'tpope/vim-sensible'
NeoBundleFetch 'tpope/vim-surround'
NeoBundleFetch 'hdima/python-syntax'
NeoBundleFetch 'fholgado/minibufexpl.vim'

call neobundle#end()

" Open NERDTree with Ctrl+n
" autocmd VimEnter * NERDTree
nnoremap <silent> <C-n> :NERDTreeToggle<CR>

" Ignore files in NERDTree
let NERDTreeIgnore = ['\.py[cod]$[[file]]', '\~$[[file]]', 'bower_components$[[dir]]', '_webassets$[[dir]]']

" Ignore files and dirs i ctrlp
set wildignore+=*.pyc,*.pyo,*.pyd     " Python

filetype plugin indent on
set noautoindent
set nowrap
set nu
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
syntax enable
set noswapfile
set nobackup
set nowritebackup
set hlsearch 
set cursorline
set textwidth=120
colorscheme molokai
"let g:molokai_original = 1
"let g:rehash256 = 1
" colorscheme slate

" Highlight Bad White Space
highlight BadWhitespace ctermbg=red guibg=red
au BufRead,BufNewFile *.py match BadWhitespace /^\t\+/
au BufRead,BufNewFile *.py match BadWhitespace /\s\+$/
" Highlight Cursor Line
" :hi CursorLine   cterm=NONE ctermbg=white ctermfg=None guibg=darkred guifg=white

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

map <leader>ev :e! ~/.vimrc<cr>
autocmd! bufwritepost .vimrc source ~/.vimrc

" Smart way to move btw. windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
" Move forward/backward between buffers in order
map <right> :bn<cr>
map <left> :bp<cr>

NeoBundleCheck
