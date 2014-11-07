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
color slate

" Highlight Bad White Space
highlight BadWhitespace ctermbg=red guibg=red
au BufRead,BufNewFile *.py match BadWhitespace /^\t\+/
au BufRead,BufNewFile *.py match BadWhitespace /\s\+$/

NeoBundleCheck
