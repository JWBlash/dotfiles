set number
set relativenumber
set incsearch
set expandtab
set tabstop=8
set softtabstop=4
set shiftwidth=4
set wildmenu
set ruler
set cursorline
set backspace=indent,eol,start
filetype plugin indent on
hi Search cterm=NONE ctermfg=white ctermbg=blue
hi CursorLine cterm=BOLD
hi CursorLineNr    cterm=bold 

" Install vimplug if not present on this machine. Also, do a PlugInstall
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugs')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
map <C-n> :NERDTreeToggle<CR>

Plug 'junegunn/vim-easy-align'
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

Plug 'https://github.com/preservim/tagbar.git'
nmap <F8> :TagbarToggle<CR>

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'airblade/vim-gitgutter'

Plug 'stephpy/vim-yaml'

call plug#end()

" Start NERDTree
autocmd VimEnter * NERDTree
" Refocus the window
autocmd VimEnter * wincmd p
" Start Tagbar
autocmd VimEnter * Tagbar
