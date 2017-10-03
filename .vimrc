call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'flazz/vim-colorschemes'

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
