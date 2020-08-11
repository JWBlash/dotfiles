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
filetype plugin indent on
hi Search cterm=NONE ctermfg=white ctermbg=blue
hi CursorLine cterm=BOLD

call plug#begin('~/.vim/plugs')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
map <C-n> :NERDTreeToggle<CR>

Plug 'junegunn/vim-easy-align'
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'airblade/vim-gitgutter'

call plug#end()
