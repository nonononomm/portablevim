call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'flazz/vim-colorschemes'
" These 2 are used for keeping cursor at same position while using * search
Plug 'vim-scripts/ingo-library'
Plug 'vim-scripts/SearchHighlighting'
Plug 'vim-scripts/IndexedSearch'
set hlsearch

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
call plug#end()

syntax on
nmap ; :
set mouse=a
nmap <C-h> <C-W><C-h>
nmap <C-l> <C-W><C-l>
vnoremap // y/<C-R>"<CR>
set clipboard=unnamed
