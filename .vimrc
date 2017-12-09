call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'flazz/vim-colorschemes'
" These 2 are used for keeping cursor at same position while using * search
Plug 'vim-scripts/ingo-library'
Plug 'vim-scripts/SearchHighlighting'
Plug 'vim-scripts/IndexedSearch'
Plug 'vim-scripts/taglist.vim'
set hlsearch

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
call plug#end()

filetype plugin indent on
" Show existing tab with 4 spaces width
set tabstop=4
" When indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

"Show line number
set number

syntax on
nmap ; :
set mouse=a
nmap <C-h> <C-W><C-h>
nmap <C-l> <C-W><C-l>
nmap <C-]> g<C-]>
vnoremap // y/<C-R>"<CR>
set clipboard=unnamed

" case insensitive tag matching
" go to defn of tag under the cursor
fun! MatchCaseTag()
    let ic = &ic
    set noic
    try
        exe 'tjump ' . expand('<cword>')
    finally
        let &ic = ic
    endtry
endfun
nnoremap <silent> <c-]> :call MatchCaseTag()<CR>
